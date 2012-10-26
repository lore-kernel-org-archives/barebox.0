Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003z2-HT
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:59:03 +0200
Message-Id: <1351234748-24994-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/15] mtd mxs nand: select NAND_BBT
To: barebox@lists.infradead.org

The driver won't compile without it, so select it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 6889b44..3876a14 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -55,6 +55,7 @@ config NAND_IMX
 
 config NAND_MXS
 	bool
+	select NAND_BBT
 	prompt "i.MX23/28 NAND driver"
 	depends on MXS_APBH_DMA
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
