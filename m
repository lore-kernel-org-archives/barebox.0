Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttS-0005nA-RA
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttR-0003YY-Ec
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:33 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttQ-0005Fg-Em
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:59 +0200
Message-Id: <20200413075204.17544-17-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 16/21] clk: at91: add __init marker where appropriate
To: barebox@lists.infradead.org

While redundant in barebox, it makes our diff to the upstream driver
smaller when synchronizing, so add it back.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/clk-h32mx.c        |  2 +-
 drivers/clk/at91/clk-main.c         |  8 +++---
 drivers/clk/at91/clk-master.c       |  2 +-
 drivers/clk/at91/clk-peripheral.c   |  4 +--
 drivers/clk/at91/clk-pll.c          |  2 +-
 drivers/clk/at91/clk-plldiv.c       |  2 +-
 drivers/clk/at91/clk-programmable.c |  2 +-
 drivers/clk/at91/clk-smd.c          |  2 +-
 drivers/clk/at91/clk-system.c       |  2 +-
 drivers/clk/at91/clk-usb.c          |  6 ++---
 drivers/clk/at91/pmc.h              | 38 ++++++++++++++---------------
 drivers/clk/at91/sckc.c             |  6 ++---
 12 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
index fcca37cb52c4..6052886cca45 100644
--- a/drivers/clk/at91/clk-h32mx.c
+++ b/drivers/clk/at91/clk-h32mx.c
@@ -83,7 +83,7 @@ static const struct clk_ops h32mx_ops = {
 	.set_rate = clk_sama5d4_h32mx_set_rate,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_h32mx(struct regmap *regmap, const char *name,
 			const char *parent_name)
 {
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index cd61a35c69fd..46bb47914960 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -123,7 +123,7 @@ static const struct clk_ops main_osc_ops = {
 	.is_enabled = clk_main_osc_is_enabled,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_main_osc(struct regmap *regmap,
 			   const char *name,
 			   const char *parent_name,
@@ -229,7 +229,7 @@ static const struct clk_ops main_rc_osc_ops = {
 	.recalc_rate = clk_main_rc_osc_recalc_rate,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_main_rc_osc(struct regmap *regmap,
 			      const char *name,
 			      u32 frequency, u32 accuracy)
@@ -320,7 +320,7 @@ static const struct clk_ops rm9200_main_ops = {
 	.recalc_rate = clk_rm9200_main_recalc_rate,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_rm9200_main(struct regmap *regmap,
 			      const char *name,
 			      const char *parent_name)
@@ -428,7 +428,7 @@ static const struct clk_ops sam9x5_main_ops = {
 	.get_parent = clk_sam9x5_main_get_parent,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_sam9x5_main(struct regmap *regmap,
 			      const char *name,
 			      const char **parent_names,
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index 6bd733ef4194..766502fd7a3d 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -105,7 +105,7 @@ static const struct clk_ops master_ops = {
 	.get_parent = clk_master_get_parent,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_master(struct regmap *regmap,
 			 const char *name, int num_parents,
 			 const char **parent_names,
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index 9c3791dc5242..21d58b4a34fd 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -94,7 +94,7 @@ static const struct clk_ops peripheral_ops = {
 	.is_enabled = clk_peripheral_is_enabled,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_peripheral(struct regmap *regmap, const char *name,
 			     const char *parent_name, u32 id)
 {
@@ -306,7 +306,7 @@ static const struct clk_ops sam9x5_peripheral_ops = {
 	.set_rate = clk_sam9x5_peripheral_set_rate,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 				    const char *name, const char *parent_name,
 				    u32 id, const struct clk_range *range)
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index acf2fae50ea9..d3c4ab6f7a26 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -280,7 +280,7 @@ static const struct clk_ops pll_ops = {
 	.set_rate = clk_pll_set_rate,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_pll(struct regmap *regmap, const char *name,
 		      const char *parent_name, u8 id,
 		      const struct clk_pll_layout *layout,
diff --git a/drivers/clk/at91/clk-plldiv.c b/drivers/clk/at91/clk-plldiv.c
index 5a9686dc7856..1cbb61bb2c3c 100644
--- a/drivers/clk/at91/clk-plldiv.c
+++ b/drivers/clk/at91/clk-plldiv.c
@@ -73,7 +73,7 @@ static const struct clk_ops plldiv_ops = {
 	.set_rate = clk_plldiv_set_rate,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 			 const char *parent_name)
 {
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index e002c8af47f7..09bd8bc5306e 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -118,7 +118,7 @@ static const struct clk_ops programmable_ops = {
 	.set_rate = clk_programmable_set_rate,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_programmable(struct regmap *regmap,
 			       const char *name, const char **parent_names,
 			       u8 num_parents, u8 id,
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index 4a541322d459..0027ebc8bb6b 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -109,7 +109,7 @@ static const struct clk_ops at91sam9x5_smd_ops = {
 	.set_rate = at91sam9x5_clk_smd_set_rate,
 };
 
-struct clk *
+struct clk * __init
 at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents)
 {
diff --git a/drivers/clk/at91/clk-system.c b/drivers/clk/at91/clk-system.c
index a8f30539400e..77f0dff98b35 100644
--- a/drivers/clk/at91/clk-system.c
+++ b/drivers/clk/at91/clk-system.c
@@ -85,7 +85,7 @@ static const struct clk_ops system_ops = {
 	.is_enabled = clk_system_is_enabled,
 };
 
-struct clk *
+struct clk * __init
 at91_clk_register_system(struct regmap *regmap, const char *name,
 			 const char *parent_name, u8 id)
 {
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 334bd5c88ee7..da37f8ea3783 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -138,7 +138,7 @@ static const struct clk_ops at91sam9n12_usb_ops = {
 	.set_rate = at91sam9x5_clk_usb_set_rate,
 };
 
-struct clk *
+struct clk * __init
 at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents)
 {
@@ -166,7 +166,7 @@ at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	return &usb->clk;
 }
 
-struct clk *
+struct clk * __init
 at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 			     const char *parent_name)
 {
@@ -276,7 +276,7 @@ static const struct clk_ops at91rm9200_usb_ops = {
 	.set_rate = at91rm9200_clk_usb_set_rate,
 };
 
-struct clk *
+struct clk * __init
 at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char *parent_name, const u32 *divisors)
 {
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index c4de1e802e4e..67890300c750 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -84,83 +84,83 @@ int of_at91_get_clk_range(struct device_node *np, const char *propname,
 
 struct clk *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data);
 
-struct clk *
+struct clk * __init
 at91_clk_register_generated(struct regmap *regmap,
 			    const char *name, const char **parent_names,
 			    u8 num_parents, u8 id, bool pll_audio,
 			    const struct clk_range *range);
 
-struct clk *
+struct clk * __init
 at91_clk_register_h32mx(struct regmap *regmap, const char *name,
 			const char *parent_name);
 
-struct clk *
+struct clk * __init
 at91_clk_register_main_rc_osc(struct regmap *regmap, const char *name,
 			      u32 frequency, u32 accuracy);
-struct clk *
+struct clk * __init
 at91_clk_register_main_osc(struct regmap *regmap, const char *name,
 			   const char *parent_name, bool bypass);
-struct clk *
+struct clk * __init
 at91_clk_register_rm9200_main(struct regmap *regmap,
 			      const char *name,
 			      const char *parent_name);
-struct clk *
+struct clk * __init
 at91_clk_register_sam9x5_main(struct regmap *regmap, const char *name,
 			      const char **parent_names, int num_parents);
 
-struct clk *
+struct clk * __init
 at91_clk_register_master(struct regmap *regmap, const char *name,
 			 int num_parents, const char **parent_names,
 			 const struct clk_master_layout *layout,
 			 const struct clk_master_characteristics *characteristics);
 
-struct clk *
+struct clk * __init
 at91_clk_register_peripheral(struct regmap *regmap, const char *name,
 			     const char *parent_name, u32 id);
-struct clk *
+struct clk * __init
 at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 				    const char *name, const char *parent_name,
 				    u32 id, const struct clk_range *range);
 
-struct clk *
+struct clk * __init
 at91_clk_register_pll(struct regmap *regmap, const char *name,
 		      const char *parent_name, u8 id,
 		      const struct clk_pll_layout *layout,
 		      const struct clk_pll_characteristics *characteristics);
-struct clk *
+struct clk * __init
 at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 			 const char *parent_name);
 
-struct clk *
+struct clk * __init
 at91_clk_register_programmable(struct regmap *regmap, const char *name,
 			       const char **parent_names, u8 num_parents, u8 id,
 			       const struct clk_programmable_layout *layout);
 
-struct clk *
+struct clk * __init
 at91_clk_register_sam9260_slow(struct regmap *regmap,
 			       const char *name,
 			       const char **parent_names,
 			       int num_parents);
 
-struct clk *
+struct clk * __init
 at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents);
 
-struct clk *
+struct clk * __init
 at91_clk_register_system(struct regmap *regmap, const char *name,
 			 const char *parent_name, u8 id);
 
-struct clk *
+struct clk * __init
 at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents);
-struct clk *
+struct clk * __init
 at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 			     const char *parent_name);
-struct clk *
+struct clk * __init
 at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char *parent_name, const u32 *divisors);
 
-struct clk *
+struct clk * __init
 at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
 		       const char *name, const char *parent_name);
 
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 4a03819f0e30..7998d6a50986 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -113,7 +113,7 @@ static const struct clk_ops slow_osc_ops = {
 	.is_enabled = clk_slow_osc_is_enabled,
 };
 
-static struct clk *
+static struct clk * __init
 at91_clk_register_slow_osc(void __iomem *sckcr,
 			   const char *name,
 			   const char *parent_name,
@@ -214,7 +214,7 @@ static const struct clk_ops slow_rc_osc_ops = {
 	.recalc_rate = clk_slow_rc_osc_recalc_rate,
 };
 
-static struct clk *
+static struct clk * __init
 at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 			      const char *name,
 			      unsigned long frequency,
@@ -304,7 +304,7 @@ static const struct clk_ops sam9x5_slow_ops = {
 	.get_parent = clk_sam9x5_slow_get_parent,
 };
 
-static struct clk *
+static struct clk * __init
 at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 			      const char *name,
 			      const char **parent_names,
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
