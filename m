Delivery-date: Fri, 19 Jan 2024 23:46:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQxdO-007cfi-31
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 23:46:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQxdP-0001Ud-7z
	for lore@pengutronix.de; Fri, 19 Jan 2024 23:46:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gUTfm1nsXlGR7q3XXfOAR6WhRu8uYrqZaNsbxo5cTq8=; b=z1GcqXg2+LN0MfVSDtjyJe200V
	pGRn/jil7qpEGFhHoE2aQSU7rBguXO/NlBapOH+59nLAdCrqGN6JHUKsWbnlgX0KQ6WX0xvsIONCw
	p89ezepPvhgogMfkeAzueIZIYA+ClLTuAksmw2zs4dnrTSRpJCltgOwkQNexf1TLBiw7GLVE66N9g
	mnARAazveVmWfJp0HSzJQZTgiZpkhVCe05p11XQz9PlvqrvPk1ilNy+cpdeZZE0lipoAWB+mGvFjz
	OeXEURUzSoDWKGLm1rGGwm0RLqbdmuvXJ7BmytabEZKmy+ToHUYRyIPwj40pdQLqwwUGM5i+13+Bh
	7tQjrqsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxcK-006nu4-05;
	Fri, 19 Jan 2024 22:45:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxcG-006ntA-1Q
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 22:45:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc7-0001Gz-AK; Fri, 19 Jan 2024 23:45:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc5-0010uu-FK; Fri, 19 Jan 2024 23:45:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc5-005s9I-14;
	Fri, 19 Jan 2024 23:45:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 23:45:22 +0100
Message-Id: <20240119224522.1399213-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
References: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_144536_631692_7A8555C6 
X-CRM114-Status: GOOD (  18.01  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] soc: imx: featctrl: finalize support for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We only had preliminary feature controller support for i.MX8MP and
support for detecting missing VPU, DSP, NPU, LVDS and CPUs was missing.

