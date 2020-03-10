Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBZrO-0001R5-VT
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 08:03:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Mar 2020 09:03:24 +0100
Message-Id: <20200310080326.21724-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200310080326.21724-1-a.fatoum@pengutronix.de>
References: <20200310080326.21724-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/4] ARM: at91: sama5d27-som1: clean up lowlevel.c
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

In ARM, stack decrements before storing values, so decrementing a number
from the stack base is unnecessary. Existing instances of this were
removed in 6b3dc4abd8 ("ARM: Cleanup stack offset cargo cult"), but the
sama5d27-som1 board was added later than that. Fix the cargo cult here
as well and while at it, turn a macro that doesn't need to be one
into a static inline function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  * New patch for issues raised by Sam against the giant board
    lowlevel.c
---
 arch/arm/boards/sama5d27-som1/lowlevel.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 7df5a4772d0b..6907dcf812b5 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -22,8 +22,10 @@
 /* PCK = 492MHz, MCK = 164MHz */
 #define MASTER_CLOCK	164000000
 
-#define sama5d2_pmc_enable_periph_clock(clk) \
-	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk)
+static inline void sama5d2_pmc_enable_periph_clock(int clk)
+{
+	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk);
+}
 
 static void ek_turn_led(unsigned color)
 {
@@ -69,7 +71,7 @@ ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE);
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		ek_dbgu_init();
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
