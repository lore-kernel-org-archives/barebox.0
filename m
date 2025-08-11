Delivery-date: Mon, 11 Aug 2025 14:31:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRgD-009KtW-1n
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:31:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfn-0006vh-91
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:31:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EAoQ4IOY2yugPjON+EQzOorYmFn4pSW332fmDoEHhUs=; b=1i6SfrZrAnr33zc9ux2abfZCUN
	AV42DB7e/itZ+lhm+GvxdhFeTNQKwe3yEc/HFsIN695nHmZHhGDcul3ONdXrnb7BK8dXPWYX+NqHQ
	CS9msNy6GXmWQ90R5wHYUQW1UrDmuZBCpBdVFJK9J8A3y04OJDfL4VomZwkH3lLhH3cBqqJmwH1m7
	aNy3AlM6nwKOPB3igFzOsJnox6ywDFCBu0bh4MN9LVfKYPWjoVs/qitEUB5Pl7k0nyuIM/QSjcIxG
	dCtBl1gtKzmEisXu6biKQejyka02iQzIArDrv7ZXiv+pYgj8hm9DGIeR5ZitfgcCZcLiVkrFVeKLW
	6SGW9lNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReC-00000007eQw-3XGn;
	Mon, 11 Aug 2025 12:29:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdf-00000007dVz-1wzi
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdc-0004WP-Po; Mon, 11 Aug 2025 14:28:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:49 +0200
Message-Id: <20250811122824.1667791-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_971613_33B0BC95 
X-CRM114-Status: UNSURE (   8.32  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/44] treewide: populate CONFIG_NAME for all configs in-tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For print out by the version command and for use by pytest, let's
populate the CONFIG_NAME option for all configs we have in-tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/am335x_mlo_defconfig              | 1 +
 arch/arm/configs/am35xx_pfc200_xload_defconfig     | 1 +
 arch/arm/configs/animeo_ip_defconfig               | 1 +
 arch/arm/configs/at91_multi_defconfig              | 1 +
 arch/arm/configs/at91rm9200ek_defconfig            | 1 +
 arch/arm/configs/at91sam9260ek_defconfig           | 1 +
 arch/arm/configs/at91sam9261ek_bootstrap_defconfig | 1 +
 arch/arm/configs/at91sam9261ek_defconfig           | 1 +
 arch/arm/configs/at91sam9g10ek_defconfig           | 1 +
 arch/arm/configs/at91sam9g20ek_defconfig           | 1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig        | 1 +
 arch/arm/configs/at91sam9m10ihd_defconfig          | 1 +
 arch/arm/configs/at91sam9n12ek_defconfig           | 1 +
 arch/arm/configs/clps711x_defconfig                | 1 +
 arch/arm/configs/dss11_defconfig                   | 1 +
 arch/arm/configs/haba_knx_lite_defconfig           | 1 +
 arch/arm/configs/imx23_defconfig                   | 1 +
 arch/arm/configs/imx28_defconfig                   | 1 +
 arch/arm/configs/imx_v7_defconfig                  | 1 +
 arch/arm/configs/imx_v8_defconfig                  | 1 +
 arch/arm/configs/k3-r5_defconfig                   | 1 +
 arch/arm/configs/kindle-mx50_defconfig             | 1 +
 arch/arm/configs/layerscape_defconfig              | 1 +
 arch/arm/configs/layerscape_v7_defconfig           | 1 +
 arch/arm/configs/multi_v5_v6_defconfig             | 1 +
 arch/arm/configs/multi_v7_defconfig                | 1 +
 arch/arm/configs/multi_v8_defconfig                | 1 +
 arch/arm/configs/mvebu_defconfig                   | 1 +
 arch/arm/configs/omap_defconfig                    | 1 +
 arch/arm/configs/pm9261_defconfig                  | 1 +
 arch/arm/configs/pm9263_defconfig                  | 1 +
 arch/arm/configs/pm9g45_defconfig                  | 1 +
 arch/arm/configs/qil_a9260_defconfig               | 1 +
 arch/arm/configs/qil_a9g20_defconfig               | 1 +
 arch/arm/configs/rockchip_v7a_defconfig            | 1 +
 arch/arm/configs/rockchip_v8_defconfig             | 1 +
 arch/arm/configs/rpi_defconfig                     | 1 +
 arch/arm/configs/rpi_v8a_defconfig                 | 1 +
 arch/arm/configs/socfpga-arria10_defconfig         | 1 +
 arch/arm/configs/socfpga-xload_defconfig           | 1 +
 arch/arm/configs/socfpga_defconfig                 | 1 +
 arch/arm/configs/stm32mp_defconfig                 | 1 +
 arch/arm/configs/tegra_v7_defconfig                | 1 +
 arch/arm/configs/telit_evk_pro3_defconfig          | 1 +
 arch/arm/configs/tny_a9260_defconfig               | 1 +
 arch/arm/configs/tny_a9263_bootstrap_defconfig     | 1 +
 arch/arm/configs/tny_a9263_defconfig               | 1 +
 arch/arm/configs/tny_a9g20_defconfig               | 1 +
 arch/arm/configs/usb_a9260_defconfig               | 1 +
 arch/arm/configs/usb_a9263_bootstrap_defconfig     | 1 +
 arch/arm/configs/usb_a9263_defconfig               | 1 +
 arch/arm/configs/usb_a9g20_defconfig               | 1 +
 arch/arm/configs/zii_vf610_dev_defconfig           | 1 +
 arch/arm/configs/zynq_defconfig                    | 1 +
 arch/arm/configs/zynqmp_defconfig                  | 1 +
 arch/kvx/configs/generic_defconfig                 | 1 +
 arch/mips/configs/ath79_defconfig                  | 1 +
 arch/mips/configs/bcm47xx_defconfig                | 1 +
 arch/mips/configs/gxemul-malta_defconfig           | 1 +
 arch/mips/configs/loongson-ls1b_defconfig          | 1 +
 arch/mips/configs/qemu-malta_defconfig             | 1 +
 arch/mips/configs/xburst_defconfig                 | 1 +
 arch/openrisc/configs/generic_defconfig            | 1 +
 arch/powerpc/configs/owc_da923rc_defconfig         | 1 +
 arch/powerpc/configs/p1010rdb_defconfig            | 1 +
 arch/powerpc/configs/p1022ds_defconfig             | 1 +
 arch/powerpc/configs/p2020rdb_defconfig            | 1 +
 arch/powerpc/configs/pcm030_defconfig              | 1 +
 arch/riscv/configs/erizo_generic_defconfig         | 1 +
 arch/riscv/configs/litex_linux_defconfig           | 1 +
 arch/riscv/configs/rv64i_defconfig                 | 1 +
 arch/riscv/configs/virt32_defconfig                | 1 +
 arch/sandbox/configs/hosttools_defconfig           | 1 +
 arch/sandbox/configs/sandbox_defconfig             | 1 +
 arch/sandbox/configs/targettools_defconfig         | 1 +
 arch/x86/configs/efi_defconfig                     | 1 +
 76 files changed, 76 insertions(+)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index e9d9f93edf5b..89cadeda2f6f 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -7,6 +7,7 @@ CONFIG_MACH_MYIRTECH_X335X=y
 CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_BOARD_GENERIC_DT is not set
