Delivery-date: Wed, 25 Jan 2023 17:45:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKiuH-001i5Q-GT
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 17:45:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKiuE-00086W-1x
	for lore@pengutronix.de; Wed, 25 Jan 2023 17:45:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Klxfa6al1SJBmJPdlNz6PA/4z3/tSedDic1DG3QnNg0=; b=b5YHBam3x4baM0H4kZo+MnD0jz
	lWzM/8kqdWjkg9Ha1XRqaAGFTSBX/O8ig2Y3zOi57A7yGrrKmNfq34vM/NKJvfVKcyFNWPptgpBEZ
	COC890FRUMLcFh6uHUqqgrvfgPhnqFK6Ld8aEQdmL7fp08BSkF0zbbwkk4CD2JPzvr9c6IVjyvqpz
	Ra+bkMDh8P7Pxohpeop/t5It2ilODxWa53RrEknfG8SPBho/MQFPH+VZ90IBEQA/PEDzL9FU3ExTQ
	S5W4uDJPOqNAbjgJFh6WxCLgM+pOfSKv3LBmcfnhk1Nk+xZFKacv2kdC4I0HD7T+ilzCLFWCyJnJ/
	uMJahLOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKism-0081CM-KM; Wed, 25 Jan 2023 16:44:21 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKire-0080e9-Qf
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 16:43:12 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674664989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Klxfa6al1SJBmJPdlNz6PA/4z3/tSedDic1DG3QnNg0=;
	b=CT/hcw+VnWC/IQAZBe8XtLWDAEKX4eLH0bAl69zPx2U1czVkLj6HR+m1XGPf8LaC00dbAP
	K2vK2dwqcsL3uoTS1G6OATKORwVpea1xBrL11GeIvUd5Dqy+44iJN1DSpYhPsYaX2tDed8
	LRTwVThJ6gzW/JYmv3eUIE3aRqagol6Yt5HWw6IcWMICJzbRC841LqqGBeSFTsmgtyh5rG
	KBWRykJUpIdYBkND5h/Gc3lGdynPKxtlFoZ6dwXoDoR4m+27n5hEDiMXI9CVppBssOtRD9
	47S5r9yf9Bt38JXjyWsTOBwEe2fjWm0h4B33DfykSZ1B8D1bpgI/9i8Ovwm58w==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu, 26 Jan 2023 03:42:30 +1100
Message-Id: <20230125164230.2328043-5-contact@jookia.org>
In-Reply-To: <20230122175141.119834-1-contact@jookia.org>
References: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_084311_204351_E6231B05 
X-CRM114-Status: GOOD (  15.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] ARM: novena: Use DDR3 information from SPD EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Novena supports swappable memory which means we must query the memory
for configuration details. This patch uses values stored in the SPD EEPROM
to configure the i.MX6 memory controller.

If the SPD can't be read, the default configuration for a 4GB stick is used.

Calibration for the installed stick is run unconditionally.

Verification that this works was done by comparing MMDC registers before and
after and carefully reading other people's source code.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/boards/novena/lowlevel.c | 116 ++++++++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig         |   2 +
 2 files changed, 118 insertions(+)

diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
index ef8acc8600..3765f00f83 100644
--- a/arch/arm/boards/novena/lowlevel.c
+++ b/arch/arm/boards/novena/lowlevel.c
@@ -3,6 +3,8 @@
 
 #include <asm/barebox-arm.h>
 #include <common.h>
+#include <ddr_dimms.h>
+#include <ddr_spd.h>
 #include <debug_ll.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
@@ -10,6 +12,8 @@
 #include <mach/imx6-mmdc.h>
 #include <mach/iomux-mx6.h>
 #include <mach/xload.h>
+#include <pbl.h>
+#include <pbl/i2c.h>
 #include <soc/fsl/fsl_udc.h>
 #include "ddr_regs.h"
 
@@ -18,6 +22,115 @@
 
 extern char __dtb_imx6q_novena_start[];
 
