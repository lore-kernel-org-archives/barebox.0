Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f169.google.com ([209.85.217.169])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcfV-0008Oy-RY
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:50:22 +0000
Received: by mail-lb0-f169.google.com with SMTP id p9so9442719lbv.28
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:49:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:49:52 +0400
Message-Id: <1410335392-13061-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: dm9k: fix copy-paste typo
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/dm9k.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 950bdb3..e525a84 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -775,7 +775,7 @@ static int dm9k_probe(struct device_d *dev)
 		break;
 	case 2:
 		dev_dbg(dev, "8 bit data bus\n");
-		if (priv->buswidth != IORESOURCE_MEM_32BIT)
+		if (priv->buswidth != IORESOURCE_MEM_8BIT)
 			dev_err(dev,
 			"Wrong databus width defined at compile time\n");
 		break;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
