Delivery-date: Mon, 28 Oct 2024 16:04:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5RIJ-001uMU-0E
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 16:04:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5RII-0008IJ-Ty
	for lore@pengutronix.de; Mon, 28 Oct 2024 16:04:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bjPNzoHFFXyQ5wx3eyug2d3r3+sO7WnEwgffPAQbndY=; b=ygK780v/JhqpxBvCNkgG1FmvO2
	cUC+WURpUzmD6T6yTo8trTjZynZzyY0Oo25adDEJGI0VvpEnQjndVUIGBofWFM4xfWVPs7K5YQBkn
	eplEEwBOsrhvGY4eEoecy960/M8+P/Ov5jk6t7q7imG0SCzmvGHHJej17O+3E4mQY67evx1/RyiH8
	uTm5QTKgiGm+o4QfFUoE1EvJeEXZxN7QGoN33TGcszQCMuQAUU0Vq6v8Y1fw7tJh2s+3yAcAUjGww
	dYKCV2JOih9k3Q5/YZPQGRt9HWivbmHp6tNhPIQURFvRxRsAMQVGcS8jpDa2bpZw9b5Jq+iPE30CV
	P+i+TYFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5RHh-0000000BEat-1vIu;
	Mon, 28 Oct 2024 15:03:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5QmL-0000000B899-38Za
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:31:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5QmK-0003kg-E2; Mon, 28 Oct 2024 15:31:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5QmK-000s9M-0m;
	Mon, 28 Oct 2024 15:31:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-1z;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-vop2-rk3588-v1-10-a54bf7c28adc@pengutronix.de>
References: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
In-Reply-To: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=17137;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=yWY9TDYBCOxI7SRBT+vxwHhiiLf7EE9LrksuX1pgfTc=;
 b=OeCR2SJNFZSEE38CGfwLNGSCbN2ROZ22XA1uvk65a5UwaekjE+0qbRblEkcGFwD5zrYvkgotq
 H590mghIcPsDPbbHq7sxU20pP3U2MQksqfRu5HRt5xZxV0IF+C0RT5s
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_073134_165323_7167DECD 
X-CRM114-Status: GOOD (  25.33  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/12] drm/rockchip: vop2: Improve display modes handling
 on rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Derived from
https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux:

| commit b98b7030e022fed4c0c122d5954a5546ffd360c2
| Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
| Date:   Fri Nov 3 19:58:02 2023 +0200
|
|     [WIP] drm/rockchip: vop2: Improve display modes handling on rk3588
|
|     The initial vop2 support for rk3588 in mainline is not able to handle
|     all display modes supported by connected displays, e.g.
|     2560x1440-75.00Hz, 2048x1152-60.00Hz, 1024x768-60.00Hz.
|
|     Additionally, it doesn't cope with non-integer refresh rates like 59.94,
|     29.97, 23.98, etc.
|
|     Improve HDMI0 clocking in order to support the additional display modes.
|
|     Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
|     Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/rockchip/rockchip_drm_vop2.c | 465 +++++++++++++++++++++++++++++
 1 file changed, 465 insertions(+)

diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index 6464c27d68..dc47432757 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -219,6 +219,11 @@ struct vop2 {
 	struct clk *aclk;
 	struct clk *pclk;
 
+	// [CC:] hack to support additional display modes
+	struct clk *hdmi0_phy_pll;
+	/* list_head of internal clk */
+	struct list_head clk_list_head;
+
 	/* optional internal rgb encoder */
 	struct rockchip_rgb *rgb;
 
@@ -226,6 +231,19 @@ struct vop2 {
 	struct vop2_win win[];
 };
 
+struct vop2_clk {
+	struct vop2 *vop2;
+	struct list_head list;
+	unsigned long rate;
+	struct clk_hw hw;
+	struct clk_divider div;
+	int div_val;
+	u8 parent_index;
+};
+
+#define to_vop2_clk(_hw) container_of(_hw, struct vop2_clk, hw)
+#define VOP2_MAX_DCLK_RATE     600000 /* kHz */
+
 #define vop2_output_if_is_hdmi(x)	((x) == ROCKCHIP_VOP2_EP_HDMI0 || \
 					 (x) == ROCKCHIP_VOP2_EP_HDMI1)
 
