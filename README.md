# ![](lutrus_32x32.png?raw=true) lutr.us

to run:
* `bash serve.sh` inside this directory (ideally in its own tmux pane; there will be log output that could interrupt you).

Note: everything in `site` will be publicly available. You'll also need to use certbot to get certificates before running the https server. After getting the certs, copy them to the parent of this directory (there should be 4: `cert.pem`, `chain.pem`, `fullchain.pem`, and `privkey.pem`.)
