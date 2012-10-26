Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsy-0003z3-U5
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:59:04 +0200
Message-Id: <1351234748-24994-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
References: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/15] mtd nand i.MX: fix compilation for unsupported SoC
To: barebox@lists.infradead.org

Add a default case when all if(nfc_is_*) else if()
return false to prevent a compiler warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index b1b7f55..ef927c5 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1175,6 +1175,9 @@ static int __init imxnd_probe(struct device_d *dev)
 		oob_smallpage = &nandv2_hw_eccoob_smallpage;
 		oob_largepage = &nandv2_hw_eccoob_largepage;
 		oob_4kpage = &nandv2_hw_eccoob_4k;
+	} else {
+		err = -EINVAL;
+		goto escan;
 	}
 
 	host->dev = dev;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
