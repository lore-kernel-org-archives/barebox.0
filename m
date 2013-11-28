Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm5xC-0008Up-OR
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:04:52 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DA1F1FFA8BE
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 19:04:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 28 Nov 2013 19:06:46 +0100
Message-Id: <1385662007-13057-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/6] AT91: switch to machine description
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c        | 23 ++++++-------
 arch/arm/boards/at91rm9200ek/init.c     | 11 ++++---
 arch/arm/boards/at91sam9260ek/init.c    | 58 ++++++++++++++++++++-------------
 arch/arm/boards/at91sam9261ek/init.c    | 33 +++++++++++--------
 arch/arm/boards/at91sam9263ek/init.c    | 14 ++++----
 arch/arm/boards/at91sam9m10g45ek/init.c | 12 ++++---
 arch/arm/boards/at91sam9m10ihd/init.c   | 20 +++++++-----
 arch/arm/boards/at91sam9n12ek/init.c    | 12 ++++---
 arch/arm/boards/at91sam9x5ek/init.c     | 12 ++++---
 arch/arm/boards/dss11/init.c            | 12 ++++---
 arch/arm/boards/mmccpu/init.c           | 14 ++++----
 arch/arm/boards/pm9261/init.c           | 12 ++++---
 arch/arm/boards/pm9263/init.c           | 14 ++++----
 arch/arm/boards/pm9g45/init.c           | 12 ++++---
 arch/arm/boards/qil-a926x/init.c        | 50 ++++++++++++++++------------
 arch/arm/boards/sama5d3xek/init.c       | 17 +++++++---
 arch/arm/boards/telit-evk-pro3/init.c   | 17 +++++++---
 arch/arm/boards/tny-a926x/init.c        | 48 +++++++++++++++------------
 arch/arm/boards/usb-a926x/init.c        | 50 ++++++++++++++++------------
 19 files changed, 262 insertions(+), 179 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index f095553..0ec989c 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -10,6 +10,7 @@
 #include <environment.h>
 #include <fec.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -307,11 +308,6 @@ static int animeo_ip_devices_init(void)
 	animeo_ip_add_device_led();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	/*
-	 * in production the machine id used is the cpu module machine id
-	 * PICOCOM1
-	 */
-	armlinux_set_architecture(MACH_TYPE_PICOCOM1);
 
 	devfs_add_partition("nand0", 0x00000, SZ_32K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
@@ -325,8 +321,6 @@ static int animeo_ip_devices_init(void)
 	return 0;
 }
 
-device_initcall(animeo_ip_devices_init);
-
 static struct device_d *usart0, *usart1;
 
 static void animeo_ip_shutdown_uart(void *base)
@@ -355,19 +349,16 @@ static int animeo_ip_console_init(void)
 	usart1 = at91_register_uart(2, ATMEL_UART_RTS);
 	board_shutdown = animeo_ip_shutdown;
 
-	barebox_set_model("Somfy Animeo IP");
 	barebox_set_hostname("animeoip");
 
 	return 0;
 }
-console_initcall(animeo_ip_console_init);
 
 static int animeo_ip_main_clock(void)
 {
 	at91_initialize(18432000);
 	return 0;
 }
-pure_initcall(animeo_ip_main_clock);
 
 static unsigned int get_char_timeout(struct console_device *cs, int timeout)
 {
@@ -428,4 +419,14 @@ err:
 
 	return 0;
 }
-late_initcall(animeo_ip_cross_detect_init);
+
+/*
+ * in production the machine id used is the cpu module machine id
+ * PICOCOM1
+ */
+MACHINE_START(PICOCOM1, "Somfy Animeo IP")
+	.pure_init = animeo_ip_main_clock,
+	.console_init = animeo_ip_console_init,
+	.device_init = animeo_ip_devices_init,
+	.late_init = animeo_ip_cross_detect_init,
+MACHINE_END
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 279d819..ea25aec 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -176,21 +177,17 @@ static int at91rm9200ek_devices_init(void)
 #endif
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_AT91RM9200EK);
 
 	return 0;
 }
