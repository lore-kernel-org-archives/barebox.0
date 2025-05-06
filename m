Delivery-date: Tue, 06 May 2025 08:38:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwi-002i5I-1T
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwh-00020r-EW
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r3HLRLs3dXqEOWiA5q7G/z4PA9TcfTQPqZYYr2oKNVU=; b=m8TJWFdgbJ0F4rlG7KifENATOe
	qh+PcpLFNggP53EDKqCQkO+HYZBV2awkdDXxq9sWvjqsRqUgIemgG+TAYlvwgTmdGv8meUTvkVhHE
	7mDSdCTbB+UcwRBUgWrO0qnkGADZSWHjJRLL4SckHcMsgcp+0iT0LY5jtMRpTp90df79iAkroTLod
	fG4B9RX5cyFE8ijixs6A6MBOwudCVm1LeQIzj6Yms0mE5VbiqzbMIr1kTxCJRZWPGbHfw+y4eNV85
	iB9GZp9qlvCXiSfyuk9MoYZVBg4XzBHrKs8PrM4Q/8Z53Kw2hYyVleXccwjm/7K6h7KDHdZg/WEeC
	yv+djL2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBwC-0000000AjTs-1Sww;
	Tue, 06 May 2025 06:37:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBtA-0000000AiKL-3dqW
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:34:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-0000TP-Ap; Tue, 06 May 2025 08:34:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-001LpF-0Q;
	Tue, 06 May 2025 08:34:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-00D9CO-1e;
	Tue, 06 May 2025 08:34:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:34:40 +0200
Message-Id: <20250506063446.3133582-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
References: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233449_084456_3715D071 
X-CRM114-Status: GOOD (  12.27  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] ARM: i.MX: esdctl: replace dev_get_drvdata with device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for aligning dev_get_drvdata with Linux, use
device_get_match_data instead. To not cast const-ness away, make all the
match data related types const.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 65 +++++++++++++++++++-------------------
 1 file changed, 32 insertions(+), 33 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 701ca0ac1f37..4b67b52ca45e 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -35,7 +35,7 @@
 struct imx_esdctl_data {
 	unsigned long base0;
 	unsigned long base1;
-	int (*add_mem)(void *esdctlbase, struct imx_esdctl_data *);
+	int (*add_mem)(void *esdctlbase, const struct imx_esdctl_data *);
 };
 
 static int imx_esdctl_disabled;
@@ -229,19 +229,19 @@ static inline void imx_esdctl_v2_disable_default(void __iomem *esdctlbase)
 	}
 }
 
-static int imx_esdctl_v1_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v1_add_mem(void *esdctlbase, const struct imx_esdctl_data *data)
 {
 	return add_mem(data->base0, imx_v1_sdram_size(esdctlbase, 0),
 			data->base1, imx_v1_sdram_size(esdctlbase, 1));
 }
 
-static int imx_esdctl_v2_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v2_add_mem(void *esdctlbase, const struct imx_esdctl_data *data)
 {
 	return add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
 			data->base1, imx_v2_sdram_size(esdctlbase, 1));
 }
 
-static int imx_esdctl_v2_bug_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v2_bug_add_mem(void *esdctlbase, const struct imx_esdctl_data *data)
 {
 	imx_esdctl_v2_disable_default(esdctlbase);
 
@@ -249,13 +249,13 @@ static int imx_esdctl_v2_bug_add_mem(void *esdctlbase, struct imx_esdctl_data *d
 			data->base1, imx_v2_sdram_size(esdctlbase, 1));
 }
 
-static int imx_esdctl_v3_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v3_add_mem(void *esdctlbase, const struct imx_esdctl_data *data)
 {
 	return add_mem(data->base0, imx_v3_sdram_size(esdctlbase, 0),
 			data->base1, imx_v3_sdram_size(esdctlbase, 1));
 }
 
-static int imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v4_add_mem(void *esdctlbase, const struct imx_esdctl_data *data)
 {
 	return add_mem(data->base0, imx_v4_sdram_size(esdctlbase, 0),
 			data->base1, imx_v4_sdram_size(esdctlbase, 1));
@@ -286,7 +286,7 @@ static inline resource_size_t imx6_mmdc_sdram_size(void __iomem *mmdcbase)
 	return size;
 }
 
-static int imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int imx6_mmdc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
 	return arm_add_mem_device("ram0", data->base0,
 			   imx6_mmdc_sdram_size(mmdcbase));
@@ -308,7 +308,7 @@ static inline resource_size_t vf610_ddrmc_sdram_size(void __iomem *ddrmc)
 	return memory_sdram_size(cols, rows, banks, width);
 }
 
-static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int vf610_ddrmc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
 	return arm_add_mem_device("ram0", data->base0,
 			   vf610_ddrmc_sdram_size(mmdcbase));
@@ -513,7 +513,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
 				   reduced_adress_space, mstr);
 }
 
-static int _imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data,
+static int _imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data,
 			       unsigned int buswidth)
 {
 	resource_size_t size = imx8m_ddrc_sdram_size(mmdcbase, buswidth);
@@ -548,12 +548,12 @@ static int _imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data,
 	return ret;
 }
 
