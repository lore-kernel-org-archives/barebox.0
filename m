Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxxr-0001cO-PY
 for barebox@lists.infradead.org; Mon, 27 Apr 2020 07:14:06 +0000
Received: from geraet.fritz.box (muedsl-82-207-202-020.citykom.de
 [82.207.202.20]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 889401C0003
 for <barebox@lists.infradead.org>; Mon, 27 Apr 2020 07:13:57 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 27 Apr 2020 09:13:49 +0200
Message-Id: <20200427071351.467859-1-ahmad@a3f.at>
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
Subject: [PATCH 1/3] ARM: i.MX: boot: correctly handle SRC_SBMR1 override via
 SRC_GPR9
To: barebox@lists.infradead.org

`mw 0x20d8040 0x08000030; mw 0x20d8044 0x10000000; reset` issued on an
i.MX6Q forces boot from the ecspi1. This is because the BootROM reads
the boot mode out of SRC_GPR9 instead of SRC_SBMR1 whenever SRC_GPR10
has its 28th bit set.

Teach barebox about this, so we don't end up with a wrong $bootsource
when putting SRC_GPR9 into use.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-imx/boot.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 7bce1c710c57..3ff297d46e47 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -320,10 +320,13 @@ void imx53_boot_save_loc(void)
 
 #define IMX6_SRC_SBMR1	0x04
 #define IMX6_SRC_SBMR2	0x1c
+#define IMX6_SRC_GPR9	0x40
+#define IMX6_SRC_GPR10	0x44
 #define IMX6_BMOD_SERIAL	0b01
 #define IMX6_BMOD_RESERVED	0b11
 #define IMX6_BMOD_FUSES		0b00
 #define BT_FUSE_SEL		BIT(4)
+#define GPR10_BOOT_FROM_GPR9	BIT(28)
 
 static bool imx6_bootsource_reserved(uint32_t sbmr2)
 {
@@ -388,11 +391,21 @@ static int imx6_boot_instance_mmc(uint32_t r)
 	return FIELD_GET(BOOT_CFG2(4, 3), r);
 }
 
+static u32 imx6_get_src_boot_mode(void __iomem *src_base)
+{
+	if (readl(src_base + IMX6_SRC_GPR10) & GPR10_BOOT_FROM_GPR9)
+		return readl(src_base + IMX6_SRC_GPR9);
+
+	return readl(src_base + IMX6_SRC_SBMR1);
+}
+
 void imx6_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX6_SRC_BASE_ADDR);
-	uint32_t sbmr1 = readl(src_base + IMX6_SRC_SBMR1);
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
+	uint32_t bootmode;
+
+	bootmode = imx6_get_src_boot_mode(src_base);
 
 	if (imx6_bootsource_reserved(sbmr2))
 		return;
@@ -402,23 +415,23 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
-	switch (imx53_bootsource_internal(sbmr1)) {
+	switch (imx53_bootsource_internal(bootmode)) {
 	case 2:
 		*src = BOOTSOURCE_HD;
 		break;
 	case 3:
-		*src = imx6_bootsource_serial_rom(sbmr1);
-		*instance = imx6_boot_instance_serial_rom(sbmr1);
+		*src = imx6_bootsource_serial_rom(bootmode);
+		*instance = imx6_boot_instance_serial_rom(bootmode);
 		break;
 	case 4:
 	case 5:
 	case 6:
 	case 7:
 		*src = BOOTSOURCE_MMC;
-		*instance = imx6_boot_instance_mmc(sbmr1);
+		*instance = imx6_boot_instance_mmc(bootmode);
 		break;
 	default:
-		if (imx53_bootsource_nand(sbmr1))
+		if (imx53_bootsource_nand(bootmode))
 			*src = BOOTSOURCE_NAND;
 		break;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