+CONFIG_NAME="am335x_mlo_defconfig"
 # CONFIG_BANNER is not set
 # CONFIG_MEMINFO is not set
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
index 999f7de5d96f..26fc4296f870 100644
--- a/arch/arm/configs/am35xx_pfc200_xload_defconfig
+++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_WAGO_PFC_AM35XX=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_ARM_EXCEPTIONS is not set
 # CONFIG_MEMINFO is not set
+CONFIG_NAME="am35xx_pfc200_xload_defconfig"
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0xc00
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 864721be93b2..ed3540c20d5b 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9260=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="animeo_ip_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index 20afbe92395f..60452f802feb 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -13,6 +13,7 @@ CONFIG_MACH_SAMA5D4_WIFX=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="at91_multi_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 665b5b80ef8e..8d7f38fe9111 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="at91rm9200ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 1ea33a116065..ad9d73d518fc 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_AT91SAM9260EK=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="at91sam9260ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
index 09cc5b23ed47..bf6fe8075c71 100644
--- a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
+++ b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
@@ -4,6 +4,7 @@ CONFIG_AT91_BOOTSTRAP=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="at91sam9261ek_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_MALLOC_DUMMY=y
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index ad37108b31f2..66542e943003 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="at91sam9261ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index d92047683a4c..6f66545885ca 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9G10=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="at91sam9g10ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 7200f7a5b8ce..811326459bcd 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -4,6 +4,7 @@ CONFIG_AT91_HAVE_2MMC=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="at91sam9g20ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index d4988e58284d..3163602331f3 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_AT91SAM9M10G45EK=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="at91sam9m10g45ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0x800000
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index f50025375f45..02516ee96000 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="at91sam9m10ihd_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0xa00000
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 4ef07dba2c94..75e0bfb35458 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -5,6 +5,7 @@ CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_NAME="at91sam9n12ek_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0xa00000
diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
index 3a2d8b5a0503..0fa34b5fc5d4 100644
--- a/arch/arm/configs/clps711x_defconfig
+++ b/arch/arm/configs/clps711x_defconfig
@@ -3,6 +3,7 @@ CONFIG_CLPS711X_RAISE_CPUFREQ=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_MEMINFO is not set
+CONFIG_NAME="clps711x_defconfig"
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=57600
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index af37fc0681a8..c06a73414a67 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_DSS11=y
+CONFIG_NAME="dss11_defconfig"
 CONFIG_BOOT_ATAGS=y
 CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index 7d0201b3481a..5d03c1ee6f33 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -5,6 +5,7 @@ CONFIG_MACH_HABA_KNX_LITE=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="haba_knx_lite_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/imx23_defconfig b/arch/arm/configs/imx23_defconfig
