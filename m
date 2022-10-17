Delivery-date: Mon, 17 Oct 2022 15:52:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQXT-00BfBn-Ga
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 15:52:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQXR-0001Zb-Eu
	for lore@pengutronix.de; Mon, 17 Oct 2022 15:52:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JAdEw4BnsrBTPfoSgjjpwI/jD9NmEsqKT2cp78IJfuk=; b=3V0R2MzMb/c0LW0OjDVVfHv6sU
	JrNW/Pfg7IGJw7MkS4mFSC6eWmvJx31vWCqht3veINbk2CCq1U7MEDAyKVjoi7uyYNQfSSo/TxCyU
	xSdhtHIE65KVdg3aL1v5Nrnpj0Wp71zXrN0ID6WzeLhvaBZ63xjRH8snXyfKUFbT7xyhay+15eqkE
	5ZkH5df0ddLmS75uIS2zQTcd2xoTMkB3oD4B75Amh+jPgFG08cI3yKdApgHvFMfjjlKC72l1h6zZE
	UHqomuplWCNsyPKIlVzNDm5/4Wdaabd8WaWy6LqaqMqoNDiUJfcj4XgFZIw3GbffJwsVAkGMPw/fG
	ySVsJUEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQV1-00CJoU-1j; Mon, 17 Oct 2022 13:49:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQUn-00CJY0-Mz
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 13:49:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUm-00011u-8S; Mon, 17 Oct 2022 15:49:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUl-0025Xc-6Y; Mon, 17 Oct 2022 15:49:31 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQUk-00374F-Dc; Mon, 17 Oct 2022 15:49:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 15:49:29 +0200
Message-Id: <20221017134929.622022-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017134929.622022-1-a.fatoum@pengutronix.de>
References: <20221017134929.622022-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_064933_787497_5BBF385A 
X-CRM114-Status: GOOD (  13.95  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH master 3/3] ARM: i.MX8MP: add feature controller support for Plus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Plus has lots of peripherals that need be disabled, depending on fusebox
settings. Some of these are already described in the upstream device tree,
so reference them in the barebox DT and add the necessary glue for
disabling them like we already do on i.MX8MM/N.

We omit CPU fusing for now. These are handled by tester3 and would need
a bit more rework.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi             | 43 ++++++++++++++++++++++++++++
 drivers/nvmem/ocotp.c                |  9 ++++++
 drivers/soc/imx/imx8m-featctrl.c     | 20 ++++++++-----
 include/dt-bindings/features/imx8m.h |  4 ++-
 include/soc/imx8m/featctrl.h         |  3 ++
 5 files changed, 71 insertions(+), 8 deletions(-)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index b251ebeadab2..4ffc3a8de7c0 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -1,5 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0 OR MIT)
 
+#include <dt-bindings/features/imx8m.h>
+
 / {
 	remoteproc_cm7: remoteproc-cm7 {
 		compatible = "fsl,imx8mp-cm7";
@@ -7,3 +9,44 @@
 		syscon = <&src>;
 	};
 };
+
+feat: &ocotp {
+	#feature-cells = <1>;
+	barebox,feature-controller;
+};
+
+&pgc_mipi_phy1 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
+};
+
+&pgc_gpu2d {
+	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
+};
+
+&pgc_gpu3d {
+	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
+};
+
+&pgc_gpumix {
+	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
+};
+
+&pgc_mediamix {
+	barebox,feature-gates = <&feat IMX8M_FEAT_ISP>;
+};
+
+&pgc_mipi_phy2 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
+};
+
+&pgc_ispdwp {
+	barebox,feature-gates = <&feat IMX8M_FEAT_ISP>;
+};
+
+&gpu3d {
+	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
+};
+
+&gpu2d {
+	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
+};
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 9fcbd1a6a414..08171cb5cde9 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -890,12 +890,19 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.fuse_read = imx6_fuse_read_addr,
 };
 
