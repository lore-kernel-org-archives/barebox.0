Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDSZc-0007GT-82
 for barebox@lists.infradead.org; Wed, 02 Sep 2020 13:13:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Sep 2020 15:13:05 +0200
Message-Id: <20200902131307.17613-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 1/3] clk: at91: sama5d2: fix buffer overflow of clk
 parent_names
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The upstream implementation passes the clock's parent_names as an
address of a local array to the core. That's ok because data contained
in struct clk_init_data is duplicated and stored with a proper lifetime.

We don't have that in barebox, so the clock providers themselves are
responsible for allocating an array with suitable lifetime. Most at91
clk drivers did this by having a fixed size array in the clock's private
data struct.

Since 47475fa5e0e1 ("clk: at91: add sama5d2 audio PLL support"), we are
overflowing struct clk_programmable::parent_names on the sama5d2,
because there it has 6 parents, while only space for 5 were allocated.

Make the parent_names member of variable size to fix this and to avoid
such errors in future.

Fixes: 47475fa5e0e1 ("clk: at91: add sama5d2 audio PLL support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/clk-i2s-mux.c      | 7 +++----
 drivers/clk/at91/clk-master.c       | 7 +++----
 drivers/clk/at91/clk-programmable.c | 6 +++---
 drivers/clk/at91/clk-slow.c         | 5 +++--
 drivers/clk/at91/clk-smd.c          | 5 +++--
 drivers/clk/at91/clk-usb.c          | 5 +++--
 drivers/clk/at91/sckc.c             | 5 +++--
 7 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/clk/at91/clk-i2s-mux.c b/drivers/clk/at91/clk-i2s-mux.c
index 1418ec8662c9..f906007ed526 100644
--- a/drivers/clk/at91/clk-i2s-mux.c
+++ b/drivers/clk/at91/clk-i2s-mux.c
@@ -12,6 +12,7 @@
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
+#include <linux/overflow.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
 
@@ -19,13 +20,11 @@
 
 #include "pmc.h"
 
-#define I2S_MUX_SOURCE_MAX	2
-
 struct clk_i2s_mux {
 	struct clk clk;
 	struct regmap *regmap;
 	u8 bus_id;
-	const char *parent_names[I2S_MUX_SOURCE_MAX];
+	const char *parent_names[];
 };
 
 #define to_clk_i2s_mux(clk) container_of(clk, struct clk_i2s_mux, clk)
@@ -63,7 +62,7 @@ at91_clk_i2s_mux_register(struct regmap *regmap, const char *name,
 	struct clk_i2s_mux *i2s_ck;
 	int ret;
 
-	i2s_ck = kzalloc(sizeof(*i2s_ck), GFP_KERNEL);
+	i2s_ck = kzalloc(struct_size(i2s_ck, parent_names, num_parents), GFP_KERNEL);
 	if (!i2s_ck)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index 4e3b512aaaaf..da5e31698814 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -7,13 +7,12 @@
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
+#include <linux/overflow.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
 
 #include "pmc.h"
 
-#define MASTER_SOURCE_MAX	4
-
 #define MASTER_PRES_MASK	0x7
 #define MASTER_PRES_MAX		MASTER_PRES_MASK
 #define MASTER_DIV_SHIFT	8
@@ -26,8 +25,8 @@ struct clk_master {
 	struct regmap *regmap;
 	const struct clk_master_layout *layout;
 	const struct clk_master_characteristics *characteristics;
-	const char *parents[MASTER_SOURCE_MAX];
 	u32 mckr;
+	const char *parents[];
 };
 
 static inline bool clk_master_ready(struct regmap *regmap)
@@ -120,7 +119,7 @@ at91_clk_register_master(struct regmap *regmap,
 	if (!name || !num_parents || !parent_names)
 		return ERR_PTR(-EINVAL);
 
-	master = xzalloc(sizeof(*master));
+	master = xzalloc(struct_size(master, parents, num_parents));
 
 	master->clk.name = name;
 	master->clk.ops = &master_ops;
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index 26c36a882d8c..99a0fa29a358 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -9,12 +9,12 @@
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
+#include <linux/overflow.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
 
 #include "pmc.h"
 
-#define PROG_SOURCE_MAX		5
 #define PROG_ID_MAX		7
 
 #define PROG_STATUS_MASK(id)	(1 << ((id) + 8))
@@ -26,7 +26,7 @@ struct clk_programmable {
 	struct regmap *regmap;
 	u8 id;
 	const struct clk_programmable_layout *layout;
-	const char *parent_names[PROG_SOURCE_MAX];
+	const char *parent_names[];
 };
 
 #define to_clk_programmable(clk) container_of(clk, struct clk_programmable, clk)
@@ -140,7 +140,7 @@ at91_clk_register_programmable(struct regmap *regmap,
 	if (id > PROG_ID_MAX)
 		return ERR_PTR(-EINVAL);
 
-	prog = kzalloc(sizeof(*prog), GFP_KERNEL);
+	prog = kzalloc(struct_size(prog, parent_names, num_parents), GFP_KERNEL);
 	if (!prog)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/drivers/clk/at91/clk-slow.c b/drivers/clk/at91/clk-slow.c
index 960678db1c96..bcce810fa5b7 100644
--- a/drivers/clk/at91/clk-slow.c
+++ b/drivers/clk/at91/clk-slow.c
@@ -11,6 +11,7 @@
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
+#include <linux/overflow.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
 
@@ -19,7 +20,7 @@
 struct clk_sam9260_slow {
 	struct clk clk;
 	struct regmap *regmap;
-	const char *parent_names[2];
+	const char *parent_names[];
 };
 
 #define to_clk_sam9260_slow(clk) container_of(clk, struct clk_sam9260_slow, clk)
@@ -53,7 +54,7 @@ at91_clk_register_sam9260_slow(struct regmap *regmap,
 	if (!parent_names || !num_parents)
 		return ERR_PTR(-EINVAL);
 
-	slowck = xzalloc(sizeof(*slowck));
+	slowck = xzalloc(struct_size(slowck, parent_names, num_parents));
 	slowck->clk.name = name;
 	slowck->clk.ops = &sam9260_slow_ops;
 	memcpy(slowck->parent_names, parent_names,
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index 0027ebc8bb6b..366f2eaad5f0 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -9,6 +9,7 @@
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
+#include <linux/overflow.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
 
@@ -22,7 +23,7 @@
 struct at91sam9x5_clk_smd {
 	struct clk clk;
 	struct regmap *regmap;
-	const char *parent_names[SMD_SOURCE_MAX];
+	const char *parent_names[];
 };
 
 #define to_at91sam9x5_clk_smd(clk) \
@@ -116,7 +117,7 @@ at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 	struct at91sam9x5_clk_smd *smd;
 	int ret;
 
-	smd = xzalloc(sizeof(*smd));
+	smd = xzalloc(struct_size(smd, parent_names, num_parents));
 	smd->clk.name = name;
 	smd->clk.ops = &at91sam9x5_smd_ops;
 	memcpy(smd->parent_names, parent_names,
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 4862f881fc9d..4ca076e77793 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -9,6 +9,7 @@
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
+#include <linux/overflow.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
 
@@ -28,9 +29,9 @@
 struct at91sam9x5_clk_usb {
 	struct clk clk;
 	struct regmap *regmap;
-	const char *parent_names[USB_SOURCE_MAX];
 	u32 usbs_mask;
 	u8 num_parents;
+	const char *parent_names[];
 };
 
 #define to_at91sam9x5_clk_usb(clk) \
@@ -150,7 +151,7 @@ _at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	struct at91sam9x5_clk_usb *usb;
 	int ret;
 
-	usb = kzalloc(sizeof(*usb), GFP_KERNEL);
+	usb = kzalloc(struct_size(usb, parent_names, num_parents), GFP_KERNEL);
 	usb->clk.name = name;
 	usb->clk.ops = &at91sam9x5_usb_ops;
 	memcpy(usb->parent_names, parent_names,
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 1a33a64421fa..d9898f718c01 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -13,6 +13,7 @@
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
+#include <linux/overflow.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
 
@@ -69,7 +70,7 @@ struct clk_sam9x5_slow {
 	void __iomem *sckcr;
 	const struct clk_slow_bits *bits;
 	u8 parent;
-	const char *parent_names[2];
+	const char *parent_names[];
 };
 
 #define to_clk_sam9x5_slow(clk) container_of(clk, struct clk_sam9x5_slow, clk)
@@ -305,7 +306,7 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 	if (!sckcr || !name || !parent_names || !num_parents)
 		return ERR_PTR(-EINVAL);
 
-	slowck = xzalloc(sizeof(*slowck));
+	slowck = xzalloc(struct_size(slowck, parent_names, num_parents));
 	slowck->clk.name = name;
 	slowck->clk.ops = &sam9x5_slow_ops;
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
