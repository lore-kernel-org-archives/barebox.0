Delivery-date: Tue, 16 Sep 2025 06:56:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjT-003ZJs-34
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjS-0004mi-QZ
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dAzugSue+hjGreint4Css3DysTC6h7lUgbA9hvRjhIQ=; b=by3K0cKrz6PICjNyXHS6lzmCCb
	Jstdqcti817r5g4JuA/3l9kgi+eXUC7POc7bTl5zBbYzXcVlsvI2H6jjobSoQ4+AvMv9xLYWiXwru
	n+v3j7jB9qdM+I+12JKVO0ddK61rbpSU0C/FerUY0HhnkorsTq3ueYUMVt/HTbu1D20w/LHexo7Jc
	K6fITDofaTostFoObDTBO23fw6i8ya1Pc+PtFMDk73yNcy1blzY2QecIyjhVeJX4vt+zJdrgUjpmd
	w1dsKJXaCUHywHfJVHiPgLCDENZGUK8QNnqhrQiyFH+/ilZl+VGM7MJJFt4xS9Z2iLRFBk/5nmpR1
	22M/QsHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNiv-00000006kVe-3YW9;
	Tue, 16 Sep 2025 04:55:25 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNit-00000006kSf-0vuU
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:24 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3e8123c07d7so1362268f8f.0
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998521; x=1758603321; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dAzugSue+hjGreint4Css3DysTC6h7lUgbA9hvRjhIQ=;
        b=dX6d0hC+0IcKfCNYJxhXcnVXg1UWIItl9fnCdlNa+Vt8nZd35U7tpdcm94dDKnKQj9
         MOyqTGCG+LwVFz0S9s1LyN+c26mQH0ddbnAEZ4WH+1GqEjUhs2kOwD3R17NyH9SkKai4
         ma0/JN9uQ/taFiga2EU8bPpbjlSdDND2iq5culfVCXkeg5QnuGJ38EyqFGqlknWLabIl
         dj2mc40V8IfuUpCw1vQiNXvJc6Eov6+fuVMBySHCmODRY/MBtkBRvGwR+jWKv5+kZaP/
         YEqhzcCT68Z1+M+zQgZXcqOc83xHEuTrpn9ZutV3KYtRQL2ndAu6rW6Y7c5pNGON91l3
         wNrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998521; x=1758603321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dAzugSue+hjGreint4Css3DysTC6h7lUgbA9hvRjhIQ=;
        b=jAFomLfqVh6kM9fOyTKL8SdeOBAcDb5fVSusiC9lTW8CYj1OOZ05StvEF4SwF2LlBF
         9y2l1dF0O6GaPumw60jWdybR6q79f6HUEMecXraYxJJhNXQeu14nXBNXq/mj7h1s0RtJ
         h5akRUhz8lOEMFaJWn2ghtJ0BBBIio99ZjwFopHXJeSw0lEQVeSwpZ40OvcAb8zji5IO
         8WkOiDt80gHyAeLa8OBLMHCYtMmsPT1YXymbqgvGwVAjoqvWXGZJUxsHTFzS/ok4Y/CJ
         fOkcSqsGjcUiXdsVPyU8N3o2ONFUWpquoIilW4UeWDCtRcmgSbJVWeMd1pOTeFcCjrPm
         bJCw==
X-Gm-Message-State: AOJu0YxVjFEkEPNuQzGmu2nDGj0O0oYCbeNYP2pcROE9kX2+hdfx5/vf
	ftzjc+v6M7nUfqMMDZxBAsIE4R+VxcLVhc0kbPuWy1vguJRM7lDp7k39mA4B7X07
X-Gm-Gg: ASbGncumIq0jOyqWmdhLsnSnS7oHolfmoBMK1S+S1FjLy551klX6nJwSroRramGi2Z9
	CBPNpG4IiwN8pxME65svChCqhjyIxXeWhsVGmy420sEyftyRug7eIiiusU8LmZ5NO5ByU9ClUVW
	8JT4JWqOs+GaXp68t8toGd326hiqtrp0hevvlqqzTCqvlC9d45Slrt3CmXSiHKmlN1x3judLSDV
	y9GgW3W7RFEyJPt8SqL+9fN/fEXcSmwaMOT185t6P0R4Nwsyyv2icaCIMkUa3ZYh2etwMBKxFQ9
	h3zXL1jAH1A3krIPQUTHoOcXpObC09vTWOuyMXsO8aCmb6aYYR3FwqN/w+85gFBP9rKi/M2VtP3
	6AB181OA64qAd16sIyJ42TLgrjGY9yXvTtvCL8Ws1NMHjHU8mBAre5p8xOqP8oTUw9MJ7O94A7c
	17OBzngbiHYjKvs6JPKgZ0lg==
X-Google-Smtp-Source: AGHT+IFCtKxL/geIX86oxLribTob4QF56Tz7eDItOTXe+lruNkY+aedAJM7OULVWLcQOwweZzOHD/A==
X-Received: by 2002:adf:e003:0:b0:3eb:2832:96c with SMTP id ffacd0b85a97d-3ec9fbc62dcmr392001f8f.31.1757998521243;
        Mon, 15 Sep 2025 21:55:21 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:20 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:54 -0400
Message-Id: <20250916045500.907542-6-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215523_286435_9A3FD124 
X-CRM114-Status: GOOD (  10.00  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE,UPPERCASE_75_100 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 06/12] arm: efi: add a generic defconfig for v8 efi payload,
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/configs/efi_v8_defconfig | 266 ++++++++++++++++++++++++++++++
 1 file changed, 266 insertions(+)
 create mode 100644 arch/arm/configs/efi_v8_defconfig

diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v8_defconfig
new file mode 100644
index 000000000000..607ab44e473f
--- /dev/null
+++ b/arch/arm/configs/efi_v8_defconfig
@@ -0,0 +1,266 @@
+CONFIG_64BIT=y
+CONFIG_CPU_V8=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_NAME="efi_v8_defconfig"
+CONFIG_EFI_PAYLOAD=y
+CONFIG_FS_EFI=y
+CONFIG_FS_EFIVARFS=y
+CONFIG_DRIVER_SERIAL_EFI_STDIO=y
+CONFIG_EFI_BLK=y
+CONFIG_EFI_BLK_SEPARATE_USBDISK=y
+CONFIG_WATCHDOG_EFI=y
+CONFIG_HW_RANDOM_EFI=y
+CONFIG_I2C_EFI=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_EFI_GOP=y
+CONFIG_CLOCKSOURCE_EFI=y
+CONFIG_SERIAL_EFI_STDIO=y
+CONFIG_CMD_EFI_HANDLE_DUMP=y
+CONFIG_BOOTM_FITIMAGE=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_CMDLINE_EDITING=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_PROMPT="barebox> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_MENU=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BLSPEC=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_KALLSYMS=y
+CONFIG_BOOTM_AIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_MACHINE_ID=y
+CONFIG_FASTBOOT_SPARSE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_BFETCH=y
+CONFIG_CMD_MMC_EXTCSD=y
+CONFIG_CMD_POLLER=y
+CONFIG_CMD_SLICE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_BOOTCHOOSER=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FINDMNT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SMC=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_FIRMWARELOAD=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_SNTP=y
+CONFIG_NET_FASTBOOT=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
+CONFIG_DEEP_PROBE_DEFAULT=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_OF_OVERLAY_LIVE=y
+CONFIG_SERIAL_DEV_BUS=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_CADENCE=y
+CONFIG_DRIVER_SERIAL_LPUART32=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_TI_K3_AM65_CPSW_NUSS=y
+CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
+CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_NET_FSL_ENETC=y
+CONFIG_DRIVER_NET_FSL_FMAN=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_NET_VIRTIO=y
+CONFIG_DP83867_PHY=y
+CONFIG_MICREL_PHY=y
+CONFIG_REALTEK_PHY=y
+CONFIG_SMSC_PHY=y
+CONFIG_NET_DSA_MV88E6XXX=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_MDIO_GPIO=y
+CONFIG_MDIO_BUS_MUX_GPIO=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_USB_NET_AX88179_178A=y
+CONFIG_NET_USB_SMSC95XX=y
+CONFIG_NET_USB_RTL8152=y
+CONFIG_DRIVER_SPI_FSL_QUADSPI=y
+CONFIG_DRIVER_SPI_IMX=y
+CONFIG_SPI_NXP_FLEXSPI=y
+CONFIG_I2C_GPIO=y
+CONFIG_I2C_IMX=y
+CONFIG_I2C_OMAP=y
+CONFIG_I2C_RK3X=y
+CONFIG_I2C_MUX=y
+CONFIG_I2C_MUX_PCA954x=y
+CONFIG_MTD=y
+CONFIG_MTD_CONCAT=y
+CONFIG_MTD_M25P80=y
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_VIRTIO_BLK=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_DWC3=y
+CONFIG_USB_DWC3_DUAL_ROLE=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_ONBOARD_DEV=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_USB_GADGET_MASS_STORAGE=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_SOUND=y
+CONFIG_MCI=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_DW=y
+CONFIG_MCI_SUNXI_SMHC=y
+CONFIG_MCI_ROCKCHIP_DWCMSHC=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_MCI_ARASAN=y
+CONFIG_MCI_AM654=y
+CONFIG_COMMON_CLK=y
+CONFIG_COMMON_CLK_SCMI=y
+CONFIG_MFD_ACT8846=y
+CONFIG_RAVE_SP_CORE=y
+CONFIG_MFD_PCA9450=y
+CONFIG_MFD_RK808=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_LED_PCA955X=y
+CONFIG_EEPROM_AT25=y
+CONFIG_EEPROM_AT24=y
+CONFIG_VIRTIO_INPUT=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
+CONFIG_WATCHDOG_DW=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_WATCHDOG_IMXULP=y
+CONFIG_RAVE_SP_WATCHDOG=y
+CONFIG_K3_RTI_WDT=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
+CONFIG_DMADEVICES=y
+CONFIG_TI_K3_UDMA=y
+CONFIG_GPIO_PCA953X=y
+CONFIG_GPIO_ZYNQ=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_NVMEM_RMEM=y
+CONFIG_IMX_OCOTP_ELE=y
+CONFIG_RAVE_SP_EEPROM=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_REGULATOR_ARM_SCMI=y
+CONFIG_REGULATOR_RK808=y
+CONFIG_RESET_IMX7=y
+CONFIG_PCI_ECAM_GENERIC=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_DS1307=y
+CONFIG_FIRMWARE_ZYNQMP_FPGA=y
+CONFIG_ARM_SCMI_PROTOCOL=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
+CONFIG_ROCKCHIP_IODOMAIN=y
+CONFIG_TI_SCI_PM_DOMAINS=y
+CONFIG_NVMEM_REBOOT_MODE=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_MAILBOX=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_9P_FS=y
+CONFIG_9P_FS_WRITE=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_BPKFS=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_PSTORE_CONSOLE=y
+CONFIG_FS_RATP=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_DIGEST_SHA1_ARM64_CE=y
+CONFIG_DIGEST_SHA256_ARM64_CE=y
+# CONFIG_MISSING_FIRMWARE_ERROR is not set
-- 
2.34.1



