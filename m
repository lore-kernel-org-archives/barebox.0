Delivery-date: Thu, 02 Feb 2023 09:00:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUWe-00B8BF-KI
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 09:00:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUWb-0001QC-PN
	for lore@pengutronix.de; Thu, 02 Feb 2023 09:00:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AgrwZ/6vyq9uwt701rlk7NxJ/SUF1JKf3YnzM1HPmFM=; b=Wkno0YZOB4dh0IqQJd3m6x93k2
	lH5pbtIcHqWcl6ABrInQJoNn42bK+gs/zLMBKUhTxa5xf2yTbakJPh4pWnxnyoISKfFzO+80mOLpp
	DNSYxTG0tHa9XScRnEMfWRUjMBO/6cxjJPd6OcTepds6SXFM1YuzfYktUtbYjsc1mUaR7ao0WmkUT
	LZ80CHcCr3X5PL0vg1hLGyvF931lDGiu8VO12oOc5GEMJwtVRhUd0gDguExH00qwBB6s3mCvo8DYo
	pU0fM5hdAG5Rgw7N55s206QmtanvHFht3AA4Jmtd28e1TBdbTTvCzHSN9UsMBkDvgHLkixf8/vpfo
	QU7vTpLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUVJ-00Ep9M-C3; Thu, 02 Feb 2023 07:59:33 +0000
Received: from out-220.mta0.migadu.com ([91.218.175.220])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUUb-00Eope-Lm
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:58:51 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675324726;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AgrwZ/6vyq9uwt701rlk7NxJ/SUF1JKf3YnzM1HPmFM=;
	b=KFlrK+vzJjRWTmWdzvDGLanx7T3Kag+y0oHDt5NwuM+cVcGkHg6pkOjq2i9iRuhJ/VaF9y
	MUGaK5sBZUeNL26Vr/1a0pC/dl0FdHp+Y91StaWo7aYzUwfV8T3Pojrqn7RN799FEjFdh4
	hh5utOolLDozBvPHZNaW0Ozm3Bs3JVvPkVpGhM3i4XPI0HQb+mWihU5koOsoyPTsYCKcly
	Snl0ERVWgaF/4EWQ8modbFkV+IyrDSjgtWR8ESzSgLKF2N+4rpaHA/SpIN0VujmNi7nyOG
	EawSNXkKlyMmv+g5GrMIB/Qt54jtl2ifVc9ZYnOW+3Kj6ftVglQT4zQ5qiZ48w==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu,  2 Feb 2023 18:57:41 +1100
Message-Id: <20230202075741.2350028-5-contact@jookia.org>
In-Reply-To: <20230202075741.2350028-1-contact@jookia.org>
References: <20230202075741.2350028-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_235850_044042_60E3DECB 
X-CRM114-Status: GOOD (  14.53  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 4/4] ARM: novena: Use DDR3 information from SPD EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Novena supports swappable memory which means we must query the memory
for configuration details. This patch uses values stored in the SPD EEPROM
to configure the i.MX6 memory controller.

If the SPD can't be read, the default configuration for a 4GB stick is
used. This is the same type of stick that comes with the board.

Calibration for the installed stick is run unconditionally.

Verification that this works was done by comparing MMDC registers before and
after and carefully reading other people's source code.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/boards/novena/lowlevel.c | 94 +++++++++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig         |  2 +
 2 files changed, 96 insertions(+)

diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
index c49c6aab41..178c874892 100644
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
@@ -10,6 +12,7 @@
 #include <mach/imx6-mmdc.h>
 #include <mach/iomux-mx6.h>
 #include <mach/xload.h>
+#include <pbl/i2c.h>
 #include <soc/fsl/fsl_udc.h>
 #include "ddr_regs.h"
 
@@ -17,6 +20,92 @@
 
 extern char __dtb_z_imx6q_novena_start[];
 
+static struct spd_eeprom spd_eeprom;
+static struct dimm_params dimm_params;
+
+static struct pbl_i2c *setup_spd_i2c(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+	void __iomem *i2c1base = IOMEM(MX6_I2C1_BASE_ADDR);
+
+	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT8__I2C1_SDA);
+	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT9__I2C1_SCL);
+
+	return imx6_i2c_early_init(i2c1base);
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
+	rc = ddr3_compute_dimm_parameters(&eeprom->ddr3, params);
+	if (rc < 0) {
+		pr_err("Couldn't compute DIMM params: %i\n", rc);
+		return;
+	}
+
+	pr_info("Found DIMM: %s\n", params->mpart);
+
+	if (params->primary_sdram_width != 64) {
+		pr_err("ERROR: DIMM stick memory width is not 64 bits\n");
+		hang();
+	}
+
+	setup_dimm_settings(params, &novena_ddr_info, &novena_ddr_cfg);
+}
+
 static bool running_from_ram(void)
 {
 	return (get_pc() >= MX6_MMDC_PORT01_BASE_ADDR);
@@ -39,8 +128,13 @@ static void setup_uart(void)
 
 static void setup_ram(void)
 {
+	read_dimm_settings();
+
 	mx6dq_dram_iocfg(64, &novena_ddr_regs, &novena_grp_regs);
 	mx6_dram_cfg(&novena_ddr_info, &novena_mmdc_calib, &novena_ddr_cfg);
+
+	mmdc_do_write_level_calibration();
+	mmdc_do_dqs_calibration();
 }
 
 static void load_barebox(void)
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 912eef8290..dce5d9e1bb 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -438,6 +438,8 @@ config MACH_NOVENA
 	bool "Kosagi Novena board"
 	select ARCH_IMX6
 	select ARM_USE_COMPRESSED_DTB
+	select DDR_SPD
+	select I2C_IMX_EARLY
 	select MCI_IMX_ESDHC_PBL
 	select USB_GADGET_DRIVER_ARC_PBL
 
-- 
2.39.1



