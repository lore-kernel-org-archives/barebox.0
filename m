Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TstQm-0002oV-Uo
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 11:02:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Jan 2013 12:02:45 +0100
Message-Id: <1357729366-2686-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357729366-2686-1-git-send-email-s.hauer@pengutronix.de>
References: <1357729366-2686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM beaglebone: Add network support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/board.c |   28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index f9ac7a4..fddfd03 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -31,6 +31,7 @@
 #include <sizes.h>
 #include <io.h>
 #include <ns16550.h>
+#include <net.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/am33xx-silicon.h>
@@ -42,11 +43,14 @@
 #include <mach/ehci.h>
 #include <i2c/i2c.h>
 #include <linux/err.h>
+#include <linux/phy.h>
 #include <usb/ehci.h>
 #include <mach/xload.h>
 #include <mach/am33xx-devices.h>
 #include <mach/am33xx-mux.h>
 #include <mach/wdt.h>
+#include <mach/am33xx-generic.h>
+#include <mach/cpsw.h>
 
 /* UART Defines */
 #define UART_SYSCFG_OFFSET  (0x54)
@@ -313,11 +317,35 @@ static int beaglebone_mem_init(void)
 }
 mem_initcall(beaglebone_mem_init);
 
+static struct cpsw_slave_data cpsw_slaves[] = {
+	{
+		.phy_id		= 0,
+		.phy_if		= PHY_INTERFACE_MODE_MII,
+	},
+};
+
+static struct cpsw_platform_data cpsw_data = {
+	.slave_data		= cpsw_slaves,
+	.num_slaves		= ARRAY_SIZE(cpsw_slaves),
+};
+
+static void beaglebone_eth_init(void)
+{
+	am33xx_register_ethaddr(0, 0);
+
+	writel(0, AM33XX_MAC_MII_SEL);
+
+	enable_mii1_pin_mux();
+
+	am33xx_add_cpsw(&cpsw_data);
+}
+
 static int beaglebone_devices_init(void)
 {
 	am33xx_add_mmc0(NULL);
 
 	enable_i2c0_pin_mux();
+	beaglebone_eth_init();
 
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_BEAGLEBONE);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
