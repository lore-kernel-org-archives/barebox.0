Delivery-date: Tue, 10 Jun 2025 10:45:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOubc-005joD-16
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 10:45:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOubb-0006cd-CX
	for lore@pengutronix.de; Tue, 10 Jun 2025 10:45:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6I25/tjXeYKEA8qdX7kuV0cbHcBRn38WKxuyQw8nRKk=; b=Tc9TjJq2axUGIqvMGugOMrhIjb
	tCUItYENOSTCbxs3+uk2z7zE6VA1waC9IRXUAiIgARvrmkDMWgslRagShg7QfVJ5Co3kC2dkUgzjV
	vqDgRRMXTj8XGut/v9xHWmCK9Q+o0uBc03pYUUUvjwBNPLKjwsrgCYBGM53bxAZzUE1TgkRvFJeFW
	N1/Fr3xiMr1gh6bIO3WBd+gM2SzwaYJLw7/twYNJ0KqBjNHGnZpbukLz59Ant5W0+r7i+fiyFtZJ6
	VoJki1Ixx2qCNQpkQNc2fVulYhLC9SzX20kfmI8A/XzQkHb1bHxwDp2j6V8O6UDI6+AJLIU4ewWOs
	gjyWqUIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOubI-00000006DIP-3cb8;
	Tue, 10 Jun 2025 08:44:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOtKU-0000000618F-2CY8
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 07:23:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uOtKR-0001C3-Iq; Tue, 10 Jun 2025 09:23:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 10 Jun 2025 09:23:24 +0200
Message-Id: <20250610072324.3470259-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_002330_725277_C4CEB8B8 
X-CRM114-Status: GOOD (  18.08  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] clk: make use of %pC format specifier for printing name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has supported this format specifier for 10 years now.
So let's add support for it in barebox proper as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - wrap struct clk * dereference into #ifdef, because definition
    isn't defined globally (Sascha)
---
 arch/arm/mach-at91/clock.c        |  2 +-
 drivers/clk/clk-divider.c         |  4 ++--
 drivers/clk/clk-stm32f4.c         |  2 +-
 drivers/clk/clk.c                 | 14 +++++++-------
 drivers/clk/imx/clk-pll14xx.c     |  4 ++--
 drivers/clk/tegra/clk.c           | 12 ++++++------
 drivers/firmware/arm_scmi/clock.c |  4 ++--
 drivers/net/macb.c                |  2 +-
 drivers/video/imx-ipu-v3/ipu-di.c |  4 ++--
 lib/vsprintf.c                    | 18 +++++++++++++++++-
 10 files changed, 41 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index a3071189bb8f..6482aa93c0bf 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -858,7 +858,7 @@ static int at91_clock_reset(void)
 		if (clk->mode == pmc_sys_mode)
 			scdr |= clk->pmc_mask;
 
-		pr_debug("Clocks: disable unused %s\n", clk->name);
+		pr_debug("Clocks: disable unused %pC\n", clk);
 	}
 
 	at91_pmc_write(AT91_PMC_PCDR, pcdr);
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index b0df34e85847..62d63ef39c7e 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -90,8 +90,8 @@ unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 	div = _get_div(table, val, flags, width);
 	if (!div) {
 		WARN(!(flags & CLK_DIVIDER_ALLOW_ZERO),
-			"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
-			clk->name);
+			"%pC: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
+			clk);
 		return parent_rate;
 	}
 
diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 22c47656c411..343ee0e6e9b5 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -1879,7 +1879,7 @@ static void __init stm32f4_rcc_init(struct device_node *np)
 				&stm32f4_clk_lock);
 
 		if (IS_ERR(hw)) {
-			pr_warn("Unable to register %s clk\n", aux_clk->name);
+			pr_warn("Unable to register %pC clk\n", aux_clk);
 			continue;
 		}
 
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 9b21d0650b6c..ec8c06b61bfb 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -80,7 +80,7 @@ void clk_disable(struct clk *clk)
 		return;
 
 	if (clk->enable_count == 1 && clk->flags & CLK_IS_CRITICAL) {
-		pr_warn("Disabling critical clock %s\n", clk->name);
+		pr_warn("Disabling critical clock %pC\n", clk);
 		return;
 	}
 
@@ -446,8 +446,8 @@ static int __bclk_register(struct clk *clk)
 
 	list_for_each_entry(c, &clks, list) {
 		if (!strcmp(c->name, clk->name)) {
-			pr_err("%s clk %s is already registered, skipping!\n",
-				__func__, clk->name);
+			pr_err("%s clk %pC is already registered, skipping!\n",
+				__func__, clk);
 			return -EBUSY;
 		}
 	}
@@ -1046,8 +1046,8 @@ static void dump_one_summary(struct clk *clk, int flags, int indent)
 	else
 		stat = "enabled";
 
