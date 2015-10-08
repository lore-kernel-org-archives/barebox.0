Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZkJKx-0000WE-0M
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:55 +0000
Received: by wicge5 with SMTP id ge5so44531271wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:32 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:18 +0200
Message-Id: <1444341979-19157-17-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 16/17] mtd: nand_mrvl_nfc: Add support for Marvell Armada
 370/XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Marvell PXA3xx and Armada 370/XP share the same NAND controller IP
with some minor differences. With support for controller IP v2, now
allow to build the driver on Armada 370/XP.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/mtd/nand/Kconfig         | 7 ++++---
 drivers/mtd/nand/nand_mrvl_nfc.c | 5 +++++
 2 files changed, 9 insertions(+), 3 deletions(-)

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
index 8594cf688d0c..07dc1bdbe6cf 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -277,12 +277,17 @@ static struct nand_ecclayout ecc_layout_4KB_bch8bit = {
 			       (((struct nand_chip *)((mtd)->priv))->priv))
 
 const unsigned int pxa3xx_hwflags;
+const unsigned int armada370_hwflags = HWFLAGS_ECC_BCH | HWFLAGS_HAS_NDCB3;
 
 static struct of_device_id mrvl_nand_dt_ids[] = {
 	{
 		.compatible = "marvell,pxa3xx-nand",
 		.data = &pxa3xx_hwflags,
 	},
+	{
+		.compatible = "marvell,armada370-nand",
+		.data = &armada370_hwflags,
+	},
 	{}
 };
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
