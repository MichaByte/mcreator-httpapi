(new Object(){
	public String getResponse(){
	    try {
            CloseableHttpClient httpclient = HttpClients.createDefault();
            HttpGet httpget = new HttpGet(${input$url});
            CloseableHttpResponse httpresponse = httpclient.execute(httpget);
    	    HttpEntity entity = httpresponse.getEntity();
			String responseString = EntityUtils.toString(entity, "UTF-8");
			return responseString;
        } catch (IOException e) {
            System.out.println("Error fetching URL");
			return null;
        }
    }
}.getResponse())