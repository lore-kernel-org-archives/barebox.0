Delivery-date: Thu, 12 Mar 2026 12:35:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eJx-00AnyQ-2w
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 12:35:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eJx-0005bZ-QD
	for lore@pengutronix.de; Thu, 12 Mar 2026 12:35:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zPwS1hjy38KU54+YHmRf6FFId+28ZWBMRxukon0vCgE=; b=ZhvzgyKB0lN1XTVc8qD0bcsKCR
	7mMQHqtFrX+DuQOpSHNAKD89czciuwm3TtCWNoRyCMSO8mcq4VobKhHU4I7bZJwWZYngWNZhdlqv2
	l9nEcZvrVIzp1lgKI4eEYGaT1Bm/8CCZ2W7iG5uNOh9H8I+dh3fr23RtjxdXjZ0ZoOBRYaPjp8Enl
	3gvi7eikTvmBMLoPW/xZXI14dHV5VbbuCdxcTGuxi/ag6Ezoz/gOrRK0f0A7jUp3A26jCBpGqAsBq
	7wTXUR694KmlD7x99x6Lfdxpoi6AP2K/ra/6fW2Sw+t4kF3jnnwCD0rU3NSd/Q7xFxfu/jkoQW2sn
	H+/ucqjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eJR-0000000DxkO-2GEq;
	Thu, 12 Mar 2026 11:34:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eJP-0000000DxjP-3bZ5
	for barebox@bombadil.infradead.org;
	Thu, 12 Mar 2026 11:34:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=zPwS1hjy38KU54+YHmRf6FFId+28ZWBMRxukon0vCgE=; b=AxfiW3FgNteVCAfP3Llotyqsa+
	FTNSbZPxEQnewJK+hF4Bfy6C0Ylz4rjiZD1mq+vUdWyl8GIB8N1Qoi598KEwwxfZscEFBMrZZYuhN
	Ol3whg0cLtUJyvjCtXjE1TFVV4pj5jgueFmoyK4pffCOZXAt/KL9xPCB5pIGYvKIwGyGKlhTZoE+9
	FYQBaO+j4KvM12mK6usfL6f9bOhCRBN8Edwyc8trPNYm2rGa2LWNWnKKuSH9qgUtoRUZoa+yCftJH
	ypGHYL6eNUO9huisXTIr+Y6DTbr93OfVmtd1K6oRYTx20ucJ0M0HZCkGK8LLy8PfMyE7q45lfuOaO
	M7Lamrow==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eJN-000000011p2-05BM
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 11:34:42 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w0eJM-0005Mw-1P; Thu, 12 Mar 2026 12:34:40 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 12 Mar 2026 12:34:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-v2026-01-0-topic-tqma8mpxs-v4-1-88472a13347d@pengutronix.de>
References: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
In-Reply-To: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_113441_169839_9BF7F2C7 
X-CRM114-Status: GOOD (  16.40  )
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
Subject: [PATCH v4 1/3] ARM: boards: tqma8mpxl: rename to tqma8mpxx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a preparation commit before adding support for the tqma8mpxs
module from TQ with nearly identical settings.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 Documentation/migration-guides/migration-master.md       | 10 ++++++++++
 arch/arm/boards/Makefile                                 |  2 +-
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/Makefile        |  0
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/board.c         | 16 ++++++++--------
 .../flash-header-tqma8mpxx.imxcfg}                       |  0
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/lowlevel.c      |  6 +++---
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/lpddr4-timing.c |  0
 arch/arm/configs/imx_v8_defconfig                        |  2 +-
 arch/arm/configs/multi_v8_defconfig                      |  2 +-
 arch/arm/dts/Makefile                                    |  2 +-
 arch/arm/mach-imx/Kconfig                                |  2 +-
 images/Makefile.imx                                      |  2 +-
 12 files changed, 27 insertions(+), 17 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.md b/Documentation/migration-guides/migration-master.md
