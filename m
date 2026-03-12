Delivery-date: Thu, 12 Mar 2026 11:37:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0dPs-00An2q-0X
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 11:37:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0dPr-0003tQ-CE
	for lore@pengutronix.de; Thu, 12 Mar 2026 11:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e9UwkTdu7iOItWjXT3ABK4w955eFEIKnQ6GqJKrdyuk=; b=DacdZvYzkZDsSRDB24c6+stYSC
	qepaNNMjA0Pm6OVATzWKIfj4DdKz2Eqvfnla5A273i5mGo8a8+z4LcD/MqPGgD1AktKOyIbeqT3Xv
	H145O6/gSWmiW1ovBppX2R0sX0kePO1tJFntGTXsUrLfm3XmDOUuNlMLSeDpmtvOGFLspN87akuc9
	xI+leWaKgTZX0TtQL0M4EULW+XNH+2XDlIPUZy0jo8BmMQJGqEOLzAFUD+jcI1Cqe5WGCIanKz6KC
	hCq2Z6ellP2GE1ff7kDTilzyi5mQX+1y+COSb/bx4ZSC+25BYWL2ffLxsJoNhBGf0Yw6cLsV5GkQz
	k5m00WpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0dPJ-0000000DsVn-3dj9;
	Thu, 12 Mar 2026 10:36:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0dPD-0000000DsUV-12jl
	for barebox@bombadil.infradead.org;
	Thu, 12 Mar 2026 10:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=e9UwkTdu7iOItWjXT3ABK4w955eFEIKnQ6GqJKrdyuk=; b=mQCJd7hxp0VIa0qgBdXIHFUNgy
	eUt0DYeQ585ClRJddqS2ltbq8M5LURCGEWH0twGoq98bgDICjiFawaYjnf1SIOdAidMiShtptRA/o
	bZHOTNTUk4f/bgUz8o46mWu+uWzzu2cgGi4Tasa77l32Y2Fn//AY6lrLpvB19LlgLlXnXquPMHCco
	wo8gDusiVyVRpIHniIpq9UdO1yoccYOq/nf/eTJVLtwSh2sKmhUnIVLBAHcIZrntcsByl92vp0uzK
	QXirulvK8CsPdYJdSfBDCGM3oOcJxYXOWkAN6FpcQx010XbLGoWMc3PNJlheqLf0nkFd+XI6WBuB9
	CFHkWWlA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0dPA-00000000wUz-0Wz3
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 10:36:38 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w0dP8-0003fB-04; Thu, 12 Mar 2026 11:36:34 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 12 Mar 2026 11:36:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-v2026-01-0-topic-tqma8mpxs-v3-2-3a3fb245ce8d@pengutronix.de>
References: <20260312-v2026-01-0-topic-tqma8mpxs-v3-0-3a3fb245ce8d@pengutronix.de>
In-Reply-To: <20260312-v2026-01-0-topic-tqma8mpxs-v3-0-3a3fb245ce8d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_103636_446706_CACF9A79 
X-CRM114-Status: GOOD (  17.41  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] ARM: boards: tqma8mpxx: add no_ecc ram timings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Copied the RAM timings from [1] and [2] into a single file and removed
the duplicates to have a list of RAM-Timings for all known no-ecc
variants of the two boards tqma8mpxs and tqma8mpxl.

Print a warning if ECC is configured, since there seems to be only
inline ECC and no real ECC ram, it could possibly be used as non-ecc
memory, but the user should be warned about it.

Remove compile error for INLINE_ECC, as it it only present in tq-uboot
and not in barebox.

[1] https://github.com/tq-systems/u-boot-tqmaxx/tree/TQM-lf_v2024.04/board/tq/tqma8mpxl
[2] https://github.com/tq-systems/u-boot-tqmaxx/tree/TQM-lf_v2024.04/board/tq/tqma8mpxs

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/boards/tqma8mpxx/lowlevel.c      |  36 +-
 arch/arm/boards/tqma8mpxx/lpddr4-timing.c | 763 +++++++++++++++++++++++++++++-
 2 files changed, 780 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/tqma8mpxx/lowlevel.c b/arch/arm/boards/tqma8mpxx/lowlevel.c
index 7d8bae9c4d..aa0dec056f 100644
--- a/arch/arm/boards/tqma8mpxx/lowlevel.c
+++ b/arch/arm/boards/tqma8mpxx/lowlevel.c
@@ -31,6 +31,10 @@
 				     MX8MP_PAD_CTL_PUE | \
 				     MX8MP_PAD_CTL_PE)
 
