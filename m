Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMd5n-0002FN-JR
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 10:35:32 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 8BFF0105860E
 for <barebox@lists.infradead.org>; Tue, 24 Apr 2012 12:36:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 24 Apr 2012 12:15:21 +0200
Message-Id: <1335262521-26145-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120424100916.GX20601@game.jcrosoft.org>
References: <20120424100916.GX20601@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] tny-a926x: fix MOB-TNY-MD2 Motherboard support
To: barebox@lists.infradead.org

The MD2 add:
 - uart 2
 - ethernet
 - usb
 - spi
 - i2c

so fix just add uart and ethernet

update defconfig
always enable the motherboard and drop the SHA256 support (to fix in the
256KiB).

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/tny-a926x/init.c     |   38 +++------------------------------
 arch/arm/configs/tny_a9260_defconfig |    2 +-
 arch/arm/configs/tny_a9263_defconfig |    2 +-
 arch/arm/configs/tny_a9g20_defconfig |    2 +-
 arch/arm/mach-at91/Kconfig           |   10 +++++++++
 5 files changed, 17 insertions(+), 37 deletions(-)

diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 2065eae..eeaca76 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -121,42 +121,10 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr	= 0,
 };
 
-static void tny_a9260_phy_reset(void)
-{
-	unsigned long rstc;
-	struct clk *clk = clk_get(NULL, "macb_clk");
-
-	clk_enable(clk);
-
-	at91_set_gpio_input(AT91_PIN_PA14, 0);
-	at91_set_gpio_input(AT91_PIN_PA15, 0);
-	at91_set_gpio_input(AT91_PIN_PA17, 0);
-	at91_set_gpio_input(AT91_PIN_PA25, 0);
-	at91_set_gpio_input(AT91_PIN_PA26, 0);
-	at91_set_gpio_input(AT91_PIN_PA28, 0);
-
-	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
-
-	/* Need to reset PHY -> 500ms reset */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
-				     AT91_RSTC_URSTEN);
-
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
-
-	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
-
-	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (rstc) |
-				     AT91_RSTC_URSTEN);
-}
-
 static void __init ek_add_device_macb(void)
 {
-	tny_a9260_phy_reset();
-	at91_add_device_eth(0, &macb_pdata);
+	if (IS_ENABLED(CONFIG_CALAO_MOB_TNY_MD2))
+		at91_add_device_eth(0, &macb_pdata);
 }
 #else
 static void __init ek_add_device_macb(void) {}
@@ -240,6 +208,8 @@ device_initcall(tny_a9260_devices_init);
 static int tny_a9260_console_init(void)
 {
 	at91_register_uart(0, 0);
+	if (IS_ENABLED(CONFIG_CALAO_MOB_TNY_MD2))
+		at91_register_uart(2, ATMEL_UART_CTS | ATMEL_UART_RTS);
 	return 0;
 }
 console_initcall(tny_a9260_console_init);
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index 52bd7e4..2388305 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_TNY_A9260=y
+CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -33,7 +34,6 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index 1c316c8..d1bc418 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
+CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -33,7 +34,6 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index f842382..983c68a 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_TNY_A9G20=y
+CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -33,7 +34,6 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 989d3d8..1bec3e5 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -104,6 +104,9 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 config SUPPORT_CALAO_DAB_MMX
 	bool
 
+config SUPPORT_CALAO_MOB_TNY_MD2
+	bool
+
 # ----------------------------------------------------------
 
 if ARCH_AT91RM9200
@@ -138,6 +141,7 @@ config MACH_AT91SAM9260EK
 
 config MACH_TNY_A9260
 	bool "CALAO TNY-A9260"
+	select SUPPORT_CALAO_MOB_TNY_MD2
 	help
 	  Select this if you are using a Calao Systems TNY-A9260.
 	  <http://www.calao-systems.com>
@@ -214,6 +218,7 @@ config MACH_AT91SAM9G20EK
 	  that embeds only one SD/MMC slot.
 
 config MACH_TNY_A9G20
+	select SUPPORT_CALAO_MOB_TNY_MD2
 	bool "CALAO TNY-A9G20"
 	help
 	  Select this if you are using a Calao Systems TNY-A9G20.
@@ -264,6 +269,7 @@ config MACH_PM9263
 
 config MACH_TNY_A9263
 	bool "CALAO TNY-A9263"
+	select SUPPORT_CALAO_MOB_TNY_MD2
 	help
 	  Select this if you are using a Calao Systems TNY-A9263.
 	  <http://www.calao-systems.com>
@@ -362,4 +368,8 @@ config CALAO_DAB_MMX
 	bool "DAB MMX Daughter Board support"
 	depends on SUPPORT_CALAO_DAB_MMX
 
+config CALAO_MOB_TNY_MD2
+	bool "MOB TNY MD2 Motherboard Daughter Board support"
+	depends on SUPPORT_CALAO_MOB_TNY_MD2
+
 endif
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
