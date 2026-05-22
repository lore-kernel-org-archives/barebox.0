Delivery-date: Fri, 22 May 2026 13:53:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQORz-002aoo-2N
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 13:53:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQORy-0001kW-CP
	for lore@pengutronix.de; Fri, 22 May 2026 13:53:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iIfc9Rdt9eLntzgYR3c6ebeknftqYBtf1/usRI656Dk=; b=hUgP7LbhwGqKAF99UU/97uwSsr
	zK/V69LURS2omzgoGvShzXDBjnk7WDFW4tw5i2H0TOVEzsb0CsewhN9P0zDm2wYN96O1kmqRPgfaJ
	tlETGvOiq41W5HrDaY/fZVB4jl0P9cIakUaMVKVi4K1+LHvQ4lLEJ9FOxK4uN2g4ddpNqPLGh/0L7
	8JlmHkC+4NO5jnhfIbu6EffepySNA/UAeFhhnsUlcwJmH0fyH92ka8v7elHdN2BrQE/NZosX8PofM
	jklHbvINKZOhEA6Ri6u67B6NLjapwV1CRDQwzCN0rDh29FryW03k4z4o94o/JS/sff7DIpjUyGx5U
	vKULjM1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNam-0000000AZST-3rfr;
	Fri, 22 May 2026 10:59:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNah-0000000AZP0-2tPm
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 10:58:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0001uW-7t; Fri, 22 May 2026 12:58:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-001FnG-1w;
	Fri, 22 May 2026 12:58:54 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0000000BFtq-0Gpg;
	Fri, 22 May 2026 12:58:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 12:53:11 +0200
Message-ID: <20260522105852.2681680-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
References: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_035856_048377_CB0B19D2 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 5/6] ARM: configs: drop CONFIG_MALLOC_SIZE=0x0 as it's now the default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_MALLOC_SIZE=0x0 is not the default value, although it's the most
commonly used. We couldn't turn around and change this now without
breakage.

