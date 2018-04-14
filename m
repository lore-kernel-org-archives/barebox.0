Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKd-0001tK-Cc
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:25 +0000
Received: by mail-pl0-x241.google.com with SMTP id x4-v6so7785040pln.7
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:51 -0700
Message-Id: <20180414175103.10125-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175103.10125-1-andrew.smirnov@gmail.com>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/17] ARM: i.MX7: boot: Add code to handle SD/MMC manufacture
 mode
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index a98c716fb..4082f46ae 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -306,6 +306,19 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 #define IMX7_SRC_SBMR1	0x58
 #define IMX7_SRC_SBMR2	0x70
 
+#define IMX_BOOT_SW_INFO_POINTER_ADDR	0x000001E8
+#define IMX_BOOT_SW_INFO_BDT_SD		0x1
+
+struct imx_boot_sw_info {
+	uint8_t  reserved_1;
+	uint8_t  boot_device_instance;
+	uint8_t  boot_device_type;
+	uint8_t  reserved_2;
+	uint32_t frequency_hz[4]; /* Various frequencies (ARM, AXI,
+				   * DDR, etc.). Not used */
+	uint32_t reserved_3[3];
+} __packed;
+
 void imx7_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX7_SRC_BASE_ADDR);
@@ -316,6 +329,33 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 		return;
 
 	if (imx6_bootsource_serial(sbmr2)) {
+		/*
+		 * On i.MX7 ROM code will try to bood from uSDHC1
+		 * before entering serial mode. It doesn't seem to be
+		 * reflected in the contents of SBMR1 in any way when
+		 * that happens, so we check "Boot_SW_Info" structure
+		 * (per 6.6.14 Boot information for software) to see
+		 * if that really happened.
+		 *
+		 * FIXME: This behaviour can be inhibited by
+		 * DISABLE_SDMMC_MFG, but location of that fuse
+		 * doesn't seem to be documented anywhere. Once that
+		 * is known it should be taken into account here.
+		 */
+		const struct imx_boot_sw_info *info;
+
+		info = (const void *)readl(IMX_BOOT_SW_INFO_POINTER_ADDR);
+
+		if (info->boot_device_type == IMX_BOOT_SW_INFO_BDT_SD) {
+			*src = BOOTSOURCE_MMC;
+			/*
+			 * We are expecting to only ever boot from
+			 * uSDHC1 here
+			 */
+			WARN_ON(*instance = info->boot_device_instance);
+			return;
+		}
+
 		*src = BOOTSOURCE_SERIAL;
 		return;
 	}
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