index aa47c6089ffc..3df9dcbd97f7 100644
--- a/arch/arm/configs/imx23_defconfig
+++ b/arch/arm/configs/imx23_defconfig
@@ -7,6 +7,7 @@ CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="imx23_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/imx28_defconfig b/arch/arm/configs/imx28_defconfig
index a864c05b20d6..0586cfe93e96 100644
--- a/arch/arm/configs/imx28_defconfig
+++ b/arch/arm/configs/imx28_defconfig
@@ -8,6 +8,7 @@ CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="imx28_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index eaddb98319a2..310c0b8dc391 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -59,6 +59,7 @@ CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_ARM_PSCI=y
+CONFIG_NAME="imx_v7_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index aae1bd6e8ccb..19beacdefd0e 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -18,6 +18,7 @@ CONFIG_64BIT=y
 CONFIG_MACH_TQMA93XX=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX93=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="imx_v8_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/k3-r5_defconfig b/arch/arm/configs/k3-r5_defconfig
index df66bdef5a60..ece3d0094787 100644
--- a/arch/arm/configs/k3-r5_defconfig
+++ b/arch/arm/configs/k3-r5_defconfig
@@ -5,6 +5,7 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_BOARD_GENERIC_DT is not set
 # CONFIG_MEMINFO is not set
+CONFIG_NAME="k3-r5_defconfig"
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x10000000
diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/kindle-mx50_defconfig
index 4694514f549f..331e0eae6d12 100644
--- a/arch/arm/configs/kindle-mx50_defconfig
+++ b/arch/arm/configs/kindle-mx50_defconfig
@@ -5,6 +5,7 @@ CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_NAME="kindle-mx50_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index 8103da322619..95a86ccc07d9 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -5,6 +5,7 @@ CONFIG_MACH_LS1046ARDB=y
 CONFIG_MACH_TQMLS1046A=y
 CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_NAME="layerscape_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/layerscape_v7_defconfig b/arch/arm/configs/layerscape_v7_defconfig
