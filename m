Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RENEb-0005Q3-OK
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 15:30:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 17:30:06 +0200
Message-Id: <1318519808-14316-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
References: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] mtd nand i.MX: Add i.MX53 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-nand.h |    2 +-
 drivers/mtd/nand/nand_imx.c               |   10 ++++++++--
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index 22462b2..fb753cf 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -14,7 +14,7 @@ struct imx_nand_platform_data {
 
 #define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
 #define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())
-#define nfc_is_v3_2()		cpu_is_mx51()
+#define nfc_is_v3_2()		(cpu_is_mx51() || cpu_is_mx53())
 #define nfc_is_v3()		nfc_is_v3_2()
 
 #define NFC_V1_ECC_STATUS_RESULT	0x0c
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 581136a..c8c69d6 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -58,7 +58,8 @@
 #define NFC_V3_CONFIG2_2CMD_PHASES		(1 << 4)
 #define NFC_V3_CONFIG2_NUM_ADDR_PHASE0		(1 << 5)
 #define NFC_V3_CONFIG2_ECC_MODE_8		(1 << 6)
-#define NFC_V3_CONFIG2_PPB(x)			(((x) & 0x3) << 7)
+#define NFC_V3_MX51_CONFIG2_PPB(x)		(((x) & 0x3) << 7)
+#define NFC_V3_MX53_CONFIG2_PPB(x)		(((x) & 0x3) << 8)
 #define NFC_V3_CONFIG2_NUM_ADDR_PHASE1(x)	(((x) & 0x3) << 12)
 #define NFC_V3_CONFIG2_INT_MSK			(1 << 15)
 #define NFC_V3_CONFIG2_ST_CMD(x)		(((x) & 0xff) << 24)
@@ -812,7 +813,12 @@ static void preset_v3(struct mtd_info *mtd)
 	}
 
 	if (mtd->writesize) {
-		config2 |= NFC_V3_CONFIG2_PPB(ffs(mtd->erasesize / mtd->writesize) - 6);
+		if (cpu_is_mx51())
+			config2 |= NFC_V3_MX51_CONFIG2_PPB(
+					ffs(mtd->erasesize / mtd->writesize) - 6);
+		else
+			config2 |= NFC_V3_MX53_CONFIG2_PPB(
+					ffs(mtd->erasesize / mtd->writesize) - 6);
 		host->eccsize = get_eccsize(mtd);
 		if (host->eccsize == 8)
 			config2 |= NFC_V3_CONFIG2_ECC_MODE_8;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