-device_initcall(at91rm9200ek_devices_init);
 
 static int at91rm9200ek_console_init(void)
 {
-	barebox_set_model("Atmel at91rm9200-ek");
 	barebox_set_hostname("at91rm9200-ek");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(at91rm9200ek_console_init);
 
 static int at91rm9200ek_main_clock(void)
 {
@@ -198,3 +195,9 @@ static int at91rm9200ek_main_clock(void)
 	return 0;
 }
 pure_initcall(at91rm9200ek_main_clock);
+
+MACHINE_START(AT91RM9200EK, "Atmel at91rm9200-ek")
+	.pure_init = at91rm9200ek_main_clock,
+	.console_init = at91rm9200ek_console_init,
+	.device_init = at91rm9200ek_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 8ae0942..01f1110 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -16,6 +16,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <nand.h>
 #include <sizes.h>
@@ -25,26 +26,9 @@
 #include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91_rstc.h>
+#include <mach/cpu.h>
 #include <linux/clk.h>
 
-/*
- * board revision encoding
- * bit 0:
- *	0 => 1 mmc
- *	1 => 2 mmcs (board from revision C)
- */
-#define HAVE_2MMC	(1 << 0)
-static void ek_set_board_type(void)
-{
-	if (machine_is_at91sam9g20ek()) {
-		armlinux_set_architecture(MACH_TYPE_AT91SAM9G20EK);
-		if (IS_ENABLED(CONFIG_AT91_HAVE_2MMC))
-			armlinux_set_revision(HAVE_2MMC);
-	} else {
-		armlinux_set_architecture(MACH_TYPE_AT91SAM9260EK);
-	}
-}
-
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
@@ -249,7 +233,6 @@ static int at91sam9260ek_devices_init(void)
 	ek_add_led();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	ek_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
@@ -262,22 +245,41 @@ static int at91sam9260ek_devices_init(void)
 
 	return 0;
 }
-device_initcall(at91sam9260ek_devices_init);
+
+/*
+ * board revision encoding
+ * bit 0:
+ *	0 => 1 mmc
+ *	1 => 2 mmcs (board from revision C)
+ */
+#define HAVE_2MMC	(1 << 0)
 
 static int at91sam9260ek_console_init(void)
 {
 	if (machine_is_at91sam9g20ek()) {
-		barebox_set_model("Atmel at91sam9g20-ek");
 		barebox_set_hostname("at91sam9g20-ek");
+		if (IS_ENABLED(CONFIG_AT91_HAVE_2MMC)) {
+			armlinux_set_revision(HAVE_2MMC);
+			barebox_set_model("Atmel at91sam9g20-ek 2MMC");
+		}
 	} else {
-		barebox_set_model("Atmel at91sam9260-ek");
 		barebox_set_hostname("at91sam9260-ek");
 	}
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(at91sam9260ek_console_init);
+
+static int at91sam9260ek_machine_detect(void)
+{
+	if (cpu_is_at91sam9g20())
+		arm_set_machine(MACH_TYPE_AT91SAM9G20EK);
+	else
+		arm_set_machine(MACH_TYPE_AT91SAM9260EK);
+
+	return 0;
+}
+postcore_initcall(at91sam9260ek_machine_detect);
 
 static int at91sam9260ek_main_clock(void)
 {
@@ -285,3 +287,13 @@ static int at91sam9260ek_main_clock(void)
 	return 0;
 }
 pure_initcall(at91sam9260ek_main_clock);
+
+MACHINE_START(AT91SAM9260EK, "Atmel at91sam9260-ek")
+	.console_init = at91sam9260ek_console_init,
+	.device_init = at91sam9260ek_devices_init,
+MACHINE_END
+
+MACHINE_START(AT91SAM9G20EK, "Atmel at91sam9g20-ek")
+	.console_init = at91sam9260ek_console_init,
+	.device_init = at91sam9260ek_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 88b48cb..3640cc9 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -30,6 +31,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
+#include <mach/cpu.h>
 #include <gpio.h>
 #include <mach/io.h>
 #include <mach/iomux.h>
@@ -390,35 +392,40 @@ static int at91sam9261ek_devices_init(void)
 	dev_add_bb_dev("env_raw1", "env1");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	if (machine_is_at91sam9g10ek())
-		armlinux_set_architecture(MACH_TYPE_AT91SAM9G10EK);
-	else
-		armlinux_set_architecture(MACH_TYPE_AT91SAM9261EK);
 
 	return 0;
 }
 
