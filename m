Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nm-00026T-9n
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:50 +0100
Message-Id: <1294397044-5008-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/24] cs8900: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cs8900.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 8120877..b8264d7 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -364,7 +364,7 @@ static void cs8900_info(struct device_d *dev)
 	struct cs8900_priv *priv = (struct cs8900_priv *)edev->priv;
 	u16 v;
 
-	printf("%s Rev. %s (PID: 0x%04x) at 0x%08x\n", priv->chip->name,
+	printf("%s Rev. %s (PID: 0x%04x) at 0x%p\n", priv->chip->name,
 	       priv->product->rev_name, priv->product->product_id,
 	       priv->regs);
 
@@ -399,7 +399,7 @@ static int cs8900_check_id(struct cs8900_priv *priv)
 	u16 v;
 	v = cs8900_ior(priv, PP_BI_VID);
 	if (v != CRYSTAL_SEMI_EISA_ID) {
-		printf("No CS89x0 variant found at 0x%08x vid: 0x%04x\n",
+		printf("No CS89x0 variant found at 0x%p vid: 0x%04x\n",
 		       priv->regs, v);
 		return -1;
 	}
@@ -424,7 +424,7 @@ static int cs8900_check_id(struct cs8900_priv *priv)
 		printf("Invalid chip type %d\n", product->chip_type);
 		goto out;
 	}
-	printf("%s Rev. %s (PID: 0x%04x) found at 0x%08x\n", chip->name,
+	printf("%s Rev. %s (PID: 0x%04x) found at 0x%p\n", chip->name,
 	       product->rev_name, v, priv->regs);
 	priv->chip = chip;
 	priv->product = product;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
