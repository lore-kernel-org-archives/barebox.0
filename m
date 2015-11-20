Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x235.google.com ([2a00:1450:400c:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUB-00042N-Lj
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:51 +0000
Received: by wmww144 with SMTP id w144so31709090wmw.1
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:26 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:11 +0100
Message-Id: <1448048172-10080-19-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 18/19] mtd: nand_mrvl_nfc: Add support for Marvell Armada
 370/XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Marvell PXA3xx and Armada 370/XP share the same NAND controller IP
with some minor differences. With support for controller IP v2, now
allow to build the driver on Armada 370/XP.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/Kconfig         | 7 ++++---
 drivers/mtd/nand/nand_mrvl_nfc.c | 8 ++++++++
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 3426ec055756..2b4a478a03dd 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -99,10 +99,11 @@ config NAND_ORION
 
 config NAND_MRVL_NFC
 	bool
-	prompt "Marvell NAND driver"
-	depends on ARCH_PXA3XX
+	prompt "Marvell PXA3xx NAND driver"
+	depends on ARCH_ARMADA_370 || ARCH_ARMADA_XP || ARCH_PXA3XX
 	help
-	  Support for the PXA3xx NAND controller, present in pxa3xx SoCs.
+	  Support for the PXA3xx NAND controller, present in Armada 370/XP and
+	  PXA3xx SoCs.
 
 config NAND_ATMEL
 	bool
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index fec18d1fc95a..ce5786c01920 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -285,11 +285,19 @@ static const struct mrvl_nand_variant pxa3xx_variant = {
 	.hwflags	= 0,
 };
 
+static const struct mrvl_nand_variant armada370_variant = {
+	.hwflags	= HWFLAGS_ECC_BCH | HWFLAGS_HAS_NDCB3,
+};
+
 static struct of_device_id mrvl_nand_dt_ids[] = {
 	{
 		.compatible = "marvell,pxa3xx-nand",
 		.data = &pxa3xx_variant,
 	},
+	{
+		.compatible = "marvell,armada370-nand",
+		.data = &armada370_variant,
+	},
 	{}
 };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
