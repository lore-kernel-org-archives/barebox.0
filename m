Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5MH-000637-Ue
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:31:25 +0000
Received: by mail-bk0-f52.google.com with SMTP id d7so2497068bkh.11
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:30:59 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:30:43 +0200
Message-Id: <1372789849-12194-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 04/10] clocksource: mvebu: lookup clock by physbase
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This converts Armada 370/XP SoC init to register tclk alias
for timer by physbase instead of name.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v2:
- register timer clkdev by physbase (Suggested by Sascha Hauer)

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/armada-370-xp.c |    3 ++-
 drivers/clocksource/mvebu.c         |    3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 1d64861..24720d5 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -91,7 +91,7 @@ static int armada_xp_init_clocks(void)
 {
 	/* On Armada XP, the TCLK frequency is always 250 Mhz */
 	tclk = clk_fixed("tclk", 250000000);
-	return clk_register_clkdev(tclk, NULL, "mvebu-timer");
+	return 0;
 }
 #define armada_370_xp_init_clocks()	armada_xp_init_clocks()
 #endif
@@ -101,6 +101,7 @@ static int armada_370_xp_init_soc(void)
 	unsigned long phys_base, phys_size;
 
 	armada_370_xp_init_clocks();
+	clkdev_add_physbase(tclk, (unsigned int)ARMADA_370_XP_TIMER_BASE, NULL);
 	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
 			   (unsigned int)ARMADA_370_XP_TIMER_BASE, 0x30,
 			   IORESOURCE_MEM, NULL);
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index 8bedd99..6bd83f7 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -57,8 +57,7 @@ static int mvebu_timer_probe(struct device_d *dev)
 	u32 val;
 
 	timer_base = dev_request_mem_region(dev, 0);
-
-	tclk = clk_get(dev, "tclk");
+	tclk = clk_get(dev, NULL);
 
 	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
 	val &= ~TIMER0_25MHZ;
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