+
+extern struct dram_timing_info *dram_timings_xs_no_ecc[];
+extern struct dram_timing_info *dram_timings_xl_no_ecc[];
+
 static void setup_uart(void *uart, iomux_v3_cfg_t tx_pad, iomux_v3_cfg_t rx_pad)
 {
 	imx8m_early_setup_uart_clock();
@@ -102,6 +106,7 @@ static noinline void tqma8mpxx_start(void)
 {
 	extern char __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start[];
 	extern char __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start[];
+	struct dram_timing_info **dram_timings;
 
 	struct tq_eeprom *eeprom;
 	struct pbl_i2c *i2c;
@@ -121,6 +126,7 @@ static noinline void tqma8mpxx_start(void)
 		/* found xS board */
 		i2c = tqma_i2c2_init();
 		boarddata = __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start;
+		dram_timings = dram_timings_xs_no_ecc;
 		setup_uart(IOMEM(MX8M_UART3_BASE_ADDR),
 			   MX8MP_PAD_SD1_DATA6__UART3_DCE_TX,
 			   MX8MP_PAD_SD1_DATA7__UART3_DCE_RX);
@@ -131,6 +137,7 @@ static noinline void tqma8mpxx_start(void)
 
 		/* found xL board */
 		boarddata = __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start;
+		dram_timings = dram_timings_xl_no_ecc;
 		setup_uart(IOMEM(MX8M_UART4_BASE_ADDR),
 			   MX8MP_PAD_UART4_TXD__UART4_DCE_TX,
 			   MX8MP_PAD_UART4_RXD__UART4_DCE_RX);
@@ -138,18 +145,32 @@ static noinline void tqma8mpxx_start(void)
 	}
 
 	if (current_el() == 3) {
-		extern struct dram_timing_info dram_timing_2gb_no_ecc;
-		int ramsize;
+		unsigned long ramsize;
+		int index = -1;
 
-		ramsize = tq_vard_ramsize(&eeprom->vard) / (SZ_1G);
-		if (ramsize != 2)
-			panic("RAMsize other then 2GB is not supported at the moment.\n");
+		ramsize = tq_vard_ramsize(&eeprom->vard);
+		switch (ramsize) {
+		case SZ_1G:
+			index = 0;
+			break;
+		case SZ_2G:
+			index = 1;
+			break;
+		case SZ_4G:
+			index = 2;
+			break;
+		case SZ_8G:
+			index = 3;
+			break;
+		default:
+			panic("RAMsize %lu is not supported.\n", ramsize);
+		}
 
 		imx8mp_early_clock_init();
 
 		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
 
-		imx8mp_ddr_init(&dram_timing_2gb_no_ecc, DRAM_TYPE_LPDDR4);
+		imx8mp_ddr_init(dram_timings[index], DRAM_TYPE_LPDDR4);
 
 		imx8mp_load_and_start_image_via_tfa();
 	}
@@ -158,6 +179,9 @@ static noinline void tqma8mpxx_start(void)
 	printf("Serial: %s\n", eeprom->id);
 	printf("ID:     %s\n", eeprom->serial);
 
+	if (tq_vard_has_ramecc(&eeprom->vard))
+		pr_err("ECC Configured, but treated as non ECC RAM\n");
+
 	imx8mp_barebox_entry(boarddata);
 }
 
diff --git a/arch/arm/boards/tqma8mpxx/lpddr4-timing.c b/arch/arm/boards/tqma8mpxx/lpddr4-timing.c
index 85e21bf69d..b97736fbe8 100644
--- a/arch/arm/boards/tqma8mpxx/lpddr4-timing.c
+++ b/arch/arm/boards/tqma8mpxx/lpddr4-timing.c
@@ -4,19 +4,127 @@
  *
  * Generated code from MX8M_DDR_tool
  *
- * Align with uboot version:
- * imx_v2019.04_5.4.x and above version
- * For imx_v2018.03_4.14.78_1.0.0_ga ~ imx_v2018.04_4.19.35_1.1.0_ga:
- * please replace #include <asm/arch/ddr.h> with #include <asm/arch/imx8m_ddr.h>
- *
- * TQMa8MPxL.2GByte.RAM-Timing.0004.xlsx / 2.0 GHz
  */
 
 #include <common.h>
 #include <soc/imx8m/ddr.h>
 #include <soc/imx8m/lpddr4_define.h>
 
