Delivery-date: Mon, 06 Oct 2025 06:16:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdx-004lrr-1M
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdw-0002sS-HD
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ioJzlTSvTMS1cLwmrIBBxum33Yl/727q46QArQbvt7s=; b=kZK2+ckf7kl1ixfObd4TUVUjsz
	6qluqfXsFkgJdf9f3i5uMjfa43qs3SRej/uivgWO2in0ach1G+mPTrlVO/5QqA3u6w1JLFkmfAXjG
	5gjrOFcHWSD3xmckunvRk/JcJNyqZID+LWsPayE0HtepJ+zuNpXQWVcxP7FZXjnwCpyHP91GpvQX/
	xcjl0BQVpZPbIQmQwmTpev10vzros/GDdcal/8D7W3TmpCg73eIvpvZcFNHVC5X66H3/GTGEZOeVw
	Vx5Dk7nwTrH/O0hRfXqLoESeIHh97CNU3V8vdkSsYqdQi5KRGM3SRDLdGjH6C5010XTEMarHNZURE
	CU7BTneQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdM-0000000GuQa-1tU8;
	Mon, 06 Oct 2025 04:15:36 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdH-0000000GuLY-0QIG
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:32 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-4e4d9fc4316so55618391cf.2
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724130; x=1760328930; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ioJzlTSvTMS1cLwmrIBBxum33Yl/727q46QArQbvt7s=;
        b=i+egox8zOTMj0E9cJtSI+joWFx1tEcSpzAo8C3J++ai6l75tYwkyhnQcDisOObsMxb
         DLzKLImJYYSsOyTjntNCbLnNJLyI9itke5aubz+Yj4l2AtO7IQ9EK7bz/h/iXWLPimVE
         ylGmUv9iGpc7eQeOWZC4oGOxRhY3iOT+922nMVnYlrJGup2LbLEUeRUP6mmeh+8BxZzR
         y7+8Y6SW4HMfTz6YSpDnwnrH6Hpcrk8Q8gkifdvK5BERBThq90Ir7VnFCmNqeiI3co30
         UMCFjCMFTlnxdJHvA9gLUGV+Z+4tSUYb04Z9r+SVWHGI+p7VN4lKIQ3+fusyJO9ZVJvn
         9hkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724130; x=1760328930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ioJzlTSvTMS1cLwmrIBBxum33Yl/727q46QArQbvt7s=;
        b=ECYY31g61EBkwszXkA5zQWQS0TCLlMmcgWjMgjL/rR9q2qXDuKWk/h27OXIwrL9dz1
         XLcfnxXPm8frc867OyPwZ2F4oNP8ukI76Ae06V1gtCZWXHHh5UYHDvrjxH4ZYLpImoXd
         0Ph96JcQAv48d39p7c0w7QJc5vtuWzOHEPYuCkzOGNvCxIS17El71M3y0UGcmSIFKU/J
         QE3fQrrdhdjamIwN4FrOThRJnkR7br4Wxub+ekRrgNfM0jg4DiEMTMTSEV0zQOmnxuLK
         L4lmo4kk1kAFmJOwsCFsiQVLmfH4kqfFG5knjfQhbdiF/qqnhShmlAfG1wCqR55XH8v2
         XN/Q==
X-Gm-Message-State: AOJu0YzwujmvbQpLDDHwMlTR1a+Goxf30VSWlWawgqikc03RfvjCo0T4
	EfJQz3PwdKkxp9vS7sQRosDzmeh65l4czSrVjPOUtYCZGfjUlWUPEeKsb+oc2w==
X-Gm-Gg: ASbGncsbI2fKc4iZSqL/ZjM17LYTEZwaEPtZl6sIImdlaHAVaZ8f1mveKlLFYDj5zL8
	S1Rh2MuLTcw9j9WfWZjwMEIwUAIieGDGdffan9iDRDPYZJzlH5i5EzFSRm0twsvI4Vi/UfUXZOL
	KskFkxOIfy/NmgvB3ZuDMEXzce7Jv1mpr7n6Z/VSd3gKiwpLZV08igXWfx8r/WT2XtINxo+stWq
	GbzgkBfBj85wAz8lT/o3z4HEMs8Cxwo9vMOBv5JrLWbpWsSRkiZzVYcRPdUPruWJ5cyMdOcMnBJ
	tSlIav1T55dfXOGBwKN1fI6tXyiKiAx5b3yezoEdEjNqV/yUOZBg1drfaFwDUNkjmZUHGLOvdGz
	uf/dIVXj7WU+d9jDZhJdUJzfvrzFvj6f4PB/jgDFFFja2GjsFwyQw90RxEg46qiniZtuRXR8Ci0
	CtEkfOL48cVw==