-device_initcall(at91sam9261ek_devices_init);
-
 static int at91sam9261ek_console_init(void)
 {
-	if (machine_is_at91sam9g10ek()) {
-		barebox_set_model("Atmel at91sam9g10-ek");
+	if (machine_is_at91sam9g10ek())
 		barebox_set_hostname("at91sam9g10-ek");
-	} else {
-		barebox_set_model("Atmel at91sam9261-ek");
+	else
 		barebox_set_hostname("at91sam9261-ek");
-	}
 
 	at91_register_uart(0, 0);
 	return 0;
 }
 
-console_initcall(at91sam9261ek_console_init);
-
 static int at91sam9261ek_main_clock(void)
 {
 	at91_initialize(18432000);
+
+	if (cpu_is_at91sam9g10())
+		arm_set_machine(MACH_TYPE_AT91SAM9G10EK);
+	else
+		arm_set_machine(MACH_TYPE_AT91SAM9261EK);
+
 	return 0;
 }
 pure_initcall(at91sam9261ek_main_clock);
+
+MACHINE_START(AT91SAM9261EK, "Atmel at91sam9261-ek")
+	.console_init = at91sam9261ek_console_init,
+	.device_init = at91sam9261ek_devices_init,
+MACHINE_END
+
+MACHINE_START(AT91SAM9G10EK, "Atmel at91sam9g10-ek")
+	.console_init = at91sam9261ek_devices_init,
+	.device_init = at91sam9261ek_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 7011a94..626dafb 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -21,6 +21,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -271,27 +272,26 @@ static int at91sam9263ek_devices_init(void)
 	}
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_AT91SAM9263EK);
 
 	return 0;
 }
 
-device_initcall(at91sam9263ek_devices_init);
-
 static int at91sam9263ek_console_init(void)
 {
-	barebox_set_model("Atmel at91sam9263-ek");
 	barebox_set_hostname("at91sam9263-ek");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
 
-console_initcall(at91sam9263ek_console_init);
-
 static int at91sam9263ek_main_clock(void)
 {
 	at91_initialize(16367660);
 	return 0;
 }
-pure_initcall(at91sam9263ek_main_clock);
+
+MACHINE_START(AT91SAM9263EK, "Atmel at91sam9263-ek")
+	.pure_init = at91sam9263ek_main_clock,
+	.console_init = at91sam9263ek_console_init,
+	.device_init = at91sam9263ek_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 0eb0f44..3cedfd8 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -23,6 +23,7 @@
 #include <gpio.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -317,26 +318,27 @@ static int at91sam9m10g45ek_devices_init(void)
 	dev_add_bb_dev("env_raw1", "env1");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_AT91SAM9M10G45EK);
 	ek_set_board_revision();
 
 	return 0;
 }
-device_initcall(at91sam9m10g45ek_devices_init);
 
 static int at91sam9m10g45ek_console_init(void)
 {
-	barebox_set_model("Atmel at91sam9m10g45-ek");
 	barebox_set_hostname("at91sam9m10g45-ek");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(at91sam9m10g45ek_console_init);
 
 static int at91sam9m10g45ek_main_clock(void)
 {
 	at91_initialize(12000000);
 	return 0;
 }
-pure_initcall(at91sam9m10g45ek_main_clock);
+
+MACHINE_START(AT91SAM9M10G45EK, "Atmel at91sam9m10g45-ek")
+	.pure_init = at91sam9m10g45ek_main_clock,
+	.console_init = at91sam9m10g45ek_console_init,
+	.device_init = at91sam9m10g45ek_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index 0452366..7f33314 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -271,29 +272,30 @@ static int at91sam9m10ihd_devices_init(void)
 	dev_add_bb_dev("env_raw1", "env1");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
-	/*
-	 * The internal Atmel kernel use the SAM9M10G45EK machine id
-	 * The mainline use DT
-	 */
-	armlinux_set_architecture(MACH_TYPE_AT91SAM9M10G45EK);
 
 	return 0;
 }
