import SimpleHTTPServer
import SocketServer
import os

PORT = 8000

Handler = SimpleHTTPServer.SimpleHTTPRequestHandler
os.chdir("public_html")
httpd = SocketServer.TCPServer(("", PORT), Handler)

print "serving at port", PORT
httpd.serve_forever()
