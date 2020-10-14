Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kShTX-00020N-0H
 for barebox@lists.infradead.org; Wed, 14 Oct 2020 14:09:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Oct 2020 16:09:51 +0200
Message-Id: <20201014140951.5184-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201014140951.5184-1-a.fatoum@pengutronix.de>
References: <20201014140951.5184-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: at91: define new at91_multi_defconfig
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We now have 5 boards supporting multi-image, so add a defconfig that
covers these three boards:
  - Microchip KSZ-9477 EVB
  - Microchip SAMA5D27-SOM1-EK
  - Groboards Giantboard

For the latter two, two images are built. One with only a first stage
PBL and another with a second-stage barebox proper.

Two more at91 multi-image boards are left out:
  - Atmel AT91SAM9263-EK
  - Atmel AT91SAM9x5 Series Evaluation Kit

They have a 256K barebox NAND partition in the device tree, so this
multi-image build would not fit and I don't have the hardware to test
them anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/at91.rst                 | 20 ++++++-
 .../boards/at91/microchip-ksz9477-evb.rst     | 11 ----
 ...477_evb_defconfig => at91_multi_defconfig} | 53 ++++++++++++++++++-
 3 files changed, 70 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/boards/at91/microchip-ksz9477-evb.rst
 rename arch/arm/configs/{microchip_ksz9477_evb_defconfig => at91_multi_defconfig} (55%)

diff --git a/Documentation/boards/at91.rst b/Documentation/boards/at91.rst
index 3ac4b6a24451..e45feee94733 100644
--- a/Documentation/boards/at91.rst
+++ b/Documentation/boards/at91.rst
@@ -21,7 +21,24 @@ processor and then load and execute barebox.
 
 AT91 boards
 -----------
-The majority of the supported boards have a short entry here.
+Newer boards can be built with the ``at91_multi_defconfig``:
+
+.. code-block:: sh
+
+  make ARCH=arm at91_multi_defconfig
+
+The resulting images will be placed under ``images/``:
+
+::
+
+  barebox-groboards-sama5d27-giantboard.img
+  barebox-groboards-sama5d27-giantboard-xload-mmc.img
+  barebox-microchip-ksz9477-evb.img
+  barebox-sama5d27-som1-ek.img
+  barebox-sama5d27-som1-ek-xload-mmc.img
+
+Older supported boards have yet to be migrated to multi-image and/or the
+new defconfig. The majority of these have a short entry here.
 For each board defconfig file(s) are noted but barebox may include additional
 defconfig files and may also include boards not included in the following.
 
@@ -37,6 +54,7 @@ This is a list of AT91 specific TODO items, listed in no particular order.
 
 * Update remaining boards to DT
 * Update remaing boards to support multi image boot
+* Include remaining boards in ``at91_multi_defconfig``
 * Get bootstrap working in combination with multi image
 * Introduce defaultenv2 for all boards
 * Add pwm driver (required to support backlight)
diff --git a/Documentation/boards/at91/microchip-ksz9477-evb.rst b/Documentation/boards/at91/microchip-ksz9477-evb.rst
deleted file mode 100644
index 4c4c4aecbfb3..000000000000
--- a/Documentation/boards/at91/microchip-ksz9477-evb.rst
+++ /dev/null
@@ -1,11 +0,0 @@
-Microchip KSZ 9477 Evaluation board
-===================================
-
-This is an evaluation board for a switch that uses the at91sam9x5 CPU.
-The board uses Device Tree and supports multi image.
-
-Building barebox:
-
-.. code-block:: sh
-
-  make ARCH=arm microchip_ksz9477_evb_defconfig
diff --git a/arch/arm/configs/microchip_ksz9477_evb_defconfig b/arch/arm/configs/at91_multi_defconfig
similarity index 55%
rename from arch/arm/configs/microchip_ksz9477_evb_defconfig
rename to arch/arm/configs/at91_multi_defconfig
index 71304994902a..a94cee80506e 100644
--- a/arch/arm/configs/microchip_ksz9477_evb_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -1,6 +1,10 @@
 CONFIG_AT91_MULTI_BOARDS=y
 CONFIG_MACH_MICROCHIP_KSZ9477_EVB=y
+CONFIG_MACH_SAMA5D27_SOM1=y
+CONFIG_MACH_SAMA5D27_GIANTBOARD=y
 CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
@@ -11,10 +15,19 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
+CONFIG_STATE=y
+CONFIG_STATE_CRYPTO=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -39,6 +52,7 @@ CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_READF=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
@@ -51,6 +65,7 @@ CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
@@ -61,12 +76,46 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_NET_MICREL=y
+CONFIG_I2C=y
+CONFIG_I2C_AT91=y
+CONFIG_USB_HOST=y
+CONFIG_USB_OHCI_AT91=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_ATMEL_HLCD=y
+CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
 CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_MMC_GPP_PARTITIONS=y
 CONFIG_MCI_ATMEL=y
+CONFIG_MCI_ATMEL_SDHCI=y
+CONFIG_MFD_ATMEL_FLEXCOM=y
+CONFIG_STATE_DRV=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_GPIO_RGB=y
+CONFIG_LED_GPIO_BICOLOR=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT25=y
+CONFIG_EEPROM_AT24=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_KEYBOARD_QT1070=y
+CONFIG_KEYBOARD_USB=y
+CONFIG_INPUT_SPECIALKEYS=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_AT91SAM9=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
