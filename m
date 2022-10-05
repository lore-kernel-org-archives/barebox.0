Delivery-date: Wed, 05 Oct 2022 21:44:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogAJV-0075l2-2A
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 21:44:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogAJT-000600-PE
	for lore@pengutronix.de; Wed, 05 Oct 2022 21:44:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NJZittDct8++4OCoD/tDDH0LKPeI/zPLdXmQmV6uGMo=; b=xFH5TfqwAjPNOawY1bei3LSfmv
	sthnR4wAsmjmCKkhegLEI05BnvmUkYzYXiUQGQpv4yYQKOf7l8rs+J1LP3pjHAWN+ADIKyGTZaXRE
	/jc3tdx5CheAT4qHShhxyoErmbbd6Etnfon5Wsbhi4wiomSTZRrYx1VZgXmgBnkXePRdnGRHzOjVC
	852XrBsxV2KHA5vaC94NnyDmNCIUR32jrmYBiiaP1N6n2BiRFhOdtXPCndJYevEBYl4CF62VT4/sb
	gT00pBvvbuapgmd0Vx13XARbfZiX1owKbyLudUKfqgaRdev7jGL1wIYYed/puc/pF/mqSk8oxViPr
	mTjNTEZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogAGk-00FsDC-4Q; Wed, 05 Oct 2022 19:41:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogAGf-00FsAI-1v
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 19:41:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ogAGV-0005p2-57; Wed, 05 Oct 2022 21:41:11 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ogAGV-004ojp-Td; Wed, 05 Oct 2022 21:41:10 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ogAGT-00EBVj-Jo; Wed, 05 Oct 2022 21:41:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  5 Oct 2022 21:41:08 +0200
Message-Id: <20221005194108.3380781-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_124121_116748_FC8B9E5E 
X-CRM114-Status: GOOD (  18.11  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2] clks: imx7: fix initial clock setup with deep probe enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We register the i.MX7 clock controller driver at core_initcall level and
then do some initial clock setup/reparenting at postcore_initcall level.
This doesn't work as expected when deep probe is enabled, because while
the driver is registered at core_initcall level, it's only probed
later on, currently at postcore_initcall level because it's a dependency
of the timer for which of_ensure_device_probed is called.

As the initial clock setup is also at postcore_initcall level, it's no
longer guaranteed that the code executes in the same order. Fix this by
directly doing the setup at the end of the probe function for the deep
probe case. In non-deep-probe systems, we maintain the existing initcall
ordering to avoid regressions.

Co-developed-by: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - maintain initcall ordering for non-deep-probe systems (Sascha)
---
 drivers/clk/imx/clk-imx7.c | 29 +++++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index ffa39d17b0eb..588e9cbe5ce4 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
+#include <deep-probe.h>
 #include <linux/clk.h>
 #include <io.h>
 #include <of.h>
@@ -358,7 +359,9 @@ static int const clks_init_on[] __initconst = {
 
 static struct clk_onecell_data clk_data;
 
-static int imx7_clk_initialized;
+static struct device_node *ccm_np;
+
+static int imx7_clk_setup(void);
 
 static int imx7_ccm_probe(struct device_d *dev)
 {
@@ -806,19 +809,35 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clk_data.clk_num = ARRAY_SIZE(clks);
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
 
-	imx7_clk_initialized = 1;
+	ccm_np = dev->device_node;
+
+	/*
+	 * imx7_clk_setup() requires both the CCM and fixed-clock osc devices
+	 * to be available.
+	 * With deep probe enabled, we can instead just directly call
+	 * imx7_clk_setup because the osc fixed-clock will just be probed
+	 * on demand if not yet available. Otherwise, the imx7_clk_setup
+	 * will run at postcore_initcall level.
+	 */
+	if (deep_probe_is_supported())
+		return imx7_clk_setup();
 
 	return 0;
 }
 
 static int imx7_clk_setup(void)
 {
+	struct clk *clk;
 	int i;
 
-	if (!imx7_clk_initialized)
+	if (!ccm_np)
 		return 0;
 
-	clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
+	clk = of_clk_get_by_name(ccm_np, "osc");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clks[IMX7D_OSC_24M_CLK] = clk;
 
 	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
 		clk_enable(clks[clks_init_on[i]]);
@@ -840,6 +859,8 @@ static int imx7_clk_setup(void)
 	clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
 	clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
 
+	ccm_np = NULL;
+
 	return 0;
 }
 postcore_initcall(imx7_clk_setup);
-- 
2.30.2



