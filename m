Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQqi-0004F7-28
 for barebox@lists.infradead.org; Thu, 11 Jun 2020 17:18:45 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Jun 2020 19:18:38 +0200
Message-Id: <20200611171838.13876-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] watchdog: f71808e: maintain watchdog timeout occurred flag
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

If we experience a watchdog reset, the indicating flag should persist
till the Linux driver had a chance to see it.

The flag bit is special however in that writing 1 clears the bit and
writing 0 keeps it intact, i.e. :

Bit
read written  result
  0     0     = 0
  1     0     = 1
  0     1     = 0
  1     1     = 0

So in the bootloader, we should write a zero always. The OS on the
other hand can either write 1 or the old value after reading to
clear the flag.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/f71808e_wdt.c | 59 +++++++++++++++++++++++-----------
 1 file changed, 40 insertions(+), 19 deletions(-)

diff --git a/drivers/watchdog/f71808e_wdt.c b/drivers/watchdog/f71808e_wdt.c
index 6f2d30ec77aa..925c2f809df7 100644
--- a/drivers/watchdog/f71808e_wdt.c
+++ b/drivers/watchdog/f71808e_wdt.c
@@ -11,7 +11,6 @@
 
 #include <init.h>
 #include <asm/io.h>
-#include <linux/bitops.h>
 #include <driver.h>
 #include <watchdog.h>
 #include <printk.h>
@@ -114,30 +113,50 @@ static inline void superio_exit(u16 base)
 	outb(SIO_LOCK_KEY, base);
 }
 
+static inline u8 f71808e_wdt_conf_in(struct f71808e_wdt *wd)
+{
+	return superio_inb(wd->sioaddr, F71808FG_REG_WDT_CONF);
+}
+
+static inline void f71808e_wdt_conf_out(struct f71808e_wdt *wd, u8 wdt_conf)
+{
+	/*
+	 * Writing 1 to WDTMOUT_STS clears it. Writing 0 keeps the old state.
+	 * We want the latter, so the OS driver can check it later on.
+	 */
+	wdt_conf &= ~BIT(F71808FG_FLAG_WDTMOUT_STS);
+	superio_outb(wd->sioaddr, F71808FG_REG_WDT_CONF, wdt_conf);
+}
+
 static void f71808e_wdt_keepalive(struct f71808e_wdt *wd)
 {
+	u8 wdt_conf;
+
 	superio_enter(wd->sioaddr);
 
 	superio_select(wd->sioaddr, SIO_F71808FG_LD_WDT);
 
+	wdt_conf = f71808e_wdt_conf_in(wd);
+
 	if (wd->minutes_mode)
 		/* select minutes for timer units */
-		superio_set_bit(wd->sioaddr, F71808FG_REG_WDT_CONF,
-				F71808FG_FLAG_WD_UNIT);
+		wdt_conf |= BIT(F71808FG_FLAG_WD_UNIT);
 	else
 		/* select seconds for timer units */
-		superio_clear_bit(wd->sioaddr, F71808FG_REG_WDT_CONF,
-				F71808FG_FLAG_WD_UNIT);
+		wdt_conf &= ~BIT(F71808FG_FLAG_WD_UNIT);
+
+	f71808e_wdt_conf_out(wd, wdt_conf);
 
 	/* Set timer value */
-	superio_outb(wd->sioaddr, F71808FG_REG_WD_TIME,
-		     wd->timer_val);
+	superio_outb(wd->sioaddr, F71808FG_REG_WD_TIME, wd->timer_val);
 
 	superio_exit(wd->sioaddr);
 }
 
 static void f71808e_wdt_start(struct f71808e_wdt *wd)
 {
+	u8 wdt_conf;
+
 	/* Make sure we don't die as soon as the watchdog is enabled below */
 	f71808e_wdt_keepalive(wd);
 
@@ -158,36 +177,38 @@ static void f71808e_wdt_start(struct f71808e_wdt *wd)
 		superio_set_bit(wd->sioaddr, F71808FG_REG_WDO_CONF,
 				F71808FG_FLAG_WDOUT_EN);
 
-	superio_set_bit(wd->sioaddr, F71808FG_REG_WDT_CONF,
-			F71808FG_FLAG_WD_EN);
+	wdt_conf = f71808e_wdt_conf_in(wd);
+	wdt_conf |= BIT(F71808FG_FLAG_WD_EN);
+	f71808e_wdt_conf_out(wd, wdt_conf);
 
 	if (wd->pulse_width > 0) {
 		/* Select "pulse" output mode with given duration */
-		u8 wdt_conf = superio_inb(wd->sioaddr, F71808FG_REG_WDT_CONF);
-
 		/* Set WD_PSWIDTH bits (1:0) */
 		wdt_conf = (wdt_conf & 0xfc) | (wd->pulse_width & 0x03);
 		/* Set WD_PULSE to "pulse" mode */
 		wdt_conf |= BIT(F71808FG_FLAG_WD_PULSE);
 
-		superio_outb(wd->sioaddr, F71808FG_REG_WDT_CONF, wdt_conf);
 	} else {
 		/* Select "level" output mode */
-		superio_clear_bit(wd->sioaddr, F71808FG_REG_WDT_CONF,
-				  F71808FG_FLAG_WD_PULSE);
+		wdt_conf &= ~BIT(F71808FG_FLAG_WD_PULSE);
 	}
 
+	f71808e_wdt_conf_out(wd, wdt_conf);
+
 	superio_exit(wd->sioaddr);
 }
 
 static void f71808e_wdt_stop(struct f71808e_wdt *wd)
 {
+	u8 wdt_conf;
+
 	superio_enter(wd->sioaddr);
 
 	superio_select(wd->sioaddr, SIO_F71808FG_LD_WDT);
 
-	superio_clear_bit(wd->sioaddr, F71808FG_REG_WDT_CONF,
-			  F71808FG_FLAG_WD_EN);
+	wdt_conf = f71808e_wdt_conf_in(wd);
+	wdt_conf &= ~BIT(F71808FG_FLAG_WD_EN);
+	f71808e_wdt_conf_out(wd, wdt_conf);
 
 	superio_exit(wd->sioaddr);
 }
@@ -222,14 +243,14 @@ static int f71808e_wdt_init(struct f71808e_wdt *wd, struct device_d *dev)
 {
 	struct watchdog *wdd = &wd->wdd;
 	const char * const *names = pulse_width_names;
-	unsigned long wdt_conf;
+	u8 wdt_conf;
 	int ret;
 
 	superio_enter(wd->sioaddr);
 
 	superio_select(wd->sioaddr, SIO_F71808FG_LD_WDT);
 
-	wdt_conf = superio_inb(wd->sioaddr, F71808FG_REG_WDT_CONF);
+	wdt_conf = f71808e_wdt_conf_in(wd);
 
 	superio_exit(wd->sioaddr);
 
@@ -262,7 +283,7 @@ static int f71808e_wdt_init(struct f71808e_wdt *wd, struct device_d *dev)
 	}
 
 
-	if (test_bit(F71808FG_FLAG_WD_EN, &wdt_conf))
+	if (wdt_conf & BIT(F71808FG_FLAG_WD_EN))
 		wdd->running = WDOG_HW_RUNNING;
 	else
 		wdd->running = WDOG_HW_NOT_RUNNING;
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
