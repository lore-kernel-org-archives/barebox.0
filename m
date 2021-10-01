Delivery-date: Fri, 01 Oct 2021 12:11:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFW1-0002aP-Lo
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:11:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFVz-0006RY-Ug
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:11:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMzwaJRhFFLdsMCQdgjjzpELMvPI3PEqivP0Q28Gzlc=; b=mE7cpxx+IkTvJG
	E+CJqVvbC2ajF3zaE3bUUxG26Z+su/YjIPHIq32hOQyvMi+BVYmB1Cn+dkO6IN5NpizPX5BuQkYoe
	141Qq+mOMMNFx7X2kaKwjU96n3aQLoz7EjHTMvDrU0HAdrx8lopg2O4yOK0xK5GKS4zsp4nLIJZyG
	2Bss7D+WLlvrVZTVPHBE1sDgy6mOlKEFTw0Ei988fpEHTDihP72D+EGpHAMqMwOu+hrY9FDj0saWN
	feJK8KGj+oLaSPtqPZHuIJT/pApjSvsJNWPf7TeizOsip8RYPxdhE0CQFAzfGi3lIsTneDUS/G1vr
	FrcrQ2kqJS6W4C1EunGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFUX-00HQp5-6J; Fri, 01 Oct 2021 10:10:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFUJ-00HQja-2S
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:09:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUF-0005ku-5t; Fri, 01 Oct 2021 12:09:51 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUE-0001pg-GP; Fri, 01 Oct 2021 12:09:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Oct 2021 12:09:47 +0200
Message-Id: <20211001100949.6891-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001100949.6891-1-a.fatoum@pengutronix.de>
References: <20211001100949.6891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_030955_526381_3298D7D4 
X-CRM114-Status: GOOD (  18.96  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/8] ddr: imx8m: ddrphy_train: add DDR4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are DDR3L, DDR4 and LPDDR4 variants of the i.MX8M* SoMs used with
the NXP EVKs. So far, we only supported LPDDR4. For DDR4, we just need
different PHY training code. Encode the DRAM variant information
into a new dram_timing_info::dram_type and adjust the driver to make use
of it. The new CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN Kconfig symbol can
co-exist with CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN, allowing the same
barebox binary to target different memory types, provided board code
can determine what kind of DRAM is fitted.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/mnt-reform/lpddr4-timing.c    |  1 +
 .../arm/boards/nxp-imx8mm-evk/lpddr4-timing.c |  1 +
 .../arm/boards/nxp-imx8mp-evk/lpddr4-timing.c |  1 +
 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c |  6 ++---
 .../boards/phytec-som-imx8mq/ddrphy_train.c   |  6 ++---
 .../protonic-imx8m/lpddr4-timing-prt8mm.c     |  1 +
 arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c |  6 ++---
 drivers/ddr/imx8m/ddrphy_train.c              | 26 ++++++++++++++-----
 firmware/Kconfig                              |  3 +++
 firmware/Makefile                             |  6 +++++
 include/soc/imx8m/ddr.h                       | 20 +++++++++++++-
 11 files changed, 60 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/lpddr4-timing.c b/arch/arm/boards/mnt-reform/lpddr4-timing.c
index 0b5853000d03..0e962890fde2 100644
--- a/arch/arm/boards/mnt-reform/lpddr4-timing.c
+++ b/arch/arm/boards/mnt-reform/lpddr4-timing.c
@@ -1000,6 +1000,7 @@ static struct dram_fsp_msg mnt_reform_lpddr4_dram_fsp_msg[] = {
 
 /* ddr timing config params */
 struct dram_timing_info mnt_reform_dram_timing = {
+	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = mnt_reform_lpddr4_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(mnt_reform_lpddr4_ddrc_cfg),
 	.ddrphy_cfg = mnt_reform_lpddr4_ddrphy_cfg,
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
index e7c01f9cc9a0..68efbbdf917b 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
@@ -1965,6 +1965,7 @@ static struct dram_fsp_msg lpddr4_dram_fsp_msg[] = {
 
 /* lpddr4 timing config params on EVK board */
 struct dram_timing_info imx8mm_evk_dram_timing = {
+	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = lpddr4_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(lpddr4_ddrc_cfg),
 	.ddrphy_cfg = lpddr4_ddrphy_cfg,
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
index 3028bc084c73..681e70d06022 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
@@ -1834,6 +1834,7 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 
 /* ddr timing config params */
 struct dram_timing_info imx8mp_evk_dram_timing = {
+	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = ddr_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
 	.ddrphy_cfg = ddr_ddrphy_cfg,
diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c b/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
index 1b30ff725797..d2c73fc7ce22 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
@@ -142,7 +142,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 1D training image
-	ddr_load_train_code(FW_1D_IMAGE);
+	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
 
 	//configure DDRPHY-FW DMEM structure @clock0...
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
@@ -289,7 +289,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 2D training image
-	ddr_load_train_code(FW_2D_IMAGE);
+	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
@@ -932,4 +932,4 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x2006e, 0x0);
 	//disable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
-}
\ No newline at end of file
+}
diff --git a/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c b/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
index cc0052764971..2c84a0f5fd5a 100644
--- a/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
+++ b/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
@@ -146,7 +146,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 1D training image
-	ddr_load_train_code(FW_1D_IMAGE);
+	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
@@ -222,7 +222,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 1D training image
-	ddr_load_train_code(FW_1D_IMAGE);
+	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54002,0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0x29c);
@@ -298,7 +298,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 2D training image
-	ddr_load_train_code(FW_2D_IMAGE);
+	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
diff --git a/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c b/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c
index 2c55e7d45144..ea5c0b915437 100644
--- a/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c
@@ -1981,6 +1981,7 @@ static struct dram_fsp_msg lpddr4_dram_fsp_msg[] = {
 
 /* lpddr4 timing config params on EVK board */
 struct dram_timing_info prt8mm_dram_timing = {
+	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = lpddr4_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(lpddr4_ddrc_cfg),
 	.ddrphy_cfg = lpddr4_ddrphy_cfg,
diff --git a/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c b/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
index 1b30ff725797..d2c73fc7ce22 100644
--- a/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
+++ b/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
@@ -142,7 +142,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 1D training image
-	ddr_load_train_code(FW_1D_IMAGE);
+	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
 
 	//configure DDRPHY-FW DMEM structure @clock0...
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
@@ -289,7 +289,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 2D training image
-	ddr_load_train_code(FW_2D_IMAGE);
+	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
@@ -932,4 +932,4 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x2006e, 0x0);
 	//disable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
-}
\ No newline at end of file
+}
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index a4677f903c6b..d930a2fffe44 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -11,17 +11,29 @@
 #include <firmware.h>
 #include <mach/imx8m-regs.h>
 