-static struct dram_cfg_param ddr_ddrc_cfg[] = {
+static struct dram_cfg_param ddr_ddrc_cfg_xx_1gb[] = {
+	/** Initialize DDRC registers **/
+	{ 0x3d400304, 0x1 },
+	{ 0x3d400030, 0x1 },
+	{ 0x3d400000, 0xa1080020 },
+	{ 0x3d400020, 0x1303 },
+	{ 0x3d400024, 0x1e84800 },
+	{ 0x3d400064, 0x7a00b4 },
+	{ 0x3d400070, 0x7027f90 },
+	{ 0x3d400074, 0x790 },
+	{ 0x3d4000d0, 0xc00307a3 },
+	{ 0x3d4000d4, 0xc50000 },
+	{ 0x3d4000dc, 0xf4003f },
+	{ 0x3d4000e0, 0x2b0000 },
+	{ 0x3d4000e8, 0x550048 },
+	{ 0x3d4000ec, 0x150048 },
+	{ 0x3d400100, 0x201e222a },
+	{ 0x3d400104, 0x8083f },
+	{ 0x3d40010c, 0xe0e000 },
+	{ 0x3d400110, 0x12040a12 },
+	{ 0x3d400114, 0x2050f0f },
+	{ 0x3d400118, 0x1010009 },
+	{ 0x3d40011c, 0x502 },
+	{ 0x3d400130, 0x20800 },
+	{ 0x3d400134, 0xe100002 },
+	{ 0x3d400138, 0xbc },
+	{ 0x3d400144, 0xc80064 },
+	{ 0x3d400180, 0x3e8001e },
+	{ 0x3d400184, 0x3207a12 },
+	{ 0x3d400188, 0x0 },
+	{ 0x3d400190, 0x49f820e },
+	{ 0x3d400194, 0x80303 },
+	{ 0x3d4001b4, 0x1f0e },
+	{ 0x3d4001a0, 0xe0400018 },
+	{ 0x3d4001a4, 0xdf00e4 },
+	{ 0x3d4001a8, 0x80000000 },
+	{ 0x3d4001b0, 0x11 },
+	{ 0x3d4001c0, 0x1 },
+	{ 0x3d4001c4, 0x1 },
+	{ 0x3d4000f4, 0x799 },
+	{ 0x3d400108, 0x9121b1c },
+	{ 0x3d400200, 0x1f },
+	{ 0x3d400208, 0x0 },
+	{ 0x3d40020c, 0x0 },
+	{ 0x3d400210, 0x1f1f },
+	{ 0x3d400204, 0x80808 },
+	{ 0x3d400214, 0x7070707 },
+	{ 0x3d400218, 0xf070707 },
+	{ 0x3d40021c, 0xf0f },
+	{ 0x3d400250, 0x1705 },
+	{ 0x3d400254, 0x2c },
+	{ 0x3d40025c, 0x4000030 },
+	{ 0x3d400264, 0x900093e7 },
+	{ 0x3d40026c, 0x2005574 },
+	{ 0x3d400400, 0x111 },
+	{ 0x3d400404, 0x72ff },
+	{ 0x3d400408, 0x72ff },
+	{ 0x3d400494, 0x2100e07 },
+	{ 0x3d400498, 0x620096 },
+	{ 0x3d40049c, 0x1100e07 },
+	{ 0x3d4004a0, 0xc8012c },
+	{ 0x3d402020, 0x1001 },
+	{ 0x3d402024, 0x30d400 },
+	{ 0x3d402050, 0x20d000 },
+	{ 0x3d402064, 0xc0012 },
+	{ 0x3d4020dc, 0x840000 },
+	{ 0x3d4020e0, 0x2b0000 },
+	{ 0x3d4020e8, 0x550048 },
+	{ 0x3d4020ec, 0x150048 },
+	{ 0x3d402100, 0xa030305 },
+	{ 0x3d402104, 0x30407 },
+	{ 0x3d402108, 0x203060b },
+	{ 0x3d40210c, 0x505000 },
+	{ 0x3d402110, 0x2040202 },
+	{ 0x3d402114, 0x2030202 },
+	{ 0x3d402118, 0x1010004 },
+	{ 0x3d40211c, 0x302 },
+	{ 0x3d402130, 0x20300 },
+	{ 0x3d402134, 0xa100002 },
+	{ 0x3d402138, 0x13 },
+	{ 0x3d402144, 0x14000a },
+	{ 0x3d402180, 0x640004 },
+	{ 0x3d402190, 0x3818200 },
+	{ 0x3d402194, 0x80303 },
+	{ 0x3d4021b4, 0x100 },
+	{ 0x3d4020f4, 0x599 },
+	{ 0x3d403020, 0x1001 },
+	{ 0x3d403024, 0xc3500 },
+	{ 0x3d403050, 0x20d000 },
+	{ 0x3d403064, 0x30005 },
+	{ 0x3d4030dc, 0x840000 },
+	{ 0x3d4030e0, 0x2b0000 },
+	{ 0x3d4030e8, 0x550048 },
+	{ 0x3d4030ec, 0x150048 },
+	{ 0x3d403100, 0xa010102 },
+	{ 0x3d403104, 0x30404 },
+	{ 0x3d403108, 0x203060b },
+	{ 0x3d40310c, 0x505000 },
+	{ 0x3d403110, 0x2040202 },
+	{ 0x3d403114, 0x2030202 },
+	{ 0x3d403118, 0x1010004 },
+	{ 0x3d40311c, 0x302 },
+	{ 0x3d403130, 0x20300 },
+	{ 0x3d403134, 0xa100002 },
+	{ 0x3d403138, 0x5 },
+	{ 0x3d403144, 0x50003 },
+	{ 0x3d403180, 0x190004 },
+	{ 0x3d403190, 0x3818200 },
+	{ 0x3d403194, 0x80303 },
+	{ 0x3d4031b4, 0x100 },
+	{ 0x3d4030f4, 0x599 },
+	{ 0x3d400028, 0x0 },
+};
+
+static struct dram_cfg_param ddr_ddrc_cfg_xl_2gb[] = {
 	/** Initialize DDRC registers **/
 	{ 0x3d400304, 0x1 },
 	{ 0x3d400030, 0x1 },
@@ -129,6 +237,348 @@ static struct dram_cfg_param ddr_ddrc_cfg[] = {
 	{ 0x3d400028, 0x0 },
 };
 
+static struct dram_cfg_param ddr_ddrc_cfg_xs_2gb[] = {
+	/** Initialize DDRC registers **/
+	{ 0x3d400304, 0x1 },
+	{ 0x3d400030, 0x1 },
+	{ 0x3d400000, 0xa1080020 },
+	{ 0x3d400020, 0x1303 },
+	{ 0x3d400024, 0x1e84800 },
+	{ 0x3d400064, 0x7a0118 },
+	{ 0x3d400070, 0x7027f90 },
+	{ 0x3d400074, 0x790 },
+	{ 0x3d4000d0, 0xc00307a3 },
+	{ 0x3d4000d4, 0xc50000 },
+	{ 0x3d4000dc, 0xf4003f },
+	{ 0x3d4000e0, 0x2b0000 },
+	{ 0x3d4000e8, 0x550048 },
+	{ 0x3d4000ec, 0x150048 },
+	{ 0x3d400100, 0x201e222a },
+	{ 0x3d400104, 0x8083f },
+	{ 0x3d40010c, 0xe0e000 },
+	{ 0x3d400110, 0x12040a12 },
+	{ 0x3d400114, 0x2050f0f },
+	{ 0x3d400118, 0x1010009 },
+	{ 0x3d40011c, 0x502 },
+	{ 0x3d400130, 0x20800 },
+	{ 0x3d400134, 0xe100002 },
+	{ 0x3d400138, 0x120 },
+	{ 0x3d400144, 0xc80064 },
+	{ 0x3d400180, 0x3e8001e },
+	{ 0x3d400184, 0x3207a12 },
+	{ 0x3d400188, 0x0 },
+	{ 0x3d400190, 0x49f820e },
+	{ 0x3d400194, 0x80303 },
+	{ 0x3d4001b4, 0x1f0e },
+	{ 0x3d4001a0, 0xe0400018 },
+	{ 0x3d4001a4, 0xdf00e4 },
+	{ 0x3d4001a8, 0x80000000 },
+	{ 0x3d4001b0, 0x11 },
+	{ 0x3d4001c0, 0x1 },
+	{ 0x3d4001c4, 0x1 },
+	{ 0x3d4000f4, 0x799 },
+	{ 0x3d400108, 0x9121b1c },
+	{ 0x3d400200, 0x1f },
+	{ 0x3d400208, 0x0 },
+	{ 0x3d40020c, 0x0 },
+	{ 0x3d400210, 0x1f1f },
+	{ 0x3d400204, 0x80808 },
+	{ 0x3d400214, 0x7070707 },
+	{ 0x3d400218, 0x7070707 },
+	{ 0x3d40021c, 0xf0f },
+	{ 0x3d400250, 0x1705 },
+	{ 0x3d400254, 0x2c },
+	{ 0x3d40025c, 0x4000030 },
+	{ 0x3d400264, 0x900093e7 },
+	{ 0x3d40026c, 0x2005574 },
+	{ 0x3d400400, 0x111 },
+	{ 0x3d400404, 0x72ff },
+	{ 0x3d400408, 0x72ff },
+	{ 0x3d400494, 0x2100e07 },
+	{ 0x3d400498, 0x620096 },
+	{ 0x3d40049c, 0x1100e07 },
+	{ 0x3d4004a0, 0xc8012c },
+	{ 0x3d402020, 0x1001 },
+	{ 0x3d402024, 0x30d400 },
+	{ 0x3d402050, 0x20d000 },
+	{ 0x3d402064, 0xc001c },
+	{ 0x3d4020dc, 0x840000 },
+	{ 0x3d4020e0, 0x2b0000 },
+	{ 0x3d4020e8, 0x550048 },
+	{ 0x3d4020ec, 0x150048 },
+	{ 0x3d402100, 0xa030305 },
+	{ 0x3d402104, 0x30407 },
+	{ 0x3d402108, 0x203060b },
+	{ 0x3d40210c, 0x505000 },
+	{ 0x3d402110, 0x2040202 },
+	{ 0x3d402114, 0x2030202 },
+	{ 0x3d402118, 0x1010004 },
+	{ 0x3d40211c, 0x302 },
+	{ 0x3d402130, 0x20300 },
+	{ 0x3d402134, 0xa100002 },
+	{ 0x3d402138, 0x1d },
+	{ 0x3d402144, 0x14000a },
+	{ 0x3d402180, 0x640004 },
+	{ 0x3d402190, 0x3818200 },
+	{ 0x3d402194, 0x80303 },
+	{ 0x3d4021b4, 0x100 },
+	{ 0x3d4020f4, 0x599 },
+	{ 0x3d403020, 0x1001 },
+	{ 0x3d403024, 0xc3500 },
+	{ 0x3d403050, 0x20d000 },
+	{ 0x3d403064, 0x30007 },
+	{ 0x3d4030dc, 0x840000 },
+	{ 0x3d4030e0, 0x2b0000 },
+	{ 0x3d4030e8, 0x550048 },
+	{ 0x3d4030ec, 0x150048 },
+	{ 0x3d403100, 0xa010102 },
+	{ 0x3d403104, 0x30404 },
+	{ 0x3d403108, 0x203060b },
+	{ 0x3d40310c, 0x505000 },
+	{ 0x3d403110, 0x2040202 },
+	{ 0x3d403114, 0x2030202 },
+	{ 0x3d403118, 0x1010004 },
+	{ 0x3d40311c, 0x302 },
+	{ 0x3d403130, 0x20300 },
+	{ 0x3d403134, 0xa100002 },
+	{ 0x3d403138, 0x8 },
+	{ 0x3d403144, 0x50003 },
+	{ 0x3d403180, 0x190004 },
+	{ 0x3d403190, 0x3818200 },
+	{ 0x3d403194, 0x80303 },
+	{ 0x3d4031b4, 0x100 },
+	{ 0x3d4030f4, 0x599 },
+	{ 0x3d400028, 0x0 },
+};
+
+static struct dram_cfg_param ddr_ddrc_cfg_xx_4gb[] = {
+	/** Initialize DDRC registers **/
+	{ 0x3d400304, 0x1 },
+	{ 0x3d400030, 0x1 },
+	{ 0x3d400000, 0xa3080020 },
+	{ 0x3d400020, 0x1303 },
+	{ 0x3d400024, 0x1e84800 },
+	{ 0x3d400064, 0x7a0118 },
+	{ 0x3d400070, 0x7027f90 },
+	{ 0x3d400074, 0x790 },
+	{ 0x3d4000d0, 0xc00307a3 },
+	{ 0x3d4000d4, 0xc50000 },
+	{ 0x3d4000dc, 0xf4003f },
+	{ 0x3d4000e0, 0x2b0000 },
+	{ 0x3d4000e8, 0x550048 },
+	{ 0x3d4000ec, 0x150048 },
+	{ 0x3d400100, 0x201e222a },
+	{ 0x3d400104, 0x8083f },
+	{ 0x3d40010c, 0xe0e000 },
+	{ 0x3d400110, 0x12040a12 },
+	{ 0x3d400114, 0x2050f0f },
+	{ 0x3d400118, 0x1010009 },
+	{ 0x3d40011c, 0x502 },
+	{ 0x3d400130, 0x20800 },
+	{ 0x3d400134, 0xe100002 },
+	{ 0x3d400138, 0x120 },
+	{ 0x3d400144, 0xc80064 },
+	{ 0x3d400180, 0x3e8001e },
+	{ 0x3d400184, 0x3207a12 },
+	{ 0x3d400188, 0x0 },
+	{ 0x3d400190, 0x49f820e },
+	{ 0x3d400194, 0x80303 },
+	{ 0x3d4001b4, 0x1f0e },
+	{ 0x3d4001a0, 0xe0400018 },
+	{ 0x3d4001a4, 0xdf00e4 },
+	{ 0x3d4001a8, 0x80000000 },
+	{ 0x3d4001b0, 0x11 },
+	{ 0x3d4001c0, 0x1 },
+	{ 0x3d4001c4, 0x1 },
+	{ 0x3d4000f4, 0x799 },
+	{ 0x3d400108, 0x9121b1c },
+	{ 0x3d400200, 0x17 },
+	{ 0x3d400208, 0x0 },
+	{ 0x3d40020c, 0x0 },
+	{ 0x3d400210, 0x1f1f },
+	{ 0x3d400204, 0x80808 },
+	{ 0x3d400214, 0x7070707 },
+	{ 0x3d400218, 0x7070707 },
+	{ 0x3d40021c, 0xf0f },
+	{ 0x3d400250, 0x1705 },
+	{ 0x3d400254, 0x2c },
+	{ 0x3d40025c, 0x4000030 },
+	{ 0x3d400264, 0x900093e7 },
+	{ 0x3d40026c, 0x2005574 },
+	{ 0x3d400400, 0x111 },
+	{ 0x3d400404, 0x72ff },
+	{ 0x3d400408, 0x72ff },
+	{ 0x3d400494, 0x2100e07 },
+	{ 0x3d400498, 0x620096 },
+	{ 0x3d40049c, 0x1100e07 },
+	{ 0x3d4004a0, 0xc8012c },
+	{ 0x3d402020, 0x1001 },
+	{ 0x3d402024, 0x30d400 },
+	{ 0x3d402050, 0x20d000 },
+	{ 0x3d402064, 0xc001c },
+	{ 0x3d4020dc, 0x840000 },
+	{ 0x3d4020e0, 0x2b0000 },
+	{ 0x3d4020e8, 0x550048 },
+	{ 0x3d4020ec, 0x150048 },
+	{ 0x3d402100, 0xa030305 },
+	{ 0x3d402104, 0x30407 },
+	{ 0x3d402108, 0x203060b },
+	{ 0x3d40210c, 0x505000 },
+	{ 0x3d402110, 0x2040202 },
+	{ 0x3d402114, 0x2030202 },
+	{ 0x3d402118, 0x1010004 },
+	{ 0x3d40211c, 0x302 },
+	{ 0x3d402130, 0x20300 },
+	{ 0x3d402134, 0xa100002 },
+	{ 0x3d402138, 0x1d },
+	{ 0x3d402144, 0x14000a },
+	{ 0x3d402180, 0x640004 },
+	{ 0x3d402190, 0x3818200 },
+	{ 0x3d402194, 0x80303 },
+	{ 0x3d4021b4, 0x100 },
+	{ 0x3d4020f4, 0x599 },
+	{ 0x3d403020, 0x1001 },
+	{ 0x3d403024, 0xc3500 },
+	{ 0x3d403050, 0x20d000 },
+	{ 0x3d403064, 0x30007 },
+	{ 0x3d4030dc, 0x840000 },
+	{ 0x3d4030e0, 0x2b0000 },
+	{ 0x3d4030e8, 0x550048 },
+	{ 0x3d4030ec, 0x150048 },
+	{ 0x3d403100, 0xa010102 },
+	{ 0x3d403104, 0x30404 },
+	{ 0x3d403108, 0x203060b },
+	{ 0x3d40310c, 0x505000 },
+	{ 0x3d403110, 0x2040202 },
+	{ 0x3d403114, 0x2030202 },
+	{ 0x3d403118, 0x1010004 },
+	{ 0x3d40311c, 0x302 },
+	{ 0x3d403130, 0x20300 },
+	{ 0x3d403134, 0xa100002 },
+	{ 0x3d403138, 0x8 },
+	{ 0x3d403144, 0x50003 },
+	{ 0x3d403180, 0x190004 },
+	{ 0x3d403190, 0x3818200 },
+	{ 0x3d403194, 0x80303 },
+	{ 0x3d4031b4, 0x100 },
+	{ 0x3d4030f4, 0x599 },
+	{ 0x3d400028, 0x0 },
+};
+
+static struct dram_cfg_param ddr_ddrc_cfg_xx_8gb[] = {
+	/** Initialize DDRC registers **/
+	{ 0x3d400304, 0x1 },
+	{ 0x3d400030, 0x1 },
+	{ 0x3d400000, 0xa3080020 },
+	{ 0x3d400020, 0x1303 },
+	{ 0x3d400024, 0x1e84800 },
+	{ 0x3d400064, 0x7a017c },
+	{ 0x3d400070, 0x7027f90 },
+	{ 0x3d400074, 0x790 },
+	{ 0x3d4000d0, 0xc00307a3 },
+	{ 0x3d4000d4, 0xc50000 },
+	{ 0x3d4000dc, 0xf4003f },
+	{ 0x3d4000e0, 0x2b0000 },
+	{ 0x3d4000e8, 0x550048 },
+	{ 0x3d4000ec, 0x150048 },
+	{ 0x3d400100, 0x201e222a },
+	{ 0x3d400104, 0x8083f },
+	{ 0x3d40010c, 0xe0e000 },
+	{ 0x3d400110, 0x12040a12 },
+	{ 0x3d400114, 0x2050f0f },
+	{ 0x3d400118, 0x1010009 },
+	{ 0x3d40011c, 0x502 },
+	{ 0x3d400130, 0x20800 },
+	{ 0x3d400134, 0xe100002 },
+	{ 0x3d400138, 0x184 },
+	{ 0x3d400144, 0xc80064 },
+	{ 0x3d400180, 0x3e8001e },
+	{ 0x3d400184, 0x3207a12 },
+	{ 0x3d400188, 0x0 },
+	{ 0x3d400190, 0x49f820e },
+	{ 0x3d400194, 0x80303 },
+	{ 0x3d4001b4, 0x1f0e },
+	{ 0x3d4001a0, 0xe0400018 },
+	{ 0x3d4001a4, 0xdf00e4 },
+	{ 0x3d4001a8, 0x80000000 },
+	{ 0x3d4001b0, 0x11 },
+	{ 0x3d4001c0, 0x1 },
+	{ 0x3d4001c4, 0x1 },
+	{ 0x3d4000f4, 0x799 },
+	{ 0x3d400108, 0x9121b1c },
+	{ 0x3d400200, 0x18 },
+	{ 0x3d400208, 0x0 },
+	{ 0x3d40020c, 0x0 },
+	{ 0x3d400210, 0x1f1f },
+	{ 0x3d400204, 0x80808 },
+	{ 0x3d400214, 0x7070707 },
+	{ 0x3d400218, 0x7070707 },
+	{ 0x3d40021c, 0xf07 },
+	{ 0x3d400250, 0x1705 },
+	{ 0x3d400254, 0x2c },
+	{ 0x3d40025c, 0x4000030 },
+	{ 0x3d400264, 0x900093e7 },
+	{ 0x3d40026c, 0x2005574 },
+	{ 0x3d400400, 0x111 },
+	{ 0x3d400404, 0x72ff },
+	{ 0x3d400408, 0x72ff },
+	{ 0x3d400494, 0x2100e07 },
+	{ 0x3d400498, 0x620096 },
+	{ 0x3d40049c, 0x1100e07 },
+	{ 0x3d4004a0, 0xc8012c },
+	{ 0x3d402020, 0x1001 },
+	{ 0x3d402024, 0x30d400 },
+	{ 0x3d402050, 0x20d000 },
+	{ 0x3d402064, 0xc0026 },
+	{ 0x3d4020dc, 0x840000 },
+	{ 0x3d4020e0, 0x2b0000 },
+	{ 0x3d4020e8, 0x550048 },
+	{ 0x3d4020ec, 0x150048 },
+	{ 0x3d402100, 0xa030305 },
+	{ 0x3d402104, 0x30407 },
+	{ 0x3d402108, 0x203060b },
+	{ 0x3d40210c, 0x505000 },
+	{ 0x3d402110, 0x2040202 },
+	{ 0x3d402114, 0x2030202 },
+	{ 0x3d402118, 0x1010004 },
+	{ 0x3d40211c, 0x302 },
+	{ 0x3d402130, 0x20300 },
+	{ 0x3d402134, 0xa100002 },
+	{ 0x3d402138, 0x27 },
+	{ 0x3d402144, 0x14000a },
+	{ 0x3d402180, 0x640004 },
+	{ 0x3d402190, 0x3818200 },
+	{ 0x3d402194, 0x80303 },
+	{ 0x3d4021b4, 0x100 },
+	{ 0x3d4020f4, 0x599 },
+	{ 0x3d403020, 0x1001 },
+	{ 0x3d403024, 0xc3500 },
+	{ 0x3d403050, 0x20d000 },
+	{ 0x3d403064, 0x3000a },
+	{ 0x3d4030dc, 0x840000 },
+	{ 0x3d4030e0, 0x2b0000 },
+	{ 0x3d4030e8, 0x550048 },
+	{ 0x3d4030ec, 0x150048 },
+	{ 0x3d403100, 0xa010102 },
+	{ 0x3d403104, 0x30404 },
+	{ 0x3d403108, 0x203060b },
+	{ 0x3d40310c, 0x505000 },
+	{ 0x3d403110, 0x2040202 },
+	{ 0x3d403114, 0x2030202 },
+	{ 0x3d403118, 0x1010004 },
+	{ 0x3d40311c, 0x302 },
+	{ 0x3d403130, 0x20300 },
+	{ 0x3d403134, 0xa100002 },
+	{ 0x3d403138, 0xa },
+	{ 0x3d403144, 0x50003 },
+	{ 0x3d403180, 0x190004 },
+	{ 0x3d403190, 0x3818200 },
+	{ 0x3d403194, 0x80303 },
+	{ 0x3d4031b4, 0x100 },
+	{ 0x3d4030f4, 0x599 },
+	{ 0x3d400028, 0x0 },
+};
+
 /* PHY Initialize Configuration */
 static struct dram_cfg_param ddr_ddrphy_cfg[] = {
 	{ 0x100a0, 0x0 },
@@ -377,6 +827,44 @@ static struct dram_cfg_param ddr_fsp0_cfg[] = {
 	{ 0xd0000, 0x1 },
 };
 
+static struct dram_cfg_param ddr_fsp0_4gb_8gb_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54003, 0xfa0 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x303c },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x131f },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54012, 0x310 },
+	{ 0x54019, 0x3ff4 },
+	{ 0x5401a, 0x2b },
+	{ 0x5401b, 0x4855 },
+	{ 0x5401c, 0x4800 },
+	{ 0x5401e, 0x15 },
+	{ 0x5401f, 0x3ff4 },
+	{ 0x54020, 0x2b },
+	{ 0x54021, 0x4855 },
+	{ 0x54022, 0x4800 },
+	{ 0x54024, 0x15 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x3 },
+	{ 0x54032, 0xf400 },
+	{ 0x54033, 0x2b3f },
+	{ 0x54034, 0x5500 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x48 },
+	{ 0x54037, 0x1500 },
+	{ 0x54038, 0xf400 },
+	{ 0x54039, 0x2b3f },
+	{ 0x5403a, 0x5500 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x48 },
+	{ 0x5403d, 0x1500 },
+	{ 0xd0000, 0x1 },
+};
+
 /* P1 message block paremeter for training firmware */
 static struct dram_cfg_param ddr_fsp1_cfg[] = {
 	{ 0xd0000, 0x0 },
@@ -417,6 +905,45 @@ static struct dram_cfg_param ddr_fsp1_cfg[] = {
 	{ 0xd0000, 0x1 },
 };
 
+static struct dram_cfg_param ddr_fsp1_4gb_8gb_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54002, 0x101 },
+	{ 0x54003, 0x190 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x303c },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x121f },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54012, 0x310 },
+	{ 0x54019, 0x84 },
+	{ 0x5401a, 0x2b },
+	{ 0x5401b, 0x4855 },
+	{ 0x5401c, 0x4800 },
+	{ 0x5401e, 0x15 },
+	{ 0x5401f, 0x84 },
+	{ 0x54020, 0x2b },
+	{ 0x54021, 0x4855 },
+	{ 0x54022, 0x4800 },
+	{ 0x54024, 0x15 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x3 },
+	{ 0x54032, 0x8400 },
+	{ 0x54033, 0x2b00 },
+	{ 0x54034, 0x5500 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x48 },
+	{ 0x54037, 0x1500 },
+	{ 0x54038, 0x8400 },
+	{ 0x54039, 0x2b00 },
+	{ 0x5403a, 0x5500 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x48 },
+	{ 0x5403d, 0x1500 },
+	{ 0xd0000, 0x1 },
+};
+
 /* P2 message block paremeter for training firmware */
 static struct dram_cfg_param ddr_fsp2_cfg[] = {
 	{ 0xd0000, 0x0 },
@@ -457,6 +984,45 @@ static struct dram_cfg_param ddr_fsp2_cfg[] = {
 	{ 0xd0000, 0x1 },
 };
 
+static struct dram_cfg_param ddr_fsp2_4gb_8gb_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54002, 0x102 },
+	{ 0x54003, 0x64 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x303c },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x121f },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54012, 0x310 },
+	{ 0x54019, 0x84 },
+	{ 0x5401a, 0x2b },
+	{ 0x5401b, 0x4855 },
+	{ 0x5401c, 0x4800 },
+	{ 0x5401e, 0x15 },
+	{ 0x5401f, 0x84 },
+	{ 0x54020, 0x2b },
+	{ 0x54021, 0x4855 },
+	{ 0x54022, 0x4800 },
+	{ 0x54024, 0x15 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x3 },
+	{ 0x54032, 0x8400 },
+	{ 0x54033, 0x2b00 },
+	{ 0x54034, 0x5500 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x48 },
+	{ 0x54037, 0x1500 },
+	{ 0x54038, 0x8400 },
+	{ 0x54039, 0x2b00 },
+	{ 0x5403a, 0x5500 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x48 },
+	{ 0x5403d, 0x1500 },
+	{ 0xd0000, 0x1 },
+};
+
 /* P0 2D message block paremeter for training firmware */
 static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
 	{ 0xd0000, 0x0 },