-device_initcall(at91sam9m10ihd_devices_init);
 
 static int at91sam9m10ihd_console_init(void)
 {
-	barebox_set_model("Atmel at91sam9m10ihd");
 	barebox_set_hostname("at91sam9m10ihd");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(at91sam9m10ihd_console_init);
 
 static int at91sam9m10ihd_main_clock(void)
 {
 	at91_initialize(12000000);
 	return 0;
 }
-pure_initcall(at91sam9m10ihd_main_clock);
+
+/*
+ * The internal Atmel kernel use the SAM9M10G45EK machine id
+ * The mainline use DT
+ */
+MACHINE_START(AT91SAM9M10G45EK, "Atmel at91sam9m10ihd")
+	.pure_init = at91sam9m10ihd_main_clock,
+	.console_init = at91sam9m10ihd_console_init,
+	.device_init = at91sam9m10ihd_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index eb21c51..dcd6bac 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -20,6 +20,7 @@
 #include <environment.h>
 #include <fec.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -317,7 +318,6 @@ static int at91sam9n12ek_devices_init(void)
 	ek_add_device_lcdc();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(CONFIG_MACH_AT91SAM9N12EK);
 
 	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
@@ -330,21 +330,23 @@ static int at91sam9n12ek_devices_init(void)
 
 	return 0;
 }
-device_initcall(at91sam9n12ek_devices_init);
 
 static int at91sam9n12ek_console_init(void)
 {
-	barebox_set_model("Atmel at91sam9n12-ek");
 	barebox_set_hostname("at91sam9n12-ek");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(at91sam9n12ek_console_init);
 
 static int at91sam9n12ek_main_clock(void)
 {
 	at91_initialize(16000000);
 	return 0;
 }
-pure_initcall(at91sam9n12ek_main_clock);
+
+MACHINE_START(AT91SAM9N12EK, "Atmel at91sam9n12-ek")
+	.pure_init = at91sam9n12ek_main_clock,
+	.console_init = at91sam9n12ek_console_init,
+	.device_init = at91sam9n12ek_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index e41cd53..bd4000d 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -20,6 +20,7 @@
 #include <environment.h>
 #include <fec.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -310,7 +311,6 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_lcdc();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
 
 	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
@@ -323,22 +323,24 @@ static int at91sam9x5ek_devices_init(void)
 
 	return 0;
 }
-device_initcall(at91sam9x5ek_devices_init);
 
 static int at91sam9x5ek_console_init(void)
 {
-	barebox_set_model("Atmel at91sam9x5-ek");
 	barebox_set_hostname("at91sam9x5-ek");
 
 	at91_register_uart(0, 0);
 	at91_register_uart(1, 0);
 	return 0;
 }
-console_initcall(at91sam9x5ek_console_init);
 
 static int at91sam9x5ek_main_clock(void)
 {
 	at91_initialize(12000000);
 	return 0;
 }
-pure_initcall(at91sam9x5ek_main_clock);
+
+MACHINE_START(AT91SAM9X5EK, "Atmel at91sam9x5-ek")
+	.pure_init = at91sam9x5ek_main_clock,
+	.console_init = at91sam9x5ek_console_init,
+	.device_init = at91sam9x5ek_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 1c76d4f..4ddefea 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -19,6 +19,7 @@
 #include <environment.h>
 #include <fec.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -140,7 +141,6 @@ static int dss11_devices_init(void)
 	at91_add_device_usbh_ohci(&dss11_usbh_data);
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_DSS11);
 
 	devfs_add_partition("nand0", 0x00000, 0x20000, DEVFS_PARTITION_FIXED, "bootstrap");
 	dev_add_bb_dev("bootstrap", "bootstrap.bb");