-static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
 	return _imx8m_ddrc_add_mem(mmdcbase, data, 32);
 }
 
-static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int imx8mn_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
 	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
 }
@@ -592,7 +592,7 @@ resource_size_t imx9_ddrc_sdram_size(void)
 	return mem;
 }
 
-static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int imx9_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
 	return arm_add_mem_device("ram0", data->base0, imx9_ddrc_sdram_size());
 }
@@ -637,7 +637,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 				   reduced_adress_space, mstr);
 }
 
-static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int imx7d_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
 	return arm_add_mem_device("ram0", data->base0,
 			   imx7d_ddrc_sdram_size(mmdcbase));
@@ -646,13 +646,12 @@ static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 static int imx_esdctl_probe(struct device *dev)
 {
 	struct resource *iores;
-	struct imx_esdctl_data *data;
-	int ret;
+	const struct imx_esdctl_data *data;
 	void *base;
 
-	ret = dev_get_drvdata(dev, (const void **)&data);
-	if (ret)
-		return ret;
+	data = device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
@@ -665,84 +664,84 @@ static int imx_esdctl_probe(struct device *dev)
 	return data->add_mem(base, data);
 }
 
-static __maybe_unused struct imx_esdctl_data imx1_data = {
+static __maybe_unused const struct imx_esdctl_data imx1_data = {
 	.base0 = MX1_CSD0_BASE_ADDR,
 	.base1 = MX1_CSD1_BASE_ADDR,
 	.add_mem = imx_esdctl_v1_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx25_data = {
+static __maybe_unused const struct imx_esdctl_data imx25_data = {
 	.base0 = MX25_CSD0_BASE_ADDR,
 	.base1 = MX25_CSD1_BASE_ADDR,
 	.add_mem = imx_esdctl_v2_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx27_data = {
+static __maybe_unused const struct imx_esdctl_data imx27_data = {
 	.base0 = MX27_CSD0_BASE_ADDR,
 	.base1 = MX27_CSD1_BASE_ADDR,
 	.add_mem = imx_esdctl_v2_bug_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx31_data = {
+static __maybe_unused const struct imx_esdctl_data imx31_data = {
 	.base0 = MX31_CSD0_BASE_ADDR,
 	.base1 = MX31_CSD1_BASE_ADDR,
 	.add_mem = imx_esdctl_v2_bug_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx35_data = {
+static __maybe_unused const struct imx_esdctl_data imx35_data = {
 	.base0 = MX35_CSD0_BASE_ADDR,
 	.base1 = MX35_CSD1_BASE_ADDR,
 	.add_mem = imx_esdctl_v2_bug_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx51_data = {
+static __maybe_unused const struct imx_esdctl_data imx51_data = {
 	.base0 = MX51_CSD0_BASE_ADDR,
 	.base1 = MX51_CSD1_BASE_ADDR,
 	.add_mem = imx_esdctl_v3_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx53_data = {
+static __maybe_unused const struct imx_esdctl_data imx53_data = {
 	.base0 = MX53_CSD0_BASE_ADDR,
 	.base1 = MX53_CSD1_BASE_ADDR,
 	.add_mem = imx_esdctl_v4_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx6q_data = {
+static __maybe_unused const struct imx_esdctl_data imx6q_data = {
 	.base0 = MX6_MMDC_PORT01_BASE_ADDR,
 	.add_mem = imx6_mmdc_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx6sx_data = {
+static __maybe_unused const struct imx_esdctl_data imx6sx_data = {
 	.base0 = MX6_MMDC_PORT0_BASE_ADDR,
 	.add_mem = imx6_mmdc_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx6ul_data = {
+static __maybe_unused const struct imx_esdctl_data imx6ul_data = {
 	.base0 = MX6_MMDC_PORT0_BASE_ADDR,
 	.add_mem = imx6_mmdc_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data vf610_data = {
+static __maybe_unused const struct imx_esdctl_data vf610_data = {
 	.base0 = VF610_RAM_BASE_ADDR,
 	.add_mem = vf610_ddrmc_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx8m_data = {
+static __maybe_unused const struct imx_esdctl_data imx8m_data = {
 	.base0 = MX8M_DDR_CSD1_BASE_ADDR,
 	.add_mem = imx8m_ddrc_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx8mn_data = {
+static __maybe_unused const struct imx_esdctl_data imx8mn_data = {
 	.base0 = MX8M_DDR_CSD1_BASE_ADDR,
 	.add_mem = imx8mn_ddrc_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx9_data = {
+static __maybe_unused const struct imx_esdctl_data imx9_data = {
 	.base0 = MX9_DDR_CSD1_BASE_ADDR,
 	.add_mem = imx9_ddrc_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx7d_data = {
+static __maybe_unused const struct imx_esdctl_data imx7d_data = {
 	.base0 = MX7_DDR_BASE_ADDR,
 	.add_mem = imx7d_ddrc_add_mem,
 };
-- 
2.39.5



