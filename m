Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAZz-000135-MU
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:10 +0000
Received: by mail-wg0-f52.google.com with SMTP id b13so6887141wgh.23
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:10:41 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:34 +0200
Message-Id: <1403554235-12674-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 6/7] ARM: mvebu: add 25MHz fixed clock for Armada XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Armada XP timers can be run from a 25MHz fixed clock. Add the corrsponding
clock and clock alias to SoC setup.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/armada-370-xp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 209be0b60335..051323eeb36c 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -27,6 +27,7 @@
 	ARMADA_370_XP_UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
 
 static struct clk *tclk;
+static struct clk *refclk;
 
 static inline void armada_370_xp_memory_find(unsigned long *phys_base,
 					     unsigned long *phys_size)
@@ -92,6 +93,7 @@ static int armada_xp_init_clocks(void)
 {
 	/* On Armada XP, the TCLK frequency is always 250 Mhz */
 	tclk = clk_fixed("tclk", 250000000);
+	refclk = clk_fixed("ref25M", 25000000);
 	return 0;
 }
 #define armada_370_xp_init_clocks()	armada_xp_init_clocks()
@@ -106,6 +108,9 @@ static int armada_370_xp_init_soc(void)
 
 	armada_370_xp_init_clocks();
 	clkdev_add_physbase(tclk, (unsigned int)ARMADA_370_XP_TIMER_BASE, NULL);
+	if (refclk && !IS_ERR(refclk))
+		clkdev_add_physbase(refclk, (u32)ARMADA_370_XP_TIMER_BASE,
+				    "fixed");
 	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
 			   (unsigned int)ARMADA_370_XP_TIMER_BASE, 0x30,
 			   IORESOURCE_MEM, NULL);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
