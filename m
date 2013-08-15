Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9rzp-0000AB-Gs
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:29:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 09:29:00 +0200
Message-Id: <1376551741-16438-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] Set model and hostname at boardlevel
To: barebox@lists.infradead.org

With multiboard support the compiletime generated BOARDINFO string
gets more and more meaningless. This removes it from Kconfig and
replaces it with a variable that can be set at boardlevel.

Also many boards have a standard setting for the hostname in the
environment. This patch also moves the standard to C code by calling
barebox_set_hostname().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/board.dox                            |  1 -
 arch/arm/boards/a9m2410/a9m2410.c                  |  3 +++
 arch/arm/boards/a9m2440/a9m2440.c                  |  3 +++
 arch/arm/boards/animeo_ip/init.c                   |  4 +++
 arch/arm/boards/archosg9/board.c                   |  6 ++++-
 arch/arm/boards/at91rm9200ek/init.c                |  3 +++
 arch/arm/boards/at91sam9260ek/init.c               |  8 ++++++
 arch/arm/boards/at91sam9261ek/init.c               |  8 ++++++
 arch/arm/boards/at91sam9263ek/init.c               |  3 +++
 arch/arm/boards/at91sam9m10g45ek/init.c            |  3 +++
 arch/arm/boards/at91sam9m10ihd/env/config          |  2 --
 arch/arm/boards/at91sam9m10ihd/init.c              |  3 +++
 arch/arm/boards/at91sam9n12ek/init.c               |  3 +++
 arch/arm/boards/at91sam9x5ek/init.c                |  3 +++
 arch/arm/boards/avnet-zedboard/board.c             |  3 +++
 .../boards/avnet-zedboard/env/init/config-board    |  1 -
 arch/arm/boards/beagle/board.c                     |  3 +++
 arch/arm/boards/beagle/env/config-board            |  1 -
 arch/arm/boards/beaglebone/board.c                 |  3 +++
 arch/arm/boards/beaglebone/env/config              |  2 --
 arch/arm/boards/ccxmx51/ccxmx51.c                  |  3 +++
 arch/arm/boards/ccxmx51/env/config-board           |  2 --
 arch/arm/boards/chumby_falconwing/env/config       |  2 --
 arch/arm/boards/chumby_falconwing/falconwing.c     |  3 +++
 arch/arm/boards/clep7212/clep7212.c                |  3 +++
 arch/arm/boards/clep7212/env/config-board          |  2 --
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  3 +++
 .../boards/crystalfontz-cfa10036/env/config-board  |  1 -
 arch/arm/boards/dmo-mx6-realq7/board.c             |  2 ++
 arch/arm/boards/dmo-mx6-realq7/env/config-board    |  1 -
 arch/arm/boards/dss11/init.c                       |  3 +++
 arch/arm/boards/edb93xx/edb93xx.c                  | 25 +++++++++++++++++
 arch/arm/boards/efika-mx-smartbook/board.c         |  2 ++
 .../arm/boards/efika-mx-smartbook/env/config-board |  1 -
 arch/arm/boards/eukrea_cpuimx25/env/config         |  2 --
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |  3 +++
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |  3 +++
 arch/arm/boards/eukrea_cpuimx35/env/config         |  2 --
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  3 +++
 arch/arm/boards/eukrea_cpuimx51/env/config         |  2 --
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |  3 +++
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |  3 +++
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |  3 +++
 arch/arm/boards/freescale-mx28-evk/env/config      |  1 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |  3 +++
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |  3 +++
 arch/arm/boards/freescale-mx35-3-stack/env/config  |  1 -
 arch/arm/boards/freescale-mx53-smd/board.c         |  3 +++
 arch/arm/boards/freescale-mx53-smd/env/config      |  1 -
 arch/arm/boards/freescale-mx6-arm2/board.c         |  3 +++
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  2 ++
 .../freescale-mx6-sabrelite/env/config-board       |  1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c      |  2 ++
 .../boards/freescale-mx6-sabresd/env/config-board  |  1 -
 arch/arm/boards/friendlyarm-mini2440/env/config    |  1 -
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |  3 +++
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |  3 +++
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |  3 +++
 .../friendlyarm-tiny6410/development-board.c       |  3 +++
 arch/arm/boards/gk802/board.c                      |  2 ++
 arch/arm/boards/gk802/env/config-board             |  1 -
 arch/arm/boards/guf-cupid/board.c                  |  4 ++-
 arch/arm/boards/guf-cupid/env/config               |  1 -
 arch/arm/boards/guf-neso/board.c                   |  3 +++
 arch/arm/boards/guf-neso/env/config                |  1 -
 arch/arm/boards/guf-vincell/board.c                |  3 +++
 arch/arm/boards/highbank/env/config-board          |  1 -
 arch/arm/boards/highbank/init.c                    |  3 +++
 arch/arm/boards/imx21ads/imx21ads.c                |  3 +++
 arch/arm/boards/imx233-olinuxino/env/config        |  2 --
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  3 +++
 arch/arm/boards/imx27ads/imx27ads.c                |  3 +++
 arch/arm/boards/karo-tx25/board.c                  |  3 +++
 arch/arm/boards/karo-tx28/env/config               |  1 -
 arch/arm/boards/karo-tx28/tx28-stk5.c              |  3 +++
 arch/arm/boards/karo-tx51/tx51.c                   |  4 +++
 arch/arm/boards/karo-tx53/board.c                  |  3 +++
 arch/arm/boards/karo-tx53/env/config-board         |  1 -
 arch/arm/boards/mioa701/board.c                    |  3 +++
 arch/arm/boards/mmccpu/init.c                      |  3 +++
 arch/arm/boards/netx/netx.c                        |  3 +++
 arch/arm/boards/nhk8815/setup.c                    |  4 +++
 arch/arm/boards/omap343xdsp/board.c                |  7 +++--
 arch/arm/boards/omap3evm/board.c                   |  6 ++---
 arch/arm/boards/panda/board.c                      |  3 +++
 arch/arm/boards/panda/env/config-board             |  1 -
 arch/arm/boards/pcm027/board.c                     |  3 +++
 arch/arm/boards/pcm027/env/config                  |  1 -
 arch/arm/boards/pcm037/env/config-board            |  1 -
 arch/arm/boards/pcm037/pcm037.c                    |  3 +++
 arch/arm/boards/pcm038/env/config-board            |  1 -
 arch/arm/boards/pcm038/pcm038.c                    |  3 +++
 arch/arm/boards/pcm043/env/config-board            |  1 -
 arch/arm/boards/pcm043/pcm043.c                    |  3 +++
 arch/arm/boards/pcm049/board.c                     |  3 +++
 arch/arm/boards/pcm049/env/config                  |  1 -
 arch/arm/boards/pcm051/board.c                     |  3 +++
 arch/arm/boards/pcm051/env/config                  |  2 --
 arch/arm/boards/phycard-a-l1/env/config            |  1 -
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |  3 +++
 arch/arm/boards/phycard-a-xl2/env/config           |  1 -
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |  3 +++
 arch/arm/boards/phycard-i.MX27/env/config          |  1 -
 arch/arm/boards/phycard-i.MX27/pca100.c            |  3 +++
 arch/arm/boards/pm9261/init.c                      |  3 +++
 arch/arm/boards/pm9263/init.c                      |  3 +++
 arch/arm/boards/pm9g45/init.c                      |  3 +++
 arch/arm/boards/qil-a926x/init.c                   |  8 ++++++
 arch/arm/boards/raspberry-pi/env/init/hostname     |  8 ------
 arch/arm/boards/raspberry-pi/rpi.c                 |  3 +++
 arch/arm/boards/sama5d3xek/init.c                  |  3 +++
 arch/arm/boards/scb9328/env/config                 |  1 -
 arch/arm/boards/scb9328/scb9328.c                  |  3 +++
 arch/arm/boards/telit-evk-pro3/init.c              |  3 +++
 arch/arm/boards/tny-a926x/init.c                   | 11 ++++++++
 arch/arm/boards/toshiba-ac100/Kconfig              |  2 --
 arch/arm/boards/tqma53/board.c                     |  4 +++
 arch/arm/boards/tqma53/env/config-board            |  1 -
 arch/arm/boards/usb-a926x/init.c                   | 11 ++++++++
 arch/arm/boards/versatile/Kconfig                  |  2 --
 arch/arm/boards/versatile/versatilepb.c            |  3 +++
 arch/arm/boards/vexpress/Kconfig                   |  2 --
 arch/arm/boards/vexpress/env/config                |  2 --
 arch/arm/boards/vexpress/init.c                    | 20 +++++++-------
 arch/arm/configs/friendlyarm_tiny210_defconfig     |  1 -
 arch/arm/configs/phycard_a_l1_defconfig            |  1 -
 arch/arm/mach-at91/Kconfig                         | 28 -------------------
 arch/arm/mach-bcm2835/Kconfig                      |  3 ---
 arch/arm/mach-clps711x/Kconfig                     |  3 ---
 arch/arm/mach-ep93xx/Kconfig                       | 24 -----------------
 arch/arm/mach-highbank/Kconfig                     |  3 ---
 arch/arm/mach-imx/Kconfig                          | 31 ----------------------
 arch/arm/mach-mvebu/Kconfig                        |  8 ------
 arch/arm/mach-mvebu/armada-370-xp.c                |  3 +++
 arch/arm/mach-mvebu/kirkwood.c                     |  3 +++
 arch/arm/mach-mxs/Kconfig                          |  8 ------
 arch/arm/mach-netx/Kconfig                         |  3 ---
 arch/arm/mach-nomadik/Kconfig                      |  3 ---
 arch/arm/mach-omap/Kconfig                         | 12 ---------
 arch/arm/mach-pxa/Kconfig                          |  5 ----
 arch/arm/mach-samsung/Kconfig                      |  8 ------
 arch/arm/mach-tegra/Kconfig                        |  3 ---
 arch/arm/mach-vexpress/Kconfig                     |  3 ---
 arch/arm/mach-zynq/Kconfig                         |  3 ---
 arch/blackfin/Kconfig                              |  3 ---
 arch/blackfin/boards/ipe337/ipe337.c               |  4 ++-
 arch/mips/boards/dlink-dir-320/Kconfig             |  6 -----
 arch/mips/boards/dlink-dir-320/serial.c            |  3 +++
 arch/mips/boards/netgear-wg102/Kconfig             |  6 -----
 arch/mips/boards/netgear-wg102/ram.c               |  3 +++
 arch/mips/boards/qemu-malta/Kconfig                |  6 -----
 arch/mips/boards/qemu-malta/init.c                 |  3 +++
 arch/mips/boards/rzx50/Kconfig                     |  6 -----
 arch/mips/boards/rzx50/serial.c                    |  3 +++
 arch/mips/mach-ar231x/Kconfig                      |  2 --
 arch/mips/mach-bcm47xx/Kconfig                     |  2 --
 arch/mips/mach-malta/Kconfig                       |  2 --
 arch/mips/mach-xburst/Kconfig                      |  2 --
 arch/nios2/Kconfig                                 |  3 ---
 arch/nios2/boards/generic/generic.c                |  3 +++
 arch/openrisc/Kconfig                              |  3 ---
 arch/openrisc/boards/generic/generic.c             |  3 +++
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |  3 +++
 arch/ppc/boards/pcm030/pcm030.c                    |  3 +++
 arch/ppc/mach-mpc5xxx/Kconfig                      |  3 ---
 arch/ppc/mach-mpc85xx/Kconfig                      |  3 ---
 arch/sandbox/Kconfig                               |  3 ---
 arch/sandbox/board/devices.c                       |  3 +++
 arch/x86/Kconfig                                   |  3 ---
 arch/x86/boards/x86_generic/generic_pc.c           |  3 +++
 common/misc.c                                      |  5 +---
 171 files changed, 341 insertions(+), 292 deletions(-)
 delete mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
 delete mode 100644 arch/mips/boards/dlink-dir-320/Kconfig
 delete mode 100644 arch/mips/boards/netgear-wg102/Kconfig
 delete mode 100644 arch/mips/boards/qemu-malta/Kconfig
 delete mode 100644 arch/mips/boards/rzx50/Kconfig