index 792e9274b272..5127a5252275 100644
--- a/arch/arm/configs/layerscape_v7_defconfig
+++ b/arch/arm/configs/layerscape_v7_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_MACH_LS1021AIOT=y
+CONFIG_NAME="layerscape_v7_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index 91d3a63e85ab..581c04f89c3c 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -13,6 +13,7 @@ CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="multi_v5_v6_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 726afe8ce6c5..bb4f487de976 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -92,6 +92,7 @@ CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_ARM_PSCI=y
+CONFIG_NAME="multi_v7_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index a487d331d04e..550b9b07f491 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -48,6 +48,7 @@ CONFIG_MACH_XILINX_ZCU106=y
 CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_NAME="multi_v8_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index f446d4b65989..91dd23e1c8b9 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -14,6 +14,7 @@ CONFIG_MACH_USI_TOPKICK=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="mvebu_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 04284dbfb7e7..007986e02eb9 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -14,6 +14,7 @@ CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="omap_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index f3660b052798..eb86463f8288 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_AT91SAM9261=y
 CONFIG_MACH_PM9261=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="pm9261_defconfig"
 CONFIG_PROMPT="PM9261:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index 2b0e971e9c52..776ef3d245fa 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="pm9263_defconfig"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 061ea0e70c1b..f7cdb8f1f693 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_PM9G45=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="pm9g45_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 9949a1c785d0..e58b168c4b35 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -5,6 +5,7 @@ CONFIG_CALAO_MB_QIL_A9260=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="qil_a9260_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 0eef133d877e..de8d21442446 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -5,6 +5,7 @@ CONFIG_CALAO_MB_QIL_A9260=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="qil_a9g20_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/rockchip_v7a_defconfig b/arch/arm/configs/rockchip_v7a_defconfig
index f69320715695..17d463179e87 100644
--- a/arch/arm/configs/rockchip_v7a_defconfig
+++ b/arch/arm/configs/rockchip_v7a_defconfig
@@ -8,6 +8,7 @@ CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="rockchip_v7a_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 0239f857aa3e..d76210a81305 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -10,6 +10,7 @@ CONFIG_MACH_RADXA_CM3=y
 CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_NAME="rockchip_v8_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index b280704ff187..ed583f80a0d7 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -8,6 +8,7 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_IMAGE_COMPRESSION_NONE=y
+CONFIG_NAME="rpi_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 39754f025efa..734f02e7f2bf 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_RPI_CM3=y
 CONFIG_MACH_RPI4=y
 CONFIG_64BIT=y
 CONFIG_IMAGE_COMPRESSION_NONE=y
+CONFIG_NAME="rpi_v8a_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
index 8c19b48450fc..f3c9993dcf06 100644
--- a/arch/arm/configs/socfpga-arria10_defconfig
+++ b/arch/arm/configs/socfpga-arria10_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="socfpga-arria10_defconfig"
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 37e9ecec7187..892f1d24cb26 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -9,6 +9,7 @@ CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_ARM_EXCEPTIONS is not set
 # CONFIG_MEMINFO is not set
