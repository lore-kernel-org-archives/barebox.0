Delivery-date: Wed, 26 Apr 2023 11:05:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prb63-000W7u-EK
	for lore@lore.pengutronix.de; Wed, 26 Apr 2023 11:05:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prb62-0003Mf-U3
	for lore@pengutronix.de; Wed, 26 Apr 2023 11:05:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yC4VyST7dYXU19Y/xMkgAnqwGvI7clvh5lNYcb7yoPE=; b=pe/Ap0DSaLLrcHWkoxurZf7qqC
	5D5EW6ZH1lHrcnvGYmqXoOHggM0oYTAPJpO3PLHivVqxyNxhgoLzpgU3yyADsJ3/MFVfxAolsOFJc
	kSXZ6FGs4VEHayFjvuQ1x1Fwr1+Zb5SUstyFBFzzgzjujsMtLoMJlETpSfTPCQbvL0N7dXO4IgL1p
	BfW9G82OEcjHkPM2iPiJQHVpwF6prEtrGF+Ruv8Me1KituwXvBnr8DlNeuhi+7pKCFwUvY5zOoP2T
	1MchoK0BVDimyO8x0noWJN5mzXURaP4tUzJcdkfsaJE/3vPGAb2laGwO/bxzd6/T5itC+BS8KlitC
	O2bIcF4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4l-003EAJ-10;
	Wed, 26 Apr 2023 09:04:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4i-003E9V-2m
	for barebox@bombadil.infradead.org;
	Wed, 26 Apr 2023 09:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yC4VyST7dYXU19Y/xMkgAnqwGvI7clvh5lNYcb7yoPE=; b=lflEvcUFCQmXn+UxsFZDB0Vf8K
	fkxIgW/pH2Gvp6Y/AzcPtlFeqygqPboeijPHnGugNzdWxAlvUSweNeIKmBkR/6w1L2CpGpelw7kb7
	+FW/PBE9BgHzeC9nAvO0xBQ6t/BhgC2j3vATOsXghdCnvNGHLJrVVpRm7AdDFKHVYZVv1Vht6dBJ+
	iM9HSQ+uyaeIK6CXF1DuedS2+Wj+e8FWckWQJWPa1r5jhz4S+V+RLYbsGJ0vaIUsaRR/TFj825Bu+
	VgIaR39khbECKvGB12sFQbm/xxD2bAtRJOQo/jYtjimM5vuA0jaS7lkGhXDFkxisCV9wGGoywUkkh
	bCTgqgwA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4e-00AubJ-0S
	for barebox@lists.infradead.org;
	Wed, 26 Apr 2023 09:04:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4Y-0002z7-Me; Wed, 26 Apr 2023 11:04:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4Y-00DtNb-0v; Wed, 26 Apr 2023 11:04:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4X-005nZe-7O; Wed, 26 Apr 2023 11:04:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 26 Apr 2023 11:03:54 +0200
