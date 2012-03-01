Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay06.ispgateway.de ([80.67.31.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S38kQ-00060j-U8
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 16:20:57 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Thu,  1 Mar 2012 18:21:27 +0200
Message-Id: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH 1/3] pm9g45: fix Ethernet
To: barebox@lists.infradead.org

Enable PHY, MACB and PIOs clocks.

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
 arch/arm/boards/pm9g45/init.c |   31 +++++++++++++++++++++++++++++++
 1 files changed, 31 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 480c751..9eba12a 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -82,6 +82,19 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr = 0,
 };
 
+static int phy_init(void)
+{
+	/*
+	 * PD2 enables the 50MHz oscillator for Ethernet PHY
+	 * 1 - enable
+	 * 0 - disable
+	 */
+	at91_set_gpio_output(AT91_PIN_PD2, 1);
+	at91_set_gpio_value(AT91_PIN_PD2, 1);
+
+	return 0;
+}
+
 static int pm9g45_mem_init(void)
 {
 	at91_add_device_sdram(128 * 1024 * 1024);
@@ -90,9 +103,27 @@ static int pm9g45_mem_init(void)
 }
 mem_initcall(pm9g45_mem_init);
 
+static const char *periph_clocks[] __initdata = {
+	"pioA_clk",
+	"pioB_clk",
+	"pioC_clk",
+	"pioDE_clk",
+	"macb_clk"
+};
+
 static int pm9g45_devices_init(void)
 {
+	struct clk *clk;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++) {
+		clk = clk_get(NULL, periph_clocks[i]);
+		clk_enable(clk);
+	}
+	phy_init();
+
 	pm_add_device_nand();
+
 	at91_add_device_eth(&macb_pdata);
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
