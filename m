Delivery-date: Thu, 12 Feb 2026 23:03:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqemO-0012Em-2s
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 23:03:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqemK-0008WF-IY
	for lore@pengutronix.de; Thu, 12 Feb 2026 23:03:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k6Li7nHxFk0TXZLk9kkZzhvaCyN4JffmtP3t9xp2fk8=; b=ELV3D9v4W1ybqb9rNwJyc3GaE+
	/Fjg4sedd4M7zqMS4Rrs41o4ijzKIiIqGXoK491b5oC0/SCpzihVsIoRKDofq7+9qt+D+LC51toOz
	6A9rqxk7cz7Sc1VWpd+VGOq8cyICdQbxESyAdzY+k3i4abE+FxLkQK+2IUQw4eLfQFZJojgfU8yZl
	kSg973PBejq8It5YbJqttTV4rJQMgLb8SMG2s8FkcLjFSoQntsYrLRyTO8dnH3Iu5Jp/SIRTQVx+B
	RW4sRyly7OiLR+lItQAgsVBhNgMzuJKT98/uqOMv6buFm0+ymcPVl5Ctxy0pk+lmN4LRtqxS+ZtqD
	vdu3OXJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelQ-00000002fyI-2eeK;
	Thu, 12 Feb 2026 22:02:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelJ-00000002ftv-19KP
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 22:02:17 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqelH-000855-5j; Thu, 12 Feb 2026 23:02:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Feb 2026 23:02:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260212-vmaster-customers-leicageo-system1600-v2-7-f590b7d5b0e9@pengutronix.de>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
In-Reply-To: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140213_797478_515E07D9 
X-CRM114-Status: GOOD (  28.63  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/7] ARM: i.MX8MM: add Hexagon Geosystems GS05
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the Hexagon Geosystems GS05 which is part of the
System1600 platform.

Co-developed-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/Makefile                          |    1 +
 arch/arm/boards/hgs-gs05/Makefile                 |    6 +
 arch/arm/boards/hgs-gs05/board.c                  |  240 +++++
 arch/arm/boards/hgs-gs05/flash-header-gs05.imxcfg |   12 +
 arch/arm/boards/hgs-gs05/lowlevel.c               |  128 +++
 arch/arm/boards/hgs-gs05/lpddr4-timing.c          | 1118 +++++++++++++++++++++
 arch/arm/dts/Makefile                             |    1 +
 arch/arm/dts/imx8m-hgs-common.dtsi                |   80 ++
 arch/arm/dts/imx8mm-hgs-gs05.dts                  |  320 ++++++
 arch/arm/mach-imx/Kconfig                         |    8 +
 common/boards/Kconfig                             |   10 +
 common/boards/Makefile                            |    1 +
 common/boards/hgs/Makefile                        |    7 +
 common/boards/hgs/common.c                        |  654 ++++++++++++
 common/boards/hgs/lib.c                           |   61 ++
 common/boards/hgs/pbl.c                           |  100 ++
 images/Makefile.imx                               |    2 +
 include/boards/hgs/common.h                       |   82 ++
 18 files changed, 2831 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index dd2f2c324e25d35978c14acf157a986f507c6548..e3fbf5262f0c08a7623930b9d51b5d2340cdf0a6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -53,6 +53,7 @@ obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
 obj-$(CONFIG_MACH_GW_VENTANA)			+= gateworks-ventana/
 obj-$(CONFIG_MACH_HABA_KNX_LITE)		+= haba-knx/
+obj-$(CONFIG_MACH_HGS_GS05)			+= hgs-gs05/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_INNOCOMM_WB15)			+= innocomm-imx8mm-wb15/
 obj-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR)	+= kamstrup-mx7-concentrator/
