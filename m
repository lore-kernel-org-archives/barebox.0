Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5MH-000635-6M
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:31:24 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf17so2533949bkc.35
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:30:59 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:30:41 +0200
Message-Id: <1372789849-12194-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 02/10] clocksource: orion: lookup clock by physbase
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This converts Kirkwood and Dove SoC init to register tclk alias
for timer by physbase instead of name.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v2:
- register timer clkdev by physbase (Suggested by Sascha Hauer)

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/dove.c     |    3 ++-
 arch/arm/mach-mvebu/kirkwood.c |    3 ++-
 drivers/clocksource/orion.c    |    2 +-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index ee63917..3909bf4 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -114,7 +114,7 @@ static int dove_init_clocks(void)
 	}
 
 	tclk = clk_fixed("tclk", rate);
-	return clk_register_clkdev(tclk, NULL, "orion-timer");
+	return 0;
 }
 
 static int dove_init_soc(void)
@@ -123,6 +123,7 @@ static int dove_init_soc(void)
 
 	dove_remap_mc_regs();
 	dove_init_clocks();
+	clkdev_add_physbase(tclk, (unsigned int)DOVE_TIMER_BASE, NULL);
 	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
 			   (unsigned int)DOVE_TIMER_BASE, 0x30,
 			   IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 9e43dae..2ec175a 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -78,7 +78,7 @@ static int kirkwood_init_clocks(void)
 		rate = 200000000;
 
 	tclk = clk_fixed("tclk", rate);
-	return clk_register_clkdev(tclk, NULL, "orion-timer");
+	return 0;
 }
 
 static int kirkwood_init_soc(void)
@@ -86,6 +86,7 @@ static int kirkwood_init_soc(void)
 	unsigned long phys_base, phys_size;
 
 	kirkwood_init_clocks();
+	clkdev_add_physbase(tclk, (unsigned int)KIRKWOOD_TIMER_BASE, NULL);
 	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
 			   (unsigned int)KIRKWOOD_TIMER_BASE, 0x30,
 			   IORESOURCE_MEM, NULL);
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index e3db845..8817dfe 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -49,7 +49,7 @@ static int orion_timer_probe(struct device_d *dev)
 	uint32_t val;
 
 	timer_base = dev_request_mem_region(dev, 0);
-	tclk = clk_get(dev, "tclk");
+	tclk = clk_get(dev, NULL);
 
 	/* setup TIMER0 as free-running clock source */
 	__raw_writel(~0, timer_base + TIMER0_VAL);
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
