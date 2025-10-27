Delivery-date: Mon, 27 Oct 2025 08:36:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHmk-00CGNQ-1D
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:36:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHmj-0006vC-Ks
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:36:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Cnva/fJy+FFdNqPRD6t1PSalbmPsR7cHxGStQxdlXZE=; b=sGewBgxIEE2Alk06s0aEwLqvj5
	Z518yXLt9WTlgdjnb9UHLy6ewszWkU+EZreYRkE2jcxYQ4bMRg8htDStA7j9W0IynocOwtNdQLik1
	HsNe5KuMsAslnnq46bJkDi0ZjX8L2PJKSZIoP1hBzqjzZHpXzPYb55OyfQESlEMr0NQbtdu9WxzW2
	hQtKGGrpuzcJkeTYdvwi5zUNJoqBJH67FxQmxeIHjAmu96XFcbAHbCDhlyOAWYMKoMc+CFrlY9wUJ
	KVBojUIQFvSixeCyz/+UoJie6v4kh8mglihZTRBmkiXa0ZPMx3dBcOoCdYKtaVqJITtksR3HCqPW5
	EVieuN8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHmF-0000000DHsD-0F6I;
	Mon, 27 Oct 2025 07:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHmC-0000000DHrr-3pfW
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:36:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHmB-0006qs-3u; Mon, 27 Oct 2025 08:36:23 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:36:21 +0100
Message-ID: <20251027073622.2468586-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_003624_971706_5DC23C03 
X-CRM114-Status: GOOD (  18.68  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] video: Rockchip: add vop2_data::version field like Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This makes it easier to compare Linux and barebox code.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/rockchip/rockchip_drm_vop2.c | 63 +++++++++++++++-------
 drivers/video/rockchip/rockchip_drm_vop2.h | 11 ++++
 drivers/video/rockchip/rockchip_vop2_reg.c |  3 ++
 3 files changed, 59 insertions(+), 18 deletions(-)

diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index d81e0357528b..f42b0c48eede 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -185,6 +185,7 @@ struct vop2_video_port {
 };
 
 struct vop2 {
+	u32 version;
 	struct device *dev;
 	struct vop2_video_port vps[4];
 
@@ -348,7 +349,7 @@ static bool vop2_win_dither_up(u32 format)
 
 static bool vop2_output_rg_swap(struct vop2 *vop2, u32 bus_format)
 {
-	if (vop2->data->soc_id == 3588) {
+	if (vop2->version == VOP_VERSION_RK3588) {
 		if (bus_format == MEDIA_BUS_FMT_YUV8_1X24 ||
 		    bus_format == MEDIA_BUS_FMT_YUV10_1X30)
 			return true;
@@ -466,15 +467,26 @@ static void rk3588_vop2_power_domain_enable_all(struct vop2 *vop2)
 static void vop2_enable(struct vop2 *vop2)
 {
 	int ret;
+	u32 version;
 
 	ret = vop2_core_clks_prepare_enable(vop2);
 	if (ret)
 		return;
 
+	version = vop2_readl(vop2, RK3568_VERSION_INFO);
+	if (version != vop2->version) {
+		dev_err(vop2->dev, "Hardware version(0x%08x) mismatch\n", version);
+		return;
+	}
+
+	/*
+	 * rk3566 share the same vop version with rk3568, so
+	 * we need to use soc_id for identification here.
+	 */
 	if (vop2->data->soc_id == 3566)
 		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
 
-	if (vop2->data->soc_id == 3588)
+	if (vop2->version == VOP_VERSION_RK3588)
 		rk3588_vop2_power_domain_enable_all(vop2);
 
 	vop2_writel(vop2, RK3568_REG_CFG_DONE, RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN);
@@ -962,9 +974,9 @@ static unsigned long vop2_set_intf_mux(struct vop2_video_port *vp, int ep_id, u3
 {
 	struct vop2 *vop2 = vp->vop2;
 
-	if (vop2->data->soc_id == 3566 || vop2->data->soc_id == 3568)
+	if (vop2->version == VOP_VERSION_RK3568)
 		return rk3568_set_intf_mux(vp, ep_id, polflags, clock);
-	else if (vop2->data->soc_id == 3588)
+	else if (vop2->version == VOP_VERSION_RK3588)
 		return rk3588_set_intf_mux(vp, ep_id, polflags, clock);
 	else
 		return 0;
@@ -1877,6 +1889,31 @@ static int vop2_esmart_init(struct vop2_win *win)
 	return ret;
 };
 
+/*
+ * On RK3566 these windows don't have an independent
+ * framebuffer. They can only share/mirror the framebuffer
+ * with smart0, esmart0 and cluster0 respectively.
+ * And RK3566 share the same vop version with Rk3568, so we
+ * need to use soc_id for identification here.
+ */
+static bool vop2_is_mirror_win(struct vop2_win *win)
+{
+	struct vop2 *vop2 = win->vop2;
+
+	if (vop2->data->soc_id == 3566) {
+		switch (win->data->phys_id) {
+		case ROCKCHIP_VOP2_SMART1:
+		case ROCKCHIP_VOP2_ESMART1:
+		case ROCKCHIP_VOP2_CLUSTER1:
+			return true;
+		default:
+			return false;
+		}
+	} else {
+		return false;
+	}
+}
+
 static int vop2_win_init(struct vop2 *vop2)
 {
 	const struct vop2_data *vop2_data = vop2->data;
@@ -1886,26 +1923,15 @@ static int vop2_win_init(struct vop2 *vop2)
 	for (i = 0; i < vop2_data->win_size; i++) {
 		const struct vop2_win_data *win_data = &vop2_data->win[i];
 
-		if (vop2->data->soc_id == 3566) {
-			/*
-			 * On RK3566 these windows don't have an independent
-			 * framebuffer. They share the framebuffer with smart0,
-			 * esmart0 and cluster0 respectively.
-			 */
-			switch (win_data->phys_id) {
-			case ROCKCHIP_VOP2_SMART1:
-			case ROCKCHIP_VOP2_ESMART1:
-			case ROCKCHIP_VOP2_CLUSTER1:
-				continue;
-			}
-		}
-
 		win = &vop2->win[n];
 		win->data = win_data;
 		win->type = win_data->type;
 		win->offset = win_data->base;
 		win->vop2 = vop2;
 
+		if (vop2_is_mirror_win(win))
+		    continue;
+
 		ret = vop2_esmart_init(win);
 		if (ret)
 			return ret;
@@ -1943,6 +1969,7 @@ int vop2_bind(struct device *dev)
 
 	vop2->dev = dev;
 	vop2->data = vop2_data;
+	vop2->version = vop2_data->version;
 
 	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "vop");
 	if (IS_ERR(res))
diff --git a/drivers/video/rockchip/rockchip_drm_vop2.h b/drivers/video/rockchip/rockchip_drm_vop2.h
index 877530ddbccd..edae3d74e3dd 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.h
+++ b/drivers/video/rockchip/rockchip_drm_vop2.h
@@ -10,6 +10,16 @@
 #include <linux/regmap.h>
 #include "rockchip_drm_vop.h"
 
+
+#define VOP2_VERSION(major, minor, build)	((major) << 24 | (minor) << 16 | (build))
+
+/* The VOP version of new SoC is bigger than the old */
+#define VOP_VERSION_RK3568	VOP2_VERSION(0x40, 0x15, 0x8023)
+#define VOP_VERSION_RK3588	VOP2_VERSION(0x40, 0x17, 0x6786)
+#define VOP_VERSION_RK3528	VOP2_VERSION(0x50, 0x17, 0x1263)
+#define VOP_VERSION_RK3562	VOP2_VERSION(0x50, 0x17, 0x4350)
+#define VOP_VERSION_RK3576	VOP2_VERSION(0x50, 0x19, 0x9765)
+
 #define VOP2_VP_FEATURE_OUTPUT_10BIT        BIT(0)
 
 #define VOP2_FEATURE_HAS_SYS_GRF	BIT(0)
@@ -162,6 +172,7 @@ struct vop2_video_port_data {
 struct vop2_data {
 	u8 nr_vps;
 	u64 feature;
+	u32 version;
 	const struct vop2_win_data *win;
 	const struct vop2_video_port_data *vp;
 	struct vop_rect max_input;
diff --git a/drivers/video/rockchip/rockchip_vop2_reg.c b/drivers/video/rockchip/rockchip_vop2_reg.c
index 1ce71c227ca8..63d824b69fe2 100644
--- a/drivers/video/rockchip/rockchip_vop2_reg.c
+++ b/drivers/video/rockchip/rockchip_vop2_reg.c
@@ -224,6 +224,7 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 };
 
 static const struct vop2_data rk3566_vop = {
+	.version = VOP_VERSION_RK3568,
 	.feature = VOP2_FEATURE_HAS_SYS_GRF,
 	.nr_vps = 3,
 	.max_input = { 4096, 2304 },
@@ -235,6 +236,7 @@ static const struct vop2_data rk3566_vop = {
 };
 
 static const struct vop2_data rk3568_vop = {
+	.version = VOP_VERSION_RK3568,
 	.feature = VOP2_FEATURE_HAS_SYS_GRF,
 	.nr_vps = 3,
 	.max_input = { 4096, 2304 },
@@ -246,6 +248,7 @@ static const struct vop2_data rk3568_vop = {
 };
 
 static const struct vop2_data rk3588_vop = {
+	.version = VOP_VERSION_RK3588,
 	.feature = VOP2_FEATURE_HAS_SYS_GRF | VOP2_FEATURE_HAS_VO1_GRF |
 		   VOP2_FEATURE_HAS_VOP_GRF | VOP2_FEATURE_HAS_SYS_PMU,
 	.nr_vps = 4,
-- 
2.47.3