new file mode 100644
index 0000000000..0cf45d0713
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.md
@@ -0,0 +1,10 @@
+:orphan:
+
+Boards
+------
+
+TQMA8MPxL
+^^^^^^^^^
+
+The config option has been renamed from MACH_TQ_MBA8MPXL to MACH_TQ_MBA8MPXX to
+accommodate the support for TQMA8MPxS boards with the same binary.
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index afc50051a2..ab4e74f592 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -75,7 +75,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
 obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
 obj-$(CONFIG_MACH_NXP_IMX93_FRDM)		+= nxp-imx93-frdm/
 obj-$(CONFIG_MACH_CONGATEC_QMX8P_SOM)		+= congatec-qmx8p/
-obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
+obj-$(CONFIG_MACH_TQ_MBA8MPXX)			+= tqma8mpxx/
 obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
 obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
diff --git a/arch/arm/boards/tqma8mpxl/Makefile b/arch/arm/boards/tqma8mpxx/Makefile
similarity index 100%
rename from arch/arm/boards/tqma8mpxl/Makefile
rename to arch/arm/boards/tqma8mpxx/Makefile
diff --git a/arch/arm/boards/tqma8mpxl/board.c b/arch/arm/boards/tqma8mpxx/board.c
similarity index 76%
rename from arch/arm/boards/tqma8mpxl/board.c
rename to arch/arm/boards/tqma8mpxx/board.c
index 459e180a57..b39cb048ef 100644
--- a/arch/arm/boards/tqma8mpxl/board.c
+++ b/arch/arm/boards/tqma8mpxx/board.c
@@ -16,7 +16,7 @@
 #include <envfs.h>
 #include <string.h>
 
-static int tqma8mpxl_probe(struct device *dev)
+static int tqma8mpxx_probe(struct device *dev)
 {
 	const char *emmc, *sd;
 	int emmc_bbu_flag = 0;
@@ -43,15 +43,15 @@ static int tqma8mpxl_probe(struct device *dev)
 	return 0;
 }
 
