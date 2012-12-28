Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRH-0004Gj-SB
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:17:53 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 02EF5FF9725
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:03 +0100
Message-Id: <1356722174-22598-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/13] at91: enable clock via clock framework
To: barebox@lists.infradead.org

fix at91sam926x timer and dss11

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/dss11/init.c          |    6 ++++--
 arch/arm/mach-at91/at91sam926x_time.c |   23 ++++++++++++++++-------
 2 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 27c1ec7..12d4263 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -32,8 +32,8 @@
 #include <mach/sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
-#include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
+#include <linux/clk.h>
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
@@ -82,7 +82,9 @@ static struct at91_ether_platform_data macb_pdata = {
 static void dss11_phy_reset(void)
 {
 	unsigned long rstc;
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_EMAC);
+	struct clk *clk = clk_get(NULL, "macb_clk");
+
+	clk_enable(clk);
 
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index 7425e0a..1ce8d30 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -30,11 +30,11 @@
 #include <clock.h>
 #include <asm/hardware.h>
 #include <mach/at91_pit.h>
-#include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <mach/io.h>
 #include <io.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 
 uint64_t at91sam9_clocksource_read(void)
 {
@@ -49,15 +49,24 @@ static struct clocksource cs = {
 
 static int clocksource_init (void)
 {
+	struct clk *clk;
 	u32 pit_rate;
 
-	/*
-	 * Enable PITC Clock
-	 * The clock is already enabled for system controller in boot
-	 */
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91_ID_SYS);
+	clk = clk_get(NULL, "mck");
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		dev_err(dev, "clock not found: %d\n", ret);
+		return ret;
+	}
 
-	pit_rate = clk_get_rate(clk_get(NULL, "mck")) / 16;
+	ret = clk_enable(clk);
+	if (ret < 0) {
+		dev_err(dev, "clock failed to enable: %d\n", ret);
+		clk_put(clk);
+		return ret;
+	}
+
+	pit_rate = clk_get_rate(clk) / 16;
 
 	/* Enable PITC */
 	at91_sys_write(AT91_PIT_MR, 0xfffff | AT91_PIT_PITEN);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