Message-Id: <20230426090354.1350981-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426090354.1350981-1-s.hauer@pengutronix.de>
References: <20230426090354.1350981-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_100428_317054_EBB68B70 
X-CRM114-Status: GOOD (  12.67  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ARM: i.MX: make boards selectable only when firmware files are present
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some i.MX boards need firmware files in the source tree. Make the boards
depending on firmware files selectable only when the firmware is there
to avoid failing compilation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 74 ++++++++++++++++++++++++++-------------
 firmware/Kconfig          | 21 +++++++++++
 2 files changed, 70 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ef0e5fc561..e10e84faa7 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -555,11 +555,35 @@ if 64BIT
 
 comment "i.MX8M boards"
 
+if !FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+comment "LPDDR4 firmware files missing, some boards are not selectable"
+endif
+
+if !FIRMWARE_IMX_DDR4_PMU_TRAIN
+comment "DDR4 firmware files missing, some boards are not selectable"
+endif
+
+if !FIRMWARE_IMX8MM_ATF
+comment "i.MX8MM TF-A files missing, i.MX8MM boards are disabled"
+endif
+
+if !FIRMWARE_IMX8MQ_ATF
+comment "i.MX8MQ TF-A files missing, i.MX8MQ boards are disabled"
+endif
+
+if !FIRMWARE_IMX8MN_ATF
+comment "i.MX8MN TF-A files missing, i.MX8MN boards are disabled"
+endif
+
+if !FIRMWARE_IMX8MP_ATF
+comment "i.MX8MP TF-A files missing, i.MX8MP boards are disabled"
+endif
+
 config MACH_INNOCOMM_WB15
 	bool "InnoComm WB15 (i.MX8MM) EVK"
 	select ARCH_IMX8MM
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MM_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MM_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
@@ -570,8 +594,8 @@ config MACH_INNOCOMM_WB15
 config MACH_MNT_REFORM
 	bool "MNT Reform"
 	select ARCH_IMX8MQ
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MQ_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MQ_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select I2C_IMX_EARLY
@@ -579,8 +603,8 @@ config MACH_MNT_REFORM
 config MACH_NXP_IMX8MM_EVK
 	bool "NXP i.MX8MM EVK Board"
 	select ARCH_IMX8MM
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MM_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MM_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
@@ -590,9 +614,9 @@ config MACH_NXP_IMX8MM_EVK
 config MACH_NXP_IMX8MN_EVK
 	bool "NXP i.MX8MN EVK Board"
 	select ARCH_IMX8MN
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX_DDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MN_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX_DDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MN_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
@@ -601,8 +625,8 @@ config MACH_NXP_IMX8MN_EVK
 config MACH_NXP_IMX8MP_EVK
 	bool "NXP i.MX8MP EVK Board"
 	select ARCH_IMX8MP
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MP_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MP_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
@@ -611,24 +635,24 @@ config MACH_NXP_IMX8MP_EVK
 config MACH_NXP_IMX8MQ_EVK
 	bool "NXP i.MX8MQ EVK Board"
 	select ARCH_IMX8MQ
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MQ_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MQ_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 
 config MACH_PHYTEC_SOM_IMX8MQ
 	bool "Phytec i.MX8M SOM"
 	select ARCH_IMX8MQ
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MQ_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MQ_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 
 config MACH_POLYHEX_DEBIX
 	bool "Polyhex DEBIX Model-A/B (i.MX8MP) Board"
 	select ARCH_IMX8MP
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MP_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MP_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
@@ -637,8 +661,8 @@ config MACH_POLYHEX_DEBIX
 config MACH_PROTONIC_IMX8M
 	bool "Protonic-Holland i.MX8Mx based boards"
 	select ARCH_IMX8MM
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MM_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MM_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
@@ -647,8 +671,8 @@ config MACH_PROTONIC_IMX8M
 config MACH_TQ_MBA8MPXL
 	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL Board"
 	select ARCH_IMX8MP
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MP_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MP_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
@@ -657,8 +681,8 @@ config MACH_TQ_MBA8MPXL
 config MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP
 	bool "Variscite DT8MCustomBoard with DART-MX8M-PLUS"
 	select ARCH_IMX8MP
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MP_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MP_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
@@ -667,8 +691,8 @@ config MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP
 config MACH_ZII_IMX8MQ_DEV
 	bool "ZII i.MX8MQ based devices"
 	select ARCH_IMX8MQ
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MQ_ATF
+	depends on FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	depends on FIRMWARE_IMX8MQ_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select MACH_ZII_COMMON
diff --git a/firmware/Kconfig b/firmware/Kconfig
index a12a8f3044..0f76a836af 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -8,33 +8,54 @@ config EXTRA_FIRMWARE_DIR
 
 config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	bool
+	default y
+	depends on $(success,test -e $(srctree)/firmware/lpddr4_pmu_train_1d_dmem.bin)
+	depends on $(success,test -e $(srctree)/firmware/lpddr4_pmu_train_1d_imem.bin)
+	depends on $(success,test -e $(srctree)/firmware/lpddr4_pmu_train_2d_dmem.bin)
+	depends on $(success,test -e $(srctree)/firmware/lpddr4_pmu_train_2d_imem.bin)
 
 config FIRMWARE_IMX_DDR4_PMU_TRAIN
 	bool
+	default y
+	depends on $(success,test -e $(srctree)/firmware/ddr4_dmem_1d.bin)
+	depends on $(success,test -e $(srctree)/firmware/ddr4_dmem_2d.bin)
+	depends on $(success,test -e $(srctree)/firmware/ddr4_imem_1d.bin)
+	depends on $(success,test -e $(srctree)/firmware/ddr4_imem_2d.bin)
 
 config FIRMWARE_IMX8MM_ATF
 	bool
+	default y
+	depends on $(success,test -e $(srctree)/firmware/imx8mm-bl31.bin)
 
 config FIRMWARE_IMX8MN_ATF
 	bool
+	default y
+	depends on $(success,test -e $(srctree)/firmware/imx8mn-bl31.bin)
 
 config FIRMWARE_IMX8MP_ATF
 	bool
+	default y
+	depends on $(success,test -e $(srctree)/firmware/imx8mp-bl31.bin)
 
 config FIRMWARE_IMX8MQ_ATF
 	bool
+	default y
+	depends on $(success,test -e $(srctree)/firmware/imx8mq-bl31.bin)
 
 config FIRMWARE_IMX8MM_OPTEE
 	bool "install OP-TEE on i.MX8MM boards"
 	depends on FIRMWARE_IMX8MM_ATF && PBL_OPTEE
+	depends on $(success,test -e $(srctree)/firmware/imx8mm-bl32.bin)
 
 config FIRMWARE_IMX8MN_OPTEE
 	bool "install OP-TEE on i.MX8MN boards"
 	depends on FIRMWARE_IMX8MN_ATF && PBL_OPTEE
+	depends on $(success,test -e $(srctree)/firmware/imx8mn-bl32.bin)
 
 config FIRMWARE_IMX8MP_OPTEE
 	bool "install OP-TEE on i.MX8MP boards"
 	depends on FIRMWARE_IMX8MP_ATF && PBL_OPTEE
+	depends on $(success,test -e $(srctree)/firmware/imx8mp-bl32.bin)
 
 config FIRMWARE_CCBV2_OPTEE
 	bool
-- 
2.39.2



