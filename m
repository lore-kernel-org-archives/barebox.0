Delivery-date: Mon, 09 Mar 2026 08:47:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVKY-009fwb-2U
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 08:47:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVKX-0007PD-V5
	for lore@pengutronix.de; Mon, 09 Mar 2026 08:47:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q2AE8zRuDS8pZG1bJ9977FrtaA8/WH9fr9iEC3WpvsM=; b=kA+krDlpE3qS8kStbPqvWYJV3N
	vOgy1N8l+o67/Y0HH9GjnMs7aVK3grcvZ9ZfMxvrzgLqvpiZubJomggPipRabJI0YQ6nJhXe+vzee
	mDxbOes+V8PLZBG5aXuzx319CxHX8VjkFxwgQbW2QeqOtF18e0PHVBRqWV1il8O6BT7q4P+EAd0ho
	t0iqF8+6Uv5dTjxlq8nyjcFRgbAZn4oV2KkPhoUw6MslIWvvMYgMF1GEriGOmcn1CQGNOVjE2NiRO
	2EbqxuqkuY0Oa4N41N/IBS0rgw2qkbHHeZnIWOnNVsQVqi/A6QjcnDGEKGI8eaPGOtIPlrRVMgeEX
	0tGIkJ0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVJq-00000006pMY-3pNW;
	Mon, 09 Mar 2026 07:46:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVJm-00000006pKz-3hsk
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 07:46:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzVJj-00074T-BI; Mon, 09 Mar 2026 08:46:19 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 08:46:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-v2026-02-0-topic-imx8-ecc-v2-3-6aab6d795061@pengutronix.de>
References: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
In-Reply-To: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_004622_930834_A1716484 
X-CRM114-Status: GOOD (  15.66  )
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
Subject: [PATCH v2 3/4] drivers: ddr: imx8m: ddr_init.c: support ECC
 scrubbing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

This code comes from u-boot [1] and was introducesd in commit [2].

A fix from the patch [3] is also included, which doesn't seem to be
added to u-boot, yet.

[1] https://github.com/u-boot/u-boot/
[2] commit f3acb02386f4 ("drivers: ddr: imx8mp: Add inline ECC feature support")
[3] https://patchwork.ozlabs.org/project/uboot/patch/20230123091702.7472-32-peng.fan@oss.nxp.com/

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/ddr/imx/imx8m_ddr_init.c | 95 ++++++++++++++++++++++++++++++++++++++++
 include/soc/imx/ddr.h            |  1 +
 include/soc/imx8m/ddr.h          |  4 ++
 3 files changed, 100 insertions(+)

diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index c16e04d274..f601a51348 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -45,6 +45,96 @@ static void ddr_cfg_umctl2(struct dram_controller *dram, struct dram_cfg_param *
 	}
 }
 