@@ -151,21 +151,23 @@ static int dss11_devices_init(void)
 
 	return 0;
 }
-device_initcall(dss11_devices_init);
 
 static int dss11_console_init(void)
 {
-	barebox_set_model("Aizo dSS11");
 	barebox_set_hostname("dss11");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(dss11_console_init);
 
 static int dss11_main_clock(void)
 {
 	at91_initialize(18432000);
 	return 0;
 }
-pure_initcall(dss11_main_clock);
+
+MACHINE_START(DSS11, "Aizo dSS11")
+	.pure_init = dss11_main_clock,
+	.console_init = dss11_console_init,
+	.device_init = dss11_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index d13ef50..879d01b 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -21,6 +21,7 @@
 #include <fec.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -64,27 +65,26 @@ static int mmccpu_devices_init(void)
 	devfs_add_partition("nor0", 0x40000, 128 * 1024, DEVFS_PARTITION_FIXED, "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_MMCCPU);
 
 	return 0;
 }
 
-device_initcall(mmccpu_devices_init);
-
 static int mmccpu_console_init(void)
 {
-	barebox_set_model("Bucyrus MMC-CPU");
 	barebox_set_hostname("mmccpu");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
 
-console_initcall(mmccpu_console_init);
-
 static int mmccpu_main_clock(void)
 {
 	at91_initialize(18432000);
 	return 0;
 }
-pure_initcall(mmccpu_main_clock);
+
+MACHINE_START(MMCCPU, "Bucyrus MMC-CPU")
+	.pure_init = mmccpu_main_clock,
+	.console_init = mmccpu_console_init,
+	.device_init = mmccpu_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index cced419..58604c5 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -22,6 +22,7 @@
 #include <gpio.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -150,25 +151,26 @@ static int pm9261_devices_init(void)
 	devfs_add_partition("nor0", 0x40000, 0x10000, DEVFS_PARTITION_FIXED, "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_PM9261);
 
 	return 0;
 }
-device_initcall(pm9261_devices_init);
 
 static int pm9261_console_init(void)
 {
-	barebox_set_model("Ronetix PM9261");
 	barebox_set_hostname("pm9261");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(pm9261_console_init);
 
 static int pm9261_main_clock(void)
 {
 	at91_initialize(18432000);
 	return 0;
 }
-pure_initcall(pm9261_main_clock);
+
+MACHINE_START(PM9261, "Ronetix PM9261")
+	.pure_init = pm9261_main_clock,
+	.console_init = pm9261_console_init,
+	.device_init = pm9261_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 78ec9ce..02fc5a4 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -22,6 +22,7 @@
 #include <environment.h>
 #include <fec.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -133,27 +134,26 @@ static int pm9263_devices_init(void)
 	devfs_add_partition("nor0", 0x40000, 0x10000, DEVFS_PARTITION_FIXED, "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_PM9263);
 
 	return 0;
 }
 
-device_initcall(pm9263_devices_init);
-
 static int pm9263_console_init(void)
 {
-	barebox_set_model("Ronetix PM9263");
 	barebox_set_hostname("pm9263");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
 
-console_initcall(pm9263_console_init);
-
 static int pm9263_main_clock(void)
 {
 	at91_initialize(18432000);
 	return 0;
 }
-pure_initcall(pm9263_main_clock);
+
+MACHINE_START(PM9263, "Ronetix PM9263")
+	.pure_init = pm9263_main_clock,
+	.console_init = pm9263_console_init,
+	.device_init = pm9263_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index caeec43..ea29409 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -21,6 +21,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -162,25 +163,26 @@ static int pm9g45_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_PM9G45);
 
 	return 0;
 }
-device_initcall(pm9g45_devices_init);
 
 static int pm9g45_console_init(void)
 {
-	barebox_set_model("Ronetix PM9G45");
 	barebox_set_hostname("pm9g45");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(pm9g45_console_init);
 
 static int pm9g45_main_clock(void)
 {
 	at91_initialize(12000000);
 	return 0;
 }
-pure_initcall(pm9g45_main_clock);
+
+MACHINE_START(PM9G45, "Ronetix PM9G45")
+	.pure_init = pm9g45_main_clock,
+	.console_init = pm9g45_console_init,
+	.device_init = pm9g45_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 3ec7dba..a745029 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -22,6 +23,7 @@
 #include <linux/clk.h>
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
+#include <mach/cpu.h>
 #include <gpio.h>
 #include <led.h>
 #include <mach/io.h>
@@ -29,14 +31,6 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 
-static void qil_a9260_set_board_type(void)
-{
-	if (machine_is_qil_a9g20())
-		armlinux_set_architecture(MACH_TYPE_QIL_A9G20);
-	else
-		armlinux_set_architecture(MACH_TYPE_QIL_A9260);
-}
-
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
@@ -204,7 +198,6 @@ static int qil_a9260_devices_init(void)
 	qil_a9260_add_device_mb();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	qil_a9260_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
@@ -217,10 +210,8 @@ static int qil_a9260_devices_init(void)
 
 	return 0;
 }
-device_initcall(qil_a9260_devices_init);
 
-#ifdef CONFIG_CALAO_MB_QIL_A9260
-static int qil_a9260_console_init(void)
+static int qil_a9260_uart_init(void)
 {
 	at91_register_uart(0, 0);
 	at91_set_A_periph(AT91_PIN_PB14, 1);    /* Enable pull-up on DRXD */
@@ -237,20 +228,39 @@ static int qil_a9260_console_init(void)
 
 	return 0;
 }
-console_initcall(qil_a9260_console_init);
-#endif
 
-static int qil_a9260_main_clock(void)
+static int qil_a9260_console_init(void)
 {
-	if (machine_is_qil_a9g20()) {
-		barebox_set_model("Calao QIL-a9G20");
+	if (IS_ENABLED(CONFIG_CALAO_MB_QIL_A9260))
+		qil_a9260_uart_init();
+
+	if (machine_is_tny_a9g20())
 		barebox_set_hostname("qil-a9g20");
-	} else {
-		barebox_set_model("Calao QIL-A9260");
+	else
 		barebox_set_hostname("qil-a9260");
-	}
 
+	return 0;
+}
+
+static int qil_a9260_main_clock(void)
+{
 	at91_initialize(12000000);
+
+	if (cpu_is_at91sam9g20()) 
+		arm_set_machine(MACH_TYPE_QIL_A9G20);
+	else
+		arm_set_machine(MACH_TYPE_QIL_A9260);
+
 	return 0;
 }
 pure_initcall(qil_a9260_main_clock);
+
+MACHINE_START(QIL_A9260, "Calao QIL-A9260")
+	.console_init = qil_a9260_console_init,
+	.device_init = qil_a9260_devices_init,
+MACHINE_END
+
+MACHINE_START(QIL_A9G20, "Calao QIL-A9G20")
+	.console_init = qil_a9260_console_init,
+	.device_init = qil_a9260_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 312b319..3522a45 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -424,22 +425,30 @@ static int at91sama5d3xek_devices_init(void)
 
 	return 0;
 }
-device_initcall(at91sama5d3xek_devices_init);
 
 static int at91sama5d3xek_console_init(void)
 {
-	barebox_set_model("Atmel sama5d3x-ek");
 	barebox_set_hostname("sama5d3x-ek");
 
 	at91_register_uart(0, 0);
 	at91_register_uart(2, 0);
 	return 0;
 }
-console_initcall(at91sama5d3xek_console_init);
 
 static int at91sama5d3xek_main_clock(void)
 {
 	at91_initialize(12000000);
 	return 0;
 }
-pure_initcall(at91sama5d3xek_main_clock);
+
+static const char *atmel_sama5d3xmb_compat[] = {
+	"atmel,sama5d3xmb",
+	NULL
+};
+
+DT_MACHINE_START(atmel_sama5d3xmb, "Atmel sama5d3x-ek")
+	.pure_init = at91sama5d3xek_main_clock,
+	.console_init = at91sama5d3xek_console_init,
+	.device_init = at91sama5d3xek_devices_init,
+	.dt_compat = atmel_sama5d3xmb_compat,
+MACHINE_END
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index c077d3f..bf121c2 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -14,6 +14,7 @@
  */
 
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
@@ -167,21 +168,29 @@ static int evk_devices_init(void)
 
 	return 0;
 }