+CONFIG_NAME="socfpga-xload_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 0050dd2e4f4e..a24934cd8bda 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -9,6 +9,7 @@ CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="socfpga_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 20955b3f6b80..4df7b371f379 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -13,6 +13,7 @@ CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="stm32mp_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 65b9807b80d4..0d980009b030 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -6,6 +6,7 @@ CONFIG_MACH_NVIDIA_JETSON=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="tegra_v7_defconfig"
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0x10000
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index ead5c5826929..07868c47ffa1 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_GE863=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="telit_evk_pro3_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index e7be7ee912f4..adf200f256af 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -5,6 +5,7 @@ CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="tny_a9260_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/tny_a9263_bootstrap_defconfig b/arch/arm/configs/tny_a9263_bootstrap_defconfig
index 76c0bd33a0b9..9c5f656ffa41 100644
--- a/arch/arm/configs/tny_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/tny_a9263_bootstrap_defconfig
@@ -5,6 +5,7 @@ CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
+CONFIG_NAME="tny_a9263_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_MALLOC_DUMMY=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index f33d08c331d9..218f128f67b0 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -5,6 +5,7 @@ CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="tny_a9263_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index d404b12b3d93..0549b54731da 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -5,6 +5,7 @@ CONFIG_CALAO_MOB_TNY_MD2=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="tny_a9g20_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index fddced5ef0e7..c797b080554b 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_USB_A9260=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="usb_a9260_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
index 9df009d65b8e..007c7261d201 100644
--- a/arch/arm/configs/usb_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
@@ -6,6 +6,7 @@ CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
+CONFIG_NAME="usb_a9263_bootstrap_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_MALLOC_DUMMY=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 1656ff4176b6..1c228c61932d 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_USB_A9263=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="usb_a9263_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 36c5203d5162..bea0e00455d6 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_USB_A9G20=y
 CONFIG_AEABI=y
 CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_NAME="usb_a9g20_defconfig"
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0x800000
diff --git a/arch/arm/configs/zii_vf610_dev_defconfig b/arch/arm/configs/zii_vf610_dev_defconfig
index 5e9fca65e6b2..24fa40ade974 100644
--- a/arch/arm/configs/zii_vf610_dev_defconfig
+++ b/arch/arm/configs/zii_vf610_dev_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_ZII_VF610_DEV=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_NAME="zii_vf610_dev_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index c474a60de2f0..76c73639d6a0 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -4,6 +4,7 @@ CONFIG_FIRMWARE_ZYNQ7000_FPGA=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_NAME="zynq_defconfig"
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0xf000
 CONFIG_MALLOC_SIZE=0x8000000
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 7af6b2301ad8..5a71536ba69e 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_XILINX_ZCU104=y
 CONFIG_MACH_XILINX_ZCU106=y
 CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_NAME="zynqmp_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generic_defconfig
index 0d971ff3d5dd..787f0ef1bc80 100644
--- a/arch/kvx/configs/generic_defconfig
+++ b/arch/kvx/configs/generic_defconfig
@@ -1,3 +1,4 @@
+CONFIG_NAME="generic_defconfig"
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_RATP=y
 CONFIG_CMD_BOOT=y
diff --git a/arch/mips/configs/ath79_defconfig b/arch/mips/configs/ath79_defconfig
index 520743fb29dc..64f08945c68b 100644
--- a/arch/mips/configs/ath79_defconfig
+++ b/arch/mips/configs/ath79_defconfig
@@ -7,6 +7,7 @@ CONFIG_BOARD_TPLINK_MR3020=y
 CONFIG_BOARD_TPLINK_WDR4300=y
 CONFIG_BOARD_BLACK_SWIFT=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_NAME="ath79_defconfig"
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x81000000
 CONFIG_MALLOC_SIZE=0x800000
diff --git a/arch/mips/configs/bcm47xx_defconfig b/arch/mips/configs/bcm47xx_defconfig
index 66a72973ca36..d0f3614ae744 100644
--- a/arch/mips/configs/bcm47xx_defconfig
+++ b/arch/mips/configs/bcm47xx_defconfig
@@ -1,5 +1,6 @@
 CONFIG_MACH_MIPS_BCM47XX=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_NAME="bcm47xx_defconfig"
 CONFIG_STACK_SIZE=0x7000
 CONFIG_EXPERIMENTAL=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/mips/configs/gxemul-malta_defconfig b/arch/mips/configs/gxemul-malta_defconfig
