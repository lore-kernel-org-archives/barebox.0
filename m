Delivery-date: Tue, 28 Feb 2023 15:32:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11c-004kyX-Oh
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11b-0004m5-Uj
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wf7hCFWTFjrXlSCvgFcuNu0P850dN4qBKyGJbDm1Pl8=; b=sWly7B+nUsU0HemXhM+hU9adRq
	VHwViD6umH8g0zPwwgUCyg2WvV5SAE/1ql6g8mFq5SD1yltOEnzl2LtuEnSjvvmg5px4193cdV8Nm
	3QchO7xOo5WpGtT6A1iVBhWJh5wDRlE65KTRs/9WTRrxdxeMNorhu2D2yMWKyNxXvn1ywi4jni+PP
	G0FXBL0IMNrPiHLuP4fhxALQpUsLq8mHtty6+TRf5wqRrKaTSKzqrmnLot89pcu/QhEG9dZIgyuC1
	hQ3J49HN8xWvO7EzwUy5s5h+mxeJ1p4SzW9tGNcwOnmJzrMgJU1IrDEgohI2zjVQuTqhjcITWifZJ
	tYGHsXlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX10U-00DSvB-2I; Tue, 28 Feb 2023 14:31:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX100-00DSgV-U6
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-00048s-Pb; Tue, 28 Feb 2023 15:30:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-000t9D-5L; Tue, 28 Feb 2023 15:30:35 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zw-007LWy-Uq; Tue, 28 Feb 2023 15:30:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:28 +0100
Message-Id: <20230228143031.1718565-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063037_147998_851D1396 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/9] ARM: at91: remove unnecessary configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have some at91 defconfig files which differ from other files
only in the AT91_HAVE_SRAM_128M symbol. This symbol is not even
avaluated for several boards, so remove the unnecessary config
files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/qil_a9260_128mib_defconfig | 73 ------------------
 arch/arm/configs/qil_a9g20_128mib_defconfig | 73 ------------------
 arch/arm/configs/usb_a9g20_128mib_defconfig | 83 ---------------------
 3 files changed, 229 deletions(-)
 delete mode 100644 arch/arm/configs/qil_a9260_128mib_defconfig
 delete mode 100644 arch/arm/configs/qil_a9g20_128mib_defconfig
 delete mode 100644 arch/arm/configs/usb_a9g20_128mib_defconfig

diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
deleted file mode 100644
index 3124a71ca9..0000000000
--- a/arch/arm/configs/qil_a9260_128mib_defconfig
+++ /dev/null
@@ -1,73 +0,0 @@
-CONFIG_ARCH_AT91SAM9260=y
-CONFIG_MACH_QIL_A9260=y
-CONFIG_AT91_HAVE_SRAM_128M=y
-CONFIG_CALAO_MB_QIL_A9260=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MMU=y
-CONFIG_EXPERIMENTAL=y
-CONFIG_PROMPT="USB-9G20:"
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-CONFIG_NAND_ATMEL=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_DFU=y
-CONFIG_USB_GADGET_SERIAL=y
-CONFIG_MCI=y
-CONFIG_MCI_ATMEL=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/qil_a9g20_128mib_defconfig b/arch/arm/configs/qil_a9g20_128mib_defconfig
deleted file mode 100644
index 0b2da05838..0000000000
--- a/arch/arm/configs/qil_a9g20_128mib_defconfig
+++ /dev/null
@@ -1,73 +0,0 @@
-CONFIG_ARCH_AT91SAM9G20=y
-CONFIG_MACH_QIL_A9G20=y
-CONFIG_AT91_HAVE_SRAM_128M=y
-CONFIG_CALAO_MB_QIL_A9260=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MMU=y
-CONFIG_EXPERIMENTAL=y
-CONFIG_PROMPT="USB-9G20:"
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-CONFIG_NAND_ATMEL=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_DFU=y
-CONFIG_USB_GADGET_SERIAL=y
-CONFIG_MCI=y
-CONFIG_MCI_ATMEL=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
deleted file mode 100644
index fce3a10061..0000000000
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ /dev/null
@@ -1,83 +0,0 @@
-CONFIG_ARCH_AT91SAM9G20=y
-CONFIG_MACH_USB_A9G20=y
-CONFIG_AT91_HAVE_SRAM_128M=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MMU=y
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="USB-9G20:"
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_MACB=y
-CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-CONFIG_NAND_ATMEL=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_DFU=y
-CONFIG_USB_GADGET_SERIAL=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_SPI=y
-CONFIG_MMC_SPI_CRC_ON=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-- 
2.30.2