diff --git a/arch/arm/boards/hgs-gs05/Makefile b/arch/arm/boards/hgs-gs05/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..494a9a87f78ba31147205ca72fe0db3cf04f7cb6
--- /dev/null
+++ b/arch/arm/boards/hgs-gs05/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-FileCopyrightText: 2025 Pengutronix
+# SPDX-FileCopyrightText: Leica Geosystems AG
+
+obj-y += board.o
+lwl-y += lowlevel.o lpddr4-timing.o
diff --git a/arch/arm/boards/hgs-gs05/board.c b/arch/arm/boards/hgs-gs05/board.c
new file mode 100644
index 0000000000000000000000000000000000000000..40dbecae085e9c43525d662ed6b5ffc9c6439d7d
--- /dev/null
+++ b/arch/arm/boards/hgs-gs05/board.c
@@ -0,0 +1,240 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Pengutronix
+// SPDX-FileCopyrightText: Leica Geosystems AG
+
+#include <boards/hgs/common.h>
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <envfs.h>
+#include <environment.h>
+#include <init.h>
+#include <i2c/i2c.h>
+#include <linux/phy.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/generic.h>
+#include <mfd/hgs-efi.h>
+#include <of.h>
+#include <state.h>
+
+#define PHY_ID_AR8031	0x004dd074
+#define AR_PHY_ID_MASK	0xffffffff
+
+#define HGS_GS05_BASE_NAME	"Hexagon Geosystems GS05"
+
+#define HGS_GS05_MACHINE(_revid, _compatible, _model_suffix) \
+	HGS_MACHINE(_revid, _compatible, HGS_GS05_BASE_NAME " " _model_suffix)
+
+static struct hgs_machine hgs_gs05_variants[] = {
+	HGS_GS05_MACHINE(HGS_BOARD_REV_C, "hgs,gs05-rev-c", "Rev-C"),
+	HGS_GS05_MACHINE(HGS_BOARD_REV_D, "hgs,gs05-rev-d", "Rev-D"),
+};
+
+#define HGS_GS05_LEGACY_MACHINE(_revchar, _revid, _compatible, _model_suffix) \
+{									\
+	.revision = _revchar,						\
+	.machine = HGS_GS05_MACHINE(_revid, _compatible, _model_suffix) \
+}
+
+static struct hgs_gs05_legacy_machine {
+	u8 revision;
+	struct hgs_machine machine;
+} hgs_gs05_legacy_variants[] = {
+	HGS_GS05_LEGACY_MACHINE('C', HGS_BOARD_REV_C, "hgs,gs05-rev-c", "Rev-C"),
+	HGS_GS05_LEGACY_MACHINE('D', HGS_BOARD_REV_D, "hgs,gs05-rev-d", "Rev-D"),
+};
+
+static int ar8031_phy_fixup(struct phy_device *phydev)
+{
+	/* enable rgmii rxc skew and phy mode select to RGMII copper */
+	phy_write(phydev, 0x1d, 0x1f);
+	phy_write(phydev, 0x1e, 0x8);
+	phy_write(phydev, 0x1d, 0x00);
+	phy_write(phydev, 0x1e, 0x82ee);
+	phy_write(phydev, 0x1d, 0x05);
+	phy_write(phydev, 0x1e, 0x100);
+
+	return 0;
+}
+
+static struct hgs_machine *
+hgs_gs05_get_board_from_legacy(const unsigned char *serial)
+{
+	struct hgs_gs05_legacy_machine *machine;
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(hgs_gs05_legacy_variants); i++) {
+		machine = &hgs_gs05_legacy_variants[i];
+		if (serial[6] == machine->revision)
+			return &machine->machine;
+	}
+
+	return ERR_PTR(-EINVAL);
+}
+
+static struct hgs_machine *
+hgs_gs05_select_board(const unsigned char *serial, bool legacy_format)
+{
+	const struct hgs_board_revision *rev;
+	struct hgs_machine *machine;
+	unsigned int i;
+
+	/* TODO: Remove legacy handling if no longer required */
+	if (legacy_format)
+		return hgs_gs05_get_board_from_legacy(serial);
+
+	rev = hgs_get_rev_from_part_trace((struct hgs_part_trace_code *)serial);
+	if (!rev)
+		return ERR_PTR(-EINVAL);
+
+	for (i = 0; i < ARRAY_SIZE(hgs_gs05_variants); i++) {
+		machine = &hgs_gs05_variants[i];
+		if (rev->id == machine->revision)
+			return machine;
+	}
+
+	return ERR_PTR(-EINVAL);
+}
+
+static u64
+hgs_gs05_set_efi_poll_intervall(struct device *efid, u64 new_polling_interval)
+{
+	const char *old_interval_str;
+	char *new_interval;
+	u64 old_interval;
+
+	old_interval_str = dev_get_param(efid->parent, "polling_interval");
+	kstrtoull(old_interval_str, 10, &old_interval);
+
+	pr_debug("Update EFI UART-Rx poll interval: %llu ns -> %llu ns\n",
+		 old_interval, new_polling_interval);
+
+	new_interval = basprintf("%llu", new_polling_interval);
+	dev_set_param(efid->parent, "polling_interval", new_interval);
+	free(new_interval);
+
+	return old_interval;
+}
+
+/* '"' + sizeof(struct hgs_part_trace_code) + '"' + string delim '\0' */
+#define HGS_GS05_SERIAL_NUMBER_CHARS	\
+	(1 + sizeof(struct hgs_part_trace_code) + 1 + 1)
+
+static struct hgs_machine *hgs_gs05_get_board(struct device *dev)
+{
+	u8 buf[HGS_GS05_SERIAL_NUMBER_CHARS] = { };
+	struct device *efi_dev = get_device_by_name("efi");
+	struct hgs_efi *efi = dev_get_priv(efi_dev->parent);
+	struct hgs_sep_cmd cmd = {
+		.type = HGS_SEP_MSG_TYPE_COMMAND,
+		.msg_id = 11,
+		.reply_data = buf,
+		.reply_data_size = sizeof(buf),
+	};
+	u64 orig_poll_interval;
+	unsigned char *resp;
+	bool legacy = false;
+	unsigned int len;
+	int ret;
+
+	/*
+	 * The GS05 has a very slow EFI UART baudrate of 19200 bps. So the
+	 * serial-number query takes ~18ms just for the transfer, not taking
+	 * the EFI MCU command processing into account.
+	 *
+	 * This causes an UART Rx FIFO overflow with the standard EFI MCU
+	 * driver settings for polling_window and polling_intervall because the
+	 * EFI response is too long for the 32-Rx byte FIFO and the poll
+	 * reschedule is too late.
+	 *
+	 * Set the polling_interval to 1ms to workaround the slow UART baudrate,
+	 * so the complete poll intervall takes ~11ms. This shall ensure that
+	 * the reschdule happens at least once while retrieving the EFI
+	 * response.
+	 *
+	 * Adapt the polling_interval and not the polling_window to be more
+	 * responsive and avoid unnecessary wait times.
+	 *
+	 * The polling_interval unit is ns.
+	 */
+	orig_poll_interval = hgs_gs05_set_efi_poll_intervall(efi_dev, 1 * MSECOND);
+	ret = hgs_efi_exec(efi, &cmd);
+	hgs_gs05_set_efi_poll_intervall(efi_dev, orig_poll_interval);
+	if (ret) {
+		dev_warn(dev, "Failed to query serial number\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	resp = hgs_efi_extract_str_response(buf);
+	if (IS_ERR(resp)) {
+		dev_warn(dev, "Failed to query EFI response");
+		return ERR_CAST(resp);
+	}
+	len = strlen(resp);
+
+	switch (len) {
+	case 0:
+		dev_warn(dev, "Empty EFI serial number detected\n");
+		return ERR_PTR(-EINVAL);
+	case 17:
+		dev_warn(dev, "Legacy Revision format detected: please update PP4 and re-program board-id in the new format.\n");
+		legacy = true;
+		fallthrough;
+	case 29:
+		barebox_set_serial_number(resp);
+		return hgs_gs05_select_board(resp, legacy);
+	default:
+		dev_warn(dev, "Invalid serial number EFI response length\n");
+		return ERR_PTR(-EINVAL);
+	}
+}
+
+static struct hgs_machine *hgs_gs05_fallback_board(struct device *dev)
+{
+	struct hgs_machine *fallback;
+
+	fallback = &hgs_gs05_variants[ARRAY_SIZE(hgs_gs05_variants) - 1];
+	dev_warn(dev, "Board detection failed, fallback to: %s\n",
+		 fallback->model);
+
+	return fallback;
+}
+
+static int hgs_gs05_probe(struct device *dev)
+{
+	struct hgs_machine *board;
+
+	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
+				   ar8031_phy_fixup);
+	/*
+	 * Ensure that the MCU driver was already probed before try to access
+	 * the MCU to query the revision.
+	 */
+	of_devices_ensure_probed_by_compatible("hgs,efi-gs05");
+
+	/* Ensure state is probed to be able to query the hostname */
+	state_by_alias("state");
+
+	board = hgs_gs05_get_board(dev);
+	if (IS_ERR(board))
+		board = hgs_gs05_fallback_board(dev);
+	board->dev = dev;
+	board->type = HGS_HW_GS05;
+	board->console_alias = "serial2";
+	board->hostname = xstrdup(getenv("state.product.hostname"));
+
+	return hgs_common_boot(board);
+}
+
+static const struct of_device_id hgs_gs05_of_match[] = {
+	{ .compatible = "hgs,gs05" },
+	{ /* Sentinel */ }
+};
+BAREBOX_DEEP_PROBE_ENABLE(hgs_gs05_of_match);
+
+static struct driver hgs_gs05_board_driver = {
+	.name = "board-hgs-gs05",
+	.probe = hgs_gs05_probe,
+	.of_compatible = hgs_gs05_of_match,
+};
+coredevice_platform_driver(hgs_gs05_board_driver);
diff --git a/arch/arm/boards/hgs-gs05/flash-header-gs05.imxcfg b/arch/arm/boards/hgs-gs05/flash-header-gs05.imxcfg
new file mode 100644
index 0000000000000000000000000000000000000000..008d4171a919381f78d4bb708ea6363e85cdd8d5
--- /dev/null
+++ b/arch/arm/boards/hgs-gs05/flash-header-gs05.imxcfg
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-FileCopyrightText: 2025 Pengutronix
+# SPDX-FileCopyrightText: Leica Geosystems AG
+
+soc imx8mm
+
+loadaddr 0x007e1000
+max_load_size 0x3f000
+ivtofs 0x400
+
+#include <mach/imx/flexspi-imx8mm-cfg.h>
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/hgs-gs05/lowlevel.c b/arch/arm/boards/hgs-gs05/lowlevel.c
new file mode 100644
index 0000000000000000000000000000000000000000..fcd7cc77ba187965905fabd987aa88c447650366
--- /dev/null
+++ b/arch/arm/boards/hgs-gs05/lowlevel.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Pengutronix
+// SPDX-FileCopyrightText: Leica Geosystems AG
+
+#include <debug_ll.h>
+
+#include <asm/cache.h>
+#include <asm/barebox-arm.h>
+#include <asm/mmu.h>
+#include <asm/system.h>
+
+#include <boards/hgs/common.h>
+
+#include <mach/imx/debug_ll.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx-gpio.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/iomux-mx8mm.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/xload.h>
+#include <soc/imx8m/ddr.h>
+
+#include <mfd/pca9450.h>
+
+#include <pbl/i2c.h>
+#include <pbl/pmic.h>
+
+#include <soc/imx8m/ddr.h>
+
+static struct pmic_config pca9450_cfg[] = {
+	/* BUCKxOUT_DVS0/1 control BUCK123 output */
+	{ PCA9450_BUCK123_DVS, 0x29 },
+
+	/* Buck 1 DVS control through PMIC_STBY_REQ */
+	{ PCA9450_BUCK1CTRL, 0x59 },
+
+	/* Set DVS1 to 0.8v for suspend */
+	{ PCA9450_BUCK1OUT_DVS1, 0x10 },
+
+	/* increase VDD_DRAM to 0.95v for 3Ghz DDR */
+	{ PCA9450_BUCK3OUT_DVS0, 0x1c },
+
+	/*
+	 * VDD_DRAM needs off in suspend, set B3_ENMODE=10
+	 * (ON by PMIC_ON_REQ = H && PMIC_STBY_REQ = L)
+	 */
+	{ PCA9450_BUCK3CTRL, 0x4a },
+
+	/* set VDD_SNVS_0V8 from default 0.85V */
+	{ PCA9450_LDO2CTRL, 0xc0 },
+
+	/* set WDOG_B_CFG to cold reset only LDO1/2 left enabled */
+	{ PCA9450_RESET_CTRL, 0xa1 },
+};
+
+static void power_init_board(void)
+{
+	struct pbl_i2c *i2c;
+
+	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
+	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
+
+	imx8mm_early_clock_init();
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
+
+	i2c = imx8m_i2c_early_init(IOMEM(MX8MM_I2C1_BASE_ADDR));
+
+	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
+}
+
+extern struct dram_timing_info hgs_gs05_dram_timing;
+extern char __dtb_z_imx8mm_hgs_gs05_start[];
+
+static void start_atf(void)
+{
+	/*
+	 * If we are in EL3 we are running for the first time and need to
+	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
+	 * to DRAM in EL2.
+	 */
+	if (current_el() != 3)
+		return;
+
+	power_init_board();
+	imx8mm_ddr_init(&hgs_gs05_dram_timing, DRAM_TYPE_LPDDR4);
+
+	/* OP-TEE binary will be loaded at the 1G (start of RAM) */
+	__imx8mm_load_and_start_image_via_tfa(__dtb_z_imx8mm_hgs_gs05_start,
+				(void *)(MX8M_DDR_CSD1_BASE_ADDR + OPTEE_SIZE));
+}
+
+/*
+ * Power-on execution flow might not be obvious for a very first read,
+ * so here's, hopefully helpful, summary:
+ *
+ * 1. MaskROM uploads PBL into OCRAM and that's where this function is
+ *    executed for the first time. At entry the exception level is EL3.
+ *
+ * 2. DDR is initialized and the image is loaded from storage into DRAM. The PBL
+ *    part is copied from OCRAM to the TF-A return address in DRAM.
+ *
+ * 3. TF-A is executed and exits into the PBL code in DRAM. TF-A has taken us
+ *    from EL3 to EL2.
+ *
+ * 4. Standard barebox boot flow continues
+ */
+static __noreturn noinline void hgs_gs05_start(void)
+{
+	hgs_early_hw_init(HGS_HW_GS05);
+
+	start_atf();
+
+	/*
+	 * Standard entry we hit once we initialized both DDR and ATF
+	 */
+	imx8mm_barebox_entry(__dtb_z_imx8mm_hgs_gs05_start);
+}
+
+ENTRY_FUNCTION(start_hgs_gs05, r0, r1, r2)
+{
+	imx8mm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	hgs_gs05_start();
+}
diff --git a/arch/arm/boards/hgs-gs05/lpddr4-timing.c b/arch/arm/boards/hgs-gs05/lpddr4-timing.c
new file mode 100644
index 0000000000000000000000000000000000000000..9ad33b0639cf0cdf95c7adde881f9e72798d6044
--- /dev/null
+++ b/arch/arm/boards/hgs-gs05/lpddr4-timing.c
@@ -0,0 +1,1118 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2023 NXP
+// SPDX-FileCopyrightText: Leica Geosystems AG
+/*
+ * Code generated with DDR Tool v1.0.0.
+ */
+
+#include <common.h>
+#include <soc/imx8m/ddr.h>
+
+static struct dram_cfg_param ddr_ddrc_cfg[] = {
+	/** Initialize DDRC registers **/
+	{0x3d400304, 0x1},
+	{0x3d400030, 0x1},
+	{0x3d400000, 0xa1080020},
+	{0x3d400020, 0x223},
+	{0x3d400024, 0x3a980},
+	{0x3d400064, 0x5b0087},
+	{0x3d4000d0, 0xc00305ba},
+	{0x3d4000d4, 0x940000},
+	{0x3d4000dc, 0xd4002d},
+	{0x3d4000e0, 0x310000},
+	{0x3d4000e8, 0x66004d},
+	{0x3d4000ec, 0x16004d},
+	{0x3d400100, 0x191e1920},
+	{0x3d400104, 0x60630},
+	{0x3d40010c, 0xb0b000},
+	{0x3d400110, 0xe04080e},
+	{0x3d400114, 0x2040c0c},
+	{0x3d400118, 0x1010007},
+	{0x3d40011c, 0x402},
+	{0x3d400130, 0x20600},
+	{0x3d400134, 0xc100002},
+	{0x3d400138, 0x8d},
+	{0x3d400144, 0x96004b},
+	{0x3d400180, 0x2ee0017},
+	{0x3d400184, 0x2605b8e},
+	{0x3d400188, 0x0},
+	{0x3d400190, 0x497820a},
+	{0x3d400194, 0x80303},
+	{0x3d4001b4, 0x170a},
+	{0x3d4001a0, 0xe0400018},
+	{0x3d4001a4, 0xdf00e4},
+	{0x3d4001a8, 0x80000000},
+	{0x3d4001b0, 0x11},
+	{0x3d4001c0, 0x1},
+	{0x3d4001c4, 0x1},
+	{0x3d4000f4, 0x699},
+	{0x3d400108, 0x70e1617},
+	{0x3d400200, 0x1f},
+	{0x3d40020c, 0x0},
+	{0x3d400210, 0x1f1f},
+	{0x3d400204, 0x80808},
+	{0x3d400214, 0x7070707},
+	{0x3d400218, 0xf070707},
+	{0x3d40021c, 0xf0f},
+	{0x3d400250, 0x29001701},
+	{0x3d400254, 0x2c},
+	{0x3d40025c, 0x4000030},
+	{0x3d400264, 0x900093e7},
+	{0x3d40026c, 0x2005574},
+	{0x3d400400, 0x111},
+	{0x3d400408, 0x72ff},
+	{0x3d400494, 0x2100e07},
+	{0x3d400498, 0x620096},
+	{0x3d40049c, 0x1100e07},
+	{0x3d4004a0, 0xc8012c},
+	{0x3d402020, 0x21},
+	{0x3d402024, 0x7d00},
+	{0x3d402050, 0x20d040},
+	{0x3d402064, 0xc0012},
+	{0x3d4020dc, 0x840000},
+	{0x3d4020e0, 0x310000},
+	{0x3d4020e8, 0x66004d},
+	{0x3d4020ec, 0x16004d},
+	{0x3d402100, 0xa040305},
+	{0x3d402104, 0x30407},
+	{0x3d402108, 0x203060b},
+	{0x3d40210c, 0x505000},
+	{0x3d402110, 0x2040202},
+	{0x3d402114, 0x2030202},
+	{0x3d402118, 0x1010004},
+	{0x3d40211c, 0x302},
+	{0x3d402130, 0x20300},
+	{0x3d402134, 0xa100002},
+	{0x3d402138, 0x13},
+	{0x3d402144, 0x14000a},
+	{0x3d402180, 0x640004},
+	{0x3d402190, 0x3818200},
+	{0x3d402194, 0x80303},
+	{0x3d4021b4, 0x100},
+	{0x3d4020f4, 0x599},
+	{0x3d403020, 0x21},
+	{0x3d403024, 0x1f40},
+	{0x3d403050, 0x20d040},
+	{0x3d403064, 0x30005},
+	{0x3d4030dc, 0x840000},
+	{0x3d4030e0, 0x310000},
+	{0x3d4030e8, 0x66004d},
+	{0x3d4030ec, 0x16004d},
+	{0x3d403100, 0xa010102},
+	{0x3d403104, 0x30404},
+	{0x3d403108, 0x203060b},
+	{0x3d40310c, 0x505000},
+	{0x3d403110, 0x2040202},
+	{0x3d403114, 0x2030202},
+	{0x3d403118, 0x1010004},
+	{0x3d40311c, 0x302},
+	{0x3d403130, 0x20300},
+	{0x3d403134, 0xa100002},
+	{0x3d403138, 0x5},
+	{0x3d403144, 0x50003},
+	{0x3d403180, 0x190004},
+	{0x3d403190, 0x3818200},
+	{0x3d403194, 0x80303},
+	{0x3d4031b4, 0x100},
+	{0x3d4030f4, 0x599},
+	{0x3d400028, 0x0},
+
+};
+
+/* PHY Initialize Configuration */
+static struct dram_cfg_param ddr_ddrphy_cfg[] = {
+	{0x100a0, 0x0},
+	{0x100a1, 0x1},
+	{0x100a2, 0x2},
+	{0x100a3, 0x3},
+	{0x100a4, 0x4},
+	{0x100a5, 0x5},
+	{0x100a6, 0x6},
+	{0x100a7, 0x7},
+	{0x110a0, 0x0},
+	{0x110a1, 0x1},
+	{0x110a2, 0x3},
+	{0x110a3, 0x4},
+	{0x110a4, 0x5},
+	{0x110a5, 0x2},
+	{0x110a6, 0x7},
+	{0x110a7, 0x6},
+	{0x120a0, 0x0},
+	{0x120a1, 0x1},
+	{0x120a2, 0x3},
+	{0x120a3, 0x2},
+	{0x120a4, 0x5},
+	{0x120a5, 0x4},
+	{0x120a6, 0x7},
+	{0x120a7, 0x6},
+	{0x130a0, 0x0},
+	{0x130a1, 0x1},
+	{0x130a2, 0x2},
+	{0x130a3, 0x3},
+	{0x130a4, 0x4},
+	{0x130a5, 0x5},
+	{0x130a6, 0x6},
+	{0x130a7, 0x7},
+	{0x1005f, 0x1ff},
+	{0x1015f, 0x1ff},
+	{0x1105f, 0x1ff},
+	{0x1115f, 0x1ff},
+	{0x1205f, 0x1ff},
+	{0x1215f, 0x1ff},
+	{0x1305f, 0x1ff},
+	{0x1315f, 0x1ff},
+	{0x11005f, 0x1ff},
+	{0x11015f, 0x1ff},
+	{0x11105f, 0x1ff},
+	{0x11115f, 0x1ff},
+	{0x11205f, 0x1ff},
+	{0x11215f, 0x1ff},
+	{0x11305f, 0x1ff},
+	{0x11315f, 0x1ff},
+	{0x21005f, 0x1ff},
+	{0x21015f, 0x1ff},
+	{0x21105f, 0x1ff},
+	{0x21115f, 0x1ff},
+	{0x21205f, 0x1ff},
+	{0x21215f, 0x1ff},
+	{0x21305f, 0x1ff},
+	{0x21315f, 0x1ff},
+	{0x55, 0x1ff},
+	{0x1055, 0x1ff},
+	{0x2055, 0x1ff},
+	{0x3055, 0x1ff},
+	{0x4055, 0x1ff},
+	{0x5055, 0x1ff},
+	{0x6055, 0x1ff},
+	{0x7055, 0x1ff},
+	{0x8055, 0x1ff},
+	{0x9055, 0x1ff},
+	{0x200c5, 0x19},
+	{0x1200c5, 0x7},
+	{0x2200c5, 0x7},
+	{0x2002e, 0x2},
+	{0x12002e, 0x2},
+	{0x22002e, 0x2},
+	{0x90204, 0x0},
+	{0x190204, 0x0},
+	{0x290204, 0x0},
+	{0x20024, 0x1ab},
+	{0x2003a, 0x0},
+	{0x120024, 0x1ab},
+	{0x2003a, 0x0},
+	{0x220024, 0x1ab},
+	{0x2003a, 0x0},
+	{0x20056, 0x3},
+	{0x120056, 0x3},
+	{0x220056, 0x3},
+	{0x1004d, 0xe00},
+	{0x1014d, 0xe00},
+	{0x1104d, 0xe00},
+	{0x1114d, 0xe00},
+	{0x1204d, 0xe00},
+	{0x1214d, 0xe00},
+	{0x1304d, 0xe00},
+	{0x1314d, 0xe00},
+	{0x11004d, 0xe00},
+	{0x11014d, 0xe00},
+	{0x11104d, 0xe00},
+	{0x11114d, 0xe00},
+	{0x11204d, 0xe00},
+	{0x11214d, 0xe00},
+	{0x11304d, 0xe00},
+	{0x11314d, 0xe00},
+	{0x21004d, 0xe00},
+	{0x21014d, 0xe00},
+	{0x21104d, 0xe00},
+	{0x21114d, 0xe00},
+	{0x21204d, 0xe00},
+	{0x21214d, 0xe00},
+	{0x21304d, 0xe00},
+	{0x21314d, 0xe00},
+	{0x10049, 0xe38},
+	{0x10149, 0xe38},
+	{0x11049, 0xe38},
+	{0x11149, 0xe38},
+	{0x12049, 0xe38},
+	{0x12149, 0xe38},
+	{0x13049, 0xe38},
+	{0x13149, 0xe38},
+	{0x110049, 0xe38},
+	{0x110149, 0xe38},
+	{0x111049, 0xe38},
+	{0x111149, 0xe38},
+	{0x112049, 0xe38},
+	{0x112149, 0xe38},
+	{0x113049, 0xe38},
+	{0x113149, 0xe38},
+	{0x210049, 0xe38},
+	{0x210149, 0xe38},
+	{0x211049, 0xe38},
+	{0x211149, 0xe38},
+	{0x212049, 0xe38},
+	{0x212149, 0xe38},
+	{0x213049, 0xe38},
+	{0x213149, 0xe38},
+	{0x43, 0x63},
+	{0x1043, 0x63},
+	{0x2043, 0x63},
+	{0x3043, 0x63},
+	{0x4043, 0x63},
+	{0x5043, 0x63},
+	{0x6043, 0x63},
+	{0x7043, 0x63},
+	{0x8043, 0x63},
+	{0x9043, 0x63},
+	{0x20018, 0x3},
+	{0x20075, 0x4},
+	{0x20050, 0x0},
+	{0x20008, 0x2ee},
+	{0x120008, 0x64},
+	{0x220008, 0x19},
+	{0x20088, 0x9},
+	{0x200b2, 0xdc},
+	{0x10043, 0x5a1},
+	{0x10143, 0x5a1},
+	{0x11043, 0x5a1},
+	{0x11143, 0x5a1},
+	{0x12043, 0x5a1},
+	{0x12143, 0x5a1},
+	{0x13043, 0x5a1},
+	{0x13143, 0x5a1},
+	{0x1200b2, 0xdc},
+	{0x110043, 0x5a1},
+	{0x110143, 0x5a1},
+	{0x111043, 0x5a1},
+	{0x111143, 0x5a1},
+	{0x112043, 0x5a1},
+	{0x112143, 0x5a1},
+	{0x113043, 0x5a1},
+	{0x113143, 0x5a1},
+	{0x2200b2, 0xdc},
+	{0x210043, 0x5a1},
+	{0x210143, 0x5a1},
+	{0x211043, 0x5a1},
+	{0x211143, 0x5a1},
+	{0x212043, 0x5a1},
+	{0x212143, 0x5a1},
+	{0x213043, 0x5a1},
+	{0x213143, 0x5a1},
+	{0x200fa, 0x1},
+	{0x1200fa, 0x1},
+	{0x2200fa, 0x1},
+	{0x20019, 0x1},
+	{0x120019, 0x1},
+	{0x220019, 0x1},
+	{0x200f0, 0x660},
+	{0x200f1, 0x0},
+	{0x200f2, 0x4444},
+	{0x200f3, 0x8888},
+	{0x200f4, 0x5665},
+	{0x200f5, 0x0},
+	{0x200f6, 0x0},
+	{0x200f7, 0xf000},
+	{0x20025, 0x0},
+	{0x2002d, 0x0},
+	{0x12002d, 0x0},
+	{0x22002d, 0x0},
+	{0x200ca, 0x24},
+	{0x1200ca, 0x24},
+	{0x2200ca, 0x24},
+	{0x200c7, 0x21},
+	{0x1200c7, 0x21},
+	{0x2200c7, 0x21},
+
+};
+
+/* P0 message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp0_cfg[] = {
+	{0xd0000, 0x0},
+	{0x54003, 0xbb8},
+	{0x54004, 0x2},
+	{0x54005, 0x2828},
+	{0x54006, 0x11},
+	{0x54008, 0x131f},
+	{0x54009, 0xc8},
+	{0x5400b, 0x2},
+	{0x54012, 0x110},
+	{0x54019, 0x2dd4},
+	{0x5401a, 0x31},
+	{0x5401b, 0x4d66},
+	{0x5401c, 0x4d00},
+	{0x5401e, 0x16},
+	{0x5401f, 0x2dd4},
+	{0x54020, 0x31},
+	{0x54021, 0x4d66},
+	{0x54022, 0x4d00},
+	{0x54024, 0x16},
+	{0x5402b, 0x1000},
+	{0x5402c, 0x1},
+	{0x54032, 0xd400},
+	{0x54033, 0x312d},
+	{0x54034, 0x6600},
+	{0x54035, 0x4d},
+	{0x54036, 0x4d},
+	{0x54037, 0x1600},
+	{0x54038, 0xd400},
+	{0x54039, 0x312d},
+	{0x5403a, 0x6600},
+	{0x5403b, 0x4d},
+	{0x5403c, 0x4d},
+	{0x5403d, 0x1600},
+	{0xd0000, 0x1}
+};
+/* P1 message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp1_cfg[] = {
+	{0xd0000, 0x0},
+	{0x54002, 0x101},
+	{0x54003, 0x190},
+	{0x54004, 0x2},
+	{0x54005, 0x2828},
+	{0x54006, 0x11},
+	{0x54008, 0x121f},
+	{0x54009, 0xc8},
+	{0x5400b, 0x2},
+	{0x54012, 0x110},
+	{0x54019, 0x84},
+	{0x5401a, 0x31},
+	{0x5401b, 0x4d66},
+	{0x5401c, 0x4d00},
+	{0x5401e, 0x16},
+	{0x5401f, 0x84},
+	{0x54020, 0x31},
+	{0x54021, 0x4d66},
+	{0x54022, 0x4d00},
+	{0x54024, 0x16},
+	{0x5402b, 0x1000},
+	{0x5402c, 0x1},
+	{0x54032, 0x8400},
+	{0x54033, 0x3100},
+	{0x54034, 0x6600},
+	{0x54035, 0x4d},
+	{0x54036, 0x4d},
+	{0x54037, 0x1600},
+	{0x54038, 0x8400},
+	{0x54039, 0x3100},
+	{0x5403a, 0x6600},
+	{0x5403b, 0x4d},
+	{0x5403c, 0x4d},
+	{0x5403d, 0x1600},
+	{0xd0000, 0x1}
+};
+/* P2 message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp2_cfg[] = {
+	{0xd0000, 0x0},
+	{0x54002, 0x102},
+	{0x54003, 0x64},
+	{0x54004, 0x2},
+	{0x54005, 0x2828},
+	{0x54006, 0x11},
+	{0x54008, 0x121f},
+	{0x54009, 0xc8},
+	{0x5400b, 0x2},
+	{0x54012, 0x110},
+	{0x54019, 0x84},
+	{0x5401a, 0x31},
+	{0x5401b, 0x4d66},
+	{0x5401c, 0x4d00},
+	{0x5401e, 0x16},
+	{0x5401f, 0x84},
+	{0x54020, 0x31},
+	{0x54021, 0x4d66},
+	{0x54022, 0x4d00},
+	{0x54024, 0x16},
+	{0x5402b, 0x1000},
+	{0x5402c, 0x1},
+	{0x54032, 0x8400},
+	{0x54033, 0x3100},
+	{0x54034, 0x6600},
+	{0x54035, 0x4d},
+	{0x54036, 0x4d},
+	{0x54037, 0x1600},
+	{0x54038, 0x8400},
+	{0x54039, 0x3100},
+	{0x5403a, 0x6600},
+	{0x5403b, 0x4d},
+	{0x5403c, 0x4d},
+	{0x5403d, 0x1600},
+	{0xd0000, 0x1}
+};
+
+
+/* P0 2D message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
+	{0xd0000, 0x0},
+	{0x54003, 0xbb8},
+	{0x54004, 0x2},
+	{0x54005, 0x2828},
+	{0x54006, 0x11},
+	{0x54008, 0x61},
+	{0x54009, 0xc8},
+	{0x5400b, 0x2},
+	{0x5400d, 0x100},
+	{0x5400f, 0x100},
+	{0x54010, 0x1f7f},
+	{0x54012, 0x110},
+	{0x54019, 0x2dd4},
+	{0x5401a, 0x31},
+	{0x5401b, 0x4d66},
+	{0x5401c, 0x4d00},
+	{0x5401e, 0x16},
+	{0x5401f, 0x2dd4},
+	{0x54020, 0x31},
+	{0x54021, 0x4d66},
+	{0x54022, 0x4d00},
+	{0x54024, 0x16},
+	{0x5402b, 0x1000},
+	{0x5402c, 0x1},
+	{0x54032, 0xd400},
+	{0x54033, 0x312d},
+	{0x54034, 0x6600},
+	{0x54035, 0x4d},
+	{0x54036, 0x4d},
+	{0x54037, 0x1600},
+	{0x54038, 0xd400},
+	{0x54039, 0x312d},
+	{0x5403a, 0x6600},
+	{0x5403b, 0x4d},
+	{0x5403c, 0x4d},
+	{0x5403d, 0x1600},
+	{0xd0000, 0x1}
+};
+
+/* DRAM PHY init engine image */
+static struct dram_cfg_param ddr_phy_pie[] = {
+	{0xd0000, 0x0},
+	{0x90000, 0x10},
+	{0x90001, 0x400},
+	{0x90002, 0x10e},
+	{0x90003, 0x0},
+	{0x90004, 0x0},
+	{0x90005, 0x8},
+	{0x90029, 0xb},
+	{0x9002a, 0x480},
+	{0x9002b, 0x109},
+	{0x9002c, 0x8},
+	{0x9002d, 0x448},
+	{0x9002e, 0x139},
+	{0x9002f, 0x8},
+	{0x90030, 0x478},
+	{0x90031, 0x109},
+	{0x90032, 0x0},
+	{0x90033, 0xe8},
+	{0x90034, 0x109},
+	{0x90035, 0x2},
+	{0x90036, 0x10},
+	{0x90037, 0x139},
+	{0x90038, 0xf},
+	{0x90039, 0x7c0},
+	{0x9003a, 0x139},
+	{0x9003b, 0x44},
+	{0x9003c, 0x630},
+	{0x9003d, 0x159},
+	{0x9003e, 0x14f},
+	{0x9003f, 0x630},
+	{0x90040, 0x159},
+	{0x90041, 0x47},
+	{0x90042, 0x630},
+	{0x90043, 0x149},
+	{0x90044, 0x4f},
+	{0x90045, 0x630},
+	{0x90046, 0x179},
+	{0x90047, 0x8},
+	{0x90048, 0xe0},
+	{0x90049, 0x109},
+	{0x9004a, 0x0},
+	{0x9004b, 0x7c8},
+	{0x9004c, 0x109},
+	{0x9004d, 0x0},
+	{0x9004e, 0x1},
+	{0x9004f, 0x8},
+	{0x90050, 0x0},
+	{0x90051, 0x45a},
+	{0x90052, 0x9},
+	{0x90053, 0x0},
+	{0x90054, 0x448},
+	{0x90055, 0x109},
+	{0x90056, 0x40},
+	{0x90057, 0x630},
+	{0x90058, 0x179},
+	{0x90059, 0x1},
+	{0x9005a, 0x618},
+	{0x9005b, 0x109},
+	{0x9005c, 0x40c0},
+	{0x9005d, 0x630},
+	{0x9005e, 0x149},
+	{0x9005f, 0x8},
+	{0x90060, 0x4},
+	{0x90061, 0x48},
+	{0x90062, 0x4040},
+	{0x90063, 0x630},
+	{0x90064, 0x149},
+	{0x90065, 0x0},
+	{0x90066, 0x4},
+	{0x90067, 0x48},
+	{0x90068, 0x40},
+	{0x90069, 0x630},
+	{0x9006a, 0x149},
+	{0x9006b, 0x10},
+	{0x9006c, 0x4},
+	{0x9006d, 0x18},
+	{0x9006e, 0x0},
+	{0x9006f, 0x4},
+	{0x90070, 0x78},
+	{0x90071, 0x549},
+	{0x90072, 0x630},
+	{0x90073, 0x159},
+	{0x90074, 0xd49},
+	{0x90075, 0x630},
+	{0x90076, 0x159},
+	{0x90077, 0x94a},
+	{0x90078, 0x630},
+	{0x90079, 0x159},
+	{0x9007a, 0x441},
+	{0x9007b, 0x630},
+	{0x9007c, 0x149},
+	{0x9007d, 0x42},
+	{0x9007e, 0x630},
+	{0x9007f, 0x149},
+	{0x90080, 0x1},
+	{0x90081, 0x630},
+	{0x90082, 0x149},
+	{0x90083, 0x0},
+	{0x90084, 0xe0},
+	{0x90085, 0x109},
+	{0x90086, 0xa},
+	{0x90087, 0x10},
+	{0x90088, 0x109},
+	{0x90089, 0x9},
+	{0x9008a, 0x3c0},
+	{0x9008b, 0x149},
+	{0x9008c, 0x9},
+	{0x9008d, 0x3c0},
+	{0x9008e, 0x159},
+	{0x9008f, 0x18},
+	{0x90090, 0x10},
+	{0x90091, 0x109},
+	{0x90092, 0x0},
+	{0x90093, 0x3c0},
+	{0x90094, 0x109},
+	{0x90095, 0x18},
+	{0x90096, 0x4},
+	{0x90097, 0x48},
+	{0x90098, 0x18},
+	{0x90099, 0x4},
+	{0x9009a, 0x58},
+	{0x9009b, 0xa},
+	{0x9009c, 0x10},
+	{0x9009d, 0x109},
+	{0x9009e, 0x2},
+	{0x9009f, 0x10},
+	{0x900a0, 0x109},
+	{0x900a1, 0x5},
+	{0x900a2, 0x7c0},
+	{0x900a3, 0x109},
+	{0x900a4, 0x10},
+	{0x900a5, 0x10},
+	{0x900a6, 0x109},
+	{0x40000, 0x811},
+	{0x40020, 0x880},
+	{0x40040, 0x0},
+	{0x40060, 0x0},
+	{0x40001, 0x4008},
+	{0x40021, 0x83},
+	{0x40041, 0x4f},
+	{0x40061, 0x0},
+	{0x40002, 0x4040},
+	{0x40022, 0x83},
+	{0x40042, 0x51},
+	{0x40062, 0x0},
+	{0x40003, 0x811},
+	{0x40023, 0x880},
+	{0x40043, 0x0},
+	{0x40063, 0x0},
+	{0x40004, 0x720},
+	{0x40024, 0xf},
+	{0x40044, 0x1740},
+	{0x40064, 0x0},
+	{0x40005, 0x16},
+	{0x40025, 0x83},
+	{0x40045, 0x4b},
+	{0x40065, 0x0},
+	{0x40006, 0x716},
+	{0x40026, 0xf},
+	{0x40046, 0x2001},
+	{0x40066, 0x0},
+	{0x40007, 0x716},
+	{0x40027, 0xf},
+	{0x40047, 0x2800},
+	{0x40067, 0x0},
+	{0x40008, 0x716},
+	{0x40028, 0xf},
+	{0x40048, 0xf00},
+	{0x40068, 0x0},
+	{0x40009, 0x720},
+	{0x40029, 0xf},
+	{0x40049, 0x1400},
+	{0x40069, 0x0},
+	{0x4000a, 0xe08},
+	{0x4002a, 0xc15},
+	{0x4004a, 0x0},
+	{0x4006a, 0x0},
+	{0x4000b, 0x623},
+	{0x4002b, 0x15},
+	{0x4004b, 0x0},
+	{0x4006b, 0x0},
+	{0x4000c, 0x4028},
+	{0x4002c, 0x80},
+	{0x4004c, 0x0},
+	{0x4006c, 0x0},
+	{0x4000d, 0xe08},
+	{0x4002d, 0xc1a},
+	{0x4004d, 0x0},
+	{0x4006d, 0x0},
+	{0x4000e, 0x623},
+	{0x4002e, 0x1a},
+	{0x4004e, 0x0},
+	{0x4006e, 0x0},
+	{0x4000f, 0x4040},
+	{0x4002f, 0x80},
+	{0x4004f, 0x0},
+	{0x4006f, 0x0},
+	{0x40010, 0x2604},
+	{0x40030, 0x15},
+	{0x40050, 0x0},
+	{0x40070, 0x0},
+	{0x40011, 0x708},
+	{0x40031, 0x5},
+	{0x40051, 0x0},
+	{0x40071, 0x2002},
+	{0x40012, 0x8},
+	{0x40032, 0x80},
+	{0x40052, 0x0},
+	{0x40072, 0x0},
+	{0x40013, 0x2604},
+	{0x40033, 0x1a},
+	{0x40053, 0x0},
+	{0x40073, 0x0},
+	{0x40014, 0x708},
+	{0x40034, 0xa},
+	{0x40054, 0x0},
+	{0x40074, 0x2002},
+	{0x40015, 0x4040},
+	{0x40035, 0x80},
+	{0x40055, 0x0},
+	{0x40075, 0x0},
+	{0x40016, 0x60a},
+	{0x40036, 0x15},
+	{0x40056, 0x1200},
+	{0x40076, 0x0},
+	{0x40017, 0x61a},
+	{0x40037, 0x15},
+	{0x40057, 0x1300},
+	{0x40077, 0x0},
+	{0x40018, 0x60a},
+	{0x40038, 0x1a},
+	{0x40058, 0x1200},
+	{0x40078, 0x0},
+	{0x40019, 0x642},
+	{0x40039, 0x1a},
+	{0x40059, 0x1300},
+	{0x40079, 0x0},
+	{0x4001a, 0x4808},
+	{0x4003a, 0x880},
+	{0x4005a, 0x0},
+	{0x4007a, 0x0},
+	{0x900a7, 0x0},
+	{0x900a8, 0x790},
+	{0x900a9, 0x11a},
+	{0x900aa, 0x8},
+	{0x900ab, 0x7aa},
+	{0x900ac, 0x2a},
+	{0x900ad, 0x10},
+	{0x900ae, 0x7b2},
+	{0x900af, 0x2a},
+	{0x900b0, 0x0},
+	{0x900b1, 0x7c8},
+	{0x900b2, 0x109},
+	{0x900b3, 0x10},
+	{0x900b4, 0x2a8},
+	{0x900b5, 0x129},
+	{0x900b6, 0x8},
+	{0x900b7, 0x370},
+	{0x900b8, 0x129},
+	{0x900b9, 0xa},
+	{0x900ba, 0x3c8},
+	{0x900bb, 0x1a9},
+	{0x900bc, 0xc},
+	{0x900bd, 0x408},
+	{0x900be, 0x199},
+	{0x900bf, 0x14},
+	{0x900c0, 0x790},
+	{0x900c1, 0x11a},
+	{0x900c2, 0x8},
+	{0x900c3, 0x4},
+	{0x900c4, 0x18},
+	{0x900c5, 0xe},
+	{0x900c6, 0x408},
+	{0x900c7, 0x199},
+	{0x900c8, 0x8},
+	{0x900c9, 0x8568},
+	{0x900ca, 0x108},
+	{0x900cb, 0x18},
+	{0x900cc, 0x790},
+	{0x900cd, 0x16a},
+	{0x900ce, 0x8},
+	{0x900cf, 0x1d8},
+	{0x900d0, 0x169},
+	{0x900d1, 0x10},
+	{0x900d2, 0x8558},
+	{0x900d3, 0x168},
+	{0x900d4, 0x70},
+	{0x900d5, 0x788},
+	{0x900d6, 0x16a},
+	{0x900d7, 0x1ff8},
+	{0x900d8, 0x85a8},
+	{0x900d9, 0x1e8},
+	{0x900da, 0x50},
+	{0x900db, 0x798},
+	{0x900dc, 0x16a},
+	{0x900dd, 0x60},
+	{0x900de, 0x7a0},
+	{0x900df, 0x16a},
+	{0x900e0, 0x8},
+	{0x900e1, 0x8310},
+	{0x900e2, 0x168},
+	{0x900e3, 0x8},
+	{0x900e4, 0xa310},
+	{0x900e5, 0x168},
+	{0x900e6, 0xa},
+	{0x900e7, 0x408},
+	{0x900e8, 0x169},
+	{0x900e9, 0x6e},
+	{0x900ea, 0x0},
+	{0x900eb, 0x68},
+	{0x900ec, 0x0},
+	{0x900ed, 0x408},
+	{0x900ee, 0x169},
+	{0x900ef, 0x0},
+	{0x900f0, 0x8310},
+	{0x900f1, 0x168},
+	{0x900f2, 0x0},
+	{0x900f3, 0xa310},
+	{0x900f4, 0x168},
+	{0x900f5, 0x1ff8},
+	{0x900f6, 0x85a8},
+	{0x900f7, 0x1e8},
+	{0x900f8, 0x68},
+	{0x900f9, 0x798},
+	{0x900fa, 0x16a},
+	{0x900fb, 0x78},
+	{0x900fc, 0x7a0},
+	{0x900fd, 0x16a},
+	{0x900fe, 0x68},
+	{0x900ff, 0x790},
+	{0x90100, 0x16a},
+	{0x90101, 0x8},
+	{0x90102, 0x8b10},
+	{0x90103, 0x168},
+	{0x90104, 0x8},
+	{0x90105, 0xab10},
+	{0x90106, 0x168},
+	{0x90107, 0xa},
+	{0x90108, 0x408},
+	{0x90109, 0x169},
+	{0x9010a, 0x58},
+	{0x9010b, 0x0},
+	{0x9010c, 0x68},
+	{0x9010d, 0x0},
+	{0x9010e, 0x408},
+	{0x9010f, 0x169},
+	{0x90110, 0x0},
+	{0x90111, 0x8b10},
+	{0x90112, 0x168},
+	{0x90113, 0x0},
+	{0x90114, 0xab10},
+	{0x90115, 0x168},
+	{0x90116, 0x0},
+	{0x90117, 0x1d8},
+	{0x90118, 0x169},
+	{0x90119, 0x80},
+	{0x9011a, 0x790},
+	{0x9011b, 0x16a},
+	{0x9011c, 0x18},
+	{0x9011d, 0x7aa},
+	{0x9011e, 0x6a},
+	{0x9011f, 0xa},
+	{0x90120, 0x0},
+	{0x90121, 0x1e9},
+	{0x90122, 0x8},
+	{0x90123, 0x8080},
+	{0x90124, 0x108},
+	{0x90125, 0xf},
+	{0x90126, 0x408},
+	{0x90127, 0x169},
+	{0x90128, 0xc},
+	{0x90129, 0x0},
+	{0x9012a, 0x68},
+	{0x9012b, 0x9},
+	{0x9012c, 0x0},
+	{0x9012d, 0x1a9},
+	{0x9012e, 0x0},
+	{0x9012f, 0x408},
+	{0x90130, 0x169},
+	{0x90131, 0x0},
+	{0x90132, 0x8080},
+	{0x90133, 0x108},
+	{0x90134, 0x8},
+	{0x90135, 0x7aa},
+	{0x90136, 0x6a},
+	{0x90137, 0x0},
+	{0x90138, 0x8568},
+	{0x90139, 0x108},
+	{0x9013a, 0xb7},
+	{0x9013b, 0x790},
+	{0x9013c, 0x16a},
+	{0x9013d, 0x1f},
+	{0x9013e, 0x0},
+	{0x9013f, 0x68},
+	{0x90140, 0x8},
+	{0x90141, 0x8558},
+	{0x90142, 0x168},
+	{0x90143, 0xf},
+	{0x90144, 0x408},
+	{0x90145, 0x169},
+	{0x90146, 0xc},
+	{0x90147, 0x0},
+	{0x90148, 0x68},
+	{0x90149, 0x0},
+	{0x9014a, 0x408},
+	{0x9014b, 0x169},
+	{0x9014c, 0x0},
+	{0x9014d, 0x8558},
+	{0x9014e, 0x168},
+	{0x9014f, 0x8},
+	{0x90150, 0x3c8},
+	{0x90151, 0x1a9},
+	{0x90152, 0x3},
+	{0x90153, 0x370},
+	{0x90154, 0x129},
+	{0x90155, 0x20},
+	{0x90156, 0x2aa},
+	{0x90157, 0x9},
+	{0x90158, 0x0},
+	{0x90159, 0x400},
+	{0x9015a, 0x10e},
+	{0x9015b, 0x8},
+	{0x9015c, 0xe8},
+	{0x9015d, 0x109},
+	{0x9015e, 0x0},
+	{0x9015f, 0x8140},
+	{0x90160, 0x10c},
+	{0x90161, 0x10},
+	{0x90162, 0x8138},
+	{0x90163, 0x10c},
+	{0x90164, 0x8},
+	{0x90165, 0x7c8},
+	{0x90166, 0x101},
+	{0x90167, 0x8},
+	{0x90168, 0x0},
+	{0x90169, 0x8},
+	{0x9016a, 0x8},
+	{0x9016b, 0x448},
+	{0x9016c, 0x109},
+	{0x9016d, 0xf},
+	{0x9016e, 0x7c0},
+	{0x9016f, 0x109},
+	{0x90170, 0x0},
+	{0x90171, 0xe8},
+	{0x90172, 0x109},
+	{0x90173, 0x47},
+	{0x90174, 0x630},
+	{0x90175, 0x109},
+	{0x90176, 0x8},
+	{0x90177, 0x618},
+	{0x90178, 0x109},
+	{0x90179, 0x8},
+	{0x9017a, 0xe0},
+	{0x9017b, 0x109},
+	{0x9017c, 0x0},
+	{0x9017d, 0x7c8},
+	{0x9017e, 0x109},
+	{0x9017f, 0x8},
+	{0x90180, 0x8140},
+	{0x90181, 0x10c},
+	{0x90182, 0x0},
+	{0x90183, 0x1},
+	{0x90184, 0x8},
+	{0x90185, 0x8},
+	{0x90186, 0x4},
+	{0x90187, 0x8},
+	{0x90188, 0x8},
+	{0x90189, 0x7c8},
+	{0x9018a, 0x101},
+	{0x90006, 0x0},
+	{0x90007, 0x0},
+	{0x90008, 0x8},
+	{0x90009, 0x0},
+	{0x9000a, 0x0},
+	{0x9000b, 0x0},
+	{0xd00e7, 0x400},
+	{0x90017, 0x0},
+	{0x9001f, 0x2a},
+	{0x90026, 0x6a},
+	{0x400d0, 0x0},
+	{0x400d1, 0x101},
+	{0x400d2, 0x105},
+	{0x400d3, 0x107},
+	{0x400d4, 0x10f},
+	{0x400d5, 0x202},
+	{0x400d6, 0x20a},
+	{0x400d7, 0x20b},
+	{0x2003a, 0x2},
+	{0x2000b, 0x5d},
+	{0x2000c, 0xbb},
+	{0x2000d, 0x753},
+	{0x2000e, 0x2c},
+	{0x12000b, 0xc},
+	{0x12000c, 0x19},
+	{0x12000d, 0xfa},
+	{0x12000e, 0x10},
+	{0x22000b, 0x3},
+	{0x22000c, 0x6},
+	{0x22000d, 0x3e},
+	{0x22000e, 0x10},
+	{0x9000c, 0x0},
+	{0x9000d, 0x173},
+	{0x9000e, 0x60},
+	{0x9000f, 0x6110},
+	{0x90010, 0x2152},
+	{0x90011, 0xdfbd},
+	{0x90012, 0x60},
+	{0x90013, 0x6152},
+	{0x20010, 0x5a},
+	{0x20011, 0x3},
+	{0x40080, 0xe0},
+	{0x40081, 0x12},
+	{0x40082, 0xe0},
+	{0x40083, 0x12},
+	{0x40084, 0xe0},
+	{0x40085, 0x12},
+	{0x140080, 0xe0},
+	{0x140081, 0x12},
+	{0x140082, 0xe0},
+	{0x140083, 0x12},
+	{0x140084, 0xe0},
+	{0x140085, 0x12},
+	{0x240080, 0xe0},
+	{0x240081, 0x12},
+	{0x240082, 0xe0},
+	{0x240083, 0x12},
+	{0x240084, 0xe0},
+	{0x240085, 0x12},
+	{0x400fd, 0xf},
+	{0x10011, 0x1},
+	{0x10012, 0x1},
+	{0x10013, 0x180},
+	{0x10018, 0x1},
+	{0x10002, 0x6209},
+	{0x100b2, 0x1},
+	{0x101b4, 0x1},
+	{0x102b4, 0x1},
+	{0x103b4, 0x1},
+	{0x104b4, 0x1},
+	{0x105b4, 0x1},
+	{0x106b4, 0x1},
+	{0x107b4, 0x1},
+	{0x108b4, 0x1},
+	{0x11011, 0x1},
+	{0x11012, 0x1},
+	{0x11013, 0x180},
+	{0x11018, 0x1},
+	{0x11002, 0x6209},
+	{0x110b2, 0x1},
+	{0x111b4, 0x1},
+	{0x112b4, 0x1},
+	{0x113b4, 0x1},
+	{0x114b4, 0x1},
+	{0x115b4, 0x1},
+	{0x116b4, 0x1},
+	{0x117b4, 0x1},
+	{0x118b4, 0x1},
+	{0x12011, 0x1},
+	{0x12012, 0x1},
+	{0x12013, 0x180},
+	{0x12018, 0x1},
+	{0x12002, 0x6209},
+	{0x120b2, 0x1},
+	{0x121b4, 0x1},
+	{0x122b4, 0x1},
+	{0x123b4, 0x1},
+	{0x124b4, 0x1},
+	{0x125b4, 0x1},
+	{0x126b4, 0x1},
+	{0x127b4, 0x1},
+	{0x128b4, 0x1},
+	{0x13011, 0x1},
+	{0x13012, 0x1},
+	{0x13013, 0x180},
+	{0x13018, 0x1},
+	{0x13002, 0x6209},
+	{0x130b2, 0x1},
+	{0x131b4, 0x1},
+	{0x132b4, 0x1},
+	{0x133b4, 0x1},
+	{0x134b4, 0x1},
+	{0x135b4, 0x1},
+	{0x136b4, 0x1},
+	{0x137b4, 0x1},
+	{0x138b4, 0x1},
+	{0x2003a, 0x2},
+	{0xc0080, 0x2},
+	{0xd0000, 0x1},
+
+};
+
+static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
+	{
+		/* P0 3000mts 1D */
+		.drate = 3000,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp0_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg),
+	},
+	{
+		/* P1 400mts 1D */
+		.drate = 400,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp1_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp1_cfg),
+	},
+	{
+		/* P2 100mts 1D */
+		.drate = 100,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp2_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp2_cfg),
+	},
+	{
+		/* P0 3000mts 2D */
+		.drate = 3000,
+		.fw_type = FW_2D_IMAGE,
+		.fsp_cfg = ddr_fsp0_2d_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg),
+	},
+};
+
+/* ddr timing config params */
+struct dram_timing_info hgs_gs05_dram_timing = {
+	.ddrc_cfg = ddr_ddrc_cfg,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 3000, 400, 100, },
+};
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a84e09e388506c1e63d655ce75c251514ea5a489..1da0ac3a8f7999b1a20e592b623da5483ec0bf3f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -41,6 +41,7 @@ lwl-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o
 lwl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 lwl-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
 lwl-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