-void ddr_load_train_code(enum fw_type type)
+void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type)
 {
 	const u16 *imem, *dmem;
 	size_t isize, dsize;
 
-	if (type == FW_1D_IMAGE) {
-		get_builtin_firmware(lpddr4_pmu_train_1d_imem_bin, &imem, &isize);
-		get_builtin_firmware(lpddr4_pmu_train_1d_dmem_bin, &dmem, &dsize);
+	if (dram_is_lpddr4(dram_type)) {
+		if (fw_type == FW_1D_IMAGE) {
+			get_builtin_firmware(lpddr4_pmu_train_1d_imem_bin, &imem, &isize);
+			get_builtin_firmware(lpddr4_pmu_train_1d_dmem_bin, &dmem, &dsize);
+		} else {
+			get_builtin_firmware(lpddr4_pmu_train_2d_imem_bin, &imem, &isize);
+			get_builtin_firmware(lpddr4_pmu_train_2d_dmem_bin, &dmem, &dsize);
+		}
+	} else if (dram_is_ddr4(dram_type)) {
+		if (fw_type == FW_1D_IMAGE) {
+			get_builtin_firmware(ddr4_imem_1d_bin, &imem, &isize);
+			get_builtin_firmware(ddr4_dmem_1d_bin, &dmem, &dsize);
+		} else {
+			get_builtin_firmware(ddr4_imem_2d_bin, &imem, &isize);
+			get_builtin_firmware(ddr4_dmem_2d_bin, &dmem, &dsize);
+		}
 	} else {
-		get_builtin_firmware(lpddr4_pmu_train_2d_imem_bin, &imem, &isize);
-		get_builtin_firmware(lpddr4_pmu_train_2d_dmem_bin, &dmem, &dsize);
+		panic("No matching DDR PHY firmware found");
 	}
 
 	ddrc_phy_load_firmware(IOMEM(MX8M_DDRC_PHY_BASE_ADDR),
@@ -58,7 +70,7 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing, enum ddrc_type type)
 
 		/* load the dram training firmware image */
 		dwc_ddrphy_apb_wr(0xd0000, 0x0);
-		ddr_load_train_code(fsp_msg->fw_type);
+		ddr_load_train_code(dram_timing->dram_type, fsp_msg->fw_type);
 
 		/* load the frequency set point message block parameter */
 		dram_cfg = fsp_msg->fsp_cfg;
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 16acab7c5f08..b44753892776 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -7,6 +7,9 @@ config EXTRA_FIRMWARE_DIR
 config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
        	bool
 
+config FIRMWARE_IMX_DDR4_PMU_TRAIN
+       	bool
+
 config FIRMWARE_IMX8MM_ATF
         bool
 
diff --git a/firmware/Makefile b/firmware/Makefile
index e3fe8d604f13..8873f5178d33 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -6,6 +6,12 @@ firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 	lpddr4_pmu_train_2d_dmem.bin \
 	lpddr4_pmu_train_2d_imem.bin
 
+firmware-$(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) += \
+	ddr4_dmem_1d.bin \
+	ddr4_dmem_2d.bin \
+	ddr4_imem_1d.bin \
+	ddr4_imem_2d.bin
+
 firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin
 firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin
 firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index a25274c57671..9ae7cb877686 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -329,6 +329,11 @@ enum fw_type {
 	FW_2D_IMAGE,
 };
 
+enum dram_type {
+	DRAM_TYPE_LPDDR4,
+	DRAM_TYPE_DDR4,
+};
+
 struct dram_cfg_param {
 	unsigned int reg;
 	unsigned int val;
@@ -342,6 +347,7 @@ struct dram_fsp_msg {
 };
 
 struct dram_timing_info {
+	enum dram_type dram_type;
 	/* umctl2 config */
 	struct dram_cfg_param *ddrc_cfg;
 	unsigned int ddrc_cfg_num;
@@ -409,12 +415,24 @@ enum ddrc_phy_firmware_offset {
 	DDRC_PHY_DMEM = 0x00054000U,
 };
 
-void ddr_load_train_code(enum fw_type type);
+void ddr_load_train_code(enum dram_type dram_type, enum fw_type type);
 
 void ddrc_phy_load_firmware(void __iomem *,
 			    enum ddrc_phy_firmware_offset,
 			    const u16 *, size_t);
 
+static inline bool dram_is_lpddr4(enum dram_type type)
+{
+	return IS_ENABLED(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) &&
+		type == DRAM_TYPE_LPDDR4;
+}
+
+static inline bool dram_is_ddr4(enum dram_type type)
+{
+	return IS_ENABLED(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) &&
+		type == DRAM_TYPE_DDR4;
+}
+
 #define DDRC_PHY_REG(x)	((x) * 4)
 
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

