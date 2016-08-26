package com.smartgwt.sample.showcase.util;


import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.core.LoggerContext;
import org.apache.logging.log4j.core.appender.ConsoleAppender;
import org.apache.logging.log4j.core.config.Configuration;
import org.apache.logging.log4j.core.config.Configurator;
import org.apache.logging.log4j.core.config.builder.api.AppenderComponentBuilder;
import org.apache.logging.log4j.core.config.builder.api.ComponentBuilder;
import org.apache.logging.log4j.core.config.builder.api.ConfigurationBuilder;
import org.apache.logging.log4j.core.config.builder.api.ConfigurationBuilderFactory;
import org.apache.logging.log4j.core.config.builder.api.LayoutComponentBuilder;
import org.apache.logging.log4j.core.config.builder.impl.BuiltConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 */
public class JobLogFactory {
	private JobLogFactory() {
	}

	public static void start(String jobId) {
		ConfigurationBuilder< BuiltConfiguration > builder = ConfigurationBuilderFactory.newConfigurationBuilder();

		builder.setStatusLevel( Level.INFO);
		builder.setConfigurationName("RollingBuilder");
		// create a console appender
		AppenderComponentBuilder appenderBuilder = builder.newAppender("Stdout", "CONSOLE").addAttribute("target",
		    ConsoleAppender.Target.SYSTEM_OUT);
		appenderBuilder.add(builder.newLayout("PatternLayout")
		    .addAttribute("pattern", "%d [%t] %-5level: %msg%n%throwable"));
		builder.add( appenderBuilder );
		// create a rolling file appender
		LayoutComponentBuilder layoutBuilder = builder.newLayout("PatternLayout")
		    .addAttribute("pattern", "%d [%t] %-5level: %msg%n");
		ComponentBuilder triggeringPolicy = builder.newComponent("Policies")
		    .addComponent(builder.newComponent("CronTriggeringPolicy").addAttribute("schedule", "0 0 0 * * ?"))
		    .addComponent(builder.newComponent("SizeBasedTriggeringPolicy").addAttribute("size", "100M"));
		appenderBuilder = builder.newAppender("rolling", "RollingFile")
		    .addAttribute("fileName", "target/rolling.log")
		    .addAttribute("filePattern", "target/archive/rolling-%d{MM-dd-yy}.log.gz")
		    .add(layoutBuilder)
		    .addComponent(triggeringPolicy);
		builder.add(appenderBuilder);

		// create the new logger
		builder.add( builder.newLogger( "TestLogger", Level.DEBUG )
		    .add( builder.newAppenderRef( "rolling" ) )
		    .addAttribute( "additivity", false ) );

		builder.add( builder.newRootLogger( Level.DEBUG )
		    .add( builder.newAppenderRef( "rolling" ) ) );
		LoggerContext ctx = Configurator.initialize(builder.build());
		// 为false时，返回多个LoggerContext对象， true：返回唯一的单例LoggerContext
//		final LoggerContext ctx = (LoggerContext) LogManager.getContext(false);
//		final Configuration config = ctx.getConfiguration();
//		
//		// 创建一个展示的样式：PatternLayout， 还有其他的日志打印样式。
//		Layout layout = PatternLayout.createLayout(PatternLayout.DEFAULT_CONVERSION_PATTERN, null, config, null, null,
//				true, false, null, null);
//		// TriggeringPolicy tp = SizeBasedTriggeringPolicy.createPolicy("10MB");
//		// Appender appender =
//		// RollingFileAppender.createAppender(String.format("
//		// logs/test/syncshows-job-%s.log", jobID),
//		// "/logs/test/" + jobID + "/syncshows-job-" + jobID + ".log.gz",
//		// "true", jobID, null, null, null, tp, null, layout, null,
//		// null, null, null, config);
//		// 日志打印方式——输出为文件
//		Appender appender = FileAppender.createAppender(String.format("logs/test/job-%s.log", jobId), "true",
//				"false", "" + jobId, null, "true", "true", null, layout, null, null, null, config);
//		appender.start();
//		config.addAppender(appender);
//		AppenderRef ref = AppenderRef.createAppenderRef("" + jobId, null, null);
//		AppenderRef[] refs = new AppenderRef[] { ref };
//		LoggerConfig loggerConfig = LoggerConfig.createLogger(false, Level.ALL, "" + jobId, "true", refs, null,
//				config, null);
//		loggerConfig.addAppender(appender, Level.ALL, null);
//		config.addLogger("" + jobId, loggerConfig);
//		ctx.updateLoggers();
//		   final LoggerContext ctx = (LoggerContext) LogManager.getContext(false);
//	        final Configuration config = ctx.getConfiguration();
//	        Layout layout = PatternLayout.createLayout(PatternLayout.DEFAULT_CONVERSION_PATTERN, null, config, null, null,
//					true, false, null, null);
//	        Appender appender = FileAppender.createAppender("target/test.log", "false", "false", "File", "true",
//	            "false", "false", "4000", layout, null, "false", null, config);
//	        appender.start();
//	        config.addAppender(appender);
//	        AppenderRef ref = AppenderRef.createAppenderRef("File", null, null);
//	        AppenderRef[] refs = new AppenderRef[] {ref};
//	        LoggerConfig loggerConfig = LoggerConfig.createLogger("false", Level.ALL, "" + jobId,
//	            "true", refs, null, config, null );
//	        loggerConfig.addAppender(appender, null, null);
//	        config.addLogger("org.apache.logging.log4j", loggerConfig);
	        ctx.updateLoggers();
	
	}

	public static void stop(String jobId) {
		final LoggerContext ctx = (LoggerContext) LogManager.getContext(false);
		final Configuration config = ctx.getConfiguration();
//		config.getAppender("" + jobId).stop();
//		config.getLoggerConfig("" + jobId).removeAppender("" + jobId);
//		config.removeLogger("" + jobId);
		ctx.updateLoggers();
	}

	/**
	 * 获取Logger
	 *
	 * 如果不想使用slf4j,那这里改成直接返回Log4j的Logger即可
	 * 
	 * @param jobId
	 * @return
	 */
	public static Logger createLogger(String jobId) {
		start(jobId);
		return LoggerFactory.getLogger("" + jobId);
	}
}
