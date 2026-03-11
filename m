Delivery-date: Wed, 11 Mar 2026 09:39:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0F5w-00AO4Z-0n
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 09:39:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0F5v-0005nr-3Q
	for lore@pengutronix.de; Wed, 11 Mar 2026 09:39:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x8TpblUQ3r2PbdLpamzCmQwO8xA9DSSd/Szc/YHfJio=; b=LA/3on/lOk73PcEYeeem+ss4nT
	qCtnKrgpCDgH9gF9uVo18I/lj5RrSKowb6C2m/y4/WyUM6jI8cXN1q76YH7CuJYX0CrZa3TtixLi/
	a8u9mMQ63LYmtg4Ts2wdWzCS8M4He0DGIeajVm1XZUO088w8knZwpqK5i+hJ9X7Xv3Zodune1Q/lx
	A89cHQOnyDrT/WZLBHscSFv6nzIp45XZGnzO/j4Em+qFIS0jhbEdUb/wEu82hu4//USGq6xkdotsC
	Lnh+TLTeaPYPiStUG3F2nFDfM/Xompm/xGHAiLBPDFSRRRLvxO/KeGcXjy1+QLayHR2VWDHN0ytKm
	s+f8ADnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0F5N-0000000BBl5-0RQi;
	Wed, 11 Mar 2026 08:38:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0F5L-0000000BBkL-0WZy
	for barebox@bombadil.infradead.org;
	Wed, 11 Mar 2026 08:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=x8TpblUQ3r2PbdLpamzCmQwO8xA9DSSd/Szc/YHfJio=; b=SarHjQg9s/+Gz06pyjKDqkDfDx
	f7No1VK4/3pNNI08bYR8lMt0Z+v3wUkndIYiFOihUqjU/nbAh9XcRbKUkz2xvBaybNnJCsOq0MMtL
	ZH1dhnHVaj0fsWOGWVMeiuLoGIMD0DOJ3V129Er8hwDyi1NhD7CxKqH9cBJ3s20oQ+6G8XXAOFs19
	LF/nyd/LW58kVh0QcJ5WTlSd57XPa6ASjXuiyYxtynTLjDFQZYGCDYMIVKZutrN1VaJZegwB5FMro
	MY4DKrj0apOSF2BkKDyWFuTFDqlS3ca002kIpNZdBTrQwoG5hJTRoaYD073TTsz4SwNn6TpF3LPBA
	b5wkODxA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0F5H-0000000GRJK-1Wfl
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 08:38:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1w0F5G-0005Vv-9H; Wed, 11 Mar 2026 09:38:26 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 11 Mar 2026 09:38:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-v2026-02-0-topic-imx8-ecc-v3-3-ffdf97760441@pengutronix.de>
References: <20260311-v2026-02-0-topic-imx8-ecc-v3-0-ffdf97760441@pengutronix.de>
In-Reply-To: <20260311-v2026-02-0-topic-imx8-ecc-v3-0-ffdf97760441@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_083827_511597_082EBC83 
X-CRM114-Status: GOOD (  16.72  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/4] drivers: ddr: imx8m: ddr_init.c: support ECC
 scrubbing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

This code comes from u-boot [1] and was introduced in commit [2].

A fix from the patch [3] is also included, which doesn't seem to be
added to u-boot, yet.

[1] https://github.com/u-boot/u-boot/
[2] commit f3acb02386f4 ("drivers: ddr: imx8mp: Add inline ECC feature support")
[3] https://patchwork.ozlabs.org/project/uboot/patch/20230123091702.7472-32-peng.fan@oss.nxp.com/

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/ddr/imx/imx8m_ddr_init.c | 96 ++++++++++++++++++++++++++++++++++++++++
 include/soc/imx/ddr.h            |  1 +
 include/soc/imx8m/ddr.h          |  2 +
 3 files changed, 99 insertions(+)

diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index c16e04d274..ee59bd4128 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -8,11 +8,17 @@
 #include <common.h>
 #include <errno.h>
 #include <io.h>
+#include <linux/sizes.h>
 #include <soc/imx8m/ddr.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/imx8m-ccm-regs.h>
 
+#define ECC_STRIDE_SIZE		SZ_2G
+#define ECC_INLINE_SIZE		SZ_256M
+/* The scrub size is in words not bytes */
+#define ECC_SCRUB_SIZE		(ECC_STRIDE_SIZE - ECC_INLINE_SIZE) / 4
+
 struct dram_controller imx8m_dram_controller = {
 	.phy_base = IOMEM(IP2APB_DDRPHY_IPS_BASE_ADDR(0)),
 };
@@ -45,6 +51,93 @@ static void ddr_cfg_umctl2(struct dram_controller *dram, struct dram_cfg_param *
 	}
 }
 
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
+	/* start scrubbing at RAM address */
+	unsigned int start_address;
+	/* scrub up until this address */
+	unsigned int range_address;
+
+	if (!dram_timing->ecc_full_size)
+		return;
+
+	for (start_address = 0x0;
+	     start_address + ECC_SCRUB_SIZE - 1 <= dram_timing->ecc_full_size / 4;
+	     start_address += ECC_SCRUB_SIZE + ECC_INLINE_SIZE / 4) {
+		range_address = start_address + ECC_SCRUB_SIZE - 1;
+		/* scrub in 1.75G chunk sizes */
+		ddrc_inline_ecc_scrub(start_address, range_address);
+	}
+
+	ddrc_inline_ecc_scrub_end(0x0, dram_timing->ecc_full_size / 4 - 1);
+}
+
 static unsigned int g_cdd_rr_max[4];
 static unsigned int g_cdd_rw_max[4];
 static unsigned int g_cdd_wr_max[4];
@@ -642,6 +735,9 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
 	pr_debug("ddrmix config done\n");
 
+	if (IS_ENABLED(CONFIG_IMX8MP_DRAM_ECC) && dram->ddrc_type == DDRC_TYPE_MP)
+		dram_ecc_scrub(dram_timing);
+
 	/* save the dram timing config into memory */
 	dram_config_save(dram, dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
 
diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
index 6426062900..4039b8d6e6 100644
--- a/include/soc/imx/ddr.h
+++ b/include/soc/imx/ddr.h
@@ -101,6 +101,7 @@ struct dram_timing_info {
 		unsigned int ddrphy_pie_num;
 		/* initialized drate table */
 		unsigned int fsp_table[4];
+		resource_size_t ecc_full_size;
 	);
 };
 
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 5df07772b3..708bcd9d05 100644
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

-- 
2.52.0



