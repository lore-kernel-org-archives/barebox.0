Delivery-date: Mon, 16 Mar 2026 09:15:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w236m-001N4W-2h
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 09:15:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w236m-0002TE-1f
	for lore@pengutronix.de; Mon, 16 Mar 2026 09:15:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MsjuNm7Gnve2192PobIM2XISNdN0BiC9dHZF4O67aj0=; b=ckw33TOw6apqxhJMUWZG8gmeG3
	1opIJz02VA5Vj2xZIRKrl38/b1w4KpS7vAxIEz+rvDNWZLpaQ+iBdNoEBcfB/X9Yr4WuDaJVSQGNo
	U5W3tCckGF5AOTxuSDEZp3Zkszvf52r6VctQDPe+gYsIZKlhUx6weavzag43/NUJMjIQVICV8KA80
	a7oTMzlXhHcwl0+7EmYU6hriQuvE5OKJLB4rlmDf0vy7LHaisPzSh8S6iAvL5t5xwR6GvixEmWikv
	hb6MjpJFqjaHiBMNbQy7bFmOJoMDnu1bfChJv1RMNfQ/frWHSSWvjhLcnXz02YHndU+Y5uKWblmwE
	PXl/AMlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2369-00000003WjA-20zX;
	Mon, 16 Mar 2026 08:14:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2366-00000003Wgm-04x9
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 08:14:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1w2362-000296-AT; Mon, 16 Mar 2026 09:14:42 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 16 Mar 2026 09:14:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-v2026-02-0-topic-imx8-ecc-v4-2-e5ecc09cfafd@pengutronix.de>
References: <20260316-v2026-02-0-topic-imx8-ecc-v4-0-e5ecc09cfafd@pengutronix.de>
In-Reply-To: <20260316-v2026-02-0-topic-imx8-ecc-v4-0-e5ecc09cfafd@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_011446_070624_39F820A1 
X-CRM114-Status: GOOD (  20.23  )
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
Subject: [PATCH v4 2/4] arm: mach-imx: esdctl.c: Add support for imx8mp
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
 arch/arm/mach-imx/Kconfig  | 10 +++++++
 arch/arm/mach-imx/esdctl.c | 73 +++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 82 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2e4d1ac80a..377b74b31f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -1060,6 +1060,16 @@ config HABV3_IMG_CRT_DER
 
 endif
 
+config IMX8MP_DRAM_ECC
+	bool
+	depends on ARCH_IMX8MP
+	help
+	  This option is selected by boards that make use of the inline ECC
+	  support for LPDDR4 memory on i.MX8MP SoCs. For board images that
+	  configure ECC, the total amount of memory available will be reduced by
+	  1/8th.
+	  Boards that don't explicitly make use of it are not affected.
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index bad5064d14..21fee174a9 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -334,6 +334,9 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
 #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
 #define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
 
+#define DDRC_ECCCFG0				0x0070
+#define DDRC_ECCCFG0_ECC_MODE			GENMASK(2, 0)
+
 #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
 
 #define DDRC_ADDRMAP1_BANK_B2			GENMASK(20, 16)
@@ -364,6 +367,11 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
 
 #define DDRC_ADDRMAP_LENGTH			9
 
+static inline int imx_esdctl_ecc_enabled(void __iomem *ddrc)
+{
+	return FIELD_GET(DDRC_ECCCFG0_ECC_MODE, readl(ddrc + DDRC_ECCCFG0));
+}
+
 static unsigned int
 imx_ddrc_count_bits(unsigned int bits, const u8 config[],
 		     unsigned int config_num)
@@ -522,6 +530,35 @@ resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
 				   reduced_address_space, mstr);
 }
 
+static resource_size_t imx8m_ddrc_ecc_sdram_size(unsigned int *chunks,
+						 resource_size_t *stride,
+						 unsigned int buswidth)
+{
+	void __iomem *ddrc = IOMEM(MX8M_DDRC_CTL_BASE_ADDR);
+	resource_size_t size = imx8m_ddrc_sdram_size(buswidth);
+	const bool reduced_address_space = FIELD_GET(
+		DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, readl(ddrc + DDRC_ADDRMAP(6)));
+
+	/* ECC divides the accessible address space into 1 or 3 contiguous
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
 static int _imx8m_ddrc_add_mem(const struct imx_esdctl_data *data,
 			       unsigned int buswidth)
 {
@@ -562,6 +599,29 @@ static int imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data
 	return _imx8m_ddrc_add_mem(data, 32);
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
+	chunksize = imx8m_ddrc_ecc_sdram_size(&chunks, &stride, 32);
+
+	base = data->base0;
+	for (i = 0; i < chunks; i++) {
+		snprintf(name, sizeof(name), "ram%d", i);
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
 	return _imx8m_ddrc_add_mem(data, 16);
@@ -745,6 +805,11 @@ static __maybe_unused const struct imx_esdctl_data imx8mn_data = {
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
@@ -825,6 +890,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mn-ddrc",
 		.data = &imx8mn_data
+	}, {
+		.compatible = "fsl,imx8mp-ddrc",
+		.data = &imx8mp_data
 	}, {
 		.compatible = "fsl,imx93-ddrc",
 		.data = &imx9_data
@@ -1084,7 +1152,10 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 {
 	resource_size_t size;
 
-	size = imx8m_ddrc_sdram_size(buswidth);
+	if (imx_esdctl_ecc_enabled(IOMEM(MX8M_DDRC_CTL_BASE_ADDR)))
+		size = imx8m_ddrc_ecc_sdram_size(NULL, NULL, buswidth);
+	else
+		size = imx8m_ddrc_sdram_size(buswidth);
 	/*
 	 * We artificially limit detected memory size to force malloc
 	 * pool placement to be within 4GiB address space, so as to

-- 
2.52.0