@@ -735,6 +753,32 @@ static unsigned long rk3588_calc_dclk(unsigned long child_clk, unsigned long max
 		return 0;
 }
 
+static struct vop2_clk *vop2_clk_get(struct vop2 *vop2, const char *name);
+
+static int vop2_cru_set_rate(struct vop2_clk *if_pixclk, struct vop2_clk *if_dclk)
+{
+	struct vop2 *vop2 = if_pixclk->vop2;
+	int ret = 0;
+
+	if (if_pixclk) {
+		ret = clk_set_rate(&if_pixclk->hw.clk, if_pixclk->rate);
+		if (ret < 0) {
+			dev_err(vop2->dev, "set %s to %ld failed: %d\n",
+					clk_hw_get_name(&if_pixclk->hw), if_pixclk->rate, ret);
+			return ret;
+		}
+	}
+
+	if (if_dclk) {
+		ret = clk_set_rate(&if_dclk->hw.clk, if_dclk->rate);
+		if (ret < 0)
+			dev_err(vop2->dev, "set %s to %ld failed %d\n",
+					clk_hw_get_name(&if_dclk->hw), if_dclk->rate, ret);
+	}
+
+       return ret;
+}
+
 /*
  * 4 pixclk/cycle on rk3588
  * RGB/eDP/HDMI: if_pixclk >= dclk_core
@@ -754,6 +798,67 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 	int K = 1;
 
 	if (vop2_output_if_is_hdmi(id)) {
+		if (vop2->data->soc_id == 3588 && id == ROCKCHIP_VOP2_EP_HDMI0 &&
+		    vop2->hdmi0_phy_pll) {
+			const char *clk_src_name = "hdmi_edp0_clk_src";
+			const char *clk_parent_name = "dclk";
+			const char *pixclk_name = "hdmi_edp0_pixclk";
+			const char *dclk_name = "hdmi_edp0_dclk";
+			struct vop2_clk *if_clk_src, *if_clk_parent, *if_pixclk, *if_dclk, *dclk, *dclk_core, *dclk_out;
+			char clk_name[32];
+			int ret;
+
+			if_clk_src = vop2_clk_get(vop2, clk_src_name);
+			snprintf(clk_name, sizeof(clk_name), "%s%d", clk_parent_name, vp->id);
+			if_clk_parent = vop2_clk_get(vop2, clk_name);
+			if_pixclk = vop2_clk_get(vop2, pixclk_name);
+			if_dclk = vop2_clk_get(vop2, dclk_name);
+			if (!if_pixclk || !if_clk_parent) {
+				dev_err(vop2->dev, "failed to get connector interface clk\n");
+				return 0;
+			}
+
+			ret = clk_set_parent(&if_clk_src->hw.clk, &if_clk_parent->hw.clk);
+			if (ret < 0) {
+				dev_err(vop2->dev, "failed to set parent(%s) for %s: %d\n",
+						if_clk_parent->hw.clk.name,
+						if_clk_src->hw.clk.name, ret);
+				return 0;
+			}
+
+			if_pixclk->rate = (dclk_core_rate << 1) / K;
+			if_dclk->rate = dclk_core_rate / K;
+
+			snprintf(clk_name, sizeof(clk_name), "dclk_core%d", vp->id);
+			dclk_core = vop2_clk_get(vop2, clk_name);
+
+			snprintf(clk_name, sizeof(clk_name), "dclk_out%d", vp->id);
+			dclk_out = vop2_clk_get(vop2, clk_name);
+
+			snprintf(clk_name, sizeof(clk_name), "dclk%d", vp->id);
+			dclk = vop2_clk_get(vop2, clk_name);
+			if (v_pixclk <= (VOP2_MAX_DCLK_RATE * 1000)) {
+			} else {
+				v_pixclk = v_pixclk >> 2;
+			}
+			clk_set_rate(&dclk->hw.clk, v_pixclk);
+
+			if (dclk_core_rate > if_pixclk->rate) {
+				clk_set_rate(&dclk_core->hw.clk, dclk_core_rate);
+				ret = vop2_cru_set_rate(if_pixclk, if_dclk);
+			} else {
+				ret = vop2_cru_set_rate(if_pixclk, if_dclk);
+				clk_set_rate(&dclk_core->hw.clk, dclk_core_rate);
+			}
+
+			*dclk_core_div = dclk_core->div_val;
+			*dclk_out_div = dclk_out->div_val;
+			*if_pixclk_div = if_pixclk->div_val;
+			*if_dclk_div = if_dclk->div_val;
+
+			return dclk->rate;
+		}
+
 		if_pixclk_rate = (dclk_core_rate << 1) / K;
 		/*
 		 * if_dclk_rate = dclk_core_rate / K;
@@ -974,6 +1079,22 @@ static int us_to_vertical_line(struct drm_display_mode *mode, int us)
 	return us * mode->clock / mode->htotal / 1000;
 }
 
+// [CC:] rework virtual clock
+static struct vop2_clk *vop2_clk_get(struct vop2 *vop2, const char *name)
+{
+	struct vop2_clk *clk, *n;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry_safe(clk, n, &vop2->clk_list_head, list) {
+		if (!strcmp(clk_hw_get_name(&clk->hw), name))
+			return clk;
+	}
+
+	return NULL;
+}
+
 static int drm_mode_vrefresh(const struct drm_display_mode *mode)
 {
 	unsigned int num, den;
@@ -1008,6 +1129,8 @@ static void vop2_crtc_atomic_enable(struct vop2_video_port *vp,
 	int act_end;
 	u32 val, polflags;
 	int ret;
+	char clk_name[32];
+	struct vop2_clk *dclk;
 
 	dev_dbg(vop2->dev, "Update mode to %dx%dp%d, type: %d for vp%d\n",
 		hdisplay, vdisplay,
@@ -1072,6 +1195,24 @@ static void vop2_crtc_atomic_enable(struct vop2_video_port *vp,
 
 	vop2_vp_write(vp, RK3568_VP_MIPI_CTRL, 0);
 
+	snprintf(clk_name, sizeof(clk_name), "dclk%d", vp->id);
+	dclk = vop2_clk_get(vop2, clk_name);
+	if (dclk) {
+		/*
+		 * use HDMI_PHY_PLL as dclk source under 4K@60 if it is available,
+		 * otherwise use system cru as dclk source.
+		 */
+		clk_get_rate(vop2->hdmi0_phy_pll);
+
+		if (mode->crtc_clock <= VOP2_MAX_DCLK_RATE) {
+			ret = clk_set_parent(vp->dclk, vop2->hdmi0_phy_pll);
+			if (ret < 0)
+				dev_warn(vop2->dev, "failed to set clock parent for %s\n",
+					__clk_get_name(vp->dclk));
+		}
+
+		clock = dclk->rate;
+	}
 	clk_set_rate(vp->dclk, clock);
 
 	vop2_post_config(vp, mode);