diff --git a/Documentation/board.dox b/Documentation/board.dox
index 07425e4..e545709 100644
--- a/Documentation/board.dox
+++ b/Documentation/board.dox
@@ -82,7 +82,6 @@ TBD
  - modify arch/\<architecture\>/Kconfig
   - add your board (MACH_*) to the list
   - add your default text base address for this architecture (ARCH_TEXT_BASE)
-  - add BOARDINFO with valueable info for your board
  - modify arch/\<architecture\>/Makefile:
   - add board-$(MACH_*) = \<your board_dir\>
 
diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 537e1e9..e371b4e 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -135,6 +135,9 @@ device_initcall(a9m2410_devices_init);
 
 static int a9m2410_console_init(void)
 {
+	barebox_set_model("Digi A9M2410");
+	barebox_set_hostname("a9m2410");
+
 	s3c24xx_add_uart1();
 	return 0;
 }
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 36216aa..fc0a84a 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -154,6 +154,9 @@ device_initcall(a9m2440_devices_init);
 
 static int a9m2440_console_init(void)
 {
+	barebox_set_model("Digi A9M2440");
+	barebox_set_hostname("a9m2440");
+
 	s3c24xx_add_uart1();
 	return 0;
 }
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index d8f9796..53ab123 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -245,6 +245,10 @@ static int animeo_ip_console_init(void)
 	 */
 #define ATMEL_US_BRGR	0x0020
 	at91_sys_write(AT91_DBGU + ATMEL_US_BRGR, 0);