+#ifdef CONFIG_IMX8MP_DRAM_ECC
+static void ddrc_inline_ecc_scrub(unsigned int start_address,
+				  unsigned int range_address)
+{
+	unsigned int tmp;
+
+	pr_debug("ECC scrub %08x-%08x\n", start_address, range_address);
+	/* Step1: Enable quasi-dynamic programming */
+	reg32_write(DDRC_SWCTL(0), 0x00000000);
+	/* Step2: Set ECCCFG1.ecc_parity_region_lock to 1 */
+	reg32setbit(DDRC_ECCCFG1(0), 0x4);
+	/* Step3: Block the AXI ports from taking the transaction */
+	reg32_write(DDRC_PCTRL_0(0), 0x0);
+	/* Step4: Set scrub start address */
+	reg32_write(DDRC_SBRSTART0(0), start_address);
+	/* Step5: Set scrub range address */
+	reg32_write(DDRC_SBRRANGE0(0), range_address);
+	/* Step6: Set scrub_mode to write */
+	reg32_write(DDRC_SBRCTL(0), 0x00000014);
+	/* Step7: Set the desired pattern through SBRWDATA0 registers */
+	reg32_write(DDRC_SBRWDATA0(0), 0x55aa55aa);
+	/* Step8: Enable the SBR by programming SBRCTL.scrub_en=1 */
+	reg32setbit(DDRC_SBRCTL(0), 0x0);
+	/* Step9: Poll SBRSTAT.scrub_done=1 */
+	tmp = reg32_read(DDRC_SBRSTAT(0));
+	while (tmp != 0x00000002)
+		tmp = reg32_read(DDRC_SBRSTAT(0)) & 0x2;
+	/* Step10: Poll SBRSTAT.scrub_busy=0 */
+	tmp = reg32_read(DDRC_SBRSTAT(0));
+	while (tmp != 0x0)
+		tmp = reg32_read(DDRC_SBRSTAT(0)) & 0x1;
+	/* Step11: Disable SBR by programming SBRCTL.scrub_en=0 */
+	clrbits_le32(DDRC_SBRCTL(0), 0x1);
+	/* Step12: Prepare for normal scrub operation(Read) and set scrub_interval*/
+	reg32_write(DDRC_SBRCTL(0), 0xff20);
+	/* Step13: Enable the SBR by programming SBRCTL.scrub_en=1 */
+	reg32_write(DDRC_SBRCTL(0), 0xff21);
+	/* Step14: Enable AXI ports by programming */
+	reg32_write(DDRC_PCTRL_0(0), 0x1);
+	/* Step15: Disable quasi-dynamic programming */
+	reg32_write(DDRC_SWCTL(0), 0x00000001);
+}
+
+static void ddrc_inline_ecc_scrub_end(unsigned int start_address,
+				      unsigned int range_address)
+{
+	pr_debug("ECC  end %08x-%08x\n", start_address, range_address);
+	/* Step1: Enable quasi-dynamic programming */
+	reg32_write(DDRC_SWCTL(0), 0x00000000);
+	/* Step2: Block the AXI ports from taking the transaction */
+	reg32_write(DDRC_PCTRL_0(0), 0x0);
+	/* Step3: Set scrub start address */
+	reg32_write(DDRC_SBRSTART0(0), start_address);
+	/* Step4: Set scrub range address */
+	reg32_write(DDRC_SBRRANGE0(0), range_address);
+	/* Step5: Disable SBR by programming SBRCTL.scrub_en=0 */
+	clrbits_le32(DDRC_SBRCTL(0), 0x1);
+	/* Step6: Prepare for normal scrub operation(Read) and set scrub_interval */
+	reg32_write(DDRC_SBRCTL(0), 0x100);
+	/* Step7: Enable the SBR by programming SBRCTL.scrub_en=1 */
+	reg32_write(DDRC_SBRCTL(0), 0x101);
+	/* Step8: Enable AXI ports by programming */
+	reg32_write(DDRC_PCTRL_0(0), 0x1);
+	/* Step9: Disable quasi-dynamic programming */
+	reg32_write(DDRC_SWCTL(0), 0x00000001);
+}
+
+static void dram_ecc_scrub(struct dram_timing_info *dram_timing)
+{
+	/* memory range to scrub in words (=1.75G) */
+	unsigned int range_in_words = 0x1c000000;
+	/* start scrubbing at RAM address */
+	unsigned int start_address;
+	/* scrub up until this address */
+	unsigned int range_address;
+
+	BUG_ON(!dram_timing->size);
+
+	for (start_address = 0x0;
+	     start_address + range_in_words - 1 <= dram_timing->size / 4;
+	     start_address += range_in_words + 0x04000000) {
+		range_address = start_address + range_in_words - 1;
+		/* scrub in 1.75G chunk sizes */
+		ddrc_inline_ecc_scrub(start_address, range_address);
+	}
+	
+	ddrc_inline_ecc_scrub_end(0x0, dram_timing->size / 4 - 1);
+}
+#endif
+
 static unsigned int g_cdd_rr_max[4];
 static unsigned int g_cdd_rw_max[4];
 static unsigned int g_cdd_wr_max[4];
@@ -642,6 +732,11 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
 	pr_debug("ddrmix config done\n");
 
+#ifdef CONFIG_IMX8MP_DRAM_ECC
+	if (dram->ddrc_type == DDRC_TYPE_MP)
+		dram_ecc_scrub(dram_timing);
+#endif
+
 	/* save the dram timing config into memory */
 	dram_config_save(dram, dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
 
diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
index 6426062900..9a5d341100 100644
--- a/include/soc/imx/ddr.h
+++ b/include/soc/imx/ddr.h
@@ -101,6 +101,7 @@ struct dram_timing_info {
 		unsigned int ddrphy_pie_num;
 		/* initialized drate table */
 		unsigned int fsp_table[4];
+		resource_size_t size;
 	);
 };
 
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 5df07772b3..f07cef9a9e 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -186,6 +186,8 @@
 #define DDRC_SBRWDATA0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf2c)
 #define DDRC_SBRWDATA1(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf30)
 #define DDRC_PDCH(X)             (DDRC_IPS_BASE_ADDR(X) + 0xf34)
+#define DDRC_SBRSTART0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf38)
+#define DDRC_SBRRANGE0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf40)
 
 #define DDRC_FREQ1_DERATEEN(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2020)
 #define DDRC_FREQ1_DERATEINT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2024)
@@ -380,4 +382,6 @@ static inline void imx8m_ddr_load_train_code(enum dram_type dram_type,
 	ddr_load_train_code(&imx8m_dram_controller, dram_type, fw_type);
 }
 
+#define DDRC_PHY_REG(x)	((x) * 4)
+
 #endif

-- 
2.52.0