@@ -497,6 +1063,45 @@ static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
 	{ 0xd0000, 0x1 },
 };
 
+static struct dram_cfg_param ddr_fsp0_2d_4gb_8gb_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54003, 0xfa0 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x303c },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x61 },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54010, 0x1f7f },
+	{ 0x54012, 0x310 },
+	{ 0x54019, 0x3ff4 },
+	{ 0x5401a, 0x2b },
+	{ 0x5401b, 0x4855 },
+	{ 0x5401c, 0x4800 },
+	{ 0x5401e, 0x15 },
+	{ 0x5401f, 0x3ff4 },
+	{ 0x54020, 0x2b },
+	{ 0x54021, 0x4855 },
+	{ 0x54022, 0x4800 },
+	{ 0x54024, 0x15 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x3 },
+	{ 0x54032, 0xf400 },
+	{ 0x54033, 0x2b3f },
+	{ 0x54034, 0x5500 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x48 },
+	{ 0x54037, 0x1500 },
+	{ 0x54038, 0xf400 },
+	{ 0x54039, 0x2b3f },
+	{ 0x5403a, 0x5500 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x48 },
+	{ 0x5403d, 0x1500 },
+	{ 0xd0000, 0x1 },
+};
+
 /* DRAM PHY init engine image */
 static struct dram_cfg_param ddr_phy_pie[] = {
 	{ 0xd0000, 0x0 },
@@ -1113,10 +1718,72 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 	},
 };
 
