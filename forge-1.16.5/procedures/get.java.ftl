try {
    CloseableHttpClient httpclient = HttpClients.createDefault();
    HttpGet httpget = new HttpGet(${input$url});
    HttpResponse httpresponse = httpclient.execute(httpget);
} catch (IOException e) {
    System.out.println("Error fetching URL");
}