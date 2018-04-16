Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89ro-0003wK-6c
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:46 +0000
Received: by mail-pg0-x243.google.com with SMTP id z21so581342pgv.12
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:54 -0700
Message-Id: <20180416193157.16094-17-andrew.smirnov@gmail.com>
In-Reply-To: <20180416193157.16094-1-andrew.smirnov@gmail.com>
References: <20180416193157.16094-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 16/19] ARM: i.MX7: boot: Move magic numbers into utility
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 60307ffb6..3f67c2510 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -389,6 +389,16 @@ static unsigned int imx7_bootsource_internal(uint32_t r)
 	return FIELD_GET(BOOT_CFG(15, 12), r);
 }
 
+static int imx7_boot_instance_spi_nor(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG(11, 9), r);
+}
+
+static int imx7_boot_instance_mmc(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG(11, 10), r);
+}
+
 struct imx_boot_sw_info {
 	uint8_t  reserved_1;
 	uint8_t  boot_device_instance;
@@ -444,14 +454,14 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	case 1:
 	case 2:
 		*src = BOOTSOURCE_MMC;
-		*instance = (sbmr1 >> 10 & 0x3);
+		*instance = imx7_boot_instance_mmc(sbmr1);
 		break;
 	case 3:
 		*src = BOOTSOURCE_NAND;
 		break;
 	case 6:
 		*src = BOOTSOURCE_SPI_NOR,
-		*instance = (sbmr1 >> 9 & 0x7);
+		*instance = imx7_boot_instance_spi_nor(sbmr1);
 		break;
 	case 4:
 		*src = BOOTSOURCE_SPI; /* Really: qspi */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
