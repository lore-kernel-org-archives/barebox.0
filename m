Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X737E-0006s4-Lc
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 13:49:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Jul 2014 15:49:30 +0200
Message-Id: <1405432173-22448-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] include: Add round_up/round_down macros from kernel
To: barebox@lists.infradead.org

Yes, we already have roundup/rounddown. Unlike these macros
round_up/round_down are optimized to (and only work with)
power-of-2 arguments. It's a poor name, but kernel code needs
it, so add it to barebox aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/kernel.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 4322f01..b90d8f7 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -5,6 +5,19 @@
 #include <linux/barebox-wrapper.h>
 
 /*
+ * This looks more complex than it should be. But we need to
+ * get the type for the ~ right in round_down (it needs to be
+ * as wide as the result!), and we want to evaluate the macro
+ * arguments just once each.
+ *
+ * NOTE these functions only round to power-of-2 arguments. Use
+ * roundup/rounddown for non power-of-2-arguments.
+ */
+#define __round_mask(x, y) ((__typeof__(x))((y)-1))
+#define round_up(x, y) ((((x)-1) | __round_mask(x, y))+1)
+#define round_down(x, y) ((x) & ~__round_mask(x, y))
+
+/*
  * min()/max()/clamp() macros that also do
  * strict type-checking.. See the
  * "unnecessary" pointer comparison.
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
