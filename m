Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhoy-0006Z4-Ut
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:36:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:35:43 +0200
Message-Id: <1438954545-24917-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438954545-24917-1-git-send-email-s.hauer@pengutronix.de>
References: <1438954545-24917-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: l2x0: Implement L310 support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-l2x0.c | 33 +++++++++++++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/cache-l2x0.c b/arch/arm/cpu/cache-l2x0.c
index 43f296f..665f862 100644
--- a/arch/arm/cpu/cache-l2x0.c
+++ b/arch/arm/cpu/cache-l2x0.c
@@ -7,6 +7,7 @@
 #define CACHE_LINE_SIZE		32
 
 static void __iomem *l2x0_base;
+static uint32_t l2x0_way_mask; /* Bitmask of active ways */
 
 static inline void cache_wait(void __iomem *reg, unsigned long mask)
 {
@@ -50,8 +51,8 @@ static inline void l2x0_flush_line(unsigned long addr)
 static inline void l2x0_inv_all(void)
 {
 	/* invalidate all ways */
-	writel(0xff, l2x0_base + L2X0_INV_WAY);
-	cache_wait(l2x0_base + L2X0_INV_WAY, 0xff);
+	writel(l2x0_way_mask, l2x0_base + L2X0_INV_WAY);
+	cache_wait(l2x0_base + L2X0_INV_WAY, l2x0_way_mask);
 	cache_sync();
 }
 
@@ -129,9 +130,37 @@ static void l2x0_disable(void)
 void __init l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask)
 {
 	__u32 aux;
+	__u32 cache_id;
+	int ways;
+	const char *type;
 
 	l2x0_base = base;
 
+	cache_id = readl(l2x0_base + L2X0_CACHE_ID);
+	aux = readl(l2x0_base + L2X0_AUX_CTRL);
+
+	/* Determine the number of ways */
+	switch (cache_id & L2X0_CACHE_ID_PART_MASK) {
+	case L2X0_CACHE_ID_PART_L310:
+		if (aux & (1 << 16))
+			ways = 16;
+		else
+			ways = 8;
+		type = "L310";
+		break;
+	case L2X0_CACHE_ID_PART_L210:
+		ways = (aux >> 13) & 0xf;
+		type = "L210";
+		break;
+	default:
+		/* Assume unknown chips have 8 ways */
+		ways = 8;
+		type = "L2x0 series";
+		break;
+	}
+
+       l2x0_way_mask = (1 << ways) - 1;
+
 	/*
 	 * Check if l2x0 controller is already enabled.
 	 * If you are booting from non-secure mode
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
