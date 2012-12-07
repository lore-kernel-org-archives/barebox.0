Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TguF9-0006qQ-Lv
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 09:29:16 +0000
Date: Fri, 7 Dec 2012 10:29:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121207092913.GC10369@pengutronix.de>
References: <1354817337-23659-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354817337-23659-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] clk: use the 'CLK_ALWAYS_ENABLED' flag for clk-fixed by
 default
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2012 at 10:08:57PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/clk/clk-fixed.c |    1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

Overall I'm not quite sure how we continue here. ATM for i.MX I enable
all gates during startup and do not handle the gates at all later. This
has the effect that the clock tree now looks like this:

dummy (rate 0, always enabled)
ckih (rate 26000000, always enabled)
    mpll (rate 399000000, disabled)
        mpll_main2 (rate 266000000, disabled)
            ahb (rate 133000000, disabled)
                ipg (rate 66500000, disabled)
                nfc_div (rate 33250000, disabled)
            per1_div (rate 14777777, disabled)
            per2_div (rate 26600000, disabled)
            per3_div (rate 66500000, disabled)
                lcdc_per_gate (rate 66500000, disabled)
            per4_div (rate 26600000, disabled)
        cpu_sel (rate 399000000, disabled)
            cpu_div (rate 399000000, disabled)
    spll (rate 240000000, disabled)
        usb_div (rate 60000000, disabled)
ckil (rate 32768, always enabled)
    clko_sel (rate 32768, disabled)
        clko_div (rate 6553, disabled)

The dividers and muxes can't be disabled, so it would be better to print
'enabled' here. I just created the following patch which basically
exploits the is_enabled callback. This way we can print the true
hardware status of the clocks instead of the software use counter which
is IMO more important to know. The patch only falls back to the software
enable counter if no information from the hardware is available.


Consider this situation:

OSC ----- gate ------ divider1 ---
               \
                '---- divider2 ---

With the following patch this means that barebox correctly prints
divider1 and divider2 as enabled when the gate is enabled. The Linux
clock framework instead would only give you information about the
software state, so that when somebody enables only divider1 (which
propagates to the gate), then divider2 would still be shown as disabled.

Sascha

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 58a7ea5..232fb0e 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -71,6 +71,7 @@ static unsigned long clk_divider_recalc_rate(struct clk *clk,
 struct clk_ops clk_divider_ops = {
 	.set_rate = clk_divider_set_rate,
 	.recalc_rate = clk_divider_recalc_rate,
+	.is_enabled = clk_is_enabled_always,
 };
 
 struct clk *clk_divider(const char *name, const char *parent,
diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index 5e81e72..9295dde 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -34,6 +34,7 @@ static unsigned long clk_fixed_recalc_rate(struct clk *clk,
 
 struct clk_ops clk_fixed_ops = {
 	.recalc_rate = clk_fixed_recalc_rate,
+	.is_enabled = clk_is_enabled_always,
 };
 
 struct clk *clk_fixed(const char *name, int rate)
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index cf1bb1a..a455094 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -49,9 +49,23 @@ static void clk_gate_disable(struct clk *clk)
 	writel(val, g->reg);
 }
 
+static int clk_gate_is_enabled(struct clk *clk)
+{
+	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
+	u32 val;
+
+	val = readl(g->reg);
+
+	if (val & (1 << g->shift))
+		return 1;
+	else
+		return 0;
+}
+
 struct clk_ops clk_gate_ops = {
 	.enable = clk_gate_enable,
 	.disable = clk_gate_disable,
+	.is_enabled = clk_gate_is_enabled,
 };
 
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index cb5f1a1..6cf2d69 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -51,6 +51,7 @@ static int clk_mux_set_parent(struct clk *clk, u8 idx)
 struct clk_ops clk_mux_ops = {
 	.get_parent = clk_mux_get_parent,
 	.set_parent = clk_mux_set_parent,
+	.is_enabled = clk_is_enabled_always,
 };
 
 struct clk *clk_mux(const char *name, void __iomem *reg,
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index cb94755..a1a16ed 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -218,6 +218,32 @@ int clk_register(struct clk *clk)
 	return 0;
 }
 
+int clk_is_enabled(struct clk *clk)
+{
+	int enabled;
+
+	if (IS_ERR(clk))
+		return 0;
+
+	if (clk->flags & CLK_ALWAYS_ENABLED)
+		return 1;
+
+	if (clk->ops->is_enabled)
+		enabled = clk->ops->is_enabled(clk);
+	else
+		enabled = clk->enable_count ? 1 : 0;;
+
+	if (enabled)
+		return clk_is_enabled(clk_get_parent(clk));
+	else
+		return 0;
+}
+
+int clk_is_enabled_always(struct clk *clk)
+{
+	return 1;
+}
+
 static void dump_one(struct clk *clk, int verbose, int indent)
 {
 	struct clk *c;
@@ -227,7 +253,7 @@ static void dump_one(struct clk *clk, int verbose, int indent)
 		always = "always ";
 
 	printf("%*s%s (rate %ld, %s%sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
-			always, clk->enable_count ? "en" : "dis");
+			always, clk_is_enabled(clk) ? "en" : "dis");
 	if (verbose) {
 
 		if (clk->num_parents > 1) {
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 1030b50..af48ca2 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -194,6 +194,8 @@ struct clk *clk_mux(const char *name, void __iomem *reg,
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 		u8 shift);
 
+int clk_is_enabled_always(struct clk *clk);
+
 int clk_register(struct clk *clk);
 
 struct clk *clk_lookup(const char *name);

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