-device_initcall(evk_devices_init);
 
 static int evk_console_init(void)
 {
-	barebox_set_model("Telit EVK-PRO3");
 	barebox_set_hostname("evkpr03");
 
 	at91_register_uart(0, 0);
 	return 0;
 }
-console_initcall(evk_console_init);
 
 static int evk_main_clock(void)
 {
 	at91_initialize(6000000);
 	return 0;
 }
-pure_initcall(evk_main_clock);
+
+static const char *telit_evk_pro3b_compat[] = {
+	"telit,evk-pro3",
+	NULL
+};
+
+DT_MACHINE_START(telit_evk_pro3b, "Telit EVK-PRO3")
+	.pure_init = evk_main_clock,
+	.console_init = evk_console_init,
+	.device_init = evk_devices_init,
+	.dt_compat = telit_evk_pro3b_compat,
+MACHINE_END
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 91ee82e..b7ccf34 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -32,6 +33,7 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/at91sam9_sdramc.h>
+#include <mach/cpu.h>
 #include <gpio.h>
 #include <mach/io.h>
 #include <mach/iomux.h>
@@ -39,16 +41,6 @@
 #include <mach/at91_rstc.h>
 #include <spi/eeprom.h>
 
-static void tny_a9260_set_board_type(void)
-{
-	if (machine_is_tny_a9g20())
-		armlinux_set_architecture(MACH_TYPE_TNY_A9G20);
-	else if (machine_is_tny_a9263())
-		armlinux_set_architecture(MACH_TYPE_TNY_A9263);
-	else
-		armlinux_set_architecture(MACH_TYPE_TNY_A9260);
-}
-
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
@@ -230,7 +222,6 @@ static int tny_a9260_devices_init(void)
 	ek_add_device_spi();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	tny_a9260_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
