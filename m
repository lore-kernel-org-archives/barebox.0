Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtq03-0001lB-F0
 for barebox@lists.infradead.org; Wed, 13 Feb 2019 08:34:38 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 13 Feb 2019 09:34:26 +0100
Message-Id: <1550046868-19264-5-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1550046868-19264-1-git-send-email-t.remmet@phytec.de>
References: <1550046868-19264-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 5/7] arm: mach-omap: am335x_generic: Enable nodes by alias
 where needed
To: barebox@lists.infradead.org

With the interconnet target module hierarchy the node names used to enable boot
devices are not unique any more. Find those nodes by alias now.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/mach-omap/am33xx_generic.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index fe3c4a8b175a..7577df761cb7 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -474,18 +474,18 @@ int am33xx_of_register_bootdevice(void)
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
 		if (bootsource_get_instance() == 0)
-			dev = of_device_enable_and_register_by_name("mmc@48060000");
+			dev = of_device_enable_and_register_by_alias("mmc0");
 		else
-			dev = of_device_enable_and_register_by_name("mmc@481d8000");
+			dev = of_device_enable_and_register_by_alias("mmc1");
 		break;
 	case BOOTSOURCE_NAND:
 		dev = of_device_enable_and_register_by_name("gpmc@50000000");
 		break;
 	case BOOTSOURCE_SPI:
-		dev = of_device_enable_and_register_by_name("spi@48030000");
+		dev = of_device_enable_and_register_by_alias("spi0");
 		break;
 	case BOOTSOURCE_NET:
-		dev = of_device_enable_and_register_by_name("ethernet@4a100000");
+		dev = of_device_enable_and_register_by_alias("ethernet0");
 		break;
 	default:
 		/* Use nand fallback */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
