Delivery-date: Wed, 13 May 2026 14:22:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8bF-001FgL-0u
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:22:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8bA-0004Sx-KX
	for lore@pengutronix.de; Wed, 13 May 2026 14:22:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J9j1sEgUICGqaT/tVmvO6BnV1OO95sR36U7SDo68s10=; b=4NXq1XFcBmNxJ45SrYeQ2w4lpd
	KZqj94HTDZO3Q0/ETTlKr9qPFuonnHSVMmnLWQambT8HhtLPqc05YCFUE3/J7MFuOPkJYSuuCWNqz
	nYCJzAp/fRI2kr3mTTFKwL7VgCFok+kEVzS1uJRWo767xWWDhhd9SYdtQe4lcdCVOnQmpgowpBSQi
	hrRSAmfh0oyb5Kxh9p/qskUSkbpw2HittywMbQBYesOustcKDgljEF0tVoXHlvf+b+Vpdm0NmYsJ5
	Wiu6ghD/99764ITRaX8wdSSyDH/pmuWMdazgzlnNWJNZi1i5y7gg1jLpv78GVEsgefByxXpWd8z+J
	MovnQSUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Zj-00000002SW9-1Dtg;
	Wed, 13 May 2026 12:20:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Ze-00000002SRt-03bx
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:20:28 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8Zc-0003rS-JR; Wed, 13 May 2026 14:20:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:20:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-socfpga-kconfig-v1-3-6b935776f0ac@pengutronix.de>
References: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
In-Reply-To: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_052026_057846_F25B72D0 
X-CRM114-Status: UNSURE (   9.92  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] arm: socfpga: regenerate defconfig files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cleanup the defconfig files by running `make defconfig` and `make
savedefconfig` to get rid of unnecessarily selected options and sort
options.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/configs/socfpga-agilex5_defconfig | 1 -
 arch/arm/configs/socfpga-arria10_defconfig | 8 +-------
 arch/arm/configs/socfpga-xload_defconfig   | 2 +-
 arch/arm/configs/socfpga_defconfig         | 4 ----
 4 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/arch/arm/configs/socfpga-agilex5_defconfig b/arch/arm/configs/socfpga-agilex5_defconfig
index 5711cb89ed27..2cfeef3ec30c 100644
--- a/arch/arm/configs/socfpga-agilex5_defconfig
+++ b/arch/arm/configs/socfpga-agilex5_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_SOCFPGA=y
-CONFIG_64BIT=y
 CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
index f3c9993dcf06..46cd25a8254f 100644
--- a/arch/arm/configs/socfpga-arria10_defconfig
+++ b/arch/arm/configs/socfpga-arria10_defconfig
@@ -6,9 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_NAME="socfpga-arria10_defconfig"
 CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -17,7 +15,6 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
 CONFIG_LONGHELP=y
@@ -60,7 +57,6 @@ CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_STATE=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
@@ -73,13 +69,11 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_DW=y
-CONFIG_STATE_DRV=y
 # CONFIG_PINCTRL is not set
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
+CONFIG_DIGEST_SHA256_ARM=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
-CONFIG_DIGEST_SHA256_ARM=y
diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index ec966c91a8f7..31050cde6683 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -1,12 +1,12 @@
 CONFIG_ARCH_SOCFPGA=y
 # CONFIG_CPU_V7VE is not set
-CONFIG_ARCH_SOCFPGA_XLOAD=y
 CONFIG_MACH_SOCFPGA_ALTERA_SOCDK=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
 CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO=y
 CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
+CONFIG_ARCH_SOCFPGA_XLOAD=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_ARM_EXCEPTIONS is not set
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 8f9e34d459ff..4f879cd45f0f 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -11,9 +11,7 @@ CONFIG_ARM_UNWIND=y
 CONFIG_NAME="socfpga_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -22,7 +20,6 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_LONGHELP=y
@@ -114,4 +111,3 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y

-- 
2.47.3