+static struct dram_fsp_msg ddr_dram_fsp_xs_4gb_msg[] = {
+	{
+		/* P0 4000mts 1D */
+		.drate = 4000,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp0_4gb_8gb_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_4gb_8gb_cfg),
+	},
+	{
+		/* P1 400mts 1D */
+		.drate = 400,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp1_4gb_8gb_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp1_4gb_8gb_cfg),
+	},
+	{
+		/* P2 100mts 1D */
+		.drate = 100,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp2_4gb_8gb_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp2_4gb_8gb_cfg),
+	},
+	{
+		/* P0 4000mts 2D */
+		.drate = 4000,
+		.fw_type = FW_2D_IMAGE,
+		.fsp_cfg = ddr_fsp0_2d_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg),
+	},
+};
+
+static struct dram_fsp_msg ddr_dram_fsp_4gb_8gb_msg[] = {
+	{
+		/* P0 4000mts 1D */
+		.drate = 4000,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp0_4gb_8gb_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_4gb_8gb_cfg),
+	},
+	{
+		/* P1 400mts 1D */
+		.drate = 400,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp1_4gb_8gb_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp1_4gb_8gb_cfg),
+	},
+	{
+		/* P2 100mts 1D */
+		.drate = 100,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp2_4gb_8gb_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp2_4gb_8gb_cfg),
+	},
+	{
+		/* P0 4000mts 2D */
+		.drate = 4000,
+		.fw_type = FW_2D_IMAGE,
+		.fsp_cfg = ddr_fsp0_2d_4gb_8gb_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_4gb_8gb_cfg),
+	},
+};
+
 /* ddr timing config params */
