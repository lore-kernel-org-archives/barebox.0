Delivery-date: Sat, 20 Sep 2025 05:04:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntf-0054xl-2I
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznta-00050r-BK
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EuFFvackAg5/HSQGxNSl3YtSz209c+mvAefX6a+yEEg=; b=uGYF95nT1zNOrqyR7lurEUhyRy
	qa/g5G2P7NowIrJ5bH2UGpmdmmJ8oCIFCoW/z32k4+CtCYDYvng72byoBdbiC1wH+bCk/jPM4npjU
	RfhBfNPFPK0yFqCGHWGdCfjVwhgsV1ukwzM4qP9h0/fCtK87LkMVQ3XmmB4hKDrVvduO9SVwSKEVg
	SEHS5xG7gFlSJCmlTN1d4eXL7FotNbwYSwU2oaKeevXoMMlDncYc0IOAbmSiNLJnYH0U580wfPguD
	cfXeISqNAKUKQRIQXsWhvANT+eLSUOm5ly9VlAaOBjy7ywSYe53JDA1GUjweOnmQKzTiDKyMgvfJc
	sIDwoQqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsx-00000004boM-0Dxc;
	Sat, 20 Sep 2025 03:03:39 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsu-00000004blj-31Kx
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:37 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45dd5e24d16so25982645e9.3
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337415; x=1758942215; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EuFFvackAg5/HSQGxNSl3YtSz209c+mvAefX6a+yEEg=;
        b=imsSD0dCt8wXdeZ9ieGMZlxaHUk9vLc5OENkKoUOSsTKKFc1QFzBhkIF1mqMAMunTd
         LHluNiLuLyYCdEwJRC/j4mce8KlmtKKUTgNzRejEb+rSVuF7rdqiZIYg2sCeusw7FYv9
         3+G83Ba1QYhqY4hDfjroj+2trFNsxHLvEvl1KQ9+yeNcszpCWGpoPPmMSDhqlhk7lfLN
         wDTaxIPPkYguv2xATaip7yqR1BIxWZxsAUR1Ng+0hB9Y906ttw6O/rCOpY0rBvsDYwEZ
         Dh8A7fhEJ8zg/LARzpvC+7XpGi5g59BA68d6cAXhuy/79BV84CfdzUtnlo0oLg+kpP9t
         rZsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337415; x=1758942215;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EuFFvackAg5/HSQGxNSl3YtSz209c+mvAefX6a+yEEg=;
        b=utvH5TRMyX/MXYkQ1D9KIHJ11nqjQKXrgMzUTz6kxDkK2W6S0KcXYZiDWZnCV3nq3N
         c1sdLRo+cBwN4/cruREoo12OCqMNHGXHLttruCALvJ2F2nzr0skO+eX9Y12oWt0S81p8
         TWv8szcPMI+DbqXhD/Bsw719+8xPZvOJ9q1RFbhdTTcGnhDl9sG6IVmpXPYG/jhcmfTU
         +N0zwF/2ZL2ngp4NtEN/E/AFYPi6fyPjcCQ9wzxA1M+hVYZlARZsr9x9ytNYXikDx757
         nrkJ7PbiFR6K2LpYVTZxbZdOjQyo/bQxpevUkiSdTHlsATnWB/nXlo9YQ8/PPv7lO+zK
         WhnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHPfRNJfl+9Iq8L+gb074gqPn1CxRZDv/rBtGEk+WQe6l32uIXRThvFUb/A5AaPoJ56GF9A+Rw@lists.infradead.org
X-Gm-Message-State: AOJu0YzGXu9GvFjFkWDO3g7EXIoogPAhbJO9cFrScnXCIlTb2xqLlQYQ
	X47sary+7OsPr6QFG2g60mpU9TBirI2tyJdKCCtBpmX/BnK29mhIVrGO
X-Gm-Gg: ASbGncsPvR/RyKmoXdKcRVVYwz6tGNe3XtWnRIH+0RR/QF6qE+MqwiHsHwoRW3eJ0ca
	5nNm1fYapyd/EUg0QER7/Rv/wcbCkf9WiOW1awPBBV7rcPnAOHSPqxJNRyLBQu53uQU7+7pyWKl
	LkU+7mklDqJf2wikgcy5mEbX7t9X34xgOq9KKlkJUjB5q7acOaMyhWpcNc+GhIWQdqLNJ+V1ojj
	eW4bpYMf/8SvHVRDstOEVIGbZJAZgAahwbZZRklWWKCoSvxUemltFf/RaYM2IaGIJzgCs1vWeAu
	njkO46rbA8BxV1cFZ+r6f3yD/1uJdDvZ69+drJLAZ7WOYG9B9H86jWjMyXnSs+gWwaW1lyE0YRL
	1G3vOkyo4ffDko5pjFVjrN9cPciobYUSkcfADA/SnkwMJEKYUWGv4phAm9FnbXNaX5v2EiE25fg
	lMMGrnKSSZ
X-Google-Smtp-Source: AGHT+IFgm9OqRsVpOwJlWpRFnRdpiFbnDvjIqE1S8yUwFaOEGxB8uXbKfP60IUDLF/fjiGhEQ32pIQ==
X-Received: by 2002:a05:600c:6305:b0:458:bc3f:6a77 with SMTP id 5b1f17b1804b1-467e6b64cc2mr47340285e9.2.1758337414767;
        Fri, 19 Sep 2025 20:03:34 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:34 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:14 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-5-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200336_805301_0E30D177 
X-CRM114-Status: UNSURE (   8.72  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE,UPPERCASE_75_100 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/15] arm: efi: add a generic defconfig for v8 efi
 payload,
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/configs/efi_v8_defconfig | 266 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 266 insertions(+)

diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v8_defconfig
new file mode 100644
index 0000000000000000000000000000000000000000..607ab44e473f6ad910c1944f2828b6255e5ade10
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



