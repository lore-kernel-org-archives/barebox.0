Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d1756-000636-38
 for barebox@lists.infradead.org; Thu, 20 Apr 2017 08:04:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Apr 2017 10:04:22 +0200
Message-Id: <20170420080422.13210-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: cache-l2x0: honour aux_val when determing way size
To: Barebox List <barebox@lists.infradead.org>

l2x0_init() allows to overwrite bits in the AUX_CTRL register
using the aux_val/aux_mask arguments. On i.MX35 this is used
to pass a correct AUX_CTRL value to overwrite bogus reset values
for this register. To make this work we have to apply
aux_val/aux_mask before using the AUX_CTRL value to determine the
way size.

This fixes: 3f7e890da7 ARM: l2x0: Implement L310 support
Before this commit the way size was hardcoded to 8.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-l2x0.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/cache-l2x0.c b/arch/arm/cpu/cache-l2x0.c
index 0aa2482321..8e0fff66d5 100644
--- a/arch/arm/cpu/cache-l2x0.c
+++ b/arch/arm/cpu/cache-l2x0.c
@@ -139,6 +139,9 @@ void l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask)
 	cache_id = readl(l2x0_base + L2X0_CACHE_ID);
 	aux = readl(l2x0_base + L2X0_AUX_CTRL);
 
+	aux &= aux_mask;
+	aux |= aux_val;
+
 	/* Determine the number of ways */
 	switch (cache_id & L2X0_CACHE_ID_PART_MASK) {
 	case L2X0_CACHE_ID_PART_L310:
@@ -169,10 +172,6 @@ void l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask)
 	if (!(readl(l2x0_base + L2X0_CTRL) & 1)) {
 
 		/* l2x0 controller is disabled */
-
-		aux = readl(l2x0_base + L2X0_AUX_CTRL);
-		aux &= aux_mask;
-		aux |= aux_val;
 		writel(aux, l2x0_base + L2X0_AUX_CTRL);
 
 		l2x0_inv_all();
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