+
+	barebox_set_model("Somfy Animeo IP");
+	barebox_set_hostname("animeoip");
+
 	at91_register_uart(3, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 0149ef2..134b350 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -26,7 +26,11 @@
 #include <readkey.h>
 #include "archos_features.h"
 
-static int archosg9_console_init(void){
+static int archosg9_console_init(void)
+{
+	barebox_set_model("Archos G9");
+	barebox_set_hostname("g9");
+
 	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT) &&
 			omap4_usbboot_ready()) {
 		add_generic_device("serial_omap4_usbboot", DEVICE_ID_DYNAMIC
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index cd8a165..af3bc03 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -183,6 +183,9 @@ device_initcall(at91rm9200ek_devices_init);
 
 static int at91rm9200ek_console_init(void)
 {
+	barebox_set_model("Atmel at91rm9200-ek");
+	barebox_set_hostname("at91rm9200-ek");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index d2ace1d..149fb58 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -265,6 +265,14 @@ device_initcall(at91sam9260ek_devices_init);
 
 static int at91sam9260ek_console_init(void)
 {
+	if (machine_is_at91sam9g20ek()) {
+		barebox_set_model("Atmel at91sam9g20-ek");
+		barebox_set_hostname("at91sam9g20-ek");
+	} else {
+		barebox_set_model("Atmel at91sam9260-ek");
+		barebox_set_hostname("at91sam9260-ek");
+	}
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 91640f9..8892b25 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -401,6 +401,14 @@ device_initcall(at91sam9261ek_devices_init);
 
 static int at91sam9261ek_console_init(void)
 {
+	if (machine_is_at91sam9g10ek()) {
+		barebox_set_model("Atmel at91sam9g10-ek");
+		barebox_set_hostname("at91sam9g10-ek");
+	} else {
+		barebox_set_model("Atmel at91sam9261-ek");
+		barebox_set_hostname("at91sam9261-ek");
+	}
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index ebc1697..1c7bbbe 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -279,6 +279,9 @@ device_initcall(at91sam9263ek_devices_init);
 
 static int at91sam9263ek_console_init(void)
 {
+	barebox_set_model("Atmel at91sam9263-ek");
+	barebox_set_hostname("at91sam9263-ek");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 5aa8695..45dc50b 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -325,6 +325,9 @@ device_initcall(at91sam9m10g45ek_devices_init);
 
 static int at91sam9m10g45ek_console_init(void)
 {
+	barebox_set_model("Atmel at91sam9m10g45-ek");
+	barebox_set_hostname("at91sam9m10g45-ek");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9m10ihd/env/config b/arch/arm/boards/at91sam9m10ihd/env/config
index bc2119e..db2713c 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/config
+++ b/arch/arm/boards/at91sam9m10ihd/env/config
@@ -3,8 +3,6 @@
 # change network settings in /env/network/eth0
 # change mtd partition settings and automountpoints in /env/init/*
 
-#global.hostname=
-
 # set to false if you do not want to have colors
 global.allow_color=true
 
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index 9135b0c..f2f3b18 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -282,6 +282,9 @@ device_initcall(at91sam9m10ihd_devices_init);
 
 static int at91sam9m10ihd_console_init(void)
 {
+	barebox_set_model("Atmel at91sam9m10ihd");
+	barebox_set_hostname("at91sam9m10ihd");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 0267a7d..c2302d6 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -333,6 +333,9 @@ device_initcall(at91sam9n12ek_devices_init);
 
 static int at91sam9n12ek_console_init(void)
 {
+	barebox_set_model("Atmel at91sam9n12-ek");
+	barebox_set_hostname("at91sam9n12-ek");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 3d4d95b..b1d3478 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -326,6 +326,9 @@ device_initcall(at91sam9x5ek_devices_init);
 
 static int at91sam9x5ek_console_init(void)
 {
+	barebox_set_model("Atmel at91sam9x5-ek");
+	barebox_set_hostname("at91sam9x5-ek");
+
 	at91_register_uart(0, 0);
 	at91_register_uart(1, 0);
 	return 0;
diff --git a/arch/arm/boards/avnet-zedboard/board.c b/arch/arm/boards/avnet-zedboard/board.c
index 7b95754..ef9a8a8 100644
--- a/arch/arm/boards/avnet-zedboard/board.c
+++ b/arch/arm/boards/avnet-zedboard/board.c
@@ -44,6 +44,9 @@ device_initcall(zedboard_device_init);
 
 static int zedboard_console_init(void)
 {
+	barebox_set_model("Avnet ZedBoard");
+	barebox_set_hostname("zedboard");
+
 	zynq_add_uart1();
 
 	return 0;
diff --git a/arch/arm/boards/avnet-zedboard/env/init/config-board b/arch/arm/boards/avnet-zedboard/env/init/config-board
index 9957653..f3032a4 100644
--- a/arch/arm/boards/avnet-zedboard/env/init/config-board
+++ b/arch/arm/boards/avnet-zedboard/env/init/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=ZedBoard
 global.linux.bootargs.base="console=ttyPS1,115200"
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 972c05e..1262df1 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -73,6 +73,9 @@
  */
 static int beagle_console_init(void)
 {
+	barebox_set_model("Texas Instruments beagle");
+	barebox_set_hostname("beagle");
+
 	omap3_add_uart3();
 
 	return 0;
diff --git a/arch/arm/boards/beagle/env/config-board b/arch/arm/boards/beagle/env/config-board
index cc0820a..dcabf4c 100644
--- a/arch/arm/boards/beagle/env/config-board
+++ b/arch/arm/boards/beagle/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=beagle
 global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index b3f39ea..52b3ec8 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -59,6 +59,9 @@
  */
 static int beaglebone_console_init(void)
 {
+	barebox_set_model("Texas Instruments beaglebone");
+	barebox_set_hostname("beaglebone");
+
 	am33xx_add_uart0();
 
 	return 0;
diff --git a/arch/arm/boards/beaglebone/env/config b/arch/arm/boards/beaglebone/env/config
index 4b7a635..fbfa7d5 100644
--- a/arch/arm/boards/beaglebone/env/config
+++ b/arch/arm/boards/beaglebone/env/config
@@ -3,8 +3,6 @@
 # change network settings in /env/network/eth0
 # change mtd partition settings and automountpoints in /env/init/*
 
-global.hostname=beaglebone
-
 # set to false if you do not want to have colors
 global.allow_color=true
 
diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 2485e12..57280d5 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -475,6 +475,9 @@ static int ccxmx51_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(ccxmx51_pads, ARRAY_SIZE(ccxmx51_pads));
 
+	barebox_set_model("Digi ConnectCore i.MX51");
+	barebox_set_hostname("cccmx51");
+
 	imx51_add_uart0();
 
 	return 0;
diff --git a/arch/arm/boards/ccxmx51/env/config-board b/arch/arm/boards/ccxmx51/env/config-board
index 26acb4b..1405344 100644
--- a/arch/arm/boards/ccxmx51/env/config-board
+++ b/arch/arm/boards/ccxmx51/env/config-board
@@ -1,7 +1,5 @@
 #!/bin/sh
 
-global.hostname=ccmx51
-
 # Timeout in seconds before the default boot entry is started
 global.autoboot_timeout=2
 
diff --git a/arch/arm/boards/chumby_falconwing/env/config b/arch/arm/boards/chumby_falconwing/env/config
index 3839b40..e160027 100644
--- a/arch/arm/boards/chumby_falconwing/env/config
+++ b/arch/arm/boards/chumby_falconwing/env/config
@@ -1,7 +1,5 @@
 #!/bin/sh
 
-global.hostname=falconwing
-
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=none
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index b029261..28c6677 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -311,6 +311,9 @@ device_initcall(falconwing_devices_init);
 
 static int falconwing_console_init(void)
 {
+	barebox_set_model("Chumby Falconwing");
+	barebox_set_hostname("falconwing");
+
 	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
 			   IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
index ec9a9cb..0ed0595 100644
--- a/arch/arm/boards/clep7212/clep7212.c
+++ b/arch/arm/boards/clep7212/clep7212.c
@@ -51,6 +51,9 @@ device_initcall(clps711x_devices_init);
 
 static int clps711x_console_init(void)
 {
+	barebox_set_model("Cirrus Logic CLEP7212");
+	barebox_set_hostname("clep7212");
+
 	clps711x_add_uart(0);
 
 	return 0;
diff --git a/arch/arm/boards/clep7212/env/config-board b/arch/arm/boards/clep7212/env/config-board
index 3cf699a..f7a8f60 100644
--- a/arch/arm/boards/clep7212/env/config-board
+++ b/arch/arm/boards/clep7212/env/config-board
@@ -1,7 +1,5 @@
 #!/bin/sh
 
-global.hostname=clps711x
-
 # Timeout in seconds before the default boot entry is started
 global.autoboot_timeout=2
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index fc3bb9e..c11bb2f 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -147,6 +147,9 @@ device_initcall(cfa10036_devices_init);
 
 static int cfa10036_console_init(void)
 {
+	barebox_set_model("crystalfontz-cfa10036");
+	barebox_set_hostname("cfa10036");
+
 	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, SZ_8K,
 			   IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/config-board b/arch/arm/boards/crystalfontz-cfa10036/env/config-board
index b99866e..fff4caa 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/config-board
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=cfa10036
 global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
index 69d93f8..3057426 100644
--- a/arch/arm/boards/dmo-mx6-realq7/board.c
+++ b/arch/arm/boards/dmo-mx6-realq7/board.c
@@ -123,6 +123,8 @@ static int realq7_console_init(void)
 	if (!of_machine_is_compatible("dmo,imx6q-realq7"))
 		return 0;
 
+	barebox_set_hostname("eDM-QMX6");
+
 	imx6_init_lowlevel();
 
 	switch (bootsource_get()) {
diff --git a/arch/arm/boards/dmo-mx6-realq7/env/config-board b/arch/arm/boards/dmo-mx6-realq7/env/config-board
index 3f05f9d..4cabac6 100644
--- a/arch/arm/boards/dmo-mx6-realq7/env/config-board
+++ b/arch/arm/boards/dmo-mx6-realq7/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=realq7
 global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index e53ae88..c246964 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -154,6 +154,9 @@ device_initcall(dss11_devices_init);
 
 static int dss11_console_init(void)
 {
+	barebox_set_model("Aizo dSS11");
+	barebox_set_hostname("dss11");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index adfcc16..27ba90a 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -83,6 +83,7 @@ device_initcall(ep93xx_devices_init);
 static int edb93xx_console_init(void)
 {
 	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
+	char *shortname, *board;
 
 	/*
 	 * set UARTBAUD bit to drive UARTs with 14.7456MHz instead of
@@ -98,6 +99,30 @@ static int edb93xx_console_init(void)
 	writel(0xAA, &syscon->sysswlock);
 	writel(value, &syscon->devicecfg);
 
+	if (IS_ENABLED(CONFIG_MACH_EDB9301))
+		shortname = "EDB9301";
+	else if (IS_ENABLED(CONFIG_MACH_EDB9302))
+		shortname = "EDB9302";
+	else if (IS_ENABLED(CONFIG_MACH_EDB9302))
+		shortname = "EDB9302A";
+	else if (IS_ENABLED(CONFIG_MACH_EDB9307))
+		shortname = "EDB9307";
+	else if (IS_ENABLED(CONFIG_MACH_EDB9307A))
+		shortname = "EDB9307A";
+	else if (IS_ENABLED(CONFIG_MACH_EDB9312))
+		shortname = "EDB9312";
+	else if (IS_ENABLED(CONFIG_MACH_EDB9315))
+		shortname = "EDB9315";
+	else if (IS_ENABLED(CONFIG_MACH_EDB9315A))
+		shortname = "EDB9315A";
+	else
+		shortname = "unknown";
+
+	board = asprintf("Cirrus Logic %s", shortname);
+	barebox_set_model(board);
+	free(board);
+	barebox_set_hostname(shortname);
+
 	add_generic_device("pl010_serial", DEVICE_ID_DYNAMIC, NULL, UART1_BASE, 4096,
 			   IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 85ff466..4469f97 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -185,6 +185,8 @@ static int efikamx_usb_init(void)
 	if (!of_machine_is_compatible("genesi,imx51-sb"))
 		return 0;
 
+	barebox_set_hostname("efikasb");
+
 	gpio_direction_output(GPIO_BLUETOOTH, 0);
 	gpio_direction_output(GPIO_WIFI_ENABLE, 1);
 	gpio_direction_output(GPIO_WIFI_RESET, 0);
diff --git a/arch/arm/boards/efika-mx-smartbook/env/config-board b/arch/arm/boards/efika-mx-smartbook/env/config-board
index 22993f9..bc8e9aa 100644
--- a/arch/arm/boards/efika-mx-smartbook/env/config-board
+++ b/arch/arm/boards/efika-mx-smartbook/env/config-board
@@ -3,7 +3,6 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=efikasb
 global.linux.bootargs.base="console=ttymxc0,115200"
 
 [ -f /env/config ] && /env/config
diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/env/config
index 63a85b2..da19677 100644
--- a/arch/arm/boards/eukrea_cpuimx25/env/config
+++ b/arch/arm/boards/eukrea_cpuimx25/env/config
@@ -5,8 +5,6 @@ otg_mode="device"
 # video : can be CMO-QVGA, URT-WVGA, DVI-VGA or DVI-SVGA
 video="CMO-QVGA"
 
-global.hostname=eukrea-cpuimx25
-
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=none
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index a6f27dc..b19367a 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -230,6 +230,9 @@ device_initcall(eukrea_cpuimx25_devices_init);
 
 static int eukrea_cpuimx25_console_init(void)
 {
+	barebox_set_model("Eukrea CPUIMX25");
+	barebox_set_hostname("eukrea-cpuimx25");
+
 	imx25_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 75f3239..7f56c67 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -210,6 +210,9 @@ static int eukrea_cpuimx27_console_init(void)
 {
 	uint32_t val;
 
+	barebox_set_model("Eukrea CPUIMX27");
+	barebox_set_hostname("eukrea-cpuimx27");
+
 #ifdef CONFIG_DRIVER_SERIAL_IMX
 	imx27_add_uart0();
 #endif
diff --git a/arch/arm/boards/eukrea_cpuimx35/env/config b/arch/arm/boards/eukrea_cpuimx35/env/config
index 50d33a4..05c4391 100644
--- a/arch/arm/boards/eukrea_cpuimx35/env/config
+++ b/arch/arm/boards/eukrea_cpuimx35/env/config
@@ -5,8 +5,6 @@ otg_mode="device"
 # video : can be CMO-QVGA, URT-WVGA, DVI-VGA or DVI-SVGA
 video="CMO-QVGA"
 
-global.hostname=eukrea-cpuimx35
-
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=none
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index e406fe8..2fbafb6 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -227,6 +227,9 @@ device_initcall(eukrea_cpuimx35_devices_init);
 
 static int eukrea_cpuimx35_console_init(void)
 {
+	barebox_set_model("Eukrea CPUIMX35");
+	barebox_set_hostname("eukrea-cpuimx35");
+
 	imx35_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/config b/arch/arm/boards/eukrea_cpuimx51/env/config
index 17f8337..57abc1e 100644
--- a/arch/arm/boards/eukrea_cpuimx51/env/config
+++ b/arch/arm/boards/eukrea_cpuimx51/env/config
@@ -8,8 +8,6 @@ video="CMO-QVGA"
 # screen type : can be 'tft' or 'dvi'
 screen_type="tft"
 
-global.hostname=eukrea-cpuimx51
-
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=none
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 523a805..1605030 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -132,6 +132,9 @@ static int eukrea_cpuimx51_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx51_pads, ARRAY_SIZE(eukrea_cpuimx51_pads));
 
+	barebox_set_model("Eukrea CPUIMX51");
+	barebox_set_hostname("eukrea-cpuimx51");
+
 	imx51_init_lowlevel(800);
 
 	imx51_add_uart0();
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 47f7031..9e55d65 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -130,6 +130,9 @@ device_initcall(mx23_evk_devices_init);
 
 static int mx23_evk_console_init(void)
 {
+	barebox_set_model("Freescale i.MX23 EVK");
+	barebox_set_hostname("mx23evk");
+
 	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
 			   IORESOURCE_MEM, NULL);
 	
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 6620a86..d2f24a9 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -268,6 +268,9 @@ static int imx25_console_init(void)
 
 	writel(0x03010101, 0x53f80024);
 
+	barebox_set_model("Freescale i.MX25 3DS");
+	barebox_set_hostname("mx25-3stack");
+
 	imx25_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx28-evk/env/config b/arch/arm/boards/freescale-mx28-evk/env/config
index 4e2c90d..adbe7f4 100644
--- a/arch/arm/boards/freescale-mx28-evk/env/config
+++ b/arch/arm/boards/freescale-mx28-evk/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=mx28-evk
 #user=
 
 # use 'dhcp' to do dhcp in barebox and in kernel
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index dfb1878..47b130a 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -285,6 +285,9 @@ device_initcall(mx28_evk_devices_init);
 
 static int mx28_evk_console_init(void)
 {
+	barebox_set_model("Freescale i.MX28 EVK");
+	barebox_set_hostname("mx28evk");
+
 	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 0x2000,
 			   IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index f30d77d..cf37947 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -260,6 +260,9 @@ static int f3s_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
 
+	barebox_set_model("Freescale i.MX35 3DS");
+	barebox_set_hostname("mx35-3stack");
+
 	imx35_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3-stack/env/config
index 122c0fc..af2fb6b 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/env/config
+++ b/arch/arm/boards/freescale-mx35-3-stack/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=mx35-3stack
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index d7f6e8b..c3ae30a 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -151,6 +151,9 @@ static int smd_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(smd_pads, ARRAY_SIZE(smd_pads));
 
+	barebox_set_model("Freescale i.MX53 SMD");
+	barebox_set_hostname("imx53-smd");
+
 	imx53_init_lowlevel(1000);
 
 	imx53_add_uart0();
diff --git a/arch/arm/boards/freescale-mx53-smd/env/config b/arch/arm/boards/freescale-mx53-smd/env/config
index d92beb9..27d2663 100644
--- a/arch/arm/boards/freescale-mx53-smd/env/config
+++ b/arch/arm/boards/freescale-mx53-smd/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=loco
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index 538ab7f..91f60cb 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -150,6 +150,9 @@ static int arm2_console_init(void)
 
 	imx6_init_lowlevel();
 
+	barebox_set_model("Freescale i.MX6 Armadillo2");
+	barebox_set_hostname("armadillo2");
+
 	imx6_add_uart3();
 
 	return 0;
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 39f465b..f87b63a 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -145,6 +145,8 @@ static int sabrelite_core_init(void)
 {
 	imx6_init_lowlevel();
 
+	barebox_set_hostname("sabrelite");
+
 	return 0;
 }
 core_initcall(sabrelite_core_init);
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/config-board b/arch/arm/boards/freescale-mx6-sabrelite/env/config-board
index e39e4b6..4cabac6 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/env/config-board
+++ b/arch/arm/boards/freescale-mx6-sabrelite/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=SabreLite
 global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 422c0d9..9c4a0f5 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -110,6 +110,8 @@ static int sabresd_core_init(void)
 {
 	imx6_init_lowlevel();
 
+	barebox_set_hostname("sabresd");
+
 	return 0;
 }
 core_initcall(sabresd_core_init);
diff --git a/arch/arm/boards/freescale-mx6-sabresd/env/config-board b/arch/arm/boards/freescale-mx6-sabresd/env/config-board
index cf936fb..e8e8378 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/env/config-board
+++ b/arch/arm/boards/freescale-mx6-sabresd/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=SabreSD
 global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/friendlyarm-mini2440/env/config b/arch/arm/boards/friendlyarm-mini2440/env/config
index 69d431a..f060aae 100644
--- a/arch/arm/boards/friendlyarm-mini2440/env/config
+++ b/arch/arm/boards/friendlyarm-mini2440/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=mini2440
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index de07bda..e551a24 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -331,6 +331,9 @@ static int mini2440_console_init(void)
 	s3c_gpio_mode(GPH2_TXD0);
 	s3c_gpio_mode(GPH3_RXD0);
 
+	barebox_set_model("Friendlyarm mini2440");
+	barebox_set_hostname("mini2440");
+
 	s3c24xx_add_uart1();
 	return 0;
 }
diff --git a/arch/arm/boards/friendlyarm-mini6410/mini6410.c b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
index 01437ac..7d5b603 100644
--- a/arch/arm/boards/friendlyarm-mini6410/mini6410.c
+++ b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
@@ -297,6 +297,9 @@ static int mini6410_console_init(void)
 	s3c_gpio_mode(GPA2_NCTS0 | ENABLE_PU);
 	s3c_gpio_mode(GPA3_NRTS0);
 
+	barebox_set_model("Friendlyarm mini6410");
+	barebox_set_hostname("mini6410");
+
 	s3c64xx_add_uart1();
 
 	return 0;
diff --git a/arch/arm/boards/friendlyarm-tiny210/tiny210.c b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
index fb144f5..890e390 100644
--- a/arch/arm/boards/friendlyarm-tiny210/tiny210.c
+++ b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
@@ -86,6 +86,9 @@ static int tiny210_console_init(void)
 	s3c_gpio_mode(GPA02_NCTS0 | ENABLE_PU);
 	s3c_gpio_mode(GPA03_NRTS0);
 
+	barebox_set_model("Friendlyarm tiny210");
+	barebox_set_hostname("tiny210");
+
 	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL,
 			   S3C_UART1_BASE, S3C_UART1_SIZE,
 			   IORESOURCE_MEM, NULL);
diff --git a/arch/arm/boards/friendlyarm-tiny6410/development-board.c b/arch/arm/boards/friendlyarm-tiny6410/development-board.c
index bf339d3..fa00537 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/development-board.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/development-board.c
@@ -92,6 +92,9 @@ static int tiny6410evk_console_init(void)
 	s3c_gpio_mode(GPA0_RXD0 | ENABLE_PU);
 	s3c_gpio_mode(GPA1_TXD0);
 
+	barebox_set_model("Friendlyarm tiny6410");
+	barebox_set_hostname("tiny6410");
+
 	s3c64xx_add_uart1();
 
 	return 0;
diff --git a/arch/arm/boards/gk802/board.c b/arch/arm/boards/gk802/board.c
index 3c703a8..fa5f320 100644
--- a/arch/arm/boards/gk802/board.c
+++ b/arch/arm/boards/gk802/board.c
@@ -77,6 +77,8 @@ static int gk802_console_init(void)
 	if (!of_machine_is_compatible("zealz,imx6q-gk802"))
 		return 0;
 
+	barebox_set_hostname("gk802");
+
 	imx6_init_lowlevel();
 
 	return 0;
diff --git a/arch/arm/boards/gk802/env/config-board b/arch/arm/boards/gk802/env/config-board
index 99540e9..e25a419 100644
--- a/arch/arm/boards/gk802/env/config-board
+++ b/arch/arm/boards/gk802/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=gk802
 global.linux.bootargs.base="console=ttymxc3,115200"
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 67a4b1d..7d5da04 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -227,6 +227,9 @@ static int cupid_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(cupid_pads, ARRAY_SIZE(cupid_pads));
 
+	barebox_set_model("Garz & Fricke CUPID");
+	barebox_set_hostname("cupid");
+
 	imx35_add_uart0();
 
 	return 0;
@@ -355,4 +358,3 @@ BAREBOX_CMD_START(cpufreq)
 	.usage          = "adjust CPU frequency",
 	BAREBOX_CMD_HELP(cmd_cpufreq_help)
 BAREBOX_CMD_END
-
diff --git a/arch/arm/boards/guf-cupid/env/config b/arch/arm/boards/guf-cupid/env/config
index 17b11a1..dc289b3 100644
--- a/arch/arm/boards/guf-cupid/env/config
+++ b/arch/arm/boards/guf-cupid/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=cupid
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 00e0d21..8e4f53e 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -289,6 +289,9 @@ device_initcall(neso_devices_init);
 
 static int neso_console_init(void)
 {
+	barebox_set_model("Garz & Fricke NESO");
+	barebox_set_hostname("neso");
+
 	imx27_add_uart0();
 
 	return 0;
diff --git a/arch/arm/boards/guf-neso/env/config b/arch/arm/boards/guf-neso/env/config
index 1758c91..bd44a55 100644
--- a/arch/arm/boards/guf-neso/env/config
+++ b/arch/arm/boards/guf-neso/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=guf-neso
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index f53a8e8..e9808fc 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -314,6 +314,9 @@ static int vincell_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(vincell_pads, ARRAY_SIZE(vincell_pads));
 
+	barebox_set_model("Garz & Fricke VINCELL");
+	barebox_set_hostname("vincell");
+
 	imx53_add_uart1();
 
 	return 0;
diff --git a/arch/arm/boards/highbank/env/config-board b/arch/arm/boards/highbank/env/config-board
index a64d9e3..da8fcf6 100644
--- a/arch/arm/boards/highbank/env/config-board
+++ b/arch/arm/boards/highbank/env/config-board
@@ -3,7 +3,6 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=highbank
 global.allow_color=true
 global.autoboot_timeout=3
 global.bootm.oftree="/dev/dtb"
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index 46ecc88..7b1be04 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -134,6 +134,9 @@ device_initcall(highbank_devices_init);
 
 static int highbank_console_init(void)
 {
+	barebox_set_model("Calxeda Highbank");
+	barebox_set_hostname("highbank");
+
 	highbank_register_uart();
 
 	return 0;
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 8717774..ea1f1a7 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -185,6 +185,9 @@ late_initcall(mx21ads_enable_display);
 
 static int mx21ads_console_init(void)
 {
+	barebox_set_model("Freescale i.MX21 ADS");
+	barebox_set_hostname("mx21ads");
+
 	imx21_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/imx233-olinuxino/env/config b/arch/arm/boards/imx233-olinuxino/env/config
index 0e95373..c84014f 100644
--- a/arch/arm/boards/imx233-olinuxino/env/config
+++ b/arch/arm/boards/imx233-olinuxino/env/config
@@ -1,7 +1,5 @@
 #!/bin/sh
 
-hostname=imx23-olinuxino
-
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=none
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index ce59a2a..def6317 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -141,6 +141,9 @@ device_initcall(imx23_olinuxino_devices_init);
 
 static int imx23_olinuxino_console_init(void)
 {
+	barebox_set_model("Olimex.ltd imx233-olinuxino");
+	barebox_set_hostname("imx233-olinuxino");
+
 	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
 			   IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index fc8cf4a..c328725 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -114,6 +114,9 @@ device_initcall(mx27ads_devices_init);
 
 static int mx27ads_console_init(void)
 {
+	barebox_set_model("Freescale i.MX27 ADS");
+	barebox_set_hostname("mx27ads");
+
 	imx27_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index bffa11e..4cb1b11 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -149,6 +149,9 @@ static int tx25_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(tx25_pads, ARRAY_SIZE(tx25_pads));
 
+	barebox_set_model("Ka-Ro TX25");
+	barebox_set_hostname("tx25");
+
 	imx25_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/karo-tx28/env/config b/arch/arm/boards/karo-tx28/env/config
index 5259376..a6b1025 100644
--- a/arch/arm/boards/karo-tx28/env/config
+++ b/arch/arm/boards/karo-tx28/env/config
@@ -1,7 +1,6 @@
 #
 #
 
-global.hostname=tx28
 baseboard=tx28stk5
 
 # use 'dhcp' to do dhcp in barebox and in kernel
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index a1b161a..a36d59a 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -398,6 +398,9 @@ void base_board_init(void)
 
 static int tx28kit_console_init(void)
 {
+	barebox_set_model("Ka-Ro TX28");
+	barebox_set_hostname("tx28");
+
 	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 0x2000,
 			   IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index d1407a8..508f6f5 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -271,6 +271,10 @@ static int tx51_console_init(void)
 {
 	imx51_init_lowlevel(800);
 	mxc_iomux_v3_setup_multiple_pads(tx51_pads, ARRAY_SIZE(tx51_pads));
+
+	barebox_set_model("Ka-Ro TX51");
+	barebox_set_hostname("tx51");
+
 	imx51_add_uart0();
 
 	return 0;
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 6ead6a9..ffef67b 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -264,6 +264,9 @@ static int tx53_console_init(void)
 	if (!IS_ENABLED(CONFIG_TX53_REV_XX30))
 		imx53_init_lowlevel(1000);
 
+	barebox_set_model("Ka-Ro TX53");
+	barebox_set_hostname("tx53");
+
 	imx53_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/karo-tx53/env/config-board b/arch/arm/boards/karo-tx53/env/config-board
index 3ebfac6..e8e8378 100644
--- a/arch/arm/boards/karo-tx53/env/config-board
+++ b/arch/arm/boards/karo-tx53/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=tx53
 global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
index b5c05a6..c46b5da 100644
--- a/arch/arm/boards/mioa701/board.c
+++ b/arch/arm/boards/mioa701/board.c
@@ -275,6 +275,9 @@ static int mioa701_coredevice_init(void)
 	asm volatile("mcr p14, 0, %0, c6, c0, 0 @ set CCLK"
 	  : : "r" (cclk) : "cc");
 
+	barebox_set_model("Scoter Mitac Mio A701");
+	barebox_set_hostname("mioa701");
+
 	return 0;
 }
 coredevice_initcall(mioa701_coredevice_init);
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 1569487..dd4b434 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -72,6 +72,9 @@ device_initcall(mmccpu_devices_init);
 
 static int mmccpu_console_init(void)
 {
+	barebox_set_model("Bucyrus MMC-CPU");
+	barebox_set_hostname("mmccpu");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index ce8086c..4171866 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -73,6 +73,9 @@ static int netx_console_init(void)
 	*(volatile unsigned long *)(0x00100808) = 2;
 	*(volatile unsigned long *)(0x0010080c) = 2;
 
+	barebox_set_model("Hilscher Netx nxdb500");
+	barebox_set_hostname("nxdb500");
+
 	add_generic_device("netx_serial", DEVICE_ID_DYNAMIC, NULL, NETX_PA_UART0, 0x40,
 			   IORESOURCE_MEM, NULL);
 	return 0;
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index b1e29d3..7cdc996 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -113,7 +113,11 @@ device_initcall(nhk8815_devices_init);
 
 static int nhk8815_console_init(void)
 {
+	barebox_set_model("Nomadik nhk8815");
+	barebox_set_hostname("nhk8815");
+
 	st8815_register_uart(1);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 654d8c0..8329ace 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -53,9 +53,6 @@
 #include <mach/gpmc.h>
 #include <errno.h>
 
-/*-----------------------CONSOLE  Devices -----------------------------------*/
-
-#ifdef CONFIG_DRIVER_SERIAL_NS16550
 /**
  * @brief UART serial port initialization - remember to enable COM clocks in arch
  *
@@ -63,13 +60,15 @@
  */
 static int sdp3430_console_init(void)
 {
+	barebox_set_model("Texas Instruments SDP343x");
+	barebox_set_hostname("sdp343x");
+
 	omap3_add_uart3();
 
 	return 0;
 }
 
 console_initcall(sdp3430_console_init);
-#endif				/* CONFIG_DRIVER_SERIAL_NS16550 */
 
 static int sdp3430_mem_init(void)
 {
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 7284f5f..25a965a 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -53,8 +53,6 @@
 #include <generated/mach-types.h>
 #include <mach/omap3-devices.h>
 
-#ifdef CONFIG_DRIVER_SERIAL_NS16550
-
 /**
  * @brief Initialize the serial port to be used as console.
  *
@@ -62,6 +60,9 @@
  */
 static int omap3evm_init_console(void)
 {
+	barebox_set_model("Texas Instruments omap3evm");
+	barebox_set_hostname("omap3evm");
+
 	if (IS_ENABLED(CONFIG_OMAP_UART1))
 		omap3_add_uart1();
 	if (IS_ENABLED(CONFIG_OMAP_UART3))
@@ -70,7 +71,6 @@ static int omap3evm_init_console(void)
 	return 0;
 }
 console_initcall(omap3evm_init_console);
-#endif /* CONFIG_DRIVER_SERIAL_NS16550 */
 
 static int omap3evm_mem_init(void)
 {
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index d1f9a5e..2912002 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -33,6 +33,9 @@ static int board_revision;
 
 static int panda_console_init(void)
 {
+	barebox_set_model("Texas Instruments panda");
+	barebox_set_hostname("panda");
+
 	omap44xx_add_uart3();
 
 	return 0;
diff --git a/arch/arm/boards/panda/env/config-board b/arch/arm/boards/panda/env/config-board
index 27e7339..dcabf4c 100644
--- a/arch/arm/boards/panda/env/config-board
+++ b/arch/arm/boards/panda/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=panda
 global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/pcm027/board.c b/arch/arm/boards/pcm027/board.c
index 13b425b..b39a297 100644
--- a/arch/arm/boards/pcm027/board.c
+++ b/arch/arm/boards/pcm027/board.c
@@ -178,6 +178,9 @@ static int pcm027_console_init(void)
 	/* enable clock */
 	CKEN |= CKEN_FFUART;
 
+	barebox_set_model("Phytec phyCORE-PXA270");
+	barebox_set_hostname("pcm027");
+
 	pxa_add_uart((void *)0x40100000, 0);
 
 	return 0;
diff --git a/arch/arm/boards/pcm027/env/config b/arch/arm/boards/pcm027/env/config
index ec2752a..d427800 100644
--- a/arch/arm/boards/pcm027/env/config
+++ b/arch/arm/boards/pcm027/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=pcm027
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/pcm037/env/config-board b/arch/arm/boards/pcm037/env/config-board
index 03f9e97..e8e8378 100644
--- a/arch/arm/boards/pcm037/env/config-board
+++ b/arch/arm/boards/pcm037/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=pcm037
 global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index de83c99..b461b97 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -248,6 +248,9 @@ static int imx31_console_init(void)
 {
 	imx_iomux_setup_multiple_pins(pcm037_iomux, ARRAY_SIZE(pcm037_iomux));
 
+	barebox_set_model("Phytec phyCORE-i.MX31");
+	barebox_set_hostname("phycore-imx31");
+
 	imx31_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/pcm038/env/config-board b/arch/arm/boards/pcm038/env/config-board
index 93fd41b..e8e8378 100644
--- a/arch/arm/boards/pcm038/env/config-board
+++ b/arch/arm/boards/pcm038/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=pcm038
 global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index b573289..40201fd 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -367,6 +367,9 @@ device_initcall(pcm038_devices_init);
 
 static int pcm038_console_init(void)
 {
+	barebox_set_model("Phytec phyCORE-i.MX27");
+	barebox_set_hostname("phycore-imx27");
+
 	imx27_add_uart0();
 
 	return 0;
diff --git a/arch/arm/boards/pcm043/env/config-board b/arch/arm/boards/pcm043/env/config-board
index 545fdff..e8e8378 100644
--- a/arch/arm/boards/pcm043/env/config-board
+++ b/arch/arm/boards/pcm043/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=pcm043
 global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 68b7864..b15e98c 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -209,6 +209,9 @@ static int imx35_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(pcm043_pads, ARRAY_SIZE(pcm043_pads));
 
+	barebox_set_model("Phytec phyCORE-i.MX35");
+	barebox_set_hostname("phycore-imx35");
+
 	imx35_add_uart0();
 
 	return 0;
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 6e4dbf6..60bc54b 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -42,6 +42,9 @@
 
 static int pcm049_console_init(void)
 {
+	barebox_set_model("Phytec phyCORE-OMAP4460");
+	barebox_set_hostname("phycore-omap4460");
+
 	omap44xx_add_uart3();
 
 	return 0;
diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/pcm049/env/config
index aa87228..1a252dd 100644
--- a/arch/arm/boards/pcm049/env/config
+++ b/arch/arm/boards/pcm049/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=pcm049
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/board.c
index 1993f34..2a65b3c 100644
--- a/arch/arm/boards/pcm051/board.c
+++ b/arch/arm/boards/pcm051/board.c
@@ -50,6 +50,9 @@
  */
 static int pcm051_console_init(void)
 {
+	barebox_set_model("Phytec phyCORE-AM335x");
+	barebox_set_hostname("phycore-am335x");
+
 	am33xx_enable_uart0_pin_mux();
 	/* Register the serial port */
 	am33xx_add_uart0();
diff --git a/arch/arm/boards/pcm051/env/config b/arch/arm/boards/pcm051/env/config
index dd35ff4..a9fe440 100644
--- a/arch/arm/boards/pcm051/env/config
+++ b/arch/arm/boards/pcm051/env/config
@@ -3,8 +3,6 @@
 # change network settings in /env/network/eth0
 # change mtd partition settings and automountpoints in /env/init/*
 
-global.hostname=pcm051
-
 # set to false if you do not want to have colors
 global.allow_color=true
 
diff --git a/arch/arm/boards/phycard-a-l1/env/config b/arch/arm/boards/phycard-a-l1/env/config
index 6de97ed..a3f452b 100644
--- a/arch/arm/boards/phycard-a-l1/env/config
+++ b/arch/arm/boards/phycard-a-l1/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=pcaal1
 #user=
 
 # Enter MAC address here if not retrieved automatically
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 7cf6ae8..26a0ce7 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -68,6 +68,9 @@
  */
 static int pcaal1_init_console(void)
 {
+	barebox_set_model("Phytec phyCARD-OMAP3");
+	barebox_set_hostname("phycard-omap3");
+
 	omap3_add_uart3();
 
 	return 0;
diff --git a/arch/arm/boards/phycard-a-xl2/env/config b/arch/arm/boards/phycard-a-xl2/env/config
index 349a51f..998f9fa 100644
--- a/arch/arm/boards/phycard-a-xl2/env/config
+++ b/arch/arm/boards/phycard-a-xl2/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=pcaaxl2
 user=
 
 # use 'dhcp' to do dhcp in barebox and in kernel
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 8f79d98..e79512d 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -41,6 +41,9 @@
 
 static int pcaaxl2_console_init(void)
 {
+	barebox_set_model("Phytec phyCARD-OMAP4");
+	barebox_set_hostname("phycard-omap4");
+
 	omap44xx_add_uart3();
 
 	return 0;
diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
index 5f77440..9596311 100644
--- a/arch/arm/boards/phycard-i.MX27/env/config
+++ b/arch/arm/boards/phycard-i.MX27/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=pca100
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 4740756..2d4b53b 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -303,6 +303,9 @@ device_initcall(pca100_devices_init);
 
 static int pca100_console_init(void)
 {
+	barebox_set_model("Phytec phyCARD-i.MX27");
+	barebox_set_hostname("phycard-imx27");
+
 	imx27_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 51dc351..62a6eaf 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -157,6 +157,9 @@ device_initcall(pm9261_devices_init);
 
 static int pm9261_console_init(void)
 {
+	barebox_set_model("Ronetix PM9261");
+	barebox_set_hostname("pm9261");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 559e321..112a946 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -141,6 +141,9 @@ device_initcall(pm9263_devices_init);
 
 static int pm9263_console_init(void)
 {
+	barebox_set_model("Ronetix PM9263");
+	barebox_set_hostname("pm9263");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 9bb1f1f..d80abd2 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -169,6 +169,9 @@ device_initcall(pm9g45_devices_init);
 
 static int pm9g45_console_init(void)
 {
+	barebox_set_model("Ronetix PM9G45");
+	barebox_set_hostname("pm9g45");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 58ab386..76237f4 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -241,6 +241,14 @@ console_initcall(qil_a9260_console_init);
 
 static int qil_a9260_main_clock(void)
 {
+	if (machine_is_qil_a9g20()) {
+		barebox_set_model("Calao QIL-a9G20");
+		barebox_set_hostname("qil-a9g20");
+	} else {
+		barebox_set_model("Calao QIL-A9260");
+		barebox_set_hostname("qil-a9260");
+	}
+
 	at91_set_main_clock(12000000);
 	return 0;
 }
diff --git a/arch/arm/boards/raspberry-pi/env/init/hostname b/arch/arm/boards/raspberry-pi/env/init/hostname
deleted file mode 100644
index 7e8f294..0000000
--- a/arch/arm/boards/raspberry-pi/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=Raspberry-Pi
diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index 3be95ae..d4912cc 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -29,6 +29,9 @@ mem_initcall(rpi_mem_init);
 
 static int rpi_console_init(void)
 {
+	barebox_set_model("RaspberryPi (BCM2835/ARM1176JZF-S)");
+	barebox_set_hostname("rpi");
+
 	bcm2835_register_uart();
 	return 0;
 }
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 6aae167..6c658d1 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -427,6 +427,9 @@ device_initcall(at91sama5d3xek_devices_init);
 
 static int at91sama5d3xek_console_init(void)
 {
+	barebox_set_model("Atmel sama5d3x-ek");
+	barebox_set_hostname("sama5d3x-ek");
+
 	at91_register_uart(0, 0);
 	at91_register_uart(2, 0);
 	return 0;
diff --git a/arch/arm/boards/scb9328/env/config b/arch/arm/boards/scb9328/env/config
index ce6310b..c3cbce5 100644
--- a/arch/arm/boards/scb9328/env/config
+++ b/arch/arm/boards/scb9328/env/config
@@ -1,6 +1,5 @@
 #!/bin/sh
 
-global.hostname=scb9328
 eth0.serverip=
 user=
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index d91b21d..b4e10dc 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -92,6 +92,9 @@ static int scb9328_console_init(void)
 	imx_gpio_mode(PC11_PF_UART1_TXD);
 	imx_gpio_mode(PC12_PF_UART1_RXD);
 
+	barebox_set_model("Synertronixx scb9328");
+	barebox_set_hostname("scb9328");
+
 	imx1_add_uart0();
 
 	return 0;
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index b933f9f..470eff3 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -170,6 +170,9 @@ device_initcall(evk_devices_init);
 
 static int evk_console_init(void)
 {
+	barebox_set_model("Telit EVK-PRO3");
+	barebox_set_hostname("evkpr03");
+
 	at91_register_uart(0, 0);
 	return 0;
 }
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index cdfe046..55783e9 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -246,6 +246,17 @@ device_initcall(tny_a9260_devices_init);
 
 static int tny_a9260_console_init(void)
 {
+	if (machine_is_tny_a9g20()) {
+		barebox_set_model("Calao TNY-A9G20");
+		barebox_set_hostname("tny-a9g20");
+	} else if (machine_is_tny_a9263()) {
+		barebox_set_model("Calao TNY-A9263");
+		barebox_set_hostname("tny-a9263");
+	} else {
+		barebox_set_model("Calao TNY-A9260");
+		barebox_set_hostname("tny-a9260");
+	}
+
 	at91_register_uart(0, 0);
 	if (IS_ENABLED(CONFIG_CALAO_MOB_TNY_MD2))
 		at91_register_uart(2, ATMEL_UART_CTS | ATMEL_UART_RTS);
diff --git a/arch/arm/boards/toshiba-ac100/Kconfig b/arch/arm/boards/toshiba-ac100/Kconfig
index abba2cc..1cc13f0 100644
--- a/arch/arm/boards/toshiba-ac100/Kconfig
+++ b/arch/arm/boards/toshiba-ac100/Kconfig
@@ -4,6 +4,4 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x01000000
 
-config BOARDINFO
-	default "Toshiba AC100 (Tegra2)"
 endif
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 19ad37e..f6b4ee3 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -253,6 +253,10 @@ late_initcall(tqma53_part_init);
 static int tqma53_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(tqma53_pads, ARRAY_SIZE(tqma53_pads));
+
+	barebox_set_model("TQ tqma53");
+	barebox_set_hostname("tqma53");
+
 	imx53_add_uart1();
 
 	return 0;
diff --git a/arch/arm/boards/tqma53/env/config-board b/arch/arm/boards/tqma53/env/config-board
index 28d015e..4cabac6 100644
--- a/arch/arm/boards/tqma53/env/config-board
+++ b/arch/arm/boards/tqma53/env/config-board
@@ -3,5 +3,4 @@
 # board defaults, do not change in running system. Change /env/config
 # instead
 
-global.hostname=tqma53
 global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 74d4867..4a49df4 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -423,6 +423,17 @@ static int usb_a9260_console_init(void)
 {
 	struct device_d *dev;
 
+	if (machine_is_usb_a9260()) {
+		barebox_set_model("Calao USB-A9260");
+		barebox_set_hostname("usb-a9260");
+	} else if (machine_is_usb_a9g20()) {
+		barebox_set_model("Calao USB-A9G20");
+		barebox_set_hostname("usb-a9g20");
+	} else {
+		barebox_set_model("Calao USB-A9263");
+		barebox_set_hostname("usb-a9263");
+	}
+
 	at91_register_uart(0, 0);
 
 	if (IS_ENABLED(CONFIG_CALAO_DAB_MMX)) {
diff --git a/arch/arm/boards/versatile/Kconfig b/arch/arm/boards/versatile/Kconfig
index 2428901..94cba3b 100644
--- a/arch/arm/boards/versatile/Kconfig
+++ b/arch/arm/boards/versatile/Kconfig
@@ -5,6 +5,4 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x01000000
 
-config BOARDINFO
-	default "ARM Versatile/PB (ARM926EJ-S)"
 endif
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 2eb7473..ebf3695 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -31,6 +31,9 @@
 
 static int vpb_console_init(void)
 {
+	barebox_set_model("ARM Versatile/PB (ARM926EJ-S)");
+	barebox_set_hostname("versatilepb");
+
 	versatile_register_uart(0);
 	return 0;
 }
diff --git a/arch/arm/boards/vexpress/Kconfig b/arch/arm/boards/vexpress/Kconfig
index 2428901..94cba3b 100644
--- a/arch/arm/boards/vexpress/Kconfig
+++ b/arch/arm/boards/vexpress/Kconfig
@@ -5,6 +5,4 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x01000000
 
-config BOARDINFO
-	default "ARM Versatile/PB (ARM926EJ-S)"
 endif
diff --git a/arch/arm/boards/vexpress/env/config b/arch/arm/boards/vexpress/env/config
index 852f242..6c0abda 100644
--- a/arch/arm/boards/vexpress/env/config
+++ b/arch/arm/boards/vexpress/env/config
@@ -3,8 +3,6 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
-# set in c
-#global.hostname=vexpress
 global.dhcp.vendor_id=barebox-${global.hostname}
 
 # or set your networking parameters here
diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 2b2d085..48bc11e 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -22,7 +22,6 @@ struct vexpress_init {
 	void (*mem_init)(void);
 	void (*console_init)(void);
 	void (*devices_init)(void);
-	char *hostname;
 };
 
 struct vexpress_init *v2m_init;
@@ -87,7 +86,6 @@ struct vexpress_init vexpress_init_a9_legacy = {
 	.mem_init = vexpress_a9_legacy_mem_init,
 	.console_init = vexpress_a9_legacy_console_init,
 	.devices_init = vexpress_a9_legacy_devices_init,
-	.hostname = "vexpress-a9-legacy",
 };
 
 static int vexpress_mem_init(void)
@@ -106,10 +104,6 @@ static int vexpress_devices_init(void)
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
-
-	globalvar_add_simple("hostname");
-	setenv("global.hostname", v2m_init->hostname);
-
 	return 0;
 }
 device_initcall(vexpress_devices_init);
@@ -124,20 +118,26 @@ console_initcall(vexpress_console_init);
 
 static int vexpress_core_init(void)
 {
+	char *hostname;
+
 	if (amba_is_arm_sp804(IOMEM(0x10011000))) {
 		v2m_init = &vexpress_init_a9_legacy;
+		hostname = "vexpress-a9-legacy";
 	} else {
 		v2m_init = &vexpress_init_ax;
 		if (cpu_is_cortex_a5())
-			v2m_init->hostname = "vexpress-a5";
+			hostname = "vexpress-a5";
 		else if (cpu_is_cortex_a7())
-			v2m_init->hostname = "vexpress-a7";
+			hostname = "vexpress-a7";
 		else if (cpu_is_cortex_a9())
-			v2m_init->hostname = "vexpress-a9";
+			hostname = "vexpress-a9";
 		else if (cpu_is_cortex_a15())
-			v2m_init->hostname = "vexpress-a15";
+			hostname = "vexpress-a15";
 	}
 
+	barebox_set_model("ARM Vexpress");
+	barebox_set_hostname(hostname);
+
 	v2m_init->core_init();
 
 	return 0;
diff --git a/arch/arm/configs/friendlyarm_tiny210_defconfig b/arch/arm/configs/friendlyarm_tiny210_defconfig
index e9708bf..8686c65 100644
--- a/arch/arm/configs/friendlyarm_tiny210_defconfig
+++ b/arch/arm/configs/friendlyarm_tiny210_defconfig
@@ -1,7 +1,6 @@
 CONFIG_ARCH_S5PCxx=y
 CONFIG_CPU_V7=y
 CONFIG_CPU_32v7=y
-CONFIG_BOARDINFO="Tiny 210"
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE=0x1ff0
 CONFIG_ARCH_SAMSUNG=y
 CONFIG_CPU_S5PV210=y
diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index fabaa2d..cdf292c 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -5,7 +5,6 @@ CONFIG_ARCH_OMAP=y
 CONFIG_CPU_32=y
 CONFIG_CPU_V7=y
 CONFIG_CPU_32v7=y
-CONFIG_BOARDINFO="Phytec phyCARD-A-L1"
 CONFIG_ARCH_OMAP3=y
 CONFIG_OMAP_CLOCK_SOURCE_S32K=y
 CONFIG_OMAP3_CLOCK_CONFIG=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 8116b62..5fb3ead 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -35,34 +35,6 @@ config ARCH_TEXT_BASE
 	default 0x21f00000 if MACH_ANIMEO_IP
 	default 0x23f00000
 
-config BOARDINFO
-	default "Atmel at91rm9200-ek" if MACH_AT91RM9200EK
-	default "Atmel at91sam9260-ek" if MACH_AT91SAM9260EK
-	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
-	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
-	default "Atmel at91sam9g10-ek" if MACH_AT91SAM9G10EK
-	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
-	default "Atmel at91sam9m10ihd" if MACH_AT91SAM9M10IHD
-	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
-	default "Atmel at91sam9n12-ek" if MACH_AT91SAM9N12EK
-	default "Atmel at91sam9x5-ek" if MACH_AT91SAM9X5EK
-	default "Atmel sama5d3x-ek" if MACH_SAMA5D3XEK
-	default "Bucyrus MMC-CPU" if MACH_MMCCPU
-	default "Calao USB-A9260" if MACH_USB_A9260
-	default "Calao USB-A9263" if MACH_USB_A9263
-	default "Calao USB-A9G20" if MACH_USB_A9G20
-	default "Ronetix PM9261" if MACH_PM9261
-	default "Ronetix PM9263" if MACH_PM9263
-	default "Ronetix PM9G45" if MACH_PM9G45
-	default "Aizo dSS11" if MACH_DSS11
-	default "Calao TNY-A9260" if MACH_TNY_A9260
-	default "Calao TNY-A9263" if MACH_TNY_A9263
-	default "Calao TNY-A9G20" if MACH_TNY_A9G20
-	default "Calao QIL-A9260" if MACH_QIL_A9260
-	default "Calao QIL-A9G20" if MACH_QIL_A9G20
-	default "Somfy Animeo IP" if MACH_ANIMEO_IP
-	default "Telit EVK-PRO3" if MACH_GE863
-
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
 
diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
index 9d97aea..134ad9b 100644
--- a/arch/arm/mach-bcm2835/Kconfig
+++ b/arch/arm/mach-bcm2835/Kconfig
@@ -4,9 +4,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x04000000 if MACH_RPI
 
-config BOARDINFO
-	default "RaspberryPi (BCM2835/ARM1176JZF-S)" if MACH_RPI
-
 choice
 	prompt "Broadcom Board type"
 
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index b774c54..0853ce2 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -22,9 +22,6 @@ config CLPS711X_RAISE_CPUFREQ
 
 endmenu
 
-config BOARDINFO
-	default "Cirrus Logic CLEP7212" if MACH_CLEP7212
-
 config ARCH_TEXT_BASE
 	hex
 	default 0xc0780000 if MACH_CLEP7212
diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
index 90859d5..91f6c8e 100644
--- a/arch/arm/mach-ep93xx/Kconfig
+++ b/arch/arm/mach-ep93xx/Kconfig
@@ -45,9 +45,6 @@ endchoice
 
 if MACH_EDB9301
 
-config BOARDINFO
-	default "Cirrus Logic EDB9301"
-
 config ARCH_TEXT_BASE
 	hex
 	default 0x05700000
@@ -115,9 +112,6 @@ endchoice
 
 if MACH_EDB9302
 
-config BOARDINFO
-	default "Cirrus Logic EDB9302"
-
 config ARCH_TEXT_BASE
 	hex
 	default 0x05700000
@@ -162,9 +156,6 @@ endif
 
 if MACH_EDB9302A
 
-config BOARDINFO
-	default "Cirrus Logic EDB9302A"
-
 config ARCH_TEXT_BASE
 	hex
 	default 0xc5700000
@@ -232,9 +223,6 @@ endchoice
 
 if MACH_EDB9307
 
-config BOARDINFO
-	default "Cirrus Logic EDB9307"
-
 config ARCH_TEXT_BASE
 	hex
 	default 0x01f00000
@@ -263,9 +251,6 @@ endif
 
 if MACH_EDB9307A
 
-config BOARDINFO
-	default "Cirrus Logic EDB9307A"
-
 config ARCH_TEXT_BASE
 	hex
 	default 0xc1f00000
@@ -311,9 +296,6 @@ endchoice
 
 if MACH_EDB9312
 
-config BOARDINFO
-	default "Cirrus Logic EDB9312"
-
 config ARCH_TEXT_BASE
 	hex
 	default 0x01f00000
@@ -365,9 +347,6 @@ endchoice
 
 if MACH_EDB9315
 
-config BOARDINFO
-	default "Cirrus Logic EDB9315"
-
 config ARCH_TEXT_BASE
 	hex
 	default 0x01f00000
@@ -396,9 +375,6 @@ endif
 
 if MACH_EDB9315A
 
-config BOARDINFO
-	default "Cirrus Logic EDB9315A"
-
 config ARCH_TEXT_BASE
 	hex
 	default 0xc1f00000
diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
index 9cfe539..950810b 100644
--- a/arch/arm/mach-highbank/Kconfig
+++ b/arch/arm/mach-highbank/Kconfig
@@ -4,9 +4,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x03f00000
 
-config BOARDINFO
-	default "Calxeda Highbank" if MACH_HIGHBANK
-
 choice
 	prompt "Calxeda Board type"
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e087e11..8687606 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -36,37 +36,6 @@ config ARCH_TEXT_BASE
 	default 0x2fc00000 if MACH_TQMA6X
 	default 0x4fc00000 if MACH_PHYTEC_PFLA02
 
-config BOARDINFO
-	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
-	default "Eukrea CPUIMX27" if MACH_EUKREA_CPUIMX27
-	default "Eukrea CPUIMX35" if MACH_EUKREA_CPUIMX35
-	default "Eukrea CPUIMX51" if MACH_EUKREA_CPUIMX51SD
-	default "Freescale i.MX21 ADS" if MACH_IMX21ADS
-	default "Freescale i.MX27 ADS" if MACH_IMX27ADS
-	default "Freescale MX35 3Stack" if MACH_FREESCALE_MX35_3STACK
-	default "Freescale MX25 3Stack" if MACH_FREESCALE_MX25_3STACK
-	default "Phytec phyCard-i.MX27" if MACH_PCA100
-	default "Phytec phyCORE-i.MX27" if MACH_PCM038
-	default "Phytec phyCORE-i.MX31" if MACH_PCM037
-	default "Phytec phyCORE-i.MX35" if MACH_PCM043
-	default "Synertronixx scb9328" if MACH_SCB9328
-	default "Garz+Fricke Neso" if MACH_NESO
-	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
-	default "Efika MX smartbook" if MACH_EFIKA_MX_SMARTBOOK
-	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
-	default "Ka-Ro tx25" if MACH_TX25
-	default "TQ TQMa53" if MACH_TQMA53
-	default "Ka-Ro tx51" if MACH_TX51
-	default "Freescale i.MX6q armadillo2" if MACH_MX6Q_ARM2
-	default "ConnectCore i.MX51" if MACH_CCMX51
-	default "Sabre Lite" if MACH_SABRELITE
-	default "Ka-Ro tx53" if MACH_TX53
-	default "Garz+Fricke Vincell" if MACH_GUF_VINCELL
-	default "SabreSD" if MACH_SABRESD
-	default "DataModul i.MX6Q Real Qseven" if MACH_REALQ7
-	default "Zealz GK802" if MACH_GK802
-	default "unused" if IMX_MULTI_BOARDS
-
 choice
 	prompt "Select boot mode"
 	depends on !HAVE_PBL_MULTI_IMAGES
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 3c38642..a9e5aa9 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -9,14 +9,6 @@ config ARCH_TEXT_BASE
 	default 0x2000000 if MACH_MARVELL_ARMADA_XP_GP
 	default 0x2000000 if MACH_SOLIDRUN_CUBOX
 
-config BOARDINFO
-	default "PlatHome OpenBlocks AX3" if MACH_PLATHOME_OPENBLOCKS_AX3
-	default "Globalscale Mirabox" if MACH_GLOBALSCALE_MIRABOX
-	default "Globalscale Guruplug" if MACH_GLOBALSCALE_GURUPLUG
-	default "Marvell Armada XP GP" if MACH_MARVELL_ARMADA_XP_GP
-	default "SolidRun CuBox" if MACH_SOLIDRUN_CUBOX
-	default "USI Topkick" if MACH_USI_TOPKICK
-
 choice
 	prompt "Marvell EBU Processor"
 
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 24720d5..b1d148d 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -100,6 +100,9 @@ static int armada_370_xp_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
+	barebox_set_model("Marvell Armada");
+	barebox_set_hostname("armada");
+
 	armada_370_xp_init_clocks();
 	clkdev_add_physbase(tclk, (unsigned int)ARMADA_370_XP_TIMER_BASE, NULL);
 	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 2ec175a..d114675 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -85,6 +85,9 @@ static int kirkwood_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
+	barebox_set_model("Marvell kirkwood");
+	barebox_set_hostname("kirkwood");
+
 	kirkwood_init_clocks();
 	clkdev_add_physbase(tclk, (unsigned int)KIRKWOOD_TIMER_BASE, NULL);
 	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 128bf84..214f940 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -9,14 +9,6 @@ config ARCH_TEXT_BASE
 	default 0x47000000 if MACH_MX28EVK
 	default 0x47000000 if MACH_CFA10036
 
-config BOARDINFO
-	default "Freescale i.MX23-EVK" if MACH_MX23EVK
-	default "Chumby Falconwing" if MACH_CHUMBY
-	default "Olimex.ltd imx233-olinuxino" if MACH_IMX233_OLINUXINO
-	default "Karo TX28" if MACH_TX28
-	default "Freescale i.MX28-EVK" if MACH_MX28EVK
-	default "Crystalfontz CFA-10036" if MACH_CFA10036
-
 comment "Freescale i.MX System-on-Chip"
 
 choice
diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
index 3c62d60..63cfe3b 100644
--- a/arch/arm/mach-netx/Kconfig
+++ b/arch/arm/mach-netx/Kconfig
@@ -4,9 +4,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x81f00000 if MACH_NXDB500
 
-config BOARDINFO
-	default "Hilscher Netx nxdb500" if MACH_NXDB500
-
 config NETX_SDRAM_CTRL
 	hex
 	default 0x010D0121 if MACH_NXDB500
diff --git a/arch/arm/mach-nomadik/Kconfig b/arch/arm/mach-nomadik/Kconfig
index 3d6eab6..51d490d 100644
--- a/arch/arm/mach-nomadik/Kconfig
+++ b/arch/arm/mach-nomadik/Kconfig
@@ -4,9 +4,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x03c00000 if MACH_NOMADIK_8815NHK
 
-config BOARDINFO
-	default "NHK8815" if MACH_NOMADIK_8815NHK
-
 choice
 	prompt "Nomadik boards"
 
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index e1879df..16d1180 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -111,18 +111,6 @@ config CMD_BOOT_ORDER
 	help
 	  A command to choose the next boot device on a warm reset.
 
-config BOARDINFO
-	default "Archos G9" if MACH_ARCHOSG9
-	default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
-	default "Texas Instrument's Beagle Board" if MACH_BEAGLE
-	default "Texas Instrument's Beagle Bone" if MACH_BEAGLEBONE
-	default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
-	default "Texas Instrument's Panda" if MACH_PANDA
-	default "Phytec phyCORE pcm049" if MACH_PCM049
-	default "Phytec phyCARD-A-L1" if MACH_PCAAL1
-	default "Phytec phyCARD-A-XL2" if MACH_PCAAXL2
-	default "Phytec phyCORE-AM335x" if MACH_PCM051
-
 choice
 	prompt "Select OMAP board"
 
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 2bc040c..cdec1b7 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -5,11 +5,6 @@ config ARCH_TEXT_BASE
 	default 0xa0000000 if MACH_MIOA701
 	default 0xa3f00000 if MACH_PCM027
 
-config BOARDINFO
-	string
-	default "Scoter Mitac Mio A701" if MACH_MIOA701
-	default "Phytec phyCORE-PXA270" if MACH_PCM027
-
 # ----------------------------------------------------------
 
 config ARCH_PXA2XX
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index a4dc301..562b392 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -12,14 +12,6 @@ config ARCH_TEXT_BASE
 	default 0x31fc0000 if MACH_A9M2410
 	default 0x23e00000 if MACH_TINY210
 
-config BOARDINFO
-	default "Mini 2440" if MACH_MINI2440
-	default "Mini 6410" if MACH_MINI6410
-	default "Tiny 6410" if MACH_TINY6410
-	default "Digi A9M2440" if MACH_A9M2440
-	default "Digi A9M2410" if MACH_A9M2410
-	default "Tiny 210" if MACH_TINY210
-
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
 	default 0x1ff0 if ARCH_S5PCxx
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 9224e62..e6d53bc 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -67,9 +67,6 @@ endchoice
 
 if MACH_TEGRA20_GENERIC
 
-config BOARDINFO
-	default "Generic Tegra20 board"
-
 endif #MACH_TEGRA20_GENERIC
 
 source arch/arm/boards/toshiba-ac100/Kconfig
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index c595494..bf1dd5a 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -4,9 +4,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x83f00000
 
-config BOARDINFO
-	default "ARM Vexpress" if MACH_VEXPRESS
-
 choice
 	prompt "ARM Board type"
 
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 49a12f7..6d02cb2 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -8,9 +8,6 @@ config ZYNQ_DEBUG_LL_UART_BASE
 	hex
 	default 0xe0001000 if MACH_ZEDBOARD
 
-config BOARDINFO
-	default "ZedBoard" if MACH_ZEDBOARD
-
 choice
 	prompt "Xilinx Zynq type board"
 
diff --git a/arch/blackfin/Kconfig b/arch/blackfin/Kconfig
index 5d8a2e2..bea9f51 100644
--- a/arch/blackfin/Kconfig
+++ b/arch/blackfin/Kconfig
@@ -10,9 +10,6 @@ config BLACKFIN
 config BF561
 	bool
 
-config BOARDINFO
-	default "PII IPE337" if MACH_IPE337
-
 config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 9c1de2c..84cc786 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -36,6 +36,9 @@ device_initcall(ipe337_devices_init);
 
 static int blackfin_console_init(void)
 {
+	barebox_set_model("PII ipe337");
+	barebox_set_hostname("ipe337");
+
 	add_generic_device("blackfin_serial", DEVICE_ID_DYNAMIC, NULL, 0, 4096,
 			   IORESOURCE_MEM, NULL);
 
@@ -43,4 +46,3 @@ static int blackfin_console_init(void)
 }
 
 console_initcall(blackfin_console_init);
-
diff --git a/arch/mips/boards/dlink-dir-320/Kconfig b/arch/mips/boards/dlink-dir-320/Kconfig
deleted file mode 100644
index 0393d04..0000000
--- a/arch/mips/boards/dlink-dir-320/Kconfig
+++ /dev/null
@@ -1,6 +0,0 @@
-if BOARD_DLINK_DIR320
-
-config BOARDINFO
-	default "D-Link DIR-320"
-
-endif
diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
index 099af20..bddb683 100644
--- a/arch/mips/boards/dlink-dir-320/serial.c
+++ b/arch/mips/boards/dlink-dir-320/serial.c
@@ -31,6 +31,9 @@ static struct NS16550_plat serial_plat = {
 
 static int dir320_console_init(void)
 {
+	barebox_set_model("D-Link DIR-320");
+	barebox_set_hostname("dir320");
+
 	/* Register the serial port */
 	add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
 			IORESOURCE_MEM_8BIT, &serial_plat);
diff --git a/arch/mips/boards/netgear-wg102/Kconfig b/arch/mips/boards/netgear-wg102/Kconfig
deleted file mode 100644
index ceca6de..0000000
--- a/arch/mips/boards/netgear-wg102/Kconfig
+++ /dev/null
@@ -1,6 +0,0 @@
-if BOARD_NETGEAR_WG102
-
-config BOARDINFO
-	default "Netgear WG102"
-
-endif
diff --git a/arch/mips/boards/netgear-wg102/ram.c b/arch/mips/boards/netgear-wg102/ram.c
index 00a008a..e26dc7c 100644
--- a/arch/mips/boards/netgear-wg102/ram.c
+++ b/arch/mips/boards/netgear-wg102/ram.c
@@ -5,6 +5,9 @@
 
 static int mem_init(void)
 {
+	barebox_set_model("Netgear wg102");
+	barebox_set_hostname("wg102");
+
 	mips_add_ram0(SZ_16M);
 	return 0;
 }
diff --git a/arch/mips/boards/qemu-malta/Kconfig b/arch/mips/boards/qemu-malta/Kconfig
deleted file mode 100644
index 6d86c14..0000000
--- a/arch/mips/boards/qemu-malta/Kconfig
+++ /dev/null
@@ -1,6 +0,0 @@
-if BOARD_QEMU_MALTA
-
-config BOARDINFO
-	default "qemu malta"
-
-endif
diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
index f77fcad..ddc90dc 100644
--- a/arch/mips/boards/qemu-malta/init.c
+++ b/arch/mips/boards/qemu-malta/init.c
@@ -43,6 +43,9 @@ static struct NS16550_plat serial_plat = {
 
 static int malta_console_init(void)
 {
+	barebox_set_model("qemu malta");
+	barebox_set_hostname("malta");
+
 	/* Register the serial port */
 	add_ns16550_device(DEVICE_ID_DYNAMIC, MALTA_PIIX4_UART0, 8,
 			IORESOURCE_MEM_8BIT, &serial_plat);
diff --git a/arch/mips/boards/rzx50/Kconfig b/arch/mips/boards/rzx50/Kconfig
deleted file mode 100644
index 38401aa..0000000
--- a/arch/mips/boards/rzx50/Kconfig
+++ /dev/null
@@ -1,6 +0,0 @@
-if BOARD_RZX50
-
-config BOARDINFO
-	default "Ritmix RZX-50"
-
-endif
diff --git a/arch/mips/boards/rzx50/serial.c b/arch/mips/boards/rzx50/serial.c
index 129806d..0038c1d 100644
--- a/arch/mips/boards/rzx50/serial.c
+++ b/arch/mips/boards/rzx50/serial.c
@@ -22,6 +22,9 @@
 
 static int rzx50_console_init(void)
 {
+	barebox_set_model("Ritmix RZX-50");
+	barebox_set_hostname("rzx50");
+
 	/* Register the serial port */
 	jz_add_uart(DEVICE_ID_DYNAMIC, UART1_BASE, 12000000);
 
diff --git a/arch/mips/mach-ar231x/Kconfig b/arch/mips/mach-ar231x/Kconfig
index 3f338ea..5f9e243 100644
--- a/arch/mips/mach-ar231x/Kconfig
+++ b/arch/mips/mach-ar231x/Kconfig
@@ -14,6 +14,4 @@ config BOARD_NETGEAR_WG102
 
 endchoice
 
-source arch/mips/boards/netgear-wg102/Kconfig
-
 endif
diff --git a/arch/mips/mach-bcm47xx/Kconfig b/arch/mips/mach-bcm47xx/Kconfig
index d0df0fd..f7522b7 100644
--- a/arch/mips/mach-bcm47xx/Kconfig
+++ b/arch/mips/mach-bcm47xx/Kconfig
@@ -12,6 +12,4 @@ config BOARD_DLINK_DIR320
 
 endchoice
 
-source arch/mips/boards/dlink-dir-320/Kconfig
-
 endif
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index 67763f8..1bf2b0e 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -15,6 +15,4 @@ config BOARD_QEMU_MALTA
 
 endchoice
 
-source arch/mips/boards/qemu-malta/Kconfig
-
 endif
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index e6413d5..706d592 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -35,6 +35,4 @@ endchoice
 endif # CPU_JZ4755
 endif # DEBUG_LL
 
-source arch/mips/boards/rzx50/Kconfig
-
 endif
diff --git a/arch/nios2/Kconfig b/arch/nios2/Kconfig
index c49f6e9..116daa9 100644
--- a/arch/nios2/Kconfig
+++ b/arch/nios2/Kconfig
@@ -9,9 +9,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
 
-config BOARDINFO
-	default "Altera Generic Board" if GENERIC
-
 choice
 	prompt "Select your board"
 
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 499d93b..61b60b6 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -60,6 +60,9 @@ device_initcall(generic_devices_init);
 
 static int altera_console_init(void)
 {
+	barebox_set_model("Altera Generic Board");
+	barebox_set_hostname("nios2");
+
 	add_generic_device("altera_serial", DEVICE_ID_DYNAMIC, NULL,
 			NIOS_SOPC_UART_BASE, 0x20, IORESOURCE_MEM, NULL);
 
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 47ee3fe..d8d4ee9 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -9,9 +9,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
 
-config BOARDINFO
-	default "or1k" if GENERIC
-
 choice
 	prompt "Select your board"
 
diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
index 14b5e18..e366d85 100644
--- a/arch/openrisc/boards/generic/generic.c
+++ b/arch/openrisc/boards/generic/generic.c
@@ -11,6 +11,9 @@ static struct NS16550_plat serial_plat = {
 
 static int openrisc_console_init(void)
 {
+	barebox_set_model("OpenRISC or1k");
+	barebox_set_hostname("or1k");
+
 	/* Register the serial port */
 	add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
 	return 0;
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 537565d..4d2ff22 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -106,6 +106,9 @@ static struct NS16550_plat serial_plat = {
 
 static int p2020_console_init(void)
 {
+	barebox_set_model("Freescale P2020 RDB");
+	barebox_set_hostname("p2020rdb");
+
 	serial_plat.clock = fsl_get_bus_freq(0);
 
 	add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16, IORESOURCE_MEM_8BIT,
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index f9bed79..0762bd4 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -67,6 +67,9 @@ device_initcall(devices_init);
 
 static int console_init(void)
 {
+	barebox_set_model("Phytec phyCORE MPC5200 tiny");
+	barebox_set_hostname("mpc5200");
+
 	add_generic_device("mpc5xxx_serial", DEVICE_ID_DYNAMIC, NULL, MPC5XXX_PSC3, 0x200,
 			   IORESOURCE_MEM, NULL);
 	add_generic_device("mpc5xxx_serial", DEVICE_ID_DYNAMIC, NULL, MPC5XXX_PSC6, 0x200,
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 34254eb..180aa32 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -1,8 +1,5 @@
 if ARCH_MPC5XXX
 
-config BOARDINFO
-	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
-
 config ARCH_TEXT_BASE
 	hex
 	default 0x00000000 if RELOCATABLE
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index 8cde1bd..9af4af4 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -4,9 +4,6 @@ config TEXT_BASE
 	hex
 	default 0xeff80000 if P2020RDB
 
-config BOARDINFO
-	default "P2020_RDB" if P2020RDB
-
 config MPC85xx
 	bool
 	default y if P2020RDB
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 84fadda..707fca3 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -6,9 +6,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
 
-config BOARDINFO
-	default "sandbox"
-
 config LINUX
 	bool
 	default y
diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
index 62091ee..10d6b67 100644
--- a/arch/sandbox/board/devices.c
+++ b/arch/sandbox/board/devices.c
@@ -21,6 +21,9 @@ static int sandbox_device_init(void)
 {
 	struct device_d *dev, *tmp;
 
+	barebox_set_model("barebox sandbox");
+	barebox_set_hostname("barebox");
+
 	list_for_each_entry_safe(dev, tmp, &sandbox_device_list, list) {
 		/* reset the list_head before registering for real */
 		dev->list.prev = NULL;
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 6589ae7..d8d7f0e 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -5,9 +5,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x00007c00 if MACH_X86_GENERIC
 
-config BOARDINFO
-	default "Generic x86 bootloader" if MACH_X86_GENERIC
-
 config BOARD_LINKER_SCRIPT
 	bool
 	default n
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index 9d37069..172c531 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -75,6 +75,9 @@ static struct NS16550_plat serial_plat = {
 
 static int pc_console_init(void)
 {
+	barebox_set_model("X86 generic barebox");
+	barebox_set_hostname("x86");
+
 	/* Register the serial port */
 	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, 0, &serial_plat);
 
diff --git a/common/misc.c b/common/misc.c
index 4ec0e22..d5ddfc4 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -146,10 +146,7 @@ EXPORT_SYMBOL(barebox_set_model);
 
 const char *barebox_get_model(void)
 {
-	if (model)
-		return model;
-
-	return CONFIG_BOARDINFO;
+	return model;
 }
 EXPORT_SYMBOL(barebox_get_model);
 
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
