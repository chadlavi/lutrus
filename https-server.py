from http.server import HTTPServer, BaseHTTPRequestHandler, SimpleHTTPRequestHandler
import ssl

certs_dir = '/root/'
httpd = HTTPServer(('0.0.0.0', 443), SimpleHTTPRequestHandler)
httpd.socket = ssl.wrap_socket(httpd.socket, certfile=certs_dir+'fullchain.pem', keyfile=certs_dir+'privkey.pem', server_side=True, ssl_version=ssl.PROTOCOL_TLSv1_2)
httpd.serve_forever()
