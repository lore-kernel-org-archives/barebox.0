Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqzKX-0006XT-Hf
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 13:32:46 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jul 2020 15:32:42 +0200
Message-Id: <20200702133242.26487-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] Revert "of: Add of_property_for_each_phandle() iterator"
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, "Signed-off-by : Trent Piepho" <tpiepho@kymetacorp.com>

Codebase is meant to be gnu89, but this was only enforced starting
with bc4840e98b94 ("kbuild: add -Wmissing-prototypes and -std=gnu89
to KBUILD_HOSTCFLAGS"). Since then, use of this macro would yield a
compile error, because of the initialization inside the for-loop,
which is a C99 feature. There hasn't been any users for the macro
since it was added in 2016, thus drop it.

This reverts commit d5f9415b04846661522141ea428f74e3c618fa9e.

Cc: Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of.h | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/include/of.h b/include/of.h
index 665580073f1b..b9b3a102284c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -904,17 +904,6 @@ static inline int of_property_read_u32(const struct device_node *np,
 		s;						\
 		s = of_prop_next_string(prop, s))
 
-/*
- * struct device_node *n;
- *
- * of_property_for_each_phandle(np, root, "propname", n)
- *         printk("phandle points to: %s\n", n->full_name);
- */
-#define of_property_for_each_phandle(np, root, propname, n)	\
-	for (int _i = 0; 					\
-	     (n = of_parse_phandle_from(np, root, propname, _i));\
-	     _i++)
-
 static inline int of_property_write_u8(struct device_node *np,
 				       const char *propname, u8 value)
 {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