index 61e4e2901631..9b617daa0f71 100644
--- a/arch/mips/configs/gxemul-malta_defconfig
+++ b/arch/mips/configs/gxemul-malta_defconfig
@@ -2,6 +2,7 @@ CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="qemu-malta"
 CONFIG_CPU_LITTLE_ENDIAN=y
 CONFIG_CPU_MIPS32_R1=y
+CONFIG_NAME="gxemul-malta_defconfig"
 CONFIG_STACK_SIZE=0x7000
 CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=38400
diff --git a/arch/mips/configs/loongson-ls1b_defconfig b/arch/mips/configs/loongson-ls1b_defconfig
index 92824e0f0f74..5937816e529d 100644
--- a/arch/mips/configs/loongson-ls1b_defconfig
+++ b/arch/mips/configs/loongson-ls1b_defconfig
@@ -1,6 +1,7 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="loongson-ls1b"
 CONFIG_MACH_MIPS_LOONGSON=y
+CONFIG_NAME="loongson-ls1b_defconfig"
 CONFIG_STACK_SIZE=0x7000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 68766908d278..5f2b4470b817 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,5 +1,6 @@
 CONFIG_BOARD_QEMU_MALTA=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_NAME="qemu-malta_defconfig"
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
 CONFIG_STACK_SIZE=0x7000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/mips/configs/xburst_defconfig b/arch/mips/configs/xburst_defconfig
index 4305afc58651..864acdef2f6a 100644
--- a/arch/mips/configs/xburst_defconfig
+++ b/arch/mips/configs/xburst_defconfig
@@ -2,6 +2,7 @@ CONFIG_MACH_MIPS_XBURST=y
 CONFIG_BOARD_RZX50=y
 CONFIG_BOARD_CI20=y
 CONFIG_CPU_MIPS32_R1=y
+CONFIG_NAME="xburst_defconfig"
 CONFIG_BAUDRATE=57600
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/configs/generic_defconfig
index 417ae4db3650..646466e1a09e 100644
--- a/arch/openrisc/configs/generic_defconfig
+++ b/arch/openrisc/configs/generic_defconfig
@@ -1,5 +1,6 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="or1ksim"
+CONFIG_NAME="generic_defconfig"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/powerpc/configs/owc_da923rc_defconfig b/arch/powerpc/configs/owc_da923rc_defconfig
index 183ddb15f918..2af0f3cace37 100644
--- a/arch/powerpc/configs/owc_da923rc_defconfig
+++ b/arch/powerpc/configs/owc_da923rc_defconfig
@@ -3,6 +3,7 @@ CONFIG_DA923RC=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x4000000
 CONFIG_RELOCATABLE=y
+CONFIG_NAME="owc_da923rc_defconfig"
 CONFIG_PROMPT="OWBOOT> "
 CONFIG_BAUDRATE=9600
 CONFIG_GLOB=y
diff --git a/arch/powerpc/configs/p1010rdb_defconfig b/arch/powerpc/configs/p1010rdb_defconfig
index 73c02c2e7f40..27eb13f29eec 100644
--- a/arch/powerpc/configs/p1010rdb_defconfig
+++ b/arch/powerpc/configs/p1010rdb_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_MPC85XX=y
 CONFIG_MALLOC_SIZE=0x4000000
 CONFIG_RELOCATABLE=y
+CONFIG_NAME="p1010rdb_defconfig"
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/powerpc/configs/p1022ds_defconfig b/arch/powerpc/configs/p1022ds_defconfig
index fce3eabaf904..2974c0854aee 100644
--- a/arch/powerpc/configs/p1022ds_defconfig
+++ b/arch/powerpc/configs/p1022ds_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_MPC85XX=y
 CONFIG_P1022DS=y
 CONFIG_MALLOC_SIZE=0x4000000
 CONFIG_RELOCATABLE=y
