Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmE-0002hC-Fw
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:39 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:11:20 +0200
Message-Id: <20200701091122.3437-27-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 26/28] ARM: at91: sama5d27-som1-ek: add barebox_update and
 multi environment support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We now have second stage support for running from sdmmc0 and sdmmc1.
Add a barebox environment and update handler for the two SD cards.

As fall back, we use the environment in the QSPI flash as before as this
is soldered to the SoM and is always available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-som1/Makefile |  1 +
 arch/arm/boards/sama5d27-som1/board.c  | 35 ++++++++++++++++++++++++++
 arch/arm/dts/at91-sama5d27_som1_ek.dts | 17 ++++++++++++-
 arch/arm/mach-at91/Kconfig             |  1 +
 4 files changed, 53 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/sama5d27-som1/board.c

diff --git a/arch/arm/boards/sama5d27-som1/Makefile b/arch/arm/boards/sama5d27-som1/Makefile
index b08c4a93ca27..092c31d6b28d 100644
--- a/arch/arm/boards/sama5d27-som1/Makefile
+++ b/arch/arm/boards/sama5d27-som1/Makefile
@@ -1 +1,2 @@
 lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/sama5d27-som1/board.c b/arch/arm/boards/sama5d27-som1/board.c
new file mode 100644
index 000000000000..00c0e92a5da3
--- /dev/null
+++ b/arch/arm/boards/sama5d27-som1/board.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <init.h>
+#include <asm/memory.h>
+#include <bbu.h>
+#include <bootsource.h>
+#include <of.h>
+
+static int ek_device_init(void)
+{
+	int flags_sd = 0, flags_usd = 0;
+	if (!of_machine_is_compatible("atmel,sama5d27-som1-ek"))
+		return 0;
+
+	if (bootsource_get() == BOOTSOURCE_MMC) {
+		if (bootsource_get_instance() == 0) {
+			flags_sd = BBU_HANDLER_FLAG_DEFAULT;
+			of_device_enable_path("/chosen/environment-sd");
+		} else {
+			flags_usd = BBU_HANDLER_FLAG_DEFAULT;
+			of_device_enable_path("/chosen/environment-microsd");
+		}
+	} else {
+		of_device_enable_path("/chosen/environment-qspi");
+	}
+
+	bbu_register_std_file_update("SD", flags_sd, "/mnt/mmc0.0/barebox.bin",
+				     filetype_arm_barebox);
+	bbu_register_std_file_update("microSD", flags_usd, "/mnt/mmc1.0/barebox.bin",
+				     filetype_arm_barebox);
+	return 0;
+}
+device_initcall(ek_device_init);
diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
index b9042d11317a..befee89ad78a 100644
--- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
@@ -8,9 +8,24 @@
 
 / {
 	chosen {
-		environment {
+		environment-qspi {
 			compatible = "barebox,environment";
 			device-path = &barebox_env;
+			status = "disabled";
+		};
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdmmc0;
+			file-path = "barebox.env";
+			status = "disabled";
+		};
+
+		environment-microsd {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1;
+			file-path = "barebox.env";
+			status = "disabled";
 		};
 	};
 };
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 8584dcd97944..52eefc736138 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -609,6 +609,7 @@ config MACH_SAMA5D27_SOM1
 	select OFDEVICE
 	select MCI_ATMEL_SDHCI_PBL
 	select COMMON_CLK_OF_PROVIDER
+	select FS_FAT_WRITE if MCI_ATMEL_SDHCI && FS_FAT && ENV_HANDLING
 	help
 	  Select this if you are using Microchip's sama5d27 SoM evaluation kit
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