@@ -243,31 +234,48 @@ static int tny_a9260_devices_init(void)
 
 	return 0;
 }
-device_initcall(tny_a9260_devices_init);
 
 static int tny_a9260_console_init(void)
 {
-	if (machine_is_tny_a9g20()) {
-		barebox_set_model("Calao TNY-A9G20");
+	if (machine_is_tny_a9g20())
 		barebox_set_hostname("tny-a9g20");
-	} else if (machine_is_tny_a9263()) {
-		barebox_set_model("Calao TNY-A9263");
+	else if (machine_is_tny_a9263())
 		barebox_set_hostname("tny-a9263");
-	} else {
-		barebox_set_model("Calao TNY-A9260");
+	else
 		barebox_set_hostname("tny-a9260");
-	}
 
 	at91_register_uart(0, 0);
 	if (IS_ENABLED(CONFIG_CALAO_MOB_TNY_MD2))
 		at91_register_uart(2, ATMEL_UART_CTS | ATMEL_UART_RTS);
 	return 0;
 }
-console_initcall(tny_a9260_console_init);
 
 static int tny_a9260_main_clock(void)
 {
 	at91_initialize(12000000);
+
+	if (cpu_is_at91sam9g20())
+		arm_set_machine(MACH_TYPE_TNY_A9G20);
+	else if (cpu_is_at91sam9263())
+		arm_set_machine(MACH_TYPE_TNY_A9263);
+	else
+		arm_set_machine(MACH_TYPE_TNY_A9260);
+
 	return 0;
 }
 pure_initcall(tny_a9260_main_clock);
