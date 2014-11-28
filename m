Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMY8-0000VE-3g
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:28:57 +0100
Message-Id: <1417184946-16128-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] ARM: AT91: Always provide clk_set_rate stub
To: barebox@lists.infradead.org

Some drivers need clk_set_rate. To be able to link with these
drivers enabled provide a clk_set_rate stub.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/clock.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index a7051c3..125d169 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -336,8 +336,6 @@ EXPORT_SYMBOL(clk_get_rate);
 
 /*------------------------------------------------------------------------*/
 
-#ifdef CONFIG_AT91_PROGRAMMABLE_CLOCKS
-
 /*
  * For now, only the programmable clocks support reparenting (MCK could
  * do this too, with care) or rate changing (the PLLs could do this too,
@@ -379,6 +377,9 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	unsigned long	prescale_offset, css_mask;
 	unsigned long	actual;
 
+	if (!IS_ENABLED(CONFIG_PROGRAMMABLE_CLOCKS))
+		return 0;
+
 	if (!clk_is_programmable(clk))
 		return -EINVAL;
 	if (clk->users)
@@ -419,6 +420,9 @@ EXPORT_SYMBOL(clk_get_parent);
 
 int clk_set_parent(struct clk *clk, struct clk *parent)
 {
+	if (!IS_ENABLED(CONFIG_PROGRAMMABLE_CLOCKS))
+		return -ENOSYS;
+
 	if (clk->users)
 		return -EBUSY;
 	if (!clk_is_primary(parent) || !clk_is_programmable(clk))
@@ -453,8 +457,6 @@ static void init_programmable_clock(struct clk *clk)
 	clk->rate_hz = parent->rate_hz / pmc_prescaler_divider(pckr);
 }
 
-#endif	/* CONFIG_AT91_PROGRAMMABLE_CLOCKS */
-
 /*------------------------------------------------------------------------*/
 
 /* Register a new clock */
@@ -483,13 +485,10 @@ int clk_register(struct clk *clk)
 	else if (clk_is_sys(clk)) {
 		clk->parent = &mck;
 		clk->mode = pmc_sys_mode;
-	}
-#ifdef CONFIG_AT91_PROGRAMMABLE_CLOCKS
-	else if (clk_is_programmable(clk)) {
+	} else if (IS_ENABLED(CONFIG_PROGRAMMABLE_CLOCKS) && clk_is_programmable(clk)) {
 		clk->mode = pmc_sys_mode;
 		init_programmable_clock(clk);
 	}
-#endif
 
 	at91_clk_add(clk);
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