+static struct imx8m_featctrl_data imx8mp_featctrl_data = {
+	.gpu_bitmask = 0xc0,
+	.mipi_dsi_bitmask = 0x60000,
+	.isp_bitmask = 0x3,
+};
+
 static struct imx_ocotp_data imx8mp_ocotp_data = {
 	.num_regs = 1024,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { 0x90, 0x96 },
 	.format_mac = imx_ocotp_format_mac,
+	.feat = &imx8mp_featctrl_data,
 };
 
 static struct imx_ocotp_data imx8mq_ocotp_data = {
@@ -911,6 +918,7 @@ static struct imx_ocotp_data imx8mq_ocotp_data = {
 
 static struct imx8m_featctrl_data imx8mm_featctrl_data = {
 	.vpu_bitmask = 0x1c0000,
+	.check_cpus = true,
 };
 
 static struct imx_ocotp_data imx8mm_ocotp_data = {
@@ -927,6 +935,7 @@ static struct imx_ocotp_data imx8mm_ocotp_data = {
 
 static struct imx8m_featctrl_data imx8mn_featctrl_data = {
 	.gpu_bitmask = 0x1000000,
+	.check_cpus = true,
 };
 
 static struct imx_ocotp_data imx8mn_ocotp_data = {
diff --git a/drivers/soc/imx/imx8m-featctrl.c b/drivers/soc/imx/imx8m-featctrl.c
index 1798d0fc2863..f2c57ac136ad 100644
--- a/drivers/soc/imx/imx8m-featctrl.c
+++ b/drivers/soc/imx/imx8m-featctrl.c
@@ -53,13 +53,19 @@ int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
 		clear_bit(IMX8M_FEAT_VPU, features);
 	if (is_fused(tester4, data->gpu_bitmask))
 		clear_bit(IMX8M_FEAT_GPU, features);
-
-	switch (tester4 & 3) {
-	case 0b11:
-		clear_bit(IMX8M_FEAT_CPU_DUAL, features);
-		fallthrough;
-	case 0b10:
-		clear_bit(IMX8M_FEAT_CPU_QUAD, features);
+	if (is_fused(tester4, data->mipi_dsi_bitmask))
+		clear_bit(IMX8M_FEAT_MIPI_DSI, features);
+	if (is_fused(tester4, data->isp_bitmask))
+		clear_bit(IMX8M_FEAT_ISP, features);
+
+	if (data->check_cpus) {
+		switch (tester4 & 3) {
+		case 0b11:
+			clear_bit(IMX8M_FEAT_CPU_DUAL, features);
+			fallthrough;
+		case 0b10:
+			clear_bit(IMX8M_FEAT_CPU_QUAD, features);
+		}
 	}
 
 	priv->feat.dev = dev;
diff --git a/include/dt-bindings/features/imx8m.h b/include/dt-bindings/features/imx8m.h
index 8de69ba28b26..e1ed40413ca2 100644
--- a/include/dt-bindings/features/imx8m.h
+++ b/include/dt-bindings/features/imx8m.h
@@ -8,7 +8,9 @@
 #define IMX8M_FEAT_CPU_QUAD	2
 #define IMX8M_FEAT_VPU		3
 #define IMX8M_FEAT_GPU		4
+#define IMX8M_FEAT_MIPI_DSI	5
+#define IMX8M_FEAT_ISP		6
 
-#define IMX8M_FEAT_END		5
+#define IMX8M_FEAT_END		7
 
 #endif
diff --git a/include/soc/imx8m/featctrl.h b/include/soc/imx8m/featctrl.h
index af94995a916a..b3eb1a56a5f6 100644
--- a/include/soc/imx8m/featctrl.h
+++ b/include/soc/imx8m/featctrl.h
@@ -9,6 +9,9 @@
 struct imx8m_featctrl_data {
 	u32 vpu_bitmask;
 	u32 gpu_bitmask;
+	u32 mipi_dsi_bitmask;
+	u32 isp_bitmask;
+	bool check_cpus;
 };
 
 #ifdef CONFIG_IMX8M_FEATCTRL
-- 
2.30.2