+CONFIG_NAME="p1022ds_defconfig"
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/powerpc/configs/p2020rdb_defconfig b/arch/powerpc/configs/p2020rdb_defconfig
index 6cc032872781..276c5d41ff78 100644
--- a/arch/powerpc/configs/p2020rdb_defconfig
+++ b/arch/powerpc/configs/p2020rdb_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_MPC85XX=y
 CONFIG_P2020RDB=y
 CONFIG_MALLOC_SIZE=0x2800000
 CONFIG_RELOCATABLE=y
+CONFIG_NAME="p2020rdb_defconfig"
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/powerpc/configs/pcm030_defconfig b/arch/powerpc/configs/pcm030_defconfig
index b97a8d5d0cb4..8c618832280a 100644
--- a/arch/powerpc/configs/pcm030_defconfig
+++ b/arch/powerpc/configs/pcm030_defconfig
@@ -1,5 +1,6 @@
 CONFIG_TEXT_BASE=0x3e00000
 CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_NAME="pcm030_defconfig"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/configs/erizo_generic_defconfig
index 247a17913048..31c147c483a9 100644
--- a/arch/riscv/configs/erizo_generic_defconfig
+++ b/arch/riscv/configs/erizo_generic_defconfig
@@ -1,4 +1,5 @@
 CONFIG_SOC_ERIZO=y
+CONFIG_NAME="erizo_generic_defconfig"
 # CONFIG_GLOBALVAR is not set
 CONFIG_STACK_SIZE=0x20000
 CONFIG_MALLOC_SIZE=0x100000
diff --git a/arch/riscv/configs/litex_linux_defconfig b/arch/riscv/configs/litex_linux_defconfig
index 07c840938ad5..e96086a87acd 100644
--- a/arch/riscv/configs/litex_linux_defconfig
+++ b/arch/riscv/configs/litex_linux_defconfig
@@ -1,4 +1,5 @@
 CONFIG_SOC_LITEX=y
+CONFIG_NAME="litex_linux_defconfig"
 CONFIG_STACK_SIZE=0x20000
 CONFIG_MALLOC_SIZE=0xf00000
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/riscv/configs/rv64i_defconfig b/arch/riscv/configs/rv64i_defconfig
index bedb2727a552..68cb86676a08 100644
--- a/arch/riscv/configs/rv64i_defconfig
+++ b/arch/riscv/configs/rv64i_defconfig
@@ -14,6 +14,7 @@ CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
+CONFIG_NAME="rv64i_defconfig"
 CONFIG_PANIC_HANG=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index 8020604ada9d..c12adc67739c 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -6,6 +6,7 @@ CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
 CONFIG_PANIC_HANG=y
+CONFIG_NAME="virt32_defconfig"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/sandbox/configs/hosttools_defconfig b/arch/sandbox/configs/hosttools_defconfig
index 0b62b648c744..22b50ab08a74 100644
--- a/arch/sandbox/configs/hosttools_defconfig
+++ b/arch/sandbox/configs/hosttools_defconfig
@@ -1,3 +1,4 @@
+CONFIG_NAME="hosttools_defconfig"
 CONFIG_IMD=y
 CONFIG_COMPILE_HOST_TOOLS=y
 CONFIG_ARCH_IMX_USBLOADER=y
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 691b5da0edff..921999e001bc 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -1,3 +1,4 @@
+CONFIG_NAME="sandbox_defconfig"
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/sandbox/configs/targettools_defconfig b/arch/sandbox/configs/targettools_defconfig
index 22845def617c..340d908f4889 100644
--- a/arch/sandbox/configs/targettools_defconfig
+++ b/arch/sandbox/configs/targettools_defconfig
@@ -1,3 +1,4 @@
+CONFIG_NAME="targettools_defconfig"
 CONFIG_IMD=y
 CONFIG_IMD_TARGET=y
 CONFIG_KERNEL_INSTALL_TARGET=y
diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index c7bdbcd5640c..1dd823af40ea 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -1,4 +1,5 @@
 CONFIG_MMU=y
+CONFIG_NAME="efi_defconfig"
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_HUSH_FANCY_PROMPT=y
-- 
2.39.5



