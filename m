Delivery-date: Mon, 11 Aug 2025 08:44:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGl-009Fh9-0U
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 08:44:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGk-0002XE-DB
	for lore@pengutronix.de; Mon, 11 Aug 2025 08:44:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRifc5S3OWiSEUJ2uAyxbAhhBPkfvPYM9bZv5V0WgJs=; b=GmRRPjbMQ7b3OT
	TGLsx7lxFs3CO3Co77025/zqt75KscxHe35Bqw5+XPmxKUirWTVnGolbh+UcBrufpnvJNgjC3tcXx
	PtUVeexmsKs5skCWaaAp864VzXH6O7M4ySGqnLlF4JDqAdq8lu9Ygw35RcXbo3SKKiw7JzVBcxsMG
	sPF2uwkk+CFNzwWOAk+94mYVVU9Awi+jFHX/zMEcRMoXP0O+XKvU7LZXqSGPYOG0LBnMTdD5RKZn8
	JnvvWHsxEi91MSPWXTSln9nzzvZK922NaP6pnqzOQ1MaejRktGeunD4QlIE4XC+KOo/CUbvK9B77l
	iK9GpwwjWEFXTj+5CG5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMG1-00000006cj8-1RPc;
	Mon, 11 Aug 2025 06:43:45 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMD9-00000006cTP-0Fsz
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 06:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=pRifc5S3OWiSEUJ2uAyxbAhhBPkfvPYM9bZv5V0WgJs=;
	b=BXMnJi1i3Qp+YWgHcW34JK2vsKCJynkiOgX4zU7xA709avc5gakv+sPEuH3Z4NbBBhOavXtKRDkbV
	 Ml8rBhKO8ZGkzAaX2EELk7Lv8PdcHu/vIJtY0hgb2NAH9VvwFWSpkg/qAh7Vs3nzJjU2qoWKtROMXi
	 fIXkkpxgyf0QAw5fAzMMpk6qnFnda9VkPp6Um43p92afswIDqpkL7r4fp3XaDrdg9BOcTN1aINSw8s
	 HvDyW/owX1IxWBvI5t4cfsrP8PIF03nM6ve08WCaz4FnugqYe+VS6tFtLkvA4hEVpQklf4kO44gZhU
	 E9XMHhISa9CK9Tclgen7Nm6sO3G6SZA==
X-MSG-ID: 192fc9a6-767e-11f0-8663-0050568164d1
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 08:40:20 +0200
Message-ID: <20250811064026.753776-3-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
References: <20250811064026.753776-1-david@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234047_235407_BF6C21E0 
X-CRM114-Status: GOOD (  13.24  )
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] clk: rockchip: Introduce rockchip_grf_type enum from kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MUXGRF macro from the kernel clk driver has an extra field that was
left out of the barebox driver, since it required a dynamically allocated
hashmap that might have been overly complicated to port.
Until now, this wasn't strictly necessary, but for upcoming RK3576 support
this extra parameter will be needed.
This patch introduces a simplified version of the hashmap via a simple
pointer lookup table called grfmap in struct rockchip_clk_provider.
Existing drivers only need one of the entries (grf_type_sys), which is
filled in by default.

Signed-off-by: David Jander <david@protonic.nl>
---
 drivers/clk/rockchip/clk-rk3288.c |  2 +-
 drivers/clk/rockchip/clk-rk3568.c |  2 +-
 drivers/clk/rockchip/clk.c        |  4 +++-
 drivers/clk/rockchip/clk.h        | 15 ++++++++++++++-
 4 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index b4ac2a42d5..9dceb7da0c 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -419,7 +419,7 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
 			RK3288_CLKSEL_CON(32), 14, 2, MFLAGS, 8, 5, DFLAGS,
 			RK3288_CLKGATE_CON(3), 11, GFLAGS),
 	MUXGRF(0, "aclk_vcodec_pre", mux_aclk_vcodec_pre_p, CLK_SET_RATE_PARENT,
-			RK3288_GRF_SOC_CON(0), 7, 1, MFLAGS),
+			RK3288_GRF_SOC_CON(0), 7, 1, MFLAGS, grf_type_sys),
 	GATE(ACLK_VCODEC, "aclk_vcodec", "aclk_vcodec_pre", 0,
 		RK3288_CLKGATE_CON(9), 0, GFLAGS),
 
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index cdc7b99e47..7ed5aa5213 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -586,7 +586,7 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKSEL_CON(9), 6, 2, MFLAGS, 0, 5, DFLAGS,
 			RK3568_CLKGATE_CON(4), 0, GFLAGS),
 	MUXGRF(CLK_DDR1X, "clk_ddr1x", clk_ddr1x_p, CLK_SET_RATE_PARENT,
-			RK3568_CLKSEL_CON(9), 15, 1, MFLAGS),
+			RK3568_CLKSEL_CON(9), 15, 1, MFLAGS, grf_type_sys),
 
 	COMPOSITE_NOMUX(CLK_MSCH, "clk_msch", "clk_ddr1x", CLK_IGNORE_UNUSED,
 			RK3568_CLKSEL_CON(10), 0, 2, DFLAGS,
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index c833f09611..387961c829 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -332,6 +332,7 @@ struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 
 	ctx->grf = syscon_regmap_lookup_by_phandle(ctx->cru_node,
 						   "rockchip,grf");
+	ctx->grfmap[grf_type_sys] = ctx->grf;
 
 	return ctx;
 
@@ -438,7 +439,8 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 		case branch_muxgrf:
 			clk = rockchip_clk_register_muxgrf(list->name,
 				list->parent_names, list->num_parents,
-				flags, ctx->grf, list->muxdiv_offset,
+				flags, ctx->grfmap[list->grf_type],
+				list->muxdiv_offset,
 				list->mux_shift, list->mux_width,
 				list->mux_flags);
 			break;
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 42da038fdf..ff25de776d 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -308,6 +308,16 @@ enum rockchip_pll_type {
 	.k = _k,						\
 }
 
+enum rockchip_grf_type {
+	grf_type_sys = 0,
+	grf_type_pmu0,
+	grf_type_pmu1,
+	grf_type_ioc,
+	grf_type_vo,
+	grf_type_vpu,
+	grf_type_num
+};
+
 /**
  * struct rockchip_clk_provider - information about clock provider
  * @reg_base: virtual address for the register base.
@@ -321,6 +331,7 @@ struct rockchip_clk_provider {
 	struct clk_onecell_data clk_data;
 	struct device_node *cru_node;
 	struct regmap *grf;
+	struct regmap *grfmap[grf_type_num];
 	struct restart_handler restart_handler;
 	unsigned int reg_restart;
 	spinlock_t lock;
@@ -526,6 +537,7 @@ struct rockchip_clk_branch {
 	int				gate_offset;
 	u8				gate_shift;
 	u8				gate_flags;
+	enum rockchip_grf_type		grf_type;
 	struct rockchip_clk_branch	*child;
 };
 
@@ -750,7 +762,7 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
-#define MUXGRF(_id, cname, pnames, f, o, s, w, mf)		\
+#define MUXGRF(_id, cname, pnames, f, o, s, w, mf, gt)		\
 	{							\
 		.id		= _id,				\
 		.branch_type	= branch_muxgrf,		\
@@ -763,6 +775,7 @@ struct rockchip_clk_branch {
 		.mux_width	= w,				\
 		.mux_flags	= mf,				\
 		.gate_offset	= -1,				\
+		.grf_type	= gt,				\
 	}
 
 #define DIV(_id, cname, pname, f, o, s, w, df)			\
-- 
2.47.2



