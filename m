Delivery-date: Mon, 05 Feb 2024 08:46:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWtgk-003xO7-0n
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 08:46:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWtgk-0003OT-69
	for lore@pengutronix.de; Mon, 05 Feb 2024 08:46:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XFCENJr252c3hE5YZhsnaEO0vUEWHQlCdE1rI0RBvlo=; b=yljX0bL5Mj1GkHiAEhRcihtD56
	0SwDA5Egt7eygIyPDyMPVtJL6ApsuhEljgToKau/4cfdt0miviEsBjQS1YlOWeXBFXCbcmkT8ue5s
	HSQumJQtEmlUH4aFGHreEMHadcuvpU/Ec3XT2qNuJxp3eb/WjWgeDkLQcIHTBtc0cDxrtWfyQyCkC
	dfB+RXu/GlqLefhxMEvFFNv5AeupqWd9CGqpo2lJW/CbU9esGcBHhdRQaJ5tZEHbfJ8hqxy9Agt9g
	EeuLGbxe3XyHjP6ouJTNjM6IyPbJMMuIA2cXzGIpMUpdACTfNed61vg7JdhkWPZDBrLOgy7Ofg5RB
	HDGHL3Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtg5-00000002KlH-2NnW;
	Mon, 05 Feb 2024 07:46:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtfz-00000002KhS-180w
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 07:46:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtfu-000325-Q9; Mon, 05 Feb 2024 08:45:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtfu-004aUb-D7; Mon, 05 Feb 2024 08:45:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtfu-008PtL-0y;
	Mon, 05 Feb 2024 08:45:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  5 Feb 2024 08:45:52 +0100
Message-Id: <20240205074553.2005284-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240205074553.2005284-1-s.hauer@pengutronix.de>
References: <20240205074553.2005284-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_234559_380308_21A10846 
X-CRM114-Status: GOOD (  12.03  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 7/8] ARM: i.MX9: rename TQ i.MX93 board to TQMA93XX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TQ i.MX93 boards come in different variants, all of which can
be identified with an EEPROM. We can support all variants in a single
image, so rename the tqmba9xxxca, which is only one variant, to TQMA93XX
which can be used as a name covering all variants.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                                    | 2 +-
 arch/arm/boards/{tqmba9xxxca => tqma93xx}/Makefile          | 0
 arch/arm/boards/{tqmba9xxxca => tqma93xx}/board.c           | 0
 arch/arm/boards/{tqmba9xxxca => tqma93xx}/lowlevel.c        | 6 +++---
 .../{tqmba9xxxca => tqma93xx}/lpddr4x_tqma93xxca_timing.c   | 0
 arch/arm/configs/imx_v8_defconfig                           | 2 +-
 arch/arm/configs/multi_v8_defconfig                         | 2 +-
 arch/arm/dts/Makefile                                       | 2 +-
 arch/arm/mach-imx/Kconfig                                   | 4 ++--
 images/Makefile.imx                                         | 6 +++---
 10 files changed, 12 insertions(+), 12 deletions(-)
 rename arch/arm/boards/{tqmba9xxxca => tqma93xx}/Makefile (100%)
 rename arch/arm/boards/{tqmba9xxxca => tqma93xx}/board.c (100%)
 rename arch/arm/boards/{tqmba9xxxca => tqma93xx}/lowlevel.c (86%)
 rename arch/arm/boards/{tqmba9xxxca => tqma93xx}/lpddr4x_tqma93xxca_timing.c (100%)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 875d011573..e597b02be6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -200,4 +200,4 @@ obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
 obj-$(CONFIG_MACH_RADXA_ROCK5)			+= radxa-rock5/
 obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard-imx8mp/
 obj-$(CONFIG_MACH_RADXA_CM3)			+= radxa-cm3/
-obj-$(CONFIG_MACH_TQ_MBA9XXXCA)			+= tqmba9xxxca/
+obj-$(CONFIG_MACH_TQMA93XX)			+= tqma93xx/
diff --git a/arch/arm/boards/tqmba9xxxca/Makefile b/arch/arm/boards/tqma93xx/Makefile
similarity index 100%
rename from arch/arm/boards/tqmba9xxxca/Makefile
rename to arch/arm/boards/tqma93xx/Makefile
diff --git a/arch/arm/boards/tqmba9xxxca/board.c b/arch/arm/boards/tqma93xx/board.c
similarity index 100%
rename from arch/arm/boards/tqmba9xxxca/board.c
rename to arch/arm/boards/tqma93xx/board.c
diff --git a/arch/arm/boards/tqmba9xxxca/lowlevel.c b/arch/arm/boards/tqma93xx/lowlevel.c
similarity index 86%
rename from arch/arm/boards/tqmba9xxxca/lowlevel.c
rename to arch/arm/boards/tqma93xx/lowlevel.c
index 64913b8de9..9e2e0828ca 100644
--- a/arch/arm/boards/tqmba9xxxca/lowlevel.c
+++ b/arch/arm/boards/tqma93xx/lowlevel.c
@@ -15,7 +15,7 @@
 extern char __dtb_z_imx93_tqma9352_mba93xxca_start[];
 extern struct dram_timing_info tqma93xxca_dram_timing;
 