+lwl-$(CONFIG_MACH_HGS_GS05) += imx8mm-hgs-gs05.dtb.o
 lwl-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += imx7d-flex-concentrator-mfg.dtb.o
 lwl-$(CONFIG_MACH_KARO_QSXP_ML81) += imx8mp-karo-qsxp-ml81-qsbase4.dtb.o
 lwl-$(CONFIG_MACH_KOENIGBAUER_ALPHAJET) += imx8mp-koenigbauer-alphajet.dtb.o
diff --git a/arch/arm/dts/imx8m-hgs-common.dtsi b/arch/arm/dts/imx8m-hgs-common.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..2e5276dae749c7a112721c3dc022acaf06d6b6c5
--- /dev/null
+++ b/arch/arm/dts/imx8m-hgs-common.dtsi
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+// SPDX-FileCopyrightText: 2024 Pengutronix
+
+/ {
+	aliases {
+		state = &state;
+	};
+
+	chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+
+	state: state {
+		compatible = "barebox,state";
+		magic = <0xef784236>;
+		backend-type = "raw";
+		backend = <&usdhc3>;
+
+		/*
+		 * barebox-state partition size: 1 MiB
+		 * nr. of redundant copies:      3
+		 * ==> max. stride size: 1 MiB / 3 = 349525 Byte
+		 * ==> keep it simple and align it to 256K
+		 *
+		 * stride size:     262144 Byte
+		 * raw-header:     -    16 Byte
+		 * direct-storage: -     8 Byte
+		 *                 ------------
+		 * max state size:  262120 Byte
+		 *                  ===========
+		 */
+		backend-stridesize = <262144>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			systemA {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			systemB {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority@c {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <10>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+		};
+	};
+};
diff --git a/arch/arm/dts/imx8mm-hgs-gs05.dts b/arch/arm/dts/imx8mm-hgs-gs05.dts
new file mode 100644
index 0000000000000000000000000000000000000000..81bf63b62f979f13fab324327a11660e6c90a678
--- /dev/null
+++ b/arch/arm/dts/imx8mm-hgs-gs05.dts
@@ -0,0 +1,320 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// SPDX-FileCopyrightText: 2020 NXP
+// SPDX-FileCopyrightText: Leica Geosystems AG
+
+/dts-v1/;
+
+#include <arm64/freescale/imx8mm.dtsi>
+#include "imx8mm.dtsi"
+#include "imx8m-hgs-common.dtsi"
+
+/ {
+	/* compatible containing the correct revision and model is patched via board file */
+	compatible = "hgs,gs05", "fsl,imx8mm";
+	model = "Hexagon Geosystems GS05";
+
+	aliases {
+		efiwdt = &efi_wdt;
+	};
+
+	/*
+	 * Prohibit OP-TEE from turning of the UART output if enabled via
+	 * CFG_UART_BASE. To do so we need to specify a stdout-path which
+	 * doesn't exist else OP-TEE turns off the UART.
+	 */
+	secure-chosen {
+		stdout-path = "/this-path/does/not/exist";
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+
+			reset-gpios = <&gpio4 10 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			qca,disable-smarteee;
+		};
+	};
+};
+
+&flexspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexspi0>;
+	status = "okay";
+};
+
+/* Used in M4 */
+&gpio4 {
+	status = "disabled";
+};
+
+/* Used in M4 */
+&gpio5 {
+	status = "disabled";
+};
+
+&state {
+	devel {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		m4@14 {
+			reg = <0x14 0x4>;
+			type = "enum32";
+			names = "off", "on";
+			default = <0>;
+		};
+	};
+
+	product {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		hostname@18 {
+			reg = <0x18 0xf>;
+			type = "string";
+			default = "";
+		};
+
+		usb_model_name@28 {
+			reg = <0x28 0x1f>;
+			type = "string";
+			default = "";
+		};
+		usb_serial_number@48 {
+			reg = <0x48 0xf>;
+			type = "string";
+			default = "";
+		};
+		usb_pid@58 {
+			reg = <0x58 0x6>;
+			type = "string";
+			default = "";
+		};
+	};
+};
+
+/* console */
+&uart3 {
+	pinctrl-names = "default", "uart";
+	pinctrl-0 = <&pinctrl_uart3_gpio>;
+	pinctrl-1 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+
+	/* EFI */
+	mcu {
+		compatible = "hgs,efi-gs05";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_efi>;
+		current-speed = <19200>;
+		cpu-rdy-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		efi_wdt: watchdog {
+			compatible = "hgs,efi-gs05-wdt";
+		};
+	};
+};
+
+&usdhc3 { /* eMMC */
+	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "otg";
+	disable-over-current;
+	samsung,picophy-pre-emp-curr-control = <3>;
+	samsung,picophy-dc-vol-level-adjust = <7>;
+	ci-disable-lpm;
+	status = "okay";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	disable-over-current;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio>;
+
+	pinctrl_efi: efigrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x100
+		>;
+	};
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x3
+			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x3
+			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
+			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
+			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
+			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
+			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
+			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
+			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
+			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
+			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
+			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
+			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+			MX8MM_IOMUXC_SAI1_TXFS_GPIO4_IO10		0x19
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x190
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x194
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x196
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART3_RXD_UART3_DCE_RX		0x0
+			MX8MM_IOMUXC_UART3_TXD_UART3_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_uart3_gpio: uart3-gpiogrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART3_RXD_GPIO5_IO26		0x20
+			MX8MM_IOMUXC_UART3_TXD_GPIO5_IO27		0x20
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX		0x140
+			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX		0x0
+		>;
+	};
+
+	pinctrl_flexspi0: flexspi0grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_ALE_QSPI_A_SCLK		0x1c2
+			MX8MM_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B		0x82
+			MX8MM_IOMUXC_NAND_DATA00_QSPI_A_DATA0		0x82
+			MX8MM_IOMUXC_NAND_DATA01_QSPI_A_DATA1		0x82
+			MX8MM_IOMUXC_NAND_DATA02_QSPI_A_DATA2		0x82
+			MX8MM_IOMUXC_NAND_DATA03_QSPI_A_DATA3		0x82
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0x166
+		>;
+	};
+
+	pinctrl_gpio: gpiogrp {
+		fsl,pins = <
+			/* GS05_LTE_OCx */
+			MX8MM_IOMUXC_GPIO1_IO05_GPIO1_IO5		0x00
+			/* GS05_PRESSURE_INT */
+			MX8MM_IOMUXC_GPIO1_IO06_GPIO1_IO6		0x100
+			/* GS05_IMX8_CPU_RDY */
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x100
+			/* GS05_IMX8_I2C_1_RSTx */
+			MX8MM_IOMUXC_GPIO1_IO11_GPIO1_IO11		0x140
+			/* GS05_IMX8_I2C_1_INTx */
+			MX8MM_IOMUXC_GPIO1_IO12_GPIO1_IO12		0x00
+			/* GS05_IMX8_USB1_OC_SOURCEx */
+			MX8MM_IOMUXC_GPIO1_IO13_GPIO1_IO13		0x00
+			/* GS05_IMX8_LTE_V180_ONx */
+			MX8MM_IOMUXC_GPIO1_IO14_GPIO1_IO14		0x140
+			/* GS05_IMX8_USB1_OC_SINKx */
+			MX8MM_IOMUXC_GPIO1_IO15_GPIO1_IO15		0x00
+			/* GS05_GNSS_RSTX */
+			MX8MM_IOMUXC_SAI5_RXFS_GPIO3_IO19		0x20
+			/* GS05_TPM_LP */
+			MX8MM_IOMUXC_SAI5_RXC_GPIO3_IO20		0x100
+			/* GS05_GNSS_EXTINT */
+			MX8MM_IOMUXC_SAI5_RXD0_GPIO3_IO21		0x20
+			/* GS05_TPM_IRQ */
+			MX8MM_IOMUXC_SAI5_RXD1_GPIO3_IO22		0x140
+			/* GS05_UHF_GPIO_0 */
+			MX8MM_IOMUXC_SAI5_RXD2_GPIO3_IO23		0x100
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 9d2b1e1947a677517396ab9cdda473b42601850f..d8f63ddf78d1f23f8436d60fcd01ffe13bf47039 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -612,6 +612,14 @@ config MACH_CONGATEC_QMX8P_SOM
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 
+config MACH_HGS_GS05
+	bool "Hexagon Geosystems GS05 Board"
+	select ARCH_IMX8MM
+	select BOARD_HGS
+	select FIRMWARE_IMX8MM_ATF
+	select USB_GADGET_DRIVER_ARC_PBL
+	select HGS_EFI_WATCHDOG
+
 config MACH_KOENIGBAUER_ALPHAJET
 	bool "Koenig+Bauer AlphaJet"
 	select MACH_CONGATEC_QMX8P_SOM
diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index a9e1b75a76414e352d9af47ecf5901cf2bd05a84..125bb217d3d94ea332185c0b39064137c5ab0f29 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -1,5 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+config BOARD_HGS
+	bool
+	select ARCH_IMX_ATF_PASS_BL_PARAMS
+	select ARM_SMCCC
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select I2C_IMX_EARLY
+	select IMX8M_DRAM
+	select MCI_IMX_ESDHC_PBL
+	select MFD_HGS_EFI
+
 config BOARD_QEMU
 	bool "Extra support for QEMU-emulated boards" if COMPILE_TEST
 
diff --git a/common/boards/Makefile b/common/boards/Makefile
index 86d07e04a2ade09fe7d9ea50a81294628a594d51..25a3aefd568ac111a5c4f3ae3a0d64ed6ecbed67 100644
--- a/common/boards/Makefile
+++ b/common/boards/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-$(CONFIG_BOARD_HGS)		+= hgs/
 obj-$(CONFIG_BOARD_QEMU)	+= qemu/
 obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
 obj-$(CONFIG_BOARD_PHYTEC_SOM_DETECTION) += phytec/
diff --git a/common/boards/hgs/Makefile b/common/boards/hgs/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..5af27d05591eec5c4078bedd701191040f75bf24
--- /dev/null
+++ b/common/boards/hgs/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-FileCopyrightText: 2025 Pengutronix
+# SPDX-FileCopyrightText: Leica Geosystems AG
+
+pbl-y += pbl.o
+obj-y += common.o
+obj-y += lib.o
diff --git a/common/boards/hgs/common.c b/common/boards/hgs/common.c
new file mode 100644
index 0000000000000000000000000000000000000000..05edbd7e1df6a830bf3391621a63fe5ebab54e4a
--- /dev/null
+++ b/common/boards/hgs/common.c
@@ -0,0 +1,654 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Pengutronix
+// SPDX-FileCopyrightText: Leica Geosystems AG
+
+#include <block.h>
+#include <boot.h>
+#include <bootm.h>
+#include <bootsource.h>
+#include <command.h>
+#include <common.h>
+#include <envfs.h>
+#include <environment.h>
+#include <fastboot.h>
+#include <fcntl.h>
+#include <file-list.h>
+#include <globalvar.h>
+#include <gpio.h>
+#include <hab.h>
+#include <init.h>
+#include <pinctrl.h>
+#include <string.h>
+#include <system-partitions.h>
+#include <watchdog.h>
+
+#include <linux/string.h>
+#include <linux/usb/gadget-multi.h>
+
+#include <mach/imx/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/ocotp.h>
+#include <mach/imx/ocotp-fusemap.h>
+
+#include <boards/hgs/common.h>
+
+static bool hgs_first_boot;
+static bool hgs_enable_usbgadget;
+static struct hgs_machine *priv;
+
+static unsigned int hgs_get_key_idx(void)
+{
+	return CONFIG_HABV4_SRK_INDEX;
+}
+
+static void hgs_setup_default_machine_options(struct hgs_machine *machine)
+{
+	if (isempty(machine->mmc_alias))
+		machine->mmc_alias = "mmc2";
+
+	if (!barebox_hostname_is_valid(machine->hostname)) {
+		const char *fallback_host, *soc_uid;
+
+		switch (machine->type) {
+		case HGS_HW_GS05:
+			fallback_host = "GS05";
+			break;
+		default:
+			fallback_host = "unknown-hgs-host";
+			break;
+		}
+
+		free(machine->hostname);
+		soc_uid = getenv("soc0.serial_number");
+		machine->hostname = xasprintf("%s-%s", fallback_host, soc_uid);
+	}
+}
+
+static int hgs_mmc_ensure_probed(struct hgs_machine *machine)
+{
+	struct device_node *np;
+
+	/*
+	 * We can't use bootsource_*() helpers since the correct MMC device
+	 * needs to be available for USB-Serial-Download boots as well e.g.
+	 * during first setup which performs the eMMC setup.
+	 *
+	 * The barebox /dev/mmcX enumeration matches the OF aliases
+	 */
+	np = of_find_node_by_alias(NULL, machine->mmc_alias);
+	if (IS_ERR(np)) {
+		dev_err(machine->dev, "Failed to find /aliases/%s OF node\n",
+			machine->mmc_alias);
+		return PTR_ERR(np);
+	}
+
+	/* Ensure that the MMC and the below partitions are available */
+	machine->mmc_cdev = of_cdev_find(np);
+	if (IS_ERR(machine->mmc_cdev)) {
+		dev_err(machine->dev, "Failed to find /dev/%s\n",
+			machine->mmc_alias);
+		return PTR_ERR(np);
+	}
+
+	return 0;
+}
+
+static int hgs_fixup_names(struct hgs_machine *machine)
+{
+	const struct device *dev = machine->dev;
+	int err;
+
+	err = of_prepend_machine_compatible(NULL, machine->dts_compatible);
+	if (err) {
+		dev_err(dev, "Failed to fixup compatible\n");
+		return -EINVAL;
+	}
+
+	barebox_set_hostname(machine->hostname);
+	barebox_set_model(machine->model);
+
+	return 0;
+}
+
+static int hgs_setup_emmc(struct hgs_machine *machine)
+{
+	static const char * const mmc_commands[] = { "enh_area", "write_reliability" };
+	int partitioning_completed;
+	unsigned int i;
+	char *tmp;
+	int error;
+
+	tmp = xasprintf("%s.partitioning_completed", machine->mmc_alias);
+	getenv_bool(tmp, &partitioning_completed);
+	free(tmp);
+	if (partitioning_completed)
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(mmc_commands); i++) {
+		int error;
+
+		error = run_command("mmc %s /dev/%s", mmc_commands[i],
+				    machine->mmc_alias);
+		if (error) {
+			dev_err(machine->dev, "skip eMMC partition-complete\n");
+			return -EINVAL;
+		}
+	}
+
+	/* Make the final complete not part of the loop */
+	error = run_command("mmc partition_complete /dev/%s", machine->mmc_alias);
+	if (error)
+		return -EINVAL;
+
+	dev_info(machine->dev, "Initial eMMC setup completed successfully\n");
+	return 0;
+}
+
+static int
+hgs_fastboot_cmd_flash(struct fastboot *fb, struct file_list_entry *entry,
+			 const char *filename, size_t len)
+{
+	/*
+	 * Ensure to trigger a data partition wipe if the the eMMC is going to
+	 * be flashed.
+	 */
+	if (!strncmp(entry->name, "eMMC", 4))
+		globalvar_add_simple("linux.bootargs.hgs_datapart_handling",
+				     "format_data_partition");
+
+	/* We don't handle the flash, we just want to get notified */
+	return FASTBOOT_CMD_FALLTHROUGH;
+}
+
+static void hgs_register_bbu_handlers(struct hgs_machine *machine)
+{
+	char *dev;
+	int ret;
+
+	dev = xasprintf("/dev/%s", machine->mmc_alias);
+	ret = imx8m_bbu_internal_mmcboot_register_handler("eMMC", dev,
+						      BBU_HANDLER_FLAG_DEFAULT);
+	if (ret) {
+		dev_warn(machine->dev, "Failed to register bbu-eMMC\n");
+		free(dev);
+	}
+}
+
+static int hgs_console_open_fixup(struct device_node *root, void *context)
+{
+	struct hgs_machine *machine = context;
+	struct device_node *console_np;
+	struct property *property;
+
+	console_np = of_find_node_by_alias(root, machine->console_alias);
+	if (!console_np)
+		return -EINVAL;
+
+	property = of_rename_property(console_np, "pinctrl-1", "pinctrl-0");
+	if (!property)
+		return -EINVAL; /* pinctrl-1 not found */
+
+	return 0;
+}
+
+static int hgs_open_console(struct hgs_machine *machine)
+{
+	struct console_device *console;
+	struct pinctrl *pinctrl;
+	int err;
+
+	err = of_device_ensure_probed_by_alias(machine->console_alias);
+	if (err)
+		return err;
+
+	console = of_console_get_by_alias(machine->console_alias);
+	if (!console)
+		return -EINVAL;
+
+	pinctrl = pinctrl_get_select(console->dev, "uart");
+	if (IS_ERR(pinctrl))
+		return PTR_ERR(pinctrl);
+
+	err = console_set_active(console, CONSOLE_STDIOE);
+	if (err)
+		return err;
+
+	console_set_stdoutpath(console, CONFIG_BAUDRATE);
+
+	of_register_fixup(hgs_console_open_fixup, machine);
+
+	return 0;
+}
+
+static bool
+hgs_data_partition_available(struct hgs_machine *machine)
+{
+	struct cdev *data_cdev;
+
+	data_cdev = cdev_find_partition(machine->mmc_cdev, "data");
+	/*
+	 * MMC needs to be formated if the data partition is not available.
+	 * This is a valid use-case.
+	 */
+	if (!data_cdev) {
+		dev_info(machine->dev, "MMC data partition not found, trigger (re-)format\n");
+		return false;
+	}
+
+	if (!cdev_is_block_partition(data_cdev)) {
+		dev_warn(machine->dev, "%s is not a block device, trigger (re-)format\n",
+			 cdev_name(data_cdev));
+		return false;
+	}
+
+	return true;
+}
+
+static void hgs_set_common_boot_options(struct hgs_machine *machine)
+{
+	boot_set_default("bootchooser rescue");
+
+	/*
+	 * Check if the data partition does exist and if not inform the
+	 * userspace to (re-)format the data partition.
+	 */
+	if (!hgs_data_partition_available(machine))
+		globalvar_add_simple("linux.bootargs.hgs_datapart_handling",
+				     "format_data_partition");
+}
+
+static bool hgs_field_return_mode(struct hgs_machine *machine)
+{
+	const struct device *dev = machine->dev;
+	unsigned int field_return = 0;
+	int ret;
+
+	ret = imx_ocotp_read_field(MX8M_OCOTP_FIELD_RETURN, &field_return);
+	if (ret) {
+		dev_err(dev, "Failed to query the field-return status\n");
+		return false;
+	}
+
+	return field_return;
+}
+
+static int hgs_development_boot(struct hgs_machine *machine)
+{
+	const char *run_mode;
+
+	/* Allow barebox rw environment */
+	of_device_enable_path("/chosen/environment-emmc");
+
+	if (hgs_field_return_mode(machine))
+		run_mode = "field_return_mode";
+	else
+		run_mode = "developer_mode";
+
+	/* Inform user-space about the run mode */
+	globalvar_add_simple("linux.bootargs.hgs_runmode", run_mode);
+
+	/*
+	 * Init system.partitions for fastboot default, can be overridden in
+	 * dev-mode via nv
+	 */
+	globalvar_add_simple("system.partitions", "/dev/mmc2(eMMC)");
+
+	hgs_enable_usbgadget = true;
+
+	/* Allow shell and mux stdin and stdout correctly */
+	return hgs_open_console(machine);
+}
+
+static int hgs_release_boot(struct hgs_machine *machine)
+{
+	set_fastboot_bbu(0);
+	usbgadget_autostart(0);
+
+	/* Only signed fit images are allowed */
+	bootm_force_signed_images();
+
+	/*
+	 * Explicit disable the console else the kernel may grap any console
+	 * which is available. This can cause issues like BT issues, because
+	 * the kernel may grap the BT serdev.
+	 */
+	globalvar_add_simple("linux.bootargs.console", "console=\"\"");
+
+	return 0;
+}
+
+static int hgs_run_first_boot(struct hgs_machine *machine)
+{
+	hgs_first_boot = true;
+
+	hgs_open_console(machine);
+
+	hgs_enable_usbgadget = true;
+
+	/*
+	 * Prohibit booting for the first boot and instead wait for explicit
+	 * fastboot reset command.
+	 */
+	boot_set_default("does-not-exist");
+	set_autoboot_state(AUTOBOOT_ABORT);
+
+	/*
+	 * Now we need to wait for the fastboot to reset the device to finish
+	 * the eMMC setup and to boot from eMMC boot partition next time.
+	 */
+	return 0;
+}
+
+static bool hgs_is_first_boot(struct hgs_machine *machine)
+{
+	/*
+	 * Allow machines which are in early development stage to skip the
+	 * initial setup
+	 */
+	if (machine->skip_firstboot_setup) {
+		dev_warn(machine->dev, "Skipping first boot procedure on development device!\n");
+		return false;
+	}
+
+	/* Device is not locked down -> this is the first boot */
+	if (!imx_hab_device_locked_down())
+		return true;
+
+	return false;
+}
+
+static int hgs_verify_key_usage(struct hgs_machine *machine)
+{
+	unsigned int current_key = hgs_get_key_idx();
+	unsigned int revoked_keys_map;
+	int ret = 0;
+	int key;
+
+	/* Nothing to do for us */
+	if (current_key == 0)
+		goto out;
+
+	if (bootsource_get() == BOOTSOURCE_SERIAL)
+		goto out;
+
+	ret = imx_ocotp_read_field(MX8M_OCOTP_SRK_REVOKE, &revoked_keys_map);
+	if (ret)
+		goto out;
+
+	/* Revoke all key below the current one */
+	for (key = current_key - 1; key >= 0; key--) {
+		/* Key is already revoked -> skip */
+		if (revoked_keys_map & BIT(key))
+			continue;
+		dev_info(machine->dev, "Revoking SRK key %i\n", key);
+		imx_hab_revoke_key(key, true);
+	}
+
+out:
+	imx_ocotp_lock_srk_revoke();
+	return ret;
+}
+
+static int hgs_open_device(void)
+{
+	/*
+	 * Expose barebox fastboot partition and enable fastboot to let the user
+	 * flash an development barebox and to reboot the system via fastboot.
+	 */
+	hgs_enable_usbgadget = true;
+
+	/*
+	 * Prohibit booting and instead wait for explicit fastboot reset
+	 * command. This is required to let the i.MX8M hardware re-evaluate the
+	 * FIELD_RETURN fuse again.
+	 */
+	boot_set_default("does-not-exist");
+	set_autoboot_state(AUTOBOOT_ABORT);
+
+	/* Field return unlocked -> we need to open the device */
+	return imx_hab_field_return(true);
+}
+
+static bool hgs_open_device_request(void)
+{
+	if (IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN)) {
+		if (!imx_ocotp_field_return_locked())
+			return true;
+	}
+
+	return false;
+}
+
+int hgs_common_boot(struct hgs_machine *machine)
+{
+	int ret;
+
+	hgs_setup_default_machine_options(machine);
+
+	ret = hgs_mmc_ensure_probed(machine);
+	if (ret)
+		return ret;
+
+	ret = hgs_fixup_names(machine);
+	if (ret)
+		return ret;
+
+	hgs_register_bbu_handlers(machine);
+
+	priv = machine;
+
+	if (hgs_is_first_boot(machine))
+		return hgs_run_first_boot(machine);
+
+	if (hgs_open_device_request())
+		return hgs_open_device();
+
+	ret = hgs_verify_key_usage(machine);
+	if (ret)
+		return ret;
+
+	hgs_set_common_boot_options(machine);
+
+	if (hgs_get_built_type() == HGS_DEV_BUILD)
+		return hgs_development_boot(machine);
+	else
+		return hgs_release_boot(machine);
+}
+
+/* --------------------- Additional initcalls ---------------------- */
+struct hgs_fusemap {
+	uint32_t field;
+	unsigned int val;
+};
+
+#define SIMPLE_FUSE(fuse)	\
+{				\
+	.field = fuse,		\
+	.val = 0x1,		\
+}
+
+#define CUSTOM_FUSE(fuse, _val)	\
+{				\
+	.field = fuse,		\
+	.val = _val,		\
+}
+
+/*
+ * We need to run this after the environment_initcall() is done since we need
+ * access to /env.
+ */
+static int hgs_run_first_boot_setup(void)
+{
+	unsigned int flags = IMX_SRK_HASH_WRITE_PERMANENT |
+			     IMX_SRK_HASH_WRITE_LOCK;
+	const struct hgs_fusemap common_fusemap[] = {
+		/* Security */
+		/* MX8M_OCOTP_SEC_CONFIG[1] is done during imx_hab_lockdown_device() */
+		/* MX8M_OCOTP_SRK_HASH[255:0] is done during imx_hab_write_srk_hash_file() */
+		SIMPLE_FUSE(MX8M_OCOTP_TZASC_EN),
+		/* Debug */
+		SIMPLE_FUSE(MX8M_OCOTP_KTE),
+		SIMPLE_FUSE(MX8M_OCOTP_SJC_DISABLE),
+		CUSTOM_FUSE(MX8M_OCOTP_JTAG_SMODE, 0x3),
+		SIMPLE_FUSE(MX8M_OCOTP_JTAG_HEO),
+		/* Boot */
+		SIMPLE_FUSE(MX8M_OCOTP_FORCE_COLD_BOOT),
+		SIMPLE_FUSE(MX8M_OCOTP_RECOVERY_SDMMC_BOOT_DIS),
+		/* eFuse locks */
+		CUSTOM_FUSE(MX8M_OCOTP_USB_ID_LOCK, 0x3),
+		SIMPLE_FUSE(MX8M_OCOTP_SJC_RESP_LOCK),
+		/* MX8M_OCOTP_SRK_LOCK is done during imx_hab_write_srk_hash_file() */
+	};
+	const struct hgs_fusemap imx8mp_fusemap[] = {
+		/* Boot */
+		SIMPLE_FUSE(MX8MP_OCOTP_ROM_NO_LOG),
+	};
+	const struct hgs_fusemap *iter;
+	struct device *dev = priv->dev;
+	struct watchdog *wdg;
+	unsigned int i;
+	int err;
+
+	if (!hgs_first_boot)
+		return 0;
+
+	/* Before doing anything inform the EFI to not power-cycle us */
+	wdg = watchdog_get_by_name("efiwdt");
+	if (wdg) {
+		err = watchdog_ping(wdg);
+		if (err)
+			dev_warn(dev, "Failed to ping the EFI watchdog\n");
+	} else {
+		dev_warn(dev, "Failed to find and ping EFI watchdog\n");
+	}
+
+	/* eMMC setup must always run first! */
+	err = hgs_setup_emmc(priv);
+	if (err)
+		return err;
+
+	err = imx_hab_write_srk_hash_file("/env/imx-srk-fuse.bin", flags);
+	if (err && err != -EEXIST) {
+		dev_err(dev, "Failed to burn SRK fuses\n");
+		return err;
+	}
+	dev_info(dev, "SRK fuses burnt successfully\n");
+
+	err = imx_ocotp_permanent_write(1);
+	if (err) {
+		dev_err(dev, "Failed to enable permanent write\n");
+		return err;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(common_fusemap); i++) {
+		iter = &common_fusemap[i];
+		err = imx_ocotp_write_field(iter->field, iter->val);
+	}
+
+	if (cpu_is_mx8mp()) {
+		for (i = 0; i < ARRAY_SIZE(imx8mp_fusemap); i++) {
+			iter = &imx8mp_fusemap[i];
+			err = imx_ocotp_write_field(iter->field, iter->val);
+		}
+	}
+
+	imx_ocotp_permanent_write(0);
+
+	if (err) {
+		dev_err(dev, "Failed to burn individual fuses\n");
+		return err;
+	}
+	dev_info(dev, "Burning of individual fuses succeeded\n");
+
+	/*
+	 * Lockdown the device at the end since this signals barebox that the
+	 * initial (first-boot) is done.
+	 */
+	err = imx_hab_lockdown_device(flags);
+	if (err) {
+		dev_err(dev, "Failed to lockdown the device\n");
+		return err;
+	}
+	dev_info(dev, "Lockdown of the device succeeded\n");
+	return 0;
+}
+
+/*
+ * Notify the PP4 at the latest point to ensure that barebox was started
+ * properly. If this function is not reached the PP4 timeout of 10sec is
+ * triggered which puts us into serial-downloader mode.
+ */
+static int hgs_notify_pp4(void)
+{
+	struct device *efi;
+	int ret;
+
+	efi = get_device_by_name("efi");
+	ret = dev_set_param(efi, "cpu_rdy", "1");
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+/*
+ * Custom USB gadget handling since we need to get notified upon the flash of
+ * the data partition. The setup is done very late like the
+ * usbgadget_autostart_init() since we need to ensure that the NV is loaded
+ * properly for development case.
+ */
+static int hgs_usbgadget_autostart(void)
+{
+	struct usbgadget_funcs funcs = {};
+	struct f_multi_opts *opts;
+	int ret;
+
+	if (!hgs_enable_usbgadget)
+		return 0;
+
+	/*
+	 * Some HW is missing a HW serial connecotr. Fastboot is used for file
+	 * download.
+	 */
+	funcs.flags |= USBGADGET_EXPORT_BBU | USBGADGET_FASTBOOT | USBGADGET_ACM;
+
+	opts = usbgadget_prepare(&funcs);
+	if (IS_ERR(opts))
+		return PTR_ERR(opts);
+
+	/* Custom hook to get notified once the user want to flash something */
+	opts->fastboot_opts.cmd_flash = hgs_fastboot_cmd_flash;
+
+	ret = usbgadget_register(opts);
+	if (ret)
+		usb_multi_opts_release(opts);
+
+	return ret;
+}
+
+static int hgs_postenvironment_initcall(void)
+{
+	int ret;
+
+	/*
+	 * Guard this initcall via 'priv' which is set
+	 * during hgs_common_boot().
+	 */
+	if (!priv)
+		return 0;
+
+	ret = hgs_notify_pp4();
+	if (ret)
+		return ret;
+
+	ret = hgs_run_first_boot_setup();
+	if (ret)
+		return ret;
+
+	ret = hgs_usbgadget_autostart();
+	if (ret)
+		return ret;
+
+	return 0;
+}
+postenvironment_initcall(hgs_postenvironment_initcall);
diff --git a/common/boards/hgs/lib.c b/common/boards/hgs/lib.c
new file mode 100644
index 0000000000000000000000000000000000000000..d7d8c4314c07bf84f5264d5e7a919761e2feedc9
--- /dev/null
+++ b/common/boards/hgs/lib.c
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Pengutronix
+// SPDX-FileCopyrightText: Leica Geosystems AG
+
+#define pr_fmt(fmt) "hgs-lib: " fmt
+
+#include <common.h>
+#include <linux/stddef.h>
+#include <linux/hex.h>
+
+#include <boards/hgs/common.h>
+
+#define HGS_BOARD_REV(_id, _str) {	\
+	.id = _id,			\
+	.str = _str,			\
+}
+
+#define HGS_BOARD_REV_SIMPLE(_id)	\
+	HGS_BOARD_REV(HGS_BOARD_REV##_id, #_id)
+
+static const struct hgs_board_revision hgs_revision_table[] = {
+	HGS_BOARD_REV_SIMPLE(_A),
+	HGS_BOARD_REV_SIMPLE(_B),
+	HGS_BOARD_REV_SIMPLE(_C),
+	HGS_BOARD_REV_SIMPLE(_D),
+	HGS_BOARD_REV_SIMPLE(_E),
+};
+
+const struct hgs_board_revision *
+hgs_get_rev_from_part_trace(const struct hgs_part_trace_code *code)
+{
+	const struct hgs_board_revision *rev;
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(hgs_revision_table); i++) {
+		rev = &hgs_revision_table[i];
+		if (!memcmp(code->material_revision, rev->str,
+		    sizeof(code->material_revision)))
+			return rev;
+	}
+
+	return NULL;
+}
+
+const u32
+hgs_get_artno_from_part_trace(const struct hgs_part_trace_code *code)
+{
+	__be32 res = 0;
+	u8 tmp[8];
+	int err;
+
+	/*
+	 * Art-no. has 7-digits, add a leading '0' to align it to 8 and make
+	 * use of hex2bin
+	 */
+	tmp[0] = '0';
+	memcpy(tmp + 1, code->art_number, sizeof(code->art_number));
+	err = hex2bin((u8 *)&res, tmp, sizeof(res));
+
+	return err ? 0 : be32_to_cpu(res);
+}
diff --git a/common/boards/hgs/pbl.c b/common/boards/hgs/pbl.c
new file mode 100644
index 0000000000000000000000000000000000000000..1d45545a93e9f6407a85b67c0e1aa203073c390e
--- /dev/null
+++ b/common/boards/hgs/pbl.c
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Pengutronix
+// SPDX-FileCopyrightText: Leica Geosystems AG
+
+#include <debug_ll.h>
+#include <pbl.h>
+
+#include <mach/imx/debug_ll.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx-gpio.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/iomux-mx8mp.h>
+#include <mach/imx/iomux-mx8mm.h>
+#include <mach/imx/iomux-v3.h>
+
+#include <boards/hgs/common.h>
+
+struct hgs_hw_early_cfg {;
+	void __iomem *uart_base;
+	void __iomem *iomux_base;
+
+	unsigned int pp4_gpio_num;
+	void __iomem *pp4_gpio_base;
+
+	iomux_v3_cfg_t *mux_cfg_rel;
+	unsigned int mux_cfg_rel_num;
+	iomux_v3_cfg_t *mux_cfg_dev;
+	unsigned int mux_cfg_dev_num;
+};
+
+#define GS05_UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
+#define GS05_PP4_PAD_CTRL	MUX_PAD_CTRL(MX8MM_PAD_CTL_PE | MX8MM_PAD_CTL_DSE6)
+
+/* Mux console pads explicit to GPIO */
+static iomux_v3_cfg_t hgs_gs05_iomuxc_release[] = {
+	IMX8MM_PAD_UART3_TXD_GPIO5_IO27 | GS05_UART_PAD_CTRL,
+	IMX8MM_PAD_UART3_RXD_GPIO5_IO26 | GS05_UART_PAD_CTRL,
+	IMX8MM_PAD_GPIO1_IO10_GPIO1_IO10 | GS05_PP4_PAD_CTRL,
+};
+
+static iomux_v3_cfg_t hgs_gs05_iomuxc_development[] = {
+	IMX8MM_PAD_UART3_TXD_UART3_TX | GS05_UART_PAD_CTRL,
+	IMX8MM_PAD_GPIO1_IO10_GPIO1_IO10 | GS05_PP4_PAD_CTRL,
+};
+
+static struct hgs_hw_early_cfg hgs_hw_early_config[] = {
+	[HGS_HW_GS05] = {
+		.uart_base = IOMEM(MX8M_UART3_BASE_ADDR),
+		.iomux_base = IOMEM(MX8MM_IOMUXC_BASE_ADDR),
+		.pp4_gpio_num = 10,
+		.pp4_gpio_base = IOMEM(MX8MM_GPIO1_BASE_ADDR),
+		.mux_cfg_rel = hgs_gs05_iomuxc_release,
+		.mux_cfg_rel_num = ARRAY_SIZE(hgs_gs05_iomuxc_release),
+		.mux_cfg_dev = hgs_gs05_iomuxc_development,
+		.mux_cfg_dev_num = ARRAY_SIZE(hgs_gs05_iomuxc_development),
+	},
+};
+
+static void hgs_early_setup_iomuxc(struct hgs_hw_early_cfg *cfg)
+{
+	unsigned int mux_cfg_num, i;
+	iomux_v3_cfg_t *mux_cfg;
+
+	if (!cfg)
+		return;
+
+	if (hgs_get_built_type() == HGS_DEV_BUILD) {
+		mux_cfg_num = cfg->mux_cfg_dev_num;
+		mux_cfg = cfg->mux_cfg_dev;
+	} else {
+		mux_cfg_num = cfg->mux_cfg_rel_num;
+		mux_cfg = cfg->mux_cfg_rel;
+	}
+
+	for (i = 0; i < mux_cfg_num; i++)
+		imx8m_setup_pad(cfg->iomux_base, mux_cfg[i]);
+}
+
+void hgs_early_hw_init(const enum hgs_hw hw)
+{
+	struct hgs_hw_early_cfg *cfg = &hgs_hw_early_config[hw];
+	void __iomem *uart = cfg->uart_base;
+
+	hgs_early_setup_iomuxc(cfg);
+
+	/* Set PP4 CPU_RDY signal to 0 till barebox is fully booted */
+	imx8m_gpio_direction_output(cfg->pp4_gpio_base, cfg->pp4_gpio_num, 0);
+
+	/*
+	 * UART enable could be skipped in release use-case but the TF-A
+	 * requires a running UART. Therefore we keep it on but mux the pads to
+	 * GPIO functions.
+	 */
+	imx8m_early_setup_uart_clock();
+	imx8m_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
diff --git a/images/Makefile.imx b/images/Makefile.imx
index f66c0af6a43283a616933a2b2a137754b8a68240..0cc2cb29f0f7caf37794c243b1c7edbb07a9c7f0 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -493,6 +493,8 @@ $(call build_imx8m_habv4img, CONFIG_MACH_PROTONIC_IMX8M, start_prt_prt8mm, proto
 
 $(call build_imx8m_habv4img, CONFIG_MACH_INNOCOMM_WB15, start_innocomm_wb15_evk, innocomm-imx8mm-wb15/flash-header-imx8mm-wb15, innocomm-imx8mm-wb15-evk)
 
+$(call build_imx8m_habv4img, CONFIG_MACH_HGS_GS05, start_hgs_gs05, hgs-gs05/flash-header-gs05, hgs-gs05)
+
 # ----------------------- i.MX8mn based boards --------------------------
 $(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MN_EVK, start_nxp_imx8mn_evk, nxp-imx8mn-evk/flash-header-imx8mn-evk, nxp-imx8mn-evk)
 
diff --git a/include/boards/hgs/common.h b/include/boards/hgs/common.h
new file mode 100644
index 0000000000000000000000000000000000000000..8e30e614dbf5f89c98de596197c68b8748c92034
--- /dev/null
+++ b/include/boards/hgs/common.h
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2025 Pengutronix */
+/* SPDX-FileCopyrightText: Leica Geosystems AG */
+
+#ifndef HGS_COMMON_H
+#define HGS_COMMON_H
+
+#include <linux/types.h>
+
+enum hgs_hw {
+	HGS_HW_GS05,
+	NUM_HGS_HW
+};
+
+enum hgs_built_type {
+	HGS_DEV_BUILD,
+	HGS_REL_BUILD
+};
+
+struct hgs_part_trace_code {
+	/* Art. Number (e.g. 0983441 – if 6 digit add 0 before) */
+	u8 art_number[7];
+	/* Material Revision (_A,_B,...,_Z,AA,AB,...,ZZ) */
+	u8 material_revision[2];
+	/* Vendor id of component manufacturer */
+	u8 vendor_id[7];
+	/* Production lot date (YYYYMMDD) */
+	u8 production_date[8];
+	/* Consecutive number (restart 00001 for each production date) */
+	u8 consecutive_number[5];
+} __packed;
+
+enum hgs_board_rev {
+	HGS_BOARD_REV_A,
+	HGS_BOARD_REV_B,
+	HGS_BOARD_REV_C,
+	HGS_BOARD_REV_D,
+	HGS_BOARD_REV_E,
+};
+
+struct hgs_board_revision {
+	enum hgs_board_rev id;
+	const char *str;
+};
+
+#define HGS_MACHINE(_revid, _comp, _model) {	\
+	.revision	= _revid,		\
+	.dts_compatible	= _comp,		\
+	.model		= _model		\
+}
+
+struct hgs_machine {
+	enum hgs_hw type;
+	struct device *dev;
+	enum hgs_board_rev revision;
+	const char *dts_compatible;
+	const char *console_alias;
+	const char *model;
+	const char *mmc_alias;
+	struct cdev *mmc_cdev;
+	char *hostname;
+
+	bool skip_firstboot_setup;
+};
+
+static inline enum hgs_built_type hgs_get_built_type(void)
+{
+	return CONFIG_HABV4_SRK_INDEX == 0 ? HGS_DEV_BUILD : HGS_REL_BUILD;
+}
+
+enum hgs_tag;
+
+void hgs_early_hw_init(enum hgs_hw hw);
+int hgs_common_boot(struct hgs_machine *machine);
+
+/* Helper functions */
+const struct hgs_board_revision *
+hgs_get_rev_from_part_trace(const struct hgs_part_trace_code *code);
+const u32
+hgs_get_artno_from_part_trace(const struct hgs_part_trace_code *code);
+
+#endif /* HGS_COMMON_H */

-- 
2.47.3