X-Google-Smtp-Source: AGHT+IEi1RPFncZ2+f+X2eecLrpQr15uQFLNOn5zJd6U+8wA3bMwM+rheEvZclS7sCTjlduC9CKBDQ==
X-Received: by 2002:a05:622a:258a:b0:4b4:56a6:42b5 with SMTP id d75a77b69052e-4e576adc584mr147654471cf.41.1759724129840;
        Sun, 05 Oct 2025 21:15:29 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:29 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 00:15:12 -0400
Message-Id: <20251006041512.1360284-11-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211531_161285_53450CE8 
X-CRM114-Status: UNSURE (   9.96  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,UPPERCASE_75_100 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/11] ARM: efi: add a generic defconfig for v8 efi payload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

The multi_v8_efi_defconfig enables a lot of drivers that are not needed
for an EFI payload. Therefore add a minimal EFI-only config.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/configs/efi_v8_defconfig | 212 ++++++++++++++++++++++++++++++
 1 file changed, 212 insertions(+)
 create mode 100644 arch/arm/configs/efi_v8_defconfig

diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v8_defconfig
new file mode 100644
index 000000000000..5f946dd51d4a
--- /dev/null
+++ b/arch/arm/configs/efi_v8_defconfig
@@ -0,0 +1,212 @@
+CONFIG_64BIT=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_PSCI_CLIENT=y
+CONFIG_NAME="efi_v8_defconfig"
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="barebox> "
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_AIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_MACHINE_ID=y
+CONFIG_FASTBOOT_SPARSE=y
+CONFIG_EFI_PAYLOAD=y
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
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
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
+CONFIG_CMD_LED=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SMC=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_PASSWD=y
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
+CONFIG_DRIVER_SERIAL_EFI_STDIO=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_CADENCE=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_FSL_ENETC=y
+CONFIG_DRIVER_NET_FSL_FMAN=y
+CONFIG_DRIVER_NET_VIRTIO=y
+CONFIG_DP83867_PHY=y
+CONFIG_MICREL_PHY=y
+CONFIG_REALTEK_PHY=y
+CONFIG_SMSC_PHY=y
+CONFIG_NET_DSA_MV88E6XXX=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_USB_NET_AX88179_178A=y
+CONFIG_NET_USB_SMSC95XX=y
+CONFIG_NET_USB_RTL8152=y
+CONFIG_DRIVER_SPI_FSL_QUADSPI=y
+CONFIG_I2C=y
+CONFIG_I2C_EFI=y
+CONFIG_MTD=y
+CONFIG_MTD_CONCAT=y
+CONFIG_MTD_M25P80=y
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_VIRTIO_BLK=y
+CONFIG_USB_HOST=y
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
+CONFIG_DRIVER_VIDEO_EFI_GOP=y
+CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_SOUND=y
+CONFIG_MCI=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_DW=y
+CONFIG_MCI_SUNXI_SMHC=y
+CONFIG_MCI_ROCKCHIP_DWCMSHC=y
+CONFIG_MCI_ARASAN=y
+CONFIG_MCI_AM654=y
+CONFIG_COMMON_CLK=y
+CONFIG_COMMON_CLK_SCMI=y
+CONFIG_CLOCKSOURCE_EFI=y
+CONFIG_RAVE_SP_CORE=y
+CONFIG_MFD_RK808=y
+CONFIG_LED=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT25=y
+CONFIG_VIRTIO_INPUT=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
+CONFIG_WATCHDOG_EFI=y
+CONFIG_WATCHDOG_DW=y
+CONFIG_RAVE_SP_WATCHDOG=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
+CONFIG_HW_RANDOM_EFI=y
+CONFIG_DMADEVICES=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_ARM_SCMI=y
+CONFIG_REGULATOR_RK808=y
+CONFIG_RESET_IMX7=y
+CONFIG_PCI_ECAM_GENERIC=y
+CONFIG_RTC_CLASS=y
+CONFIG_ARM_SCMI_PROTOCOL=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_MAILBOX=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_9P_FS=y
+CONFIG_9P_FS_WRITE=y
+CONFIG_FS_EFI=y
+CONFIG_FS_EFIVARFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_BPKFS=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_PSTORE_CONSOLE=y
+CONFIG_FS_RATP=y
+CONFIG_DIGEST_SHA1_ARM64_CE=y
+CONFIG_DIGEST_SHA256_ARM64_CE=y
+CONFIG_LZO_DECOMPRESS=y
+# CONFIG_MISSING_FIRMWARE_ERROR is not set
-- 
2.34.1