Add support for them, so barebox may fix up the kernel device tree to
disable these nodes. This is especially important for the VPU and NPU as
the kernel's blk-ctrl power domain driver may try to power them down as
they are unused, which would make the SoC hang.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi             | 54 +++++++++++++++++++++++++++-
 drivers/nvmem/ocotp.c                | 13 +++++--
 drivers/soc/imx/imx8m-featctrl.c     | 17 ++++++---
 include/dt-bindings/features/imx8m.h |  5 ++-
 include/soc/imx8m/featctrl.h         | 11 ++++--
 5 files changed, 90 insertions(+), 10 deletions(-)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 6af9d3924ac6..3eb3c7a5dfa5 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -21,8 +21,12 @@ aliases {
  * The DSP reserved memory will collide with the Barebox malloc area for some
  * DRAM sizes, even though the DSP itself is disabled in most configurations.
  */
-/delete-node/ &dsp;
 /delete-node/ &dsp_reserved;
+&dsp {
+	barebox,feature-gates = <&feat IMX8M_FEAT_DSP>;
+	/delete-property/ memory-region;
+	status = "disabled";
+};
 
 &edacmc {
 	compatible = "fsl,imx8mp-ddrc", "fsl,imx8m-ddrc", "snps,ddrc-3.80a";
@@ -53,6 +57,14 @@ &pgc_mipi_phy2 {
 	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
 };
 
+&mipi_dsi {
+	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
+};
+
+&lcdif1 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
+};
+
 &pgc_ispdwp {
 	barebox,feature-gates = <&feat IMX8M_FEAT_ISP>;
 };
@@ -64,3 +76,43 @@ &gpu3d {
 &gpu2d {
 	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
 };
+
+&pgc_vpumix {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&pgc_vpu_g1 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&pgc_vpu_g2 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&pgc_vpu_vc8000e {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&vpu_g1 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&vpu_g2 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&vpumix_blk_ctrl {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&pgc_mlmix {
+	barebox,feature-gates = <&feat IMX8M_FEAT_NPU>;
+};
+
+&lcdif2 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_LVDS>;
+};
+
+&lvds_bridge {
+	barebox,feature-gates = <&feat IMX8M_FEAT_LVDS>;
+};
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index ccdc8a417ed1..28c121152e8b 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -736,7 +736,7 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 	char mac[MAC_BYTES];
 	const __be32 *prop;
 	struct device_node *node = priv->dev.parent->of_node;
-	u32 tester4;
+	u32 tester3, tester4;
 	int ret, len = 0;
 
 	if (!node)
@@ -764,11 +764,15 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 	if (!of_property_read_bool(node, "barebox,feature-controller"))
 		return 0;
 
+	ret = regmap_read(priv->map, OCOTP_OFFSET_TO_ADDR(0x440), &tester3);
+	if (ret != 0)
+		return ret;
+
 	ret = regmap_read(priv->map, OCOTP_OFFSET_TO_ADDR(0x450), &tester4);
 	if (ret != 0)
 		return ret;
 
-	return imx8m_feat_ctrl_init(priv->dev.parent, tester4, priv->data->feat);
+	return imx8m_feat_ctrl_init(priv->dev.parent, tester3, tester4, priv->data->feat);
 }
 
 static void imx_ocotp_set_unique_machine_id(void)
@@ -959,9 +963,14 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 };
 
 static struct imx8m_featctrl_data imx8mp_featctrl_data = {
+	.tester3.cpu_bitmask = 0xc0000,
+	.tester3.vpu_bitmask = 0x43000000,
+	.tester4.npu_bitmask = 0x8,
 	.tester4.gpu_bitmask = 0xc0,
 	.tester4.mipi_dsi_bitmask = 0x60000,
+	.tester4.lvds_bitmask = 0x180000,
 	.tester4.isp_bitmask = 0x3,
+	.tester4.dsp_bitmask = 0x10,
 };
 
 static struct imx_ocotp_data imx8mp_ocotp_data = {
diff --git a/drivers/soc/imx/imx8m-featctrl.c b/drivers/soc/imx/imx8m-featctrl.c
index 23a3f990160d..31579aff7ef4 100644
--- a/drivers/soc/imx/imx8m-featctrl.c
+++ b/drivers/soc/imx/imx8m-featctrl.c
@@ -46,7 +46,7 @@ static void check_cpus(u32 mask, u32 reg, unsigned long *features)
 	}
 }
 
-int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
+int imx8m_feat_ctrl_init(struct device *dev, u32 tester3, u32 tester4,
 			 const struct imx8m_featctrl_data *data)
 {
 	unsigned long *features;
@@ -55,14 +55,15 @@ int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
 	if (!dev || !data)
 		return -ENODEV;
 
-	dev_dbg(dev, "tester4 = 0x%08x\n", tester4);
+	dev_dbg(dev, "tester3 = 0x%08x, tester4 = 0x%08x\n", tester3, tester4);
 
 	priv = xzalloc(sizeof(*priv));
 	features = priv->features;
 
 	bitmap_fill(features, IMX8M_FEAT_END);
 
-	if (is_fused(tester4, data->tester4.vpu_bitmask))
+	if (is_fused(tester3, data->tester3.vpu_bitmask) ||
+	    is_fused(tester4, data->tester4.vpu_bitmask))
 		clear_bit(IMX8M_FEAT_VPU, features);
 	if (is_fused(tester4, data->tester4.gpu_bitmask))
 		clear_bit(IMX8M_FEAT_GPU, features);
@@ -70,8 +71,16 @@ int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
 		clear_bit(IMX8M_FEAT_MIPI_DSI, features);
 	if (is_fused(tester4, data->tester4.isp_bitmask))
 		clear_bit(IMX8M_FEAT_ISP, features);
+	if (is_fused(tester4, data->tester4.npu_bitmask))
+		clear_bit(IMX8M_FEAT_NPU, features);
+	if (is_fused(tester4, data->tester4.lvds_bitmask))
+		clear_bit(IMX8M_FEAT_LVDS, features);
+	if (is_fused(tester4, data->tester4.dsp_bitmask))
+		clear_bit(IMX8M_FEAT_DSP, features);
 
-	if (data->tester4.cpu_bitmask)
+	if (data->tester3.cpu_bitmask)
+		check_cpus(data->tester3.cpu_bitmask, tester3, features);
+	else if (data->tester4.cpu_bitmask)
 		check_cpus(data->tester4.cpu_bitmask, tester4, features);
 
 	priv->feat.dev = dev;
diff --git a/include/dt-bindings/features/imx8m.h b/include/dt-bindings/features/imx8m.h
index e1ed40413ca2..ff063257b74a 100644
--- a/include/dt-bindings/features/imx8m.h
+++ b/include/dt-bindings/features/imx8m.h
@@ -10,7 +10,10 @@
 #define IMX8M_FEAT_GPU		4
 #define IMX8M_FEAT_MIPI_DSI	5
 #define IMX8M_FEAT_ISP		6
+#define IMX8M_FEAT_NPU		7
+#define IMX8M_FEAT_LVDS		8
+#define IMX8M_FEAT_DSP		9
 
-#define IMX8M_FEAT_END		7
+#define IMX8M_FEAT_END		10
 
 #endif
diff --git a/include/soc/imx8m/featctrl.h b/include/soc/imx8m/featctrl.h
index cfbc3fad80f4..380e417778df 100644
--- a/include/soc/imx8m/featctrl.h
+++ b/include/soc/imx8m/featctrl.h
@@ -7,22 +7,29 @@
 #include <linux/types.h>
 
 struct imx8m_featctrl_data {
+	struct {
+		u32 vpu_bitmask;
+		u32 cpu_bitmask;
+	} tester3;
 	struct {
 		u32 vpu_bitmask;
 		u32 gpu_bitmask;
 		u32 mipi_dsi_bitmask;
 		u32 isp_bitmask;
 		u32 cpu_bitmask;
+		u32 npu_bitmask;
+		u32 lvds_bitmask;
+		u32 dsp_bitmask;
 	} tester4;
 };
 
 struct device;
 
 #ifdef CONFIG_IMX8M_FEATCTRL
-int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
+int imx8m_feat_ctrl_init(struct device *dev, u32 tester3, u32 tester4,
 			 const struct imx8m_featctrl_data *data);
 #else
-static inline int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
+static inline int imx8m_feat_ctrl_init(struct device *dev, u32 tester3, u32 tester4,
 				       const struct imx8m_featctrl_data *data)
 {
 	return -ENODEV;
-- 
2.39.2