-	printf("%*s%s (rate %lu, enable_count: %d, %s)\n", indent * 4, "",
-	       clk->name,
+	printf("%*s%pC (rate %lu, enable_count: %d, %s)\n", indent * 4, "",
+	       clk,
 	       clk_get_rate(clk),
 	       clk->enable_count,
 	       hwstat);
@@ -1066,8 +1066,8 @@ static void dump_one_summary(struct clk *clk, int flags, int indent)
 
 static void dump_one_json(struct clk *clk, int flags, int indent)
 {
-	printf("\"%s\": { \"rate\": %lu,\"enable_count\": %d",
-	       clk->name,
+	printf("\"%pC\": { \"rate\": %lu,\"enable_count\": %d",
+	       clk,
 	       clk_get_rate(clk),
 	       clk->enable_count);
 }
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 86286448e9ef..6716a6f55560 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -261,8 +261,8 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	rate = imx_get_pll_settings(pll, drate);
 	if (!rate) {
-		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, clk->name);
+		pr_err("%s: Invalid rate : %lu for pll clk %pC\n", __func__,
+			drate, clk);
 		return -EINVAL;
 	}
 
diff --git a/drivers/clk/tegra/clk.c b/drivers/clk/tegra/clk.c
index ad384d8d4d53..90f66f4daf87 100644
--- a/drivers/clk/tegra/clk.c
+++ b/drivers/clk/tegra/clk.c
@@ -117,23 +117,23 @@ void tegra_init_from_table(struct tegra_clk_init_table *tbl,
 		if (tbl->parent_id < clk_max) {
 			struct clk *parent = clks[tbl->parent_id];
 			if (clk_set_parent(clk, parent)) {
-				pr_err("%s: Failed to set parent %s of %s\n",
-				       __func__, parent->name, clk->name);
+				pr_err("%s: Failed to set parent %pC of %pC\n",
+				       __func__, parent, clk);
 				WARN_ON(1);
 			}
 		}
 
 		if (tbl->rate)
 			if (clk_set_rate(clk, tbl->rate)) {
-				pr_err("%s: Failed to set rate %lu of %s\n",
-				       __func__, tbl->rate, clk->name);
+				pr_err("%s: Failed to set rate %lu of %pC\n",
+				       __func__, tbl->rate, clk);
 				WARN_ON(1);
 			}
 
 		if (tbl->state)
 			if (clk_enable(clk)) {
-				pr_err("%s: Failed to enable %s\n", __func__,
-				       clk->name);
+				pr_err("%s: Failed to enable %pC\n", __func__,
+				       clk);
 				WARN_ON(1);
 			}
 	}
diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 2c902835a0ec..7e1e9f023496 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -197,8 +197,8 @@ iter_clk_describe_update_state(struct scmi_iterator_state *st,
 	if (!p->clk->rate_discrete &&
 	    (st->num_returned != 3 || st->num_remaining != 0)) {
 		dev_warn(p->dev,
-			 "Out-of-spec CLOCK_DESCRIBE_RATES reply for %s - returned:%d remaining:%d rx_len:%zd\n",
-			 p->clk->name, st->num_returned, st->num_remaining,
+			 "Out-of-spec CLOCK_DESCRIBE_RATES reply for %pC - returned:%d remaining:%d rx_len:%zd\n",
+			 p->clk, st->num_returned, st->num_remaining,
 			 st->rx_len);
 
 		/*
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 205e3169f17b..26bc3130bf59 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -772,7 +772,7 @@ static int fu540_c000_txclk_init(struct device *dev, struct clk **tx_clk)
 		return err;
 	}
 
-	dev_info(dev, "Registered clk switch '%s'\n", clk->name);
+	dev_info(dev, "Registered clk switch '%pC'\n", clk);
 	return 0;
 }
 #else
diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
index 7653d512969f..80c0276ec96f 100644
--- a/drivers/video/imx-ipu-v3/ipu-di.c
+++ b/drivers/video/imx-ipu-v3/ipu-di.c
@@ -542,8 +542,8 @@ int ipu_di_init_sync_panel(struct ipu_di *di, struct ipu_di_signal_cfg *sig)
 	ret = clk_set_parent(&di->clk_di_pixel, parent);
 	if (ret) {
 		dev_err(di->ipu->dev,
-			"setting pixel clock to parent %s failed with %d\n",
-				parent->name, ret);
+			"setting pixel clock to parent %pC failed with %d\n",
+				parent, ret);
 		return ret;
 	}
 
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index ba87f6c210d2..409a8f02dec9 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -16,6 +16,7 @@
 #include <linux/string.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
+#include <linux/clk.h>
 #include <malloc.h>
 #include <kallsyms.h>
 #include <wchar.h>
@@ -310,7 +311,7 @@ char *ip4_addr_string(char *buf, const char *end, const u8 *addr, int field_widt
 }
 
 static
-char *error_string(char *buf, const char *end, const u8 *errptr, int field_width,
+char *error_string(char *buf, const char *end, const void *errptr, int field_width,
 		   int precision, int flags, const char *fmt)
 {
     if (!IS_ERR(errptr))
@@ -477,6 +478,18 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
 		      precision, flags);
 }
 
+static noinline_for_stack
+char *clock(char *buf, const char *end, const struct clk *clk,
+	    int field_width, int precision, int flags, const char *fmt)
+{
+#ifdef CONFIG_COMMON_CLK
+	if (!IS_ERR_OR_NULL(clk))
+		return string(buf, end, clk->name, field_width, precision, flags);
+#endif
+
+	return error_string(buf, end, clk, field_width, precision, flags, fmt);
+}
+
 /*
  * Show a '%p' thing.  A kernel extension is that the '%p' is followed
  * by an extra set of alphanumeric characters that are extended format
@@ -515,6 +528,7 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
  *              N no separator
  * - 'M' For a 6-byte MAC address, it prints the address in the
  *       usual colon-separated hex notation
+ * - 'C' For a clock, it prints the name in the Common Clock Framework
  *
  * Additionally, we support following barebox-specific format specifiers:
  *
@@ -575,6 +589,8 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 		if (IS_ENABLED(CONFIG_EFI_DEVICEPATH))
 			return device_path_string(buf, end, ptr, field_width, precision, flags);
 		break;
+	case 'C':
+		return clock(buf, end, ptr, field_width, precision, flags, fmt);
 	}
 
 	return raw_pointer(buf, end, ptr, field_width, precision, flags);
-- 
2.39.5



