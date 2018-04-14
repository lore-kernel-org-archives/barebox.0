Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKq-00021A-65
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:42 +0000
Received: by mail-pl0-x243.google.com with SMTP id x4-v6so7785154pln.7
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:51:00 -0700
Message-Id: <20180414175103.10125-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/17] ARM: i.MX7: boot: Move magic numbers into utility
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index cdfe3749d..0398804b0 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -362,6 +362,16 @@ static unsigned int imx7_bootsource_internal(uint32_t r)
 	return sbmr(r, 15, 12);	/* BOOT_CFG[15:12] */
 }
 
+static int imx7_boot_instance_spi_nor(uint32_t r)
+{
+	return sbmr(r, 11, 9);	/* BOOT_CFG[11:9] */
+}
+
+static int imx7_boot_instance_mmc(uint32_t r)
+{
+	return sbmr(r, 11, 10);	/* BOOT_CFG[11:10] */
+}
+
 struct imx_boot_sw_info {
 	uint8_t  reserved_1;
 	uint8_t  boot_device_instance;
@@ -417,14 +427,14 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
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