@@ -1937,6 +2078,320 @@ static const struct regmap_config vop2_regmap_config = {
 	.name		= "vop2",
 };
 
+#define PLL_RATE_MIN	30000000
+
+#define PNAME(x) static const char *const x[]
+
+enum vop_clk_branch_type {
+	branch_mux,
+	branch_divider,
+	branch_factor,
+	branch_virtual,
+};
+
+#define VIR(cname)						\
+	{							\
+		.branch_type	= branch_virtual,		\
+		.name		= cname,			\
+	}
+
+
+#define MUX(cname, pnames, f)			\
+	{							\
+		.branch_type	= branch_mux,			\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+	}
+
+#define FACTOR(cname, pname,  f)			\
+	{							\
+		.branch_type	= branch_factor,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+	}
+
+#define DIV(cname, pname, f, w)			\
+	{							\
+		.branch_type	= branch_divider,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.div_width	= w,				\
+	}
+
+struct vop2_clk_branch {
+	enum vop_clk_branch_type	branch_type;
+	const char			*name;
+	const char			*const *parent_names;
+	u8				num_parents;
+	unsigned long			flags;
+	u8				div_shift;
+	u8				div_width;
+	u8				div_flags;
+};
+
+PNAME(mux_port0_dclk_src_p)		= { "dclk0", "dclk1" };
+PNAME(mux_port2_dclk_src_p)		= { "dclk2", "dclk1" };
+PNAME(mux_dp_pixclk_p)			= { "dclk_out0", "dclk_out1", "dclk_out2" };
+PNAME(mux_hdmi_edp_clk_src_p)		= { "dclk0", "dclk1", "dclk2" };
+PNAME(mux_mipi_clk_src_p)		= { "dclk_out1", "dclk_out2", "dclk_out3" };
+PNAME(mux_dsc_8k_clk_src_p)		= { "dclk0", "dclk1", "dclk2", "dclk3" };
+PNAME(mux_dsc_4k_clk_src_p)		= { "dclk0", "dclk1", "dclk2", "dclk3" };
+
+/*
+ * We only use this clk driver calculate the div
+ * of dclk_core/dclk_out/if_pixclk/if_dclk and
+ * the rate of the dclk from the soc.
+ *
+ * We don't touch the cru in the vop here, as
+ * these registers has special read andy write
+ * limits.
+ */
+static struct vop2_clk_branch rk3588_vop_clk_branches[] = {
+	VIR("dclk0"),
+	VIR("dclk1"),
+	VIR("dclk2"),
+	VIR("dclk3"),
+
+	MUX("port0_dclk_src", mux_port0_dclk_src_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	DIV("dclk_core0", "port0_dclk_src", CLK_SET_RATE_PARENT, 2),
+	DIV("dclk_out0", "port0_dclk_src", CLK_SET_RATE_PARENT, 2),
+
+	FACTOR("port1_dclk_src", "dclk1", CLK_SET_RATE_PARENT),
+	DIV("dclk_core1", "port1_dclk_src", CLK_SET_RATE_PARENT, 2),
+	DIV("dclk_out1", "port1_dclk_src", CLK_SET_RATE_PARENT, 2),
+
+	MUX("port2_dclk_src", mux_port2_dclk_src_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	DIV("dclk_core2", "port2_dclk_src", CLK_SET_RATE_PARENT, 2),
+	DIV("dclk_out2", "port2_dclk_src", CLK_SET_RATE_PARENT, 2),
+
+	FACTOR("port3_dclk_src", "dclk3", CLK_SET_RATE_PARENT),
+	DIV("dclk_core3", "port3_dclk_src", CLK_SET_RATE_PARENT, 2),
+	DIV("dclk_out3", "port3_dclk_src", CLK_SET_RATE_PARENT, 2),
+
+	MUX("dp0_pixclk", mux_dp_pixclk_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	MUX("dp1_pixclk", mux_dp_pixclk_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+
+	MUX("hdmi_edp0_clk_src", mux_hdmi_edp_clk_src_p,
+	    CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	DIV("hdmi_edp0_dclk", "hdmi_edp0_clk_src", 0, 2),
+	DIV("hdmi_edp0_pixclk", "hdmi_edp0_clk_src", CLK_SET_RATE_PARENT, 1),
+
+	MUX("hdmi_edp1_clk_src", mux_hdmi_edp_clk_src_p,
+	    CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	DIV("hdmi_edp1_dclk", "hdmi_edp1_clk_src", 0, 2),
+	DIV("hdmi_edp1_pixclk", "hdmi_edp1_clk_src", CLK_SET_RATE_PARENT, 1),
+
+	MUX("mipi0_clk_src", mux_mipi_clk_src_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	DIV("mipi0_pixclk", "mipi0_clk_src", CLK_SET_RATE_PARENT, 2),
+
+	MUX("mipi1_clk_src", mux_mipi_clk_src_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	DIV("mipi1_pixclk", "mipi1_clk_src", CLK_SET_RATE_PARENT, 2),
+
+	FACTOR("rgb_pixclk", "port3_dclk_src", CLK_SET_RATE_PARENT),
+
+	MUX("dsc_8k_txp_clk_src", mux_dsc_8k_clk_src_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	DIV("dsc_8k_txp_clk", "dsc_8k_txp_clk_src", 0, 2),
+	DIV("dsc_8k_pxl_clk", "dsc_8k_txp_clk_src", 0, 2),
+	DIV("dsc_8k_cds_clk", "dsc_8k_txp_clk_src", 0, 2),
+
+	MUX("dsc_4k_txp_clk_src", mux_dsc_4k_clk_src_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT),
+	DIV("dsc_4k_txp_clk", "dsc_4k_txp_clk_src", 0, 2),
+	DIV("dsc_4k_pxl_clk", "dsc_4k_txp_clk_src", 0, 2),
+	DIV("dsc_4k_cds_clk", "dsc_4k_txp_clk_src", 0, 2),
+};
+
+static unsigned long clk_virtual_recalc_rate(struct clk_hw *hw,
+		unsigned long parent_rate)
+{
+	struct vop2_clk *vop2_clk = to_vop2_clk(hw);
+
+	return (unsigned long)vop2_clk->rate;
+}
+
+static long clk_virtual_round_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long *prate)
+{
+	struct vop2_clk *vop2_clk = to_vop2_clk(hw);
+
+	vop2_clk->rate = rate;
+
+	return rate;
+}
+
+static int clk_virtual_set_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long parent_rate)
+{
+	return 0;
+}
+
+const struct clk_ops clk_virtual_ops = {
+	.round_rate = clk_virtual_round_rate,
+	.set_rate = clk_virtual_set_rate,
+	.recalc_rate = clk_virtual_recalc_rate,
+};
+
+static int vop2_mux_get_parent(struct clk_hw *hw)
+{
+	struct vop2_clk *vop2_clk = to_vop2_clk(hw);
+
+	dev_dbg(vop2_clk->vop2->dev, "%s index: %d\n", clk_hw_get_name(hw),
+		vop2_clk->parent_index);
+
+	return vop2_clk->parent_index;
+}
+
+static int vop2_mux_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct vop2_clk *vop2_clk = to_vop2_clk(hw);
+
+	vop2_clk->parent_index = index;
+
+	dev_dbg(vop2_clk->vop2->dev, "%s index: %d\n", clk_hw_get_name(hw), index);
+
+	return 0;
+}
+
+static const struct clk_ops vop2_mux_clk_ops = {
+	.get_parent = vop2_mux_get_parent,
+	.set_parent = vop2_mux_set_parent,
+};
+
+#define div_mask(width)	((1 << (width)) - 1)
+
+static int vop2_div_get_val(unsigned long rate, unsigned long parent_rate)
+{
+	unsigned int div, value;
+
+	div = DIV_ROUND_UP_ULL((u64)parent_rate, rate);
+
+	value = ilog2(div);
+
+	return value;
+}
+
+static unsigned long vop2_clk_div_recalc_rate(struct clk_hw *hw,
+					  unsigned long parent_rate)
+{
+	struct vop2_clk *vop2_clk = to_vop2_clk(hw);
+	unsigned long rate;
+	unsigned int div;
+
+	div =  1 << vop2_clk->div_val;
+	rate = parent_rate / div;
+
+	dev_dbg(vop2_clk->vop2->dev, "%s rate: %ld(prate: %ld)\n",
+		clk_hw_get_name(hw), rate, parent_rate);
+
+	return rate;
+}
+
+static long vop2_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long *prate)
+{
+	struct vop2_clk *vop2_clk = to_vop2_clk(hw);
+
+	if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) {
+		if (*prate < rate)
+			*prate = rate;
+		if ((*prate >> vop2_clk->div.width) > rate)
+			*prate = rate;
+
+		if ((*prate % rate))
+			*prate = rate;
+
+		/* SOC PLL can't output a too low pll freq */
+		if (*prate < PLL_RATE_MIN)
+			*prate = rate << vop2_clk->div.width;
+	}
+
+	dev_dbg(vop2_clk->vop2->dev, "%s rate: %ld(prate: %ld)\n", clk_hw_get_name(hw), rate, *prate);
+
+	return rate;
+}
+
+static int vop2_clk_div_set_rate(struct clk_hw *hw, unsigned long rate, unsigned long parent_rate)
+{
+	struct vop2_clk *vop2_clk = to_vop2_clk(hw);
+	int div_val;
+
+	div_val = vop2_div_get_val(rate, parent_rate);
+	vop2_clk->div_val = div_val;
+
+	dev_dbg(vop2_clk->vop2->dev, "%s prate: %ld rate: %ld div_val: %d\n",
+		clk_hw_get_name(hw), parent_rate, rate, div_val);
+	return 0;
+}
+
+static const struct clk_ops vop2_div_clk_ops = {
+	.recalc_rate = vop2_clk_div_recalc_rate,
+	.round_rate = vop2_clk_div_round_rate,
+	.set_rate = vop2_clk_div_set_rate,
+};
+
+static struct clk *vop2_clk_register(struct vop2 *vop2, struct vop2_clk_branch *branch)
+{
+	struct clk_init_data init = {};
+	struct vop2_clk *vop2_clk;
+	struct clk *clk;
+
+	vop2_clk = xzalloc(sizeof(*vop2_clk));
+
+	vop2_clk->vop2 = vop2;
+	vop2_clk->hw.init = &init;
+	vop2_clk->div.shift = branch->div_shift;
+	vop2_clk->div.width = branch->div_width;
+
+	init.name = branch->name;
+	init.flags = branch->flags;
+	init.num_parents = branch->num_parents;
+	init.parent_names = branch->parent_names;
+	if (branch->branch_type == branch_divider) {
+		init.ops = &vop2_div_clk_ops;
+	} else if (branch->branch_type == branch_virtual) {
+		init.ops = &clk_virtual_ops;
+		init.num_parents = 0;
+		init.parent_names = NULL;
+	} else {
+		init.ops = &vop2_mux_clk_ops;
+	}
+
+	clk = clk_register(vop2->dev, &vop2_clk->hw);
+	if (!IS_ERR(clk))
+		list_add_tail(&vop2_clk->list, &vop2->clk_list_head);
+	else
+		dev_err(vop2->dev, "Register %s failed\n", branch->name);
+
+	return clk;
+}
+
+static int vop2_clk_init(struct vop2 *vop2)
+{
+	struct vop2_clk_branch *branch = rk3588_vop_clk_branches;
+	unsigned int nr_clk = ARRAY_SIZE(rk3588_vop_clk_branches);
+	unsigned int idx;
+	struct vop2_clk *clk, *n;
+
+	INIT_LIST_HEAD(&vop2->clk_list_head);
+
+	if (vop2->data->soc_id < 3588 || vop2->hdmi0_phy_pll == NULL)
+		return 0;
+
+	list_for_each_entry_safe(clk, n, &vop2->clk_list_head, list) {
+		list_del(&clk->list);
+	}
+
+	for (idx = 0; idx < nr_clk; idx++, branch++)
+		vop2_clk_register(vop2, branch);
+
+	return 0;
+}
+
 int vop2_bind(struct device *dev)
 {
 	const struct vop2_data *vop2_data;
@@ -2012,6 +2467,16 @@ int vop2_bind(struct device *dev)
 		return dev_err_probe(vop2->dev, PTR_ERR(vop2->pclk),
 				     "failed to get pclk source\n");
 
+	vop2->hdmi0_phy_pll = clk_get_optional(vop2->dev, "hdmi0_phy_pll");
+	if (IS_ERR(vop2->hdmi0_phy_pll)) {
+		dev_err_probe(vop2->dev, PTR_ERR(vop2->hdmi0_phy_pll),
+			      "failed to get hdmi0_phy_pll source\n");
+		return PTR_ERR(vop2->hdmi0_phy_pll);
+	}
+
+	// [CC:] rework virtual clock
+	vop2_clk_init(vop2);
+
 	ret = vop2_create_crtcs(vop2);
 	if (ret)
 		return ret;

-- 
2.39.5