-static const struct of_device_id tqma8mpxl_of_match[] = {
+static const struct of_device_id tqma8mpxx_of_match[] = {
 	{ .compatible = "tq,imx8mp-tqma8mpql" },
 	{ /* sentinel */ },
 };
-BAREBOX_DEEP_PROBE_ENABLE(tqma8mpxl_of_match);
+BAREBOX_DEEP_PROBE_ENABLE(tqma8mpxx_of_match);
 
-static struct driver tqma8mpxl_board_driver = {
-	.name = "board-tqma8mpxl",
-	.probe = tqma8mpxl_probe,
-	.of_compatible = DRV_OF_COMPAT(tqma8mpxl_of_match),
+static struct driver tqma8mpxx_board_driver = {
+	.name = "board-tqma8mpxx",
+	.probe = tqma8mpxx_probe,
+	.of_compatible = DRV_OF_COMPAT(tqma8mpxx_of_match),
 };
-device_platform_driver(tqma8mpxl_board_driver);
+device_platform_driver(tqma8mpxx_board_driver);
diff --git a/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg b/arch/arm/boards/tqma8mpxx/flash-header-tqma8mpxx.imxcfg
similarity index 100%
rename from arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
rename to arch/arm/boards/tqma8mpxx/flash-header-tqma8mpxx.imxcfg
diff --git a/arch/arm/boards/tqma8mpxl/lowlevel.c b/arch/arm/boards/tqma8mpxx/lowlevel.c
similarity index 95%
rename from arch/arm/boards/tqma8mpxl/lowlevel.c
rename to arch/arm/boards/tqma8mpxx/lowlevel.c
index e0a0f17d3a..75d2cd9241 100644
--- a/arch/arm/boards/tqma8mpxl/lowlevel.c
+++ b/arch/arm/boards/tqma8mpxx/lowlevel.c
@@ -81,7 +81,7 @@ static void power_init_board(void)
 	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
 }
 
-static __noreturn noinline void tqma8mpxl_start(void)
+static __noreturn noinline void tqma8mpxx_start(void)
 {
 	extern char __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start[];
 
@@ -102,12 +102,12 @@ static __noreturn noinline void tqma8mpxl_start(void)
 	imx8mp_barebox_entry(__dtb_z_imx8mp_tqma8mpql_mba8mpxl_start);
 }
 
-ENTRY_FUNCTION(start_tqma8mpxl, x0, x1, x2)
+ENTRY_FUNCTION(start_tqma8mpxx, x0, x1, x2)
 {
 	imx8mp_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
 	setup_c();
 
-	tqma8mpxl_start();
+	tqma8mpxx_start();
 }
diff --git a/arch/arm/boards/tqma8mpxl/lpddr4-timing.c b/arch/arm/boards/tqma8mpxx/lpddr4-timing.c
similarity index 100%
rename from arch/arm/boards/tqma8mpxl/lpddr4-timing.c
rename to arch/arm/boards/tqma8mpxx/lpddr4-timing.c
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index af071e4d83..e080a7db9b 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -12,7 +12,7 @@ CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
 CONFIG_MACH_POLYHEX_DEBIX=y
 CONFIG_MACH_PROTONIC_IMX8M=y
 CONFIG_MACH_SKOV_IMX8MP=y
-CONFIG_MACH_TQ_MBA8MPXL=y
+CONFIG_MACH_TQ_MBA8MPXX=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX93=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 6fe8ab3463..1553c47fab 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -21,7 +21,7 @@ CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
 CONFIG_MACH_POLYHEX_DEBIX=y
 CONFIG_MACH_PROTONIC_IMX8M=y
 CONFIG_MACH_SKOV_IMX8MP=y
-CONFIG_MACH_TQ_MBA8MPXL=y
+CONFIG_MACH_TQ_MBA8MPXX=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX93=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index dd7482aa05..369f5c513b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -184,7 +184,7 @@ lwl-$(CONFIG_MACH_NXP_IMX8MP_EVK) += imx8mp-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX93_FRDM) += imx93-frdm.dtb.o
 lwl-$(CONFIG_MACH_INNOCOMM_WB15) += imx8mm-innocomm-wb15-evk.dtb.o
-lwl-$(CONFIG_MACH_TQ_MBA8MPXL) += imx8mp-tqma8mpql-mba8mpxl.dtb.o
+lwl-$(CONFIG_MACH_TQ_MBA8MPXX) += imx8mp-tqma8mpql-mba8mpxl.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_IMX6) += imx6dl-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index eb947e67fb..bdf3d3926e 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -742,7 +742,7 @@ config MACH_SKOV_IMX8MP
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 
-config MACH_TQ_MBA8MPXL
+config MACH_TQ_MBA8MPXX
 	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL Board"
 	select ARCH_IMX8MP
 	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
diff --git a/images/Makefile.imx b/images/Makefile.imx
index f66c0af6a4..0699f43fd7 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -505,7 +505,7 @@ $(call build_imx8m_habv4img, CONFIG_MACH_KARO_QSXP_ML81, start_karo_qsxp_ml81, k
 
 $(call build_imx8m_habv4img, CONFIG_MACH_SKOV_IMX8MP, start_skov_imx8mp, skov-imx8mp/flash-header-skov-imx8mp, skov-imx8mp)
 
-$(call build_imx8m_habv4img, CONFIG_MACH_TQ_MBA8MPXL, start_tqma8mpxl, tqma8mpxl/flash-header-tqma8mpxl, tqma8mpxl)
+$(call build_imx8m_habv4img, CONFIG_MACH_TQ_MBA8MPXX, start_tqma8mpxx, tqma8mpxx/flash-header-tqma8mpxx, tqma8mpxx)
 
 $(call build_imx8m_habv4img, CONFIG_MACH_POLYHEX_DEBIX, start_polyhex_debix, polyhex-debix/flash-header-polyhex-debix, polyhex-debix)
 

-- 
2.47.3



