Delivery-date: Wed, 04 Mar 2026 12:24:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkLF-007xxA-2J
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:24:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkLF-0002a0-Qv
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:24:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TX+xrLk0GY/Ps9Gv2E+xSAgwT3xYxd5rStCMKxkhLsw=; b=SZw0bi8wbzqlULi5cFUlIZWkwe
	7kQG0gMH+LLW3KgbDfujMR3DL/y895c7me/hhUCreApN8RXWNH+W3KtHrDof8u00YXUTpslcg0le4
	J6PQUWmk7GVj06oKaBVqsSQ23E6D/k5U5VDPpMgRFar+lh8ooO4PNvBHnAlZYWvYqfaPrbC5SnHgz
	QHLf7DbUPXE9jCgGu1XzgzhZOrDsQNGdWiDwp5Y+Shp79e2Hm6KuzLpuukiZqLgz1vAw0o97vioIB
	sKdg/PKFVn+s9vOhIn0N+tMStbSaUYkaukbxvNfhOLQUTREBoWMc1k7y8NzuC5P3iz5diUoczOzMH
	sh8neyiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkKq-0000000H5I0-2fMS;
	Wed, 04 Mar 2026 11:24:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkKn-0000000H5F1-0Dsa
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:24:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vxkKk-0002He-B5; Wed, 04 Mar 2026 12:24:06 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 04 Mar 2026 12:23:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-v2026-02-0-topic-imx8-ecc-v1-3-700698530c5c@pengutronix.de>
References: <20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de>
In-Reply-To: <20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_032409_098446_8E56005A 
X-CRM114-Status: GOOD (  12.76  )
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
Subject: [PATCH 3/4] drivers: ddr: imx8m: ddr_init.c: support ECC scrubbing
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
 arch/arm/mach-imx/Kconfig        |  8 +++++
 drivers/ddr/imx/imx8m_ddr_init.c | 73 ++++++++++++++++++++++++++++++++++++++++
 include/soc/imx8m/ddr.h          | 11 ++++++
 3 files changed, 92 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d244c57580..75b04cf70f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -1026,6 +1026,14 @@ config HABV3_IMG_CRT_DER
 
 endif
 
+config IMX8MP_DRAM_ECC
+	bool "Enable LPDDR4 ECC feature on i.MX8MP boards"
+	depends on ARCH_IMX8MP
+	help
+	  The i.MX8MP SoC supports ECC on the LPDDR4 memory. Select Y to enable
+	  this feature. The total amount of memory available will be reduced by
+	  1/8th.
+
 endmenu
 
 endif
diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index c16e04d274..6398a2b971 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -45,6 +45,74 @@ static void ddr_cfg_umctl2(struct dram_controller *dram, struct dram_cfg_param *
 	}
 }
 
+#ifdef CONFIG_IMX8MP_DRAM_ECC
+void ddrc_inline_ecc_scrub(unsigned int start_address,
+			   unsigned int range_address)
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
+void ddrc_inline_ecc_scrub_end(unsigned int start_address,
+			       unsigned int range_address)
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
+#endif
+
 static unsigned int g_cdd_rr_max[4];
 static unsigned int g_cdd_rw_max[4];
 static unsigned int g_cdd_wr_max[4];
@@ -642,6 +710,11 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
 	pr_debug("ddrmix config done\n");
 
+#ifdef CONFIG_IMX8MP_DRAM_ECC
+	if (dram->ddrc_type == DDRC_TYPE_MP)
+		board_dram_ecc_scrub();
+#endif
+
 	/* save the dram timing config into memory */
 	dram_config_save(dram, dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
 
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 5df07772b3..08ebf61da0 100644
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
@@ -380,4 +382,13 @@ static inline void imx8m_ddr_load_train_code(enum dram_type dram_type,
 	ddr_load_train_code(&imx8m_dram_controller, dram_type, fw_type);
 }
 
+#define DDRC_PHY_REG(x)	((x) * 4)
+
+void board_dram_ecc_scrub(void);
+
+void ddrc_inline_ecc_scrub(unsigned int start_address,
+			   unsigned int range_address);
+void ddrc_inline_ecc_scrub_end(unsigned int start_address,
+			       unsigned int range_address);
+
 #endif

-- 
2.52.0