+static struct spd_eeprom spd_eeprom;
+static struct dimm_params dimm_params;
+
+#if IN_PBL
+/* I2C in the PBL requires udelay, provide our own */
+void udelay(unsigned long us)
+{
+	volatile unsigned long i;
+
+	for (i = 0; i < us * 4; i++);
+}
+#endif
+
+static struct pbl_i2c *setup_spd_i2c(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+
+	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT8__I2C1_SDA);
+	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT9__I2C1_SCL);
+	return imx6_i2c_early_init(IOMEM(MX6_I2C1_BASE_ADDR));
+}
+
+static struct spd_eeprom *read_spd(void)
+{
+	struct spd_eeprom *eeprom = &spd_eeprom;
+	struct pbl_i2c *i2c = setup_spd_i2c();
+	int rc;
+
+	rc = spd_read_eeprom(i2c, 0x50, eeprom, SPD_MEMTYPE_DDR3);
+	if (rc < 0) {
+		pr_err("Couldn't read SPD EEPROM: %i\n", rc);
+		return NULL;
+	}
+
+	rc = ddr3_spd_check(&eeprom->ddr3);
+	if (rc < 0) {
+		pr_err("Couldn't verify SPD data: %i\n", rc);
+		return NULL;
+	}
+
+	return eeprom;
+}
+
+static bool check_spd_compatible(struct spd_eeprom *eeprom)
+{
+	if (eeprom->ddr3.mem_type != 0x0b) {
+		pr_err("SPD data is not DDR3\n");
+		return false;
+	}
+
+	if ((eeprom->ddr3.bus_width & 0x1f) != 0x03) {
+		pr_err("SPD data is for a 64-bit bus\n");
+		return false;
+	}
+
+	return true;
+}
+
+static void setup_dimm_settings(struct dimm_params *params,
+				struct mx6_ddr_sysinfo *info,
+				struct mx6_ddr3_cfg *cfg)
+{
+	int capacity_gbit = params->capacity / 0x8000000;
+	int density_rank = capacity_gbit / params->n_ranks;
+
+	info->ncs = params->n_ranks;
+	info->cs_density = density_rank;
+	cfg->mem_speed = params->tckmin_x_ps;
+	cfg->density = density_rank / params->n_banks_per_sdram_device;
+	cfg->width = params->data_width;
+	cfg->banks = params->n_banks_per_sdram_device;
+	cfg->rowaddr = params->n_row_addr;
+	cfg->coladdr = params->n_col_addr;
+	cfg->trcd = params->trcd_ps / 10;
+	cfg->trcmin = params->trc_ps / 10;
+	cfg->trasmin = params->tras_ps / 10;
+	cfg->SRT = params->extended_op_srt;
+
+	if (params->device_width >= 16)
+		cfg->pagesz = 2;
+}
+
+static void read_dimm_settings(void)
+{
+	struct spd_eeprom *eeprom = read_spd();
+	struct dimm_params *params = &dimm_params;
+	int rc;
+
+	if (!eeprom) {
+		pr_err("Couldn't read SPD EEPROM, using default settings\n");
+		return;
+	}
+
+	if (!check_spd_compatible(eeprom)) {
+		pr_err("DIMM stick incompatible\n");
+		hang();
+	}
+
+	rc = ddr3_compute_dimm_parameters(&eeprom->ddr3, params);
+	if (rc < 0) {
+		pr_err("Couldn't compute DIMM params: %i\n", rc);
+		return;
+	}
+
+	setup_dimm_settings(params, &novena_ddr_info, &novena_ddr_cfg);
+
+	pr_info("Found DIMM: %s\n", params->mpart);
+}
+
 static bool running_from_ram(void)
 {
 	return (get_pc() >= MX6_MMDC_PORT01_BASE_ADDR);
@@ -37,6 +150,8 @@ static void setup_ram(void)
 {
 	mx6dq_dram_iocfg(64, &novena_ddr_regs, &novena_grp_regs);
 	mx6_dram_cfg(&novena_ddr_info, &novena_mmdc_calib, &novena_ddr_cfg);
+	mmdc_do_write_level_calibration();
+	mmdc_do_dqs_calibration();
 }
 
 static void load_barebox(void)
@@ -74,6 +189,7 @@ ENTRY_FUNCTION_WITHSTACK(start_imx6q_novena, STACK_TOP, r0, r1, r2)
 	if (!running_from_ram()) {
 		imx6_ungate_all_peripherals();
 		setup_uart();
+		read_dimm_settings();
 		setup_ram();
 		load_barebox();
 	} else {
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 7993835be7..aa7a86da66 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -437,6 +437,8 @@ config MACH_NITROGEN6
 config MACH_NOVENA
 	bool "Kosagi Novena board"
 	select ARCH_IMX6
+	select DDR_SPD
+	select I2C_IMX_EARLY
 	select MCI_IMX_ESDHC_PBL
 	select USB_GADGET_DRIVER_ARC_PBL
 
-- 
2.39.0



