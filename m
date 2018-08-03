Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from wiems06002.ceu.heidelberg.com ([193.99.214.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1flXvc-0005jI-P9
 for barebox@lists.infradead.org; Fri, 03 Aug 2018 11:07:31 +0000
From: "Toews, Dietrich" <Dietrich.Toews@heidelberg.com>
Date: Fri, 3 Aug 2018 11:07:11 +0000
Message-ID: <F272D9410BD38E429D604B94748C61547AB08E80@WIEMS02101.ceu.corp.heidelberg.com>
Content-Language: de-DE
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: PATCH added tftp port to fsoptions
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

we are using barebox for a while now, but we need different tftp-server with different ports.
Here a proposition for a patch, if someone else needs it also.

Usage: tftp -o port=1234 ....

Sincirely
Dietrich


From 062a4c8148c2d31c7ce1d405632051b297b64ce0 Mon Sep 17 00:00:00 2001
From: Dietrich Toews <dietrich.toews@heidelberg.com>
Date: Fri, 3 Aug 2018 12:55:53 +0200
Subject: [PATCH] Added tftp port to fsoptions

---
 fs/tftp.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 847921a..13efa20 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -87,6 +87,7 @@ struct file_priv {

 struct tftp_priv {
        IPaddr_t server;
+       uint16_t port;
 };

 static int tftp_create(struct device_d *dev, const char *pathname, mode_t mode)
@@ -423,7 +424,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
                goto out;
        }

-       priv->tftp_con = net_udp_new(tpriv->server, TFTP_PORT, tftp_handler,
+       priv->tftp_con = net_udp_new(tpriv->server, tpriv->port, tftp_handler,
                        priv);
        if (IS_ERR(priv->tftp_con)) {
                ret = PTR_ERR(priv->tftp_con);
@@ -651,7 +652,22 @@ static int tftp_probe(struct device_d *dev)
        dev->priv = priv;

        priv->server = resolv(fsdev->backingstore);
-
+       priv->port   = TFTP_PORT;
+       if( fsdev->options ) {
+               // ToDo: if needed check other options.
+               //       Assumption here: the only option used is 'port=nxxxx'
+               if( strncmp( fsdev->options, "port=", 5 ) == 0 ) {
+                       uint16_t p = 0;
+                       for( uint8_t i=5; i<10; i++ ) {
+                               // portnumber can only contain ascii chars 0..9
+                               if( (fsdev->options[i] >= 48) && (fsdev->options[i] < 58) )
+                                       p = (p * 10) + (fsdev->options[i] - 48);
+                               else
+                                       break;  // break on first char that is not a number
+                       }
+                       if( p > 0 ) priv->port = p;
+               }
+       }
        return 0;
 }

--
1.9.1


________________________________

Confidentiality note:
The information in this email and any attachment may contain confidential and proprietary information of Heidelberger Druckmaschinen AG and/or its affiliates and may be privileged or otherwise protected from disclosure. If you are not the intended recipient, you are hereby notified that any review, reliance or distribution by others or forwarding without express permission is strictly prohibited and may cause liability. In case you have received this message due to an error in transmission, we kindly ask you to notify the sender immediately and to delete this email and any attachment from your system.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
