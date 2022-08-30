Delivery-date: Tue, 30 Aug 2022 10:41:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSwoL-001WlU-Mz
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 10:41:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSwoJ-0006g4-Uq
	for lore@pengutronix.de; Tue, 30 Aug 2022 10:41:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lp4VM9tHawI81v91tPtqtJ477YZ/krWx887q5edR460=; b=tw8RLFByzQIBsFEQigVdF0/sSQ
	opDITvXxD+6tol9HlSRK1AAG5pcP8/2gmS3vw7FDnjMojDF8PlLYvGNRrkeia2hG08PPA5rr8Y80f
	9XL0UNpUr8arL5+pSFSx8PaWShwKGVlQHN7bgeIvLVCVn+Lg9ja1r2JYLxLrn6joxM6vRFLXWiD7+
	Yid3p/WFOCCFnS7ieaZOnlxBLr4eHjNnufV+g2o+qjZPPhdYGFacTp5WjDumvYfed0mA9AV8iDoSN
	JmlzDVhDVFDFW+AKWMfihI1bB/O6RqPPC2+CV6C/AVX//SPwBsfSp3mO4ruzVH2H+IY26GAg3zUp1
	DFxMWMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwmj-00FIHT-Lc; Tue, 30 Aug 2022 08:39:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwmc-00FIDO-3L
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 08:39:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwma-0006O2-Fu; Tue, 30 Aug 2022 10:39:40 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwmZ-002pmG-Pv; Tue, 30 Aug 2022 10:39:39 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwmZ-001xHk-5g; Tue, 30 Aug 2022 10:39:39 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Johannes Zink <j.zink@pengutronix.de>
Date: Tue, 30 Aug 2022 10:39:37 +0200
Message-Id: <20220830083937.466171-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_013942_272799_431696B4 
X-CRM114-Status: GOOD (  16.00  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] clks: imx7: fix initial clock setup with deep probe enabled
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
directly doing the setup at the end of the probe function.

Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 drivers/clk/imx/clk-imx7.c | 62 +++++++++++++++++---------------------
 1 file changed, 27 insertions(+), 35 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index ffa39d17b0..67876a8404 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -358,7 +358,32 @@ static int const clks_init_on[] __initconst = {
 
 static struct clk_onecell_data clk_data;
 
-static int imx7_clk_initialized;
+static void imx7_clk_setup(void)
+{
+	int i;
+
+	clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
+
+	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
+		clk_enable(clks[clks_init_on[i]]);
+
+	/* use old gpt clk setting, gpt1 root clk must be twice as gpt counter freq */
+	clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
+
+	/* set uart module clock's parent clock source that must be great then 80MHz */
+	clk_set_parent(clks[IMX7D_UART1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
+
+	clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
+	clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
+	clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
+	clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
+
+	clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
+	clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC], clks[IMX7D_PLL_SYS_PFD4_CLK]);
+	clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
+	clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
+	clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
+}
 
 static int imx7_ccm_probe(struct device_d *dev)
 {
@@ -806,43 +831,10 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clk_data.clk_num = ARRAY_SIZE(clks);
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
 
-	imx7_clk_initialized = 1;
-
-	return 0;
-}
-
-static int imx7_clk_setup(void)
-{
-	int i;
-
-	if (!imx7_clk_initialized)
-		return 0;
-
-	clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
-
-	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
-		clk_enable(clks[clks_init_on[i]]);
-
-	/* use old gpt clk setting, gpt1 root clk must be twice as gpt counter freq */
-	clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
-
-	/* set uart module clock's parent clock source that must be great then 80MHz */
-	clk_set_parent(clks[IMX7D_UART1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
-
-	clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
-	clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
-	clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
-	clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
-
-	clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
-	clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC], clks[IMX7D_PLL_SYS_PFD4_CLK]);
-	clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
-	clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
-	clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
+	imx7_clk_setup();
 
 	return 0;
 }
-postcore_initcall(imx7_clk_setup);
 
 static __maybe_unused struct of_device_id imx7_ccm_dt_ids[] = {
 	{
-- 
2.30.2



