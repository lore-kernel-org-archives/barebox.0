Delivery-date: Mon, 09 Mar 2026 08:47:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVKV-009fvZ-04
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 08:47:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVKV-0007OJ-3m
	for lore@pengutronix.de; Mon, 09 Mar 2026 08:47:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mBm91gf66knisGmNwLR8O5i7mO8GwcxiptEV/jKBgKI=; b=Rs+uAsgJHUd+rlfhsBW+Iepg/z
	0Kc+ETpPlwPb7DKGdlUJ9tqmLsJIRDA9FeRcGNLL+wOL0JE23Kw2trgZuY4NezrCoZcUkTWmuoGew
	4nFx3W38uz0yZOtt+ZV2+Wwuf9ww7IKkQjOCqe4WUgDLZQiqa8xvHNqRSnmwjMJqSCtFVttlnUyu9
	MmQ87lLv22OFSLfDL53F9x6QY4R3NLTObFC5A7PjNR0hkw4IaGWWZ4HM50Bd377lxaZkImpFJt4lm
	WpsQWsSqeB7/8m62nmzKwniRffmH2XBGLSbY16HgX+4b3d6gBDHyRKZy05Eiipguw/QwcPNdwP1hT
	UoEG0liw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVJq-00000006pMS-23DT;
	Mon, 09 Mar 2026 07:46:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVJm-00000006pKy-3h5F
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 07:46:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzVJj-00074T-5H; Mon, 09 Mar 2026 08:46:19 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 08:46:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-v2026-02-0-topic-imx8-ecc-v2-2-6aab6d795061@pengutronix.de>
References: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
In-Reply-To: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_004622_931137_F0C15A51 
X-CRM114-Status: GOOD (  19.81  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] arm: mach-imx: esdctl.c: Add support for imx8mp
 inline ECC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

This adds support for detecting the use of inline ECC and compute the
correct memory bank(s) in that case.
In case inline ECC is active the memory map is modified as follows:
The total memory size is reduced to 7/8th of the raw memory size.
If a reduced-address-space type RAM is used (0.75, 1.5, 3, 6... GiB), then
the whole address space is split up into 3 equal parts, separated by 1/3rd
of the raw address space, but each 7/8th that size.
The ECC area at the end of each part is not addressable and must be
excluded from the map.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig  |  8 +++++
 arch/arm/mach-imx/esdctl.c | 77 +++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 84 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d244c57580..08b0a955c6 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -1026,6 +1026,14 @@ config HABV3_IMG_CRT_DER
 
 endif
 
+config IMX8MP_DRAM_ECC
+	bool
+	depends on ARCH_IMX8MP
+	help
+	  The i.MX8MP SoC supports ECC on the LPDDR4 memory. Select Y to enable
+	  this feature. The total amount of memory available will be reduced by
+	  1/8th.
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index b6689b7ffc..4c1015e2bf 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -332,6 +332,9 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
 #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
 #define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
 
+#define DDRC_ECCCFG0				0x0070
+#define DDRC_ECCCFG0_ECC_MODE			GENMASK(2, 0)
+
 #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
 
 #define DDRC_ADDRMAP1_BANK_B2			GENMASK(20, 16)
@@ -362,6 +365,11 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
 
 #define DDRC_ADDRMAP_LENGTH			9
 
+static inline int imx_esdctl_ecc_enabled(void __iomem *ddrc)
+{
+	return FIELD_GET(DDRC_ECCCFG0_ECC_MODE, readl(ddrc + DDRC_ECCCFG0));
+}
+
 static unsigned int
 imx_ddrc_count_bits(unsigned int bits, const u8 config[],
 		     unsigned int config_num)
@@ -519,6 +527,33 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
 				   reduced_address_space, mstr);
 }
 
+static resource_size_t imx8mp_ddrc_sdram_size(void __iomem *ddrc,
+		unsigned int *chunks, resource_size_t *stride)
+{
+	resource_size_t size = imx8m_ddrc_sdram_size(ddrc, 32);
+	const bool reduced_address_space = FIELD_GET(
+		DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, readl(ddrc + DDRC_ADDRMAP(6)));
+
+	/* ECC devides the accessible address space into 1 or 3 contiguous
+	 * regions depending on reduced_address_space. For simplicity, give
+	 * barebox only one contiguous region to use.
+	 * Each region is only 7/8th the raw size due to ECC data.
+	 */
+	if (chunks)
+		*chunks = 1;
+	if (imx_esdctl_ecc_enabled(ddrc)) {
+		if (reduced_address_space) {
+			size /= 3;
+			if (chunks)
+				*chunks = 3;
+			if (stride)
+				*stride = size;
+		}
+		size = (size * 7) / 8;
+	}
+	return size;
+}
+
 static int _imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data,
 			       unsigned int buswidth)
 {
@@ -559,6 +594,29 @@ static int imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data
 	return _imx8m_ddrc_add_mem(mmdcbase, data, 32);
 }
 
+static int imx8mp_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
+{
+	unsigned int chunks;
+	unsigned long base;
+	resource_size_t chunksize = 0, stride = 0;
+	int ret = -ENOMEM;
+	int i;
+	char name[5];
+
+	chunksize = imx8mp_ddrc_sdram_size(mmdcbase, &chunks, &stride);
+
+	base = data->base0;
+	for (i = 0; i < chunks; i++) {
+		snprintf(name, 5, "ram%d", i);
+		ret = arm_add_mem_device(name, base, chunksize);
+		if (ret)
+			break;
+		base += stride;
+	}
+
+	return ret;
+}
+
 static int imx8mn_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
 	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
@@ -742,6 +800,11 @@ static __maybe_unused const struct imx_esdctl_data imx8mn_data = {
 	.add_mem = imx8mn_ddrc_add_mem,
 };
 
+static __maybe_unused const struct imx_esdctl_data imx8mp_data = {
+	.base0 = MX8M_DDR_CSD1_BASE_ADDR,
+	.add_mem = imx8mp_ddrc_add_mem,
+};
+
 static __maybe_unused const struct imx_esdctl_data imx9_data = {
 	.base0 = MX9_DDR_CSD1_BASE_ADDR,
 	.add_mem = imx9_ddrc_add_mem,
@@ -822,6 +885,12 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mn-ddrc",
 		.data = &imx8mn_data
+	}, {
+		.compatible = "fsl,imx8mp-ddrc",
+		.data = &imx8mp_data
+	}, {
+		.compatible = "fsl,imx8mq-ddrc",
+		.data = &imx8mp_data
 	}, {
 		.compatible = "fsl,imx93-ddrc",
 		.data = &imx9_data
@@ -1000,9 +1069,15 @@ void __noreturn vf610_barebox_entry(void *boarddata)
 
 resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 {
+	unsigned int chunks;
+	resource_size_t stride = 0;
 	resource_size_t size;
 
-	size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), buswidth);
+	if (imx_esdctl_ecc_enabled(IOMEM(MX8M_DDRC_CTL_BASE_ADDR)))
+		size = imx8mp_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), &chunks,
+				&stride);
+	else
+		size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), buswidth);
 	/*
 	 * We artificially limit detected memory size to force malloc
 	 * pool placement to be within 4GiB address space, so as to

-- 
2.52.0



