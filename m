Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpngZ-0005UB-0F
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 03:08:44 +0000
Received: by mail-pf0-x242.google.com with SMTP id o126so15217956pfb.1
 for <barebox@lists.infradead.org>; Sun, 19 Mar 2017 20:08:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 19 Mar 2017 20:08:02 -0700
Message-Id: <20170320030802.10493-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fixup! clk: at91: Port at91 DT clock code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---

Sascha:

Here's a a bunch of fixes for "clk: at91: Port at91 DT clock code"

 - arch/arm/Kconfig to prevent breaking the build for AT91
   targets that don't use DT based clock

 - arch/arm/mach-at91/Makefile is need to avoid building non DT clock
   code for targets that do use DT (I accidentaly put put that change
   into a differnet, not yet submitted, patch by mistake)

 - The rest is whitespace damage removal

Let me know if it'd be more convenient to drop the original patch and
re-spin a v2 of it.

Thanks,
Andrey Smirnov

 arch/arm/Kconfig                  |  2 +-
 arch/arm/mach-at91/Makefile       |  7 ++++++-
 drivers/clk/at91/Makefile         |  2 --
 drivers/clk/at91/clk-main.c       |  2 +-
 drivers/clk/at91/clk-peripheral.c |  1 -
 drivers/clk/at91/clk-pll.c        |  2 +-
 drivers/clk/at91/clk-smd.c        |  2 +-
 drivers/clk/at91/clk-utmi.c       |  2 +-
 drivers/clk/at91/sckc.c           | 10 +++++-----
 9 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e69ed9c..e9d96b7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -55,7 +55,7 @@ config ARCH_AT91
 	select HAVE_MACH_ARM_HEAD
 	select HAVE_CLK
 	select PINCTRL_AT91
-	select COMMON_CLK_AT91
+	select COMMON_CLK_AT91 if COMMON_CLK_OF_PROVIDER
 
 config ARCH_BCM2835
 	bool "Broadcom BCM2835 boards"
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 1f63b09..e207690 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,9 @@
-obj-y += setup.o clock.o irq_fixup.o
+obj-y += setup.o irq_fixup.o
+
+ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
+obj-y += clock.o
+endif
+
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index bfd06a4..13e67bd 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -11,5 +11,3 @@ obj-$(CONFIG_HAVE_AT91_USB_CLK)		+= clk-usb.o
 obj-$(CONFIG_HAVE_AT91_SMD)		+= clk-smd.o
 obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
-
-
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index c1f47c1..55bc618 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -530,7 +530,7 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
 	clkmain->clk.parent_names = xzalloc(parents_array_size);
 	memcpy(clkmain->clk.parent_names, parent_names, parents_array_size);
 	clkmain->clk.num_parents = num_parents;
-	
+
 	/* init.flags = CLK_SET_PARENT_GATE; */
 
 	clkmain->regmap = regmap;
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index 4a76c46..bbe6ffa 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -427,4 +427,3 @@ static int of_at91sam9x5_clk_periph_setup(struct device_node *np)
 }
 CLK_OF_DECLARE(at91sam9x5_clk_periph, "atmel,at91sam9x5-clk-peripheral",
 	       of_at91sam9x5_clk_periph_setup);
-
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index cf38742..e0af4fe 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -483,7 +483,7 @@ of_at91_clk_pll_setup(struct device_node *np,
 		kfree(characteristics);
 		return PTR_ERR(clk);
 	}
-	
+
 	return of_clk_add_provider(np, of_clk_src_simple_get, clk);
 }
 
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index 0d72491..65c53ef 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -28,7 +28,7 @@
 struct at91sam9x5_clk_smd {
 	struct clk clk;
 	struct regmap *regmap;
-	const char *parent_names[SMD_SOURCE_MAX];	
+	const char *parent_names[SMD_SOURCE_MAX];
 };
 
 #define to_at91sam9x5_clk_smd(clk) \
diff --git a/drivers/clk/at91/clk-utmi.c b/drivers/clk/at91/clk-utmi.c
index 96ce35c..6a1c5e6 100644
--- a/drivers/clk/at91/clk-utmi.c
+++ b/drivers/clk/at91/clk-utmi.c
@@ -55,7 +55,7 @@ static int clk_utmi_enable(struct clk *clk)
 static int clk_utmi_is_enabled(struct clk *clk)
 {
 	struct clk_utmi *utmi = to_clk_utmi(clk);
-	
+
 	return clk_utmi_ready(utmi->regmap);
 }
 
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index debaafb..bac2899 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -118,7 +118,7 @@ static const struct clk_ops slow_osc_ops = {
 	.is_enabled = clk_slow_osc_is_enabled,
 };
 
-static struct clk * 
+static struct clk *
 at91_clk_register_slow_osc(void __iomem *sckcr,
 			   const char *name,
 			   const char *parent_name,
@@ -155,7 +155,7 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 	return &osc->clk;
 }
 
-static void 
+static void
 of_at91sam9x5_clk_slow_osc_setup(struct device_node *np, void __iomem *sckcr)
 {
 	struct clk *clk;
@@ -219,7 +219,7 @@ static const struct clk_ops slow_rc_osc_ops = {
 	.recalc_rate = clk_slow_rc_osc_recalc_rate,
 };
 
-static struct clk * 
+static struct clk *
 at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 			      const char *name,
 			      unsigned long frequency,
@@ -251,7 +251,7 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 	return &osc->clk;
 }
 
-static void 
+static void
 of_at91sam9x5_clk_slow_rc_osc_setup(struct device_node *np, void __iomem *sckcr)
 {
 	struct clk *clk;
@@ -309,7 +309,7 @@ static const struct clk_ops sam9x5_slow_ops = {
 	.get_parent = clk_sam9x5_slow_get_parent,
 };
 
-static struct clk * 
+static struct clk *
 at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 			      const char *name,
 			      const char **parent_names,
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
