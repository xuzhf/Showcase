package com.test.util;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonResponse {
	
	private JSONObject json = new JSONObject();
	
	private JSONObject jsonMap = new JSONObject();

	public JsonResponse() {
		try {
			json.put("response", jsonMap);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setStatusSuccess() {
		try {
			jsonMap.put("status", "success");
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setStatusError() {
		try {
			jsonMap.put("status", "error");
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setStatusTimeout() {
		try {
			jsonMap.put("status", "timeout");
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setData(JSONArray data) {
		try {
			jsonMap.put("data", data);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setErrors(JSONObject errors) {
		try {
			jsonMap.put("errors", errors);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setUsername(String username) {
		try {
			jsonMap.put("username", username);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setMessage(String message) {
		try {
			jsonMap.put("message", message);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setPage(int page) {
		try {
			jsonMap.put("page", page);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setTotalpage(int totalpage) {
		try {
			jsonMap.put("totalpage", totalpage);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {

		return json.toString();
	}
}