-static noinline void tqma9352_mba93xxca_continue(void)
+static noinline void tqma93xx_continue(void)
 {
 	void *base = IOMEM(MX9_UART1_BASE_ADDR);
 	void *muxbase = IOMEM(MX9_IOMUXC_BASE_ADDR);
@@ -34,7 +34,7 @@ static noinline void tqma9352_mba93xxca_continue(void)
 	imx93_barebox_entry(__dtb_z_imx93_tqma9352_mba93xxca_start);
 }
 
-ENTRY_FUNCTION(start_imx93_tqma9352_mba93xxca, r0, r1, r2)
+ENTRY_FUNCTION(start_imx93_tqma93xx, r0, r1, r2)
 {
 	if (current_el() == 3)
 		imx93_cpu_lowlevel_init();
@@ -42,5 +42,5 @@ ENTRY_FUNCTION(start_imx93_tqma9352_mba93xxca, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	tqma9352_mba93xxca_continue();
+	tqma93xx_continue();
 }
diff --git a/arch/arm/boards/tqmba9xxxca/lpddr4x_tqma93xxca_timing.c b/arch/arm/boards/tqma93xx/lpddr4x_tqma93xxca_timing.c
similarity index 100%
rename from arch/arm/boards/tqmba9xxxca/lpddr4x_tqma93xxca_timing.c
rename to arch/arm/boards/tqma93xx/lpddr4x_tqma93xxca_timing.c
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 731156e4fe..902c22e8b2 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -13,7 +13,7 @@ CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_64BIT=y
-CONFIG_MACH_TQ_MBA9XXXCA=y
+CONFIG_MACH_TQMA93XX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 677395b1f9..31d849bcce 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -18,7 +18,7 @@ CONFIG_MACH_SKOV_IMX8MP=y
 CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
-CONFIG_MACH_TQ_MBA9XXXCA=y
+CONFIG_MACH_TQMA93XX=y
 CONFIG_IMX_IIM=y
 CONFIG_ARCH_LAYERSCAPE_PPA=y
 CONFIG_MACH_LS1028ARDB=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 301014eaff..9b08fe5643 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -221,6 +221,6 @@ lwl-$(CONFIG_MACH_LS1021AIOT) += fsl-ls1021a-iot.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
 lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcustomboard.dtb.o
-lwl-$(CONFIG_MACH_TQ_MBA9XXXCA) += imx93-tqma9352-mba93xxca.dtb.o
+lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 60d01fe0f9..f52b7a4dd8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -732,8 +732,8 @@ config MACH_ZII_IMX8MQ_DEV
 
 comment "i.MX93 boards"
 
-config MACH_TQ_MBA9XXXCA
-	bool "TQ i.MX93 on MBa9xxxCA Board"
+config MACH_TQMA93XX
+	bool "TQ i.MX93 on TQMA93XX Board"
 	select ARCH_IMX93
 	select IMX9_DRAM
 	select FIRMWARE_IMX93_ATF
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 7f2f58b0f5..08496d36b7 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -509,6 +509,6 @@ cmd_imx9img = $(objtree)/scripts/imx9image -soc IMX9 -c -ap $< a55 0x2049A000 -o
 $(obj)/%.imx9img: $(obj)/% FORCE
 	$(call if_changed,imx9img)
 
-pblb-$(CONFIG_MACH_TQ_MBA9XXXCA) += start_imx93_tqma9352_mba93xxca
-FILE_barebox-tqmba9xxxca.img = start_imx93_tqma9352_mba93xxca.pblb.imx9img
-image-$(CONFIG_MACH_TQ_MBA9XXXCA) += barebox-tqmba9xxxca.img
+pblb-$(CONFIG_MACH_TQMA93XX) += start_imx93_tqma93xx
+FILE_barebox-tqma93xx.img = start_imx93_tqma93xx.pblb.imx9img
+image-$(CONFIG_MACH_TQMA93XX) += barebox-tqma93xx.img
-- 
2.39.2