+
+MACHINE_START(TNY_A9260, "Calao TNY-A9260")
+	.console_init = tny_a9260_console_init,
+	.device_init = tny_a9260_devices_init,
+MACHINE_END
+
+MACHINE_START(TNY_A9263, "Calao TNY-A9263")
+	.console_init = tny_a9260_console_init,
+	.device_init = tny_a9260_devices_init,
+MACHINE_END
+
+MACHINE_START(TNY_A9G20, "Calao TNY-A9G20")
+	.console_init = tny_a9260_console_init,
+	.device_init = tny_a9260_devices_init,
+MACHINE_END
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index f1046ae..46e2fea 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -32,6 +33,7 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/at91sam9_sdramc.h>
+#include <mach/cpu.h>
 #include <gpio.h>
 #include <led.h>
 #include <mach/io.h>
@@ -42,16 +44,6 @@
 #include <readkey.h>
 #include <spi/spi.h>
 
-static void usb_a9260_set_board_type(void)
-{
-	if (machine_is_usb_a9g20())
-		armlinux_set_architecture(MACH_TYPE_USB_A9G20);
-	else if (machine_is_usb_a9263())
-		armlinux_set_architecture(MACH_TYPE_USB_A9263);
-	else
-		armlinux_set_architecture(MACH_TYPE_USB_A9260);
-}
-
 #if defined(CONFIG_NAND_ATMEL)
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
@@ -404,7 +396,6 @@ static int usb_a9260_devices_init(void)
 	usb_a9260_device_dab_mmx();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	usb_a9260_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
@@ -417,23 +408,18 @@ static int usb_a9260_devices_init(void)
 
 	return 0;
 }
-device_initcall(usb_a9260_devices_init);
 
 #ifndef CONFIG_CONSOLE_NONE
 static int usb_a9260_console_init(void)
 {
 	struct device_d *dev;
 
-	if (machine_is_usb_a9260()) {
-		barebox_set_model("Calao USB-A9260");
+	if (machine_is_usb_a9260())
 		barebox_set_hostname("usb-a9260");
-	} else if (machine_is_usb_a9g20()) {
-		barebox_set_model("Calao USB-A9G20");
+	else if (machine_is_usb_a9g20())
 		barebox_set_hostname("usb-a9g20");
-	} else {
-		barebox_set_model("Calao USB-A9263");
+	else
 		barebox_set_hostname("usb-a9263");
-	}
 
 	at91_register_uart(0, 0);
 
@@ -446,12 +432,36 @@ static int usb_a9260_console_init(void)
 
 	return 0;
 }
-console_initcall(usb_a9260_console_init);
+#else
+#define usb_a9260_console_init NULL
 #endif
 
 static int usb_a9260_main_clock(void)
 {
 	at91_initialize(12000000);
+
+	if (cpu_is_at91sam9g20())
+		arm_set_machine(MACH_TYPE_USB_A9G20);
+	else if (cpu_is_at91sam9263())
+		arm_set_machine(MACH_TYPE_USB_A9263);
+	else
+		arm_set_machine(MACH_TYPE_USB_A9260);
+
 	return 0;
 }
 pure_initcall(usb_a9260_main_clock);
+
+MACHINE_START(USB_A9260, "Calao USB-A9260")
+	.console_init = usb_a9260_console_init,
+	.device_init = usb_a9260_devices_init,
+MACHINE_END
+
+MACHINE_START(USB_A9263, "Calao USB-A9263")
+	.console_init = usb_a9260_console_init,
+	.device_init = usb_a9260_devices_init,
+MACHINE_END
+
+MACHINE_START(USB_A9G20, "Calao USB-A9G20")
+	.console_init = usb_a9260_console_init,
+	.device_init = usb_a9260_devices_init,
+MACHINE_END
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
