Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusP-0007ll-Ac
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:07:57 +0000
Received: by laem6 with SMTP id m6so86570934lae.0
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:35 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:11 +0300
Message-Id: <1437336443-8076-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC v2 04/16] fs/nfs.c: use SUNRPC_PORT remote port by default
To: barebox@lists.infradead.org

pico_socket_connect() needs remote_port != 0.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/nfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 0269814..3824752 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1350,7 +1350,7 @@ static int nfs_probe(struct device_d *dev)
 
 	debug("nfs: server: %s path: %s\n", tmp, npriv->path);
 
-	npriv->con = net_udp_new(npriv->server, 0, nfs_handler, npriv);
+	npriv->con = net_udp_new(npriv->server, SUNRPC_PORT, nfs_handler, npriv);
 	if (IS_ERR(npriv->con)) {
 		ret = PTR_ERR(npriv->con);
 		goto err1;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
