Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQRZ-0003mL-NE
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:28:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:28:30 +0200
Message-Id: <1334500111-26382-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
References: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/8] fs tftp: use resolv to resolv ip address
To: barebox@lists.infradead.org

instead of assuming the backingstore is a ip address, use resolv()
to make it possible to pass in a hostname.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 463e0fc..e8a209e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -603,7 +603,7 @@ static int tftp_probe(struct device_d *dev)
 
 	dev->priv = priv;
 
-	string_to_ip(fsdev->backingstore, &priv->server);
+	priv->server = resolv(fsdev->backingstore);
 
 	return 0;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