-struct dram_timing_info dram_timing_2gb_no_ecc = {
-	.ddrc_cfg = ddr_ddrc_cfg,
-	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
+struct dram_timing_info dram_timing_xx_1gb_no_ecc = {
+	.ddrc_cfg = ddr_ddrc_cfg_xx_1gb,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg_xx_1gb),
 	.ddrphy_cfg = ddr_ddrphy_cfg,
 	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
 	.fsp_msg = ddr_dram_fsp_msg,
@@ -1126,6 +1793,76 @@ struct dram_timing_info dram_timing_2gb_no_ecc = {
 	.fsp_table = { 4000, 400, 100, },
 };
 
-#ifdef CONFIG_IMX8M_DRAM_INLINE_ECC
-#error
-#endif
+struct dram_timing_info dram_timing_xl_2gb_no_ecc = {
+	.ddrc_cfg = ddr_ddrc_cfg_xl_2gb,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg_xl_2gb),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 4000, 400, 100, },
+};
+
+struct dram_timing_info dram_timing_xs_2gb_no_ecc = {
+	.ddrc_cfg = ddr_ddrc_cfg_xs_2gb,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg_xs_2gb),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 4000, 400, 100, },
+};
+
+struct dram_timing_info dram_timing_xl_4gb_no_ecc = {
+	.ddrc_cfg = ddr_ddrc_cfg_xx_4gb,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg_xx_4gb),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_4gb_8gb_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_4gb_8gb_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 4000, 400, 100, },
+};
+
+struct dram_timing_info dram_timing_xs_4gb_no_ecc = {
+	.ddrc_cfg = ddr_ddrc_cfg_xx_4gb,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg_xx_4gb),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_xs_4gb_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_xs_4gb_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 4000, 400, 100, },
+};
+
+struct dram_timing_info dram_timing_xx_8gb_no_ecc = {
+	.ddrc_cfg = ddr_ddrc_cfg_xx_8gb,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg_xx_8gb),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_4gb_8gb_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_4gb_8gb_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 4000, 400, 100, },
+};
+
+struct dram_timing_info *dram_timings_xl_no_ecc[] = {
+	&dram_timing_xx_1gb_no_ecc,
+	&dram_timing_xl_2gb_no_ecc,
+	&dram_timing_xl_4gb_no_ecc,
+	&dram_timing_xx_8gb_no_ecc,
+};
+
+struct dram_timing_info *dram_timings_xs_no_ecc[] = {
+	&dram_timing_xx_1gb_no_ecc,
+	&dram_timing_xs_2gb_no_ecc,
+	&dram_timing_xs_4gb_no_ecc,
+	&dram_timing_xx_8gb_no_ecc,
+};

-- 
2.47.3



