Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHPa-0007pu-15
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:10:31 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id A6C8926C2006
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:09:11 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:15:58 +0200
Message-Id: <1413828961-12605-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/7] arm: at91: remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-at91/clock.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 7a4282e..a7051c3 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -347,7 +347,6 @@ EXPORT_SYMBOL(clk_get_rate);
 
 long clk_round_rate(struct clk *clk, unsigned long rate)
 {
-	unsigned long	flags;
 	unsigned	prescale;
 	unsigned long	actual;
 	unsigned long	prev = ULONG_MAX;
@@ -376,7 +375,6 @@ EXPORT_SYMBOL(clk_round_rate);
 
 int clk_set_rate(struct clk *clk, unsigned long rate)
 {
-	unsigned long	flags;
 	unsigned	prescale;
 	unsigned long	prescale_offset, css_mask;
 	unsigned long	actual;
@@ -421,8 +419,6 @@ EXPORT_SYMBOL(clk_get_parent);
 
 int clk_set_parent(struct clk *clk, struct clk *parent)
 {
-	unsigned long	flags;
-
 	if (clk->users)
 		return -EBUSY;
 	if (!clk_is_primary(parent) || !clk_is_programmable(clk))
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
