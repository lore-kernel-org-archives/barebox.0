Delivery-date: Fri, 19 Jan 2024 23:46:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQxdJ-007cei-2v
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 23:46:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQxdK-0001TS-Es
	for lore@pengutronix.de; Fri, 19 Jan 2024 23:46:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JTHjA2X6jnnzFZ/wRpIUpx6GMta2s532uce+hQehgqY=; b=0Nc/DGij42hfCaVXwD+Xe1zvyz
	Sv795eoF/aM0VA97gQP1mjpqqLZ1l0SckZvmUylcCW/MbDi2izbFV5zcyJ0firLzCtvog4rg++FZE
	+a3rkYJ0ip9aXx+bNTxJif7kH0tiNEZqsRs+gkSdfffea64H+0yda9PuK0ls0ljEgXPf9xtBQOVv2
	Ae5IllAceatwZUQGodrJHWHrRixFnyDtHcJ3kwGCAptZZca3Tj6M922Mee/66pgIYYXnUmV7Kc7Vb
	lAL/h9pZQuwv1Um8A1anxs6TAZsqSNaXTIYmLa2Sw34wqt46uJUGyNeiQtrU/sMtdS1QmRRl29uwb
	jPmaEL6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxcC-006nsG-0y;
	Fri, 19 Jan 2024 22:45:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxc8-006nqI-28
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 22:45:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc7-0001Gy-AK; Fri, 19 Jan 2024 23:45:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc5-0010ur-Dv; Fri, 19 Jan 2024 23:45:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc5-005s9I-0r;
	Fri, 19 Jan 2024 23:45:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 23:45:21 +0100
Message-Id: <20240119224522.1399213-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
References: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_144528_697105_391BE9AC 
X-CRM114-Status: GOOD (  12.37  )
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
Subject: [PATCH 2/3] nvmem: ocotp: prepare adding tester3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The tester fuses are written to the OCOTP by NXP during production.
So far, we only evaluated tester4 to determine which peripherals
are missing from the SoC. On the i.MX8MP, VPU and CPUs existence is
instead encoded into the tester3 fuse word. In preparation for adding
support for tester4, rename the existing masks to be tester4-specific.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/ocotp.c            | 14 +++++++-------
 drivers/soc/imx/imx8m-featctrl.c | 32 +++++++++++++++++++-------------
 include/soc/imx8m/featctrl.h     | 12 +++++++-----
 3 files changed, 33 insertions(+), 25 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 66a88ae48033..ccdc8a417ed1 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -959,9 +959,9 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 };
 
 static struct imx8m_featctrl_data imx8mp_featctrl_data = {
-	.gpu_bitmask = 0xc0,
-	.mipi_dsi_bitmask = 0x60000,
-	.isp_bitmask = 0x3,
+	.tester4.gpu_bitmask = 0xc0,
+	.tester4.mipi_dsi_bitmask = 0x60000,
+	.tester4.isp_bitmask = 0x3,
 };
 
 static struct imx_ocotp_data imx8mp_ocotp_data = {
@@ -990,8 +990,8 @@ static struct imx_ocotp_data imx8mq_ocotp_data = {
 };
 
 static struct imx8m_featctrl_data imx8mm_featctrl_data = {
-	.vpu_bitmask = 0x1c0000,
-	.check_cpus = true,
+	.tester4.vpu_bitmask = 0x1c0000,
+	.tester4.cpu_bitmask = 0x3,
 };
 
 static struct imx_ocotp_data imx8mm_ocotp_data = {
@@ -1008,8 +1008,8 @@ static struct imx_ocotp_data imx8mm_ocotp_data = {
 };
 
 static struct imx8m_featctrl_data imx8mn_featctrl_data = {
-	.gpu_bitmask = 0x1000000,
-	.check_cpus = true,
+	.tester4.gpu_bitmask = 0x1000000,
+	.tester4.cpu_bitmask = 0x3,
 };
 
 static struct imx_ocotp_data imx8mn_ocotp_data = {
diff --git a/drivers/soc/imx/imx8m-featctrl.c b/drivers/soc/imx/imx8m-featctrl.c
index 9a2b66555dce..23a3f990160d 100644
--- a/drivers/soc/imx/imx8m-featctrl.c
+++ b/drivers/soc/imx/imx8m-featctrl.c
@@ -33,6 +33,19 @@ static inline bool is_fused(u32 val, u32 bitmask)
 	return bitmask && (val & bitmask) == bitmask;
 }
 
+#define field_get(_mask, _reg) (((_reg) & (_mask)) >> (ffs(_mask) - 1))
+
+static void check_cpus(u32 mask, u32 reg, unsigned long *features)
+{
+	switch (field_get(mask, reg)) {
+	case 0b11:
+		clear_bit(IMX8M_FEAT_CPU_DUAL, features);
+		fallthrough;
+	case 0b10:
+		clear_bit(IMX8M_FEAT_CPU_QUAD, features);
+	}
+}
+
 int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
 			 const struct imx8m_featctrl_data *data)
 {
@@ -49,24 +62,17 @@ int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
 
 	bitmap_fill(features, IMX8M_FEAT_END);
 
-	if (is_fused(tester4, data->vpu_bitmask))
+	if (is_fused(tester4, data->tester4.vpu_bitmask))
 		clear_bit(IMX8M_FEAT_VPU, features);
-	if (is_fused(tester4, data->gpu_bitmask))
+	if (is_fused(tester4, data->tester4.gpu_bitmask))
 		clear_bit(IMX8M_FEAT_GPU, features);
-	if (is_fused(tester4, data->mipi_dsi_bitmask))
+	if (is_fused(tester4, data->tester4.mipi_dsi_bitmask))
 		clear_bit(IMX8M_FEAT_MIPI_DSI, features);
-	if (is_fused(tester4, data->isp_bitmask))
+	if (is_fused(tester4, data->tester4.isp_bitmask))
 		clear_bit(IMX8M_FEAT_ISP, features);
 
-	if (data->check_cpus) {
-		switch (tester4 & 3) {
-		case 0b11:
-			clear_bit(IMX8M_FEAT_CPU_DUAL, features);
-			fallthrough;
-		case 0b10:
-			clear_bit(IMX8M_FEAT_CPU_QUAD, features);
-		}
-	}
+	if (data->tester4.cpu_bitmask)
+		check_cpus(data->tester4.cpu_bitmask, tester4, features);
 
 	priv->feat.dev = dev;
 	priv->feat.check = imx8m_feat_check;
diff --git a/include/soc/imx8m/featctrl.h b/include/soc/imx8m/featctrl.h
index 91d14bc68c0a..cfbc3fad80f4 100644
--- a/include/soc/imx8m/featctrl.h
+++ b/include/soc/imx8m/featctrl.h
@@ -7,11 +7,13 @@
 #include <linux/types.h>
 
 struct imx8m_featctrl_data {
-	u32 vpu_bitmask;
-	u32 gpu_bitmask;
-	u32 mipi_dsi_bitmask;
-	u32 isp_bitmask;
-	bool check_cpus;
+	struct {
+		u32 vpu_bitmask;
+		u32 gpu_bitmask;
+		u32 mipi_dsi_bitmask;
+		u32 isp_bitmask;
+		u32 cpu_bitmask;
+	} tester4;
 };
 
 struct device;
-- 
2.39.2



