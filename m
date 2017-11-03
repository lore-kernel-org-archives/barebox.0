Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAZWh-0005gT-Pe
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 10:48:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 02CB3A008AC
 for <barebox@lists.infradead.org>; Fri,  3 Nov 2017 11:50:13 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 3 Nov 2017 11:48:16 +0100
Message-Id: <1509706096-41266-3-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509706096-41266-1-git-send-email-d.schultz@phytec.de>
References: <1509706096-41266-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 3/3] ARM: phytec-som-am335x: Add autoenable
To: barebox@lists.infradead.org

Add autoenable for components, which can be populated on an AM335x
phyCORE SoM.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/Kconfig | 13 +++++++++++++
 arch/arm/boards/phytec-som-am335x/board.c | 13 +++++++++++++
 arch/arm/mach-omap/Kconfig                |  2 ++
 3 files changed, 28 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-am335x/Kconfig

diff --git a/arch/arm/boards/phytec-som-am335x/Kconfig b/arch/arm/boards/phytec-som-am335x/Kconfig
new file mode 100644
index 0000000..52fa723
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/Kconfig
@@ -0,0 +1,13 @@
+
+if MACH_PHYTEC_SOM_AM335X
+
+config PHYTEC_SOM_AM335X_OF_AUTOENABLE
+	bool
+	prompt "Autoenable of components"
+	help
+	  Say Y to unlock an API for automatically enable either hardware
+	  components with existing device drivers or i2c clients. All functions
+	  take a device tree path to find the hardware and will fix up the node
+	  status in the kernel device tree, if it's accessible.
+
+endif
diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index 9f74981..0e9bf5f 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -135,6 +135,19 @@ static int physom_devices_init(void)
 			}
 	}
 
+	if (IS_ENABLED(PHYTEC_SOM_AM335X_OF_AUTOENABLE)) {
+		/* Enable NAND */
+		of_autoenable_device_by_path("/ocp/gpmc@50000000");
+		/* Enable eMMC */
+		of_autoenable_device_by_path("/ocp/mmc@481d8000");
+		/* Enable SPI NOR */
+		of_autoenable_device_by_path("/ocp/spi@48030000/m25p80@0");
+
+		of_autoenable_i2c_by_component("/ocp/i2c@44e0b000/temp@4b");
+		of_autoenable_i2c_by_component("/ocp/i2c@44e0b000/eeprom@52");
+		of_autoenable_i2c_by_component("/ocp/i2c@44e0b000/rtc@68");
+	}
+
 	if (IS_ENABLED(CONFIG_SHELL_NONE))
 		return am33xx_of_register_bootdevice();
 
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 9c41741..e8fc4b8 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -192,6 +192,8 @@ config MACH_VSCOM_BALTOS
 
 endif
 
+source arch/arm/boards/phytec-som-am335x/Kconfig
+
 choice
 	prompt "Select OMAP board"
 	depends on !OMAP_MULTI_BOARDS
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