CONFIG_MALLOC_OFFSET=0x0 behaves the same as CONFIG_MALLOC_SIZE=0x0 and
is the default, so we can drop CONFIG_MALLOC_SIZE=0x0 now.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/am335x_mlo_defconfig          | 1 -
 arch/arm/configs/am35xx_pfc200_xload_defconfig | 1 -
 arch/arm/configs/at91_multi_defconfig          | 1 -
 arch/arm/configs/efi_v8_defconfig              | 1 -
 arch/arm/configs/imx23_defconfig               | 1 -
 arch/arm/configs/imx28_defconfig               | 1 -
 arch/arm/configs/imx_v7_defconfig              | 1 -
 arch/arm/configs/imx_v8_defconfig              | 1 -
 arch/arm/configs/k3-r5_defconfig               | 1 -
 arch/arm/configs/kindle-gen-6-7_defconfig      | 1 -
 arch/arm/configs/kindle-mx50_defconfig         | 1 -
 arch/arm/configs/layerscape_defconfig          | 1 -
 arch/arm/configs/layerscape_v7_defconfig       | 1 -
 arch/arm/configs/modules32_defconfig           | 1 -
 arch/arm/configs/multi_v5_v6_defconfig         | 1 -
 arch/arm/configs/multi_v7_defconfig            | 1 -
 arch/arm/configs/multi_v8_defconfig            | 1 -
 arch/arm/configs/mvebu_defconfig               | 1 -
 arch/arm/configs/omap_defconfig                | 1 -
 arch/arm/configs/rockchip_v7a_defconfig        | 1 -
 arch/arm/configs/rockchip_v8_defconfig         | 1 -
 arch/arm/configs/rpi_defconfig                 | 1 -
 arch/arm/configs/rpi_v8a_defconfig             | 3 +--
 arch/arm/configs/socfpga-agilex5_defconfig     | 1 -
 arch/arm/configs/socfpga-arria10_defconfig     | 1 -
 arch/arm/configs/socfpga-xload_defconfig       | 1 -
 arch/arm/configs/socfpga_defconfig             | 1 -
 arch/arm/configs/stm32mp_defconfig             | 1 -
 arch/arm/configs/tegra_v7_defconfig            | 1 -
 arch/arm/configs/virt32_secure_defconfig       | 1 -
 arch/arm/configs/zii_vf610_dev_defconfig       | 1 -
 arch/arm/configs/zynqmp_defconfig              | 1 -
 32 files changed, 1 insertion(+), 33 deletions(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 89cadeda2f6f..719d52d69e49 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -13,7 +13,6 @@ CONFIG_NAME="am335x_mlo_defconfig"
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x1b400
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="MLO>"
 CONFIG_SHELL_NONE=y
diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
index 26fc4296f870..7b25e22adb25 100644
--- a/arch/arm/configs/am35xx_pfc200_xload_defconfig
+++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
@@ -7,7 +7,6 @@ CONFIG_THUMB2_BAREBOX=y
 CONFIG_NAME="am35xx_pfc200_xload_defconfig"
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0xc00
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
 CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="X-load pfc200>"
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index 60452f802feb..1a1afd95c6ca 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -15,7 +15,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="at91_multi_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v8_defconfig
index 5f946dd51d4a..51eaad78a11e 100644
--- a/arch/arm/configs/efi_v8_defconfig
+++ b/arch/arm/configs/efi_v8_defconfig
@@ -3,7 +3,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="efi_v8_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/configs/imx23_defconfig b/arch/arm/configs/imx23_defconfig
index 3df9dcbd97f7..de41f691dca5 100644
--- a/arch/arm/configs/imx23_defconfig
+++ b/arch/arm/configs/imx23_defconfig
@@ -9,7 +9,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="imx23_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
diff --git a/arch/arm/configs/imx28_defconfig b/arch/arm/configs/imx28_defconfig
index 0586cfe93e96..c1859a38def7 100644
--- a/arch/arm/configs/imx28_defconfig
+++ b/arch/arm/configs/imx28_defconfig
@@ -10,7 +10,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="imx28_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 310c0b8dc391..f66a958d9ccf 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -61,7 +61,6 @@ CONFIG_ARM_UNWIND=y
 CONFIG_ARM_PSCI=y
 CONFIG_NAME="imx_v7_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index cbdb3a65c745..c8dd3e227929 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -23,7 +23,6 @@ CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="imx_v8_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/k3-r5_defconfig b/arch/arm/configs/k3-r5_defconfig
index 6d8391c55e7c..93401e1792b1 100644
--- a/arch/arm/configs/k3-r5_defconfig
+++ b/arch/arm/configs/k3-r5_defconfig
@@ -9,7 +9,6 @@ CONFIG_NAME="k3-r5_defconfig"
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x3d000
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="MLO>"
diff --git a/arch/arm/configs/kindle-gen-6-7_defconfig b/arch/arm/configs/kindle-gen-6-7_defconfig
index 9155fb45a3de..aca4fd00ab61 100644
--- a/arch/arm/configs/kindle-gen-6-7_defconfig
+++ b/arch/arm/configs/kindle-gen-6-7_defconfig
@@ -10,7 +10,6 @@ CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x5dc00
 CONFIG_STACK_SIZE=0x10000
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/kindle-mx50_defconfig
index 331e0eae6d12..8e2b121f6327 100644
--- a/arch/arm/configs/kindle-mx50_defconfig
+++ b/arch/arm/configs/kindle-mx50_defconfig
@@ -7,7 +7,6 @@ CONFIG_ARM_UNWIND=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_NAME="kindle-mx50_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index 272dff90d7c8..7d2a2e2322a2 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -6,7 +6,6 @@ CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="layerscape_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/layerscape_v7_defconfig b/arch/arm/configs/layerscape_v7_defconfig
index 99570a889052..337009526292 100644
--- a/arch/arm/configs/layerscape_v7_defconfig
+++ b/arch/arm/configs/layerscape_v7_defconfig
@@ -2,7 +2,6 @@ CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_MACH_LS1021AIOT=y
 CONFIG_NAME="layerscape_v7_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
diff --git a/arch/arm/configs/modules32_defconfig b/arch/arm/configs/modules32_defconfig
index 0e32a4dd9c3e..680b78c2a116 100644
--- a/arch/arm/configs/modules32_defconfig
+++ b/arch/arm/configs/modules32_defconfig
@@ -14,7 +14,6 @@ CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_BOOTM_FIP=y
 CONFIG_NAME="modules32_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_EXPERIMENTAL=y
 CONFIG_MODULES=y
 CONFIG_MODULES_ENVIRONMENT=y
diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index bc6645b3ce27..3a03803eb2f4 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -15,7 +15,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="multi_v5_v6_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PANIC_HANG=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 5db25fd1a74b..1354e7775bdd 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -95,7 +95,6 @@ CONFIG_ARM_UNWIND=y
 CONFIG_ARM_PSCI=y
 CONFIG_NAME="multi_v7_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 233aebbe2d95..e62dbc96fd03 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -52,7 +52,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="multi_v8_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index 91dd23e1c8b9..8f523060a4ca 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -16,7 +16,6 @@ CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="mvebu_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 007986e02eb9..c4e584dc8440 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -16,7 +16,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="omap_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
diff --git a/arch/arm/configs/rockchip_v7a_defconfig b/arch/arm/configs/rockchip_v7a_defconfig
index 96b575de55a2..bcabb541ec60 100644
--- a/arch/arm/configs/rockchip_v7a_defconfig
+++ b/arch/arm/configs/rockchip_v7a_defconfig
@@ -10,7 +10,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="rockchip_v7a_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index e0df655ea046..ef2951d133d6 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -16,7 +16,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="rockchip_v8_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index ab146d755133..4da5388fb710 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -10,7 +10,6 @@ CONFIG_ARM_UNWIND=y
 CONFIG_IMAGE_COMPRESSION_NONE=y
 CONFIG_NAME="rpi_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="R-Pi> "
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 6c85209546e4..c29fe30701e8 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -6,7 +6,6 @@ CONFIG_64BIT=y
 CONFIG_IMAGE_COMPRESSION_NONE=y
 CONFIG_NAME="rpi_v8a_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="R-Pi> "
@@ -111,4 +110,4 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
\ No newline at end of file
+CONFIG_ZLIB=y
diff --git a/arch/arm/configs/socfpga-agilex5_defconfig b/arch/arm/configs/socfpga-agilex5_defconfig
index 5711cb89ed27..cad8eeb862fe 100644
--- a/arch/arm/configs/socfpga-agilex5_defconfig
+++ b/arch/arm/configs/socfpga-agilex5_defconfig
@@ -3,7 +3,6 @@ CONFIG_64BIT=y
 CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_PROMPT="barebox> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
index 46cd25a8254f..d0cf135420d6 100644
--- a/arch/arm/configs/socfpga-arria10_defconfig
+++ b/arch/arm/configs/socfpga-arria10_defconfig
@@ -5,7 +5,6 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="socfpga-arria10_defconfig"
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 31050cde6683..084f3a3188c7 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -14,7 +14,6 @@ CONFIG_NAME="socfpga-xload_defconfig"
 # CONFIG_MEMINFO is not set
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 4f879cd45f0f..80731b196d3d 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -10,7 +10,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="socfpga_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 1d1b75fbb0a8..dcbac40bf42e 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -16,7 +16,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="stm32mp_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 0d980009b030..af63a1aeb75b 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -9,7 +9,6 @@ CONFIG_ARM_UNWIND=y
 CONFIG_NAME="tegra_v7_defconfig"
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0x10000
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/virt32_secure_defconfig b/arch/arm/configs/virt32_secure_defconfig
index 09c98e5e4dc8..12e400ae25e4 100644
--- a/arch/arm/configs/virt32_secure_defconfig
+++ b/arch/arm/configs/virt32_secure_defconfig
@@ -12,7 +12,6 @@ CONFIG_ARM_BOOTM_ELF=y
 CONFIG_ARM_BOOTM_FIP=y
 CONFIG_NAME="virt32_secure_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/zii_vf610_dev_defconfig b/arch/arm/configs/zii_vf610_dev_defconfig
index 24fa40ade974..84a2530d0991 100644
--- a/arch/arm/configs/zii_vf610_dev_defconfig
+++ b/arch/arm/configs/zii_vf610_dev_defconfig
@@ -5,7 +5,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="zii_vf610_dev_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 5a71536ba69e..39c1b42619cc 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -6,7 +6,6 @@ CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="zynqmp_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
-- 
2.47.3



