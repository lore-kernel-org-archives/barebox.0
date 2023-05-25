Delivery-date: Thu, 25 May 2023 09:32:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q25Sx-00DVEW-6O
	for lore@lore.pengutronix.de; Thu, 25 May 2023 09:32:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q25Su-00045M-PX
	for lore@pengutronix.de; Thu, 25 May 2023 09:32:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ae8j2A8vfCjpwvyJG7W5PgkK4QU2TSOfcYc8UCP83DE=; b=pqo12no1tlpwVpieQ5+ePuoKnF
	+sMNwDuKgkGToeSzw5mk/WyRgMRSQerlXrXOdJxtCuqFvxXw3YVIz/bb25bxz8d9G39SIs+J3IIM+
	/eCdUica2ViEIfXsKOaUpqHQF8NDuAi6fB3akAUsgBYtMqvB04/8ObHOIxLpKi5uG3+1dA190G0kC
	0WtoSLNovDCPmJ35YWKAWjkiLXM5XEjwk3PSHHS7uqEVVLJcFYAdVcna1xEsAkQiXvtPzQwespdv/
	rfOY1FQxS9ncY6Fds2IiCJDHbtbtT9x6yH0r7shjnysTtmP+FVwqOrYNPt4y1Xmq/ZNEf9RXsLLu/
	u9tYEuKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q25Rr-00Fo44-0R;
	Thu, 25 May 2023 07:31:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q25Rn-00Fo3G-1A
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 07:31:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q25Rm-0003yx-35; Thu, 25 May 2023 09:31:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q25Rl-000078-Rx; Thu, 25 May 2023 09:31:41 +0200
Date: Thu, 25 May 2023 09:31:41 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230525073141.GN17518@pengutronix.de>
References: <20230523090101.3322778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230523090101.3322778-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_003143_397873_B5B755DB 
X-CRM114-Status: GOOD (  16.49  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM64: configs: multi_v8_defconfig: enable what
 qemu_virt64_defconfig had
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 23, 2023 at 11:01:01AM +0200, Ahmad Fatoum wrote:
> qemu_virt64_defconfig was dropped before all its contents were folded
> into its multi_v8_defconfig replacement. Reinstate the missing options.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/configs/multi_v8_defconfig | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
> index 8f2d064d1988..d30158d7f880 100644
> --- a/arch/arm/configs/multi_v8_defconfig
> +++ b/arch/arm/configs/multi_v8_defconfig
> @@ -50,6 +50,7 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
>  CONFIG_STATE=y
>  CONFIG_BOOTCHOOSER=y
>  CONFIG_RESET_SOURCE=y
> +CONFIG_MACHINE_ID=y
>  CONFIG_FASTBOOT_SPARSE=y
>  CONFIG_CMD_DMESG=y
>  CONFIG_LONGHELP=y
> @@ -59,7 +60,10 @@ CONFIG_CMD_MEMINFO=y
>  CONFIG_CMD_ARM_MMUINFO=y
>  CONFIG_CMD_REGULATOR=y
>  CONFIG_CMD_MMC_EXTCSD=y
> +CONFIG_CMD_POLLER=y
> +CONFIG_CMD_SLICE=y
>  CONFIG_CMD_GO=y
> +CONFIG_CMD_LOADB=y
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_UIMAGE=y
>  CONFIG_CMD_BOOTCHOOSER=y
> @@ -88,9 +92,13 @@ CONFIG_CMD_PING=y
>  CONFIG_CMD_TFTP=y
>  CONFIG_CMD_ECHO_E=y
>  CONFIG_CMD_EDIT=y
> +CONFIG_CMD_LOGIN=y
>  CONFIG_CMD_MENU=y
>  CONFIG_CMD_MENU_MANAGEMENT=y
>  CONFIG_CMD_MENUTREE=y
> +CONFIG_CMD_PASSWD=y
> +CONFIG_CMD_SPLASH=y
> +CONFIG_CMD_FBTEST=y
>  CONFIG_CMD_READLINE=y
>  CONFIG_CMD_TIMEOUT=y
>  CONFIG_CMD_CRC=y
> @@ -103,6 +111,7 @@ CONFIG_CMD_FLASH=y
>  CONFIG_CMD_GPIO=y
>  CONFIG_CMD_I2C=y
>  CONFIG_CMD_LED=y
> +CONFIG_CMD_POWEROFF=y
>  CONFIG_CMD_SMC=y
>  CONFIG_CMD_LED_TRIGGER=y
>  CONFIG_CMD_USBGADGET=y
> @@ -113,12 +122,15 @@ CONFIG_CMD_OF_DIFF=y
>  CONFIG_CMD_OF_NODE=y
>  CONFIG_CMD_OF_PROPERTY=y
>  CONFIG_CMD_OF_DISPLAY_TIMINGS=y
> +CONFIG_CMD_OF_FIXUP_STATUS=y
>  CONFIG_CMD_OF_OVERLAY=y
>  CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_TIME=y
>  CONFIG_NET=y
>  CONFIG_NET_NFS=y
>  CONFIG_NET_NETCONSOLE=y
> +CONFIG_NET_SNTP=y
> +CONFIG_NET_FASTBOOT=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_OF_BAREBOX_ENV_IN_FS=y
>  CONFIG_OF_OVERLAY_LIVE=y
> @@ -151,6 +163,9 @@ CONFIG_I2C_GPIO=y
>  CONFIG_I2C_IMX=y
>  CONFIG_I2C_RK3X=y
>  CONFIG_MTD=y
> +CONFIG_MTD_CONCAT=y
> +CONFIG_DRIVER_CFI=y
> +CONFIG_CFI_BUFFER_WRITE=y
>  CONFIG_VIRTIO_BLK=y
>  CONFIG_USB_HOST=y
>  CONFIG_USB_IMX_CHIPIDEA=y
> @@ -162,6 +177,10 @@ CONFIG_USB_GADGET=y
>  CONFIG_USB_GADGET_SERIAL=y
>  CONFIG_USB_GADGET_FASTBOOT=y
>  CONFIG_USB_GADGET_MASS_STORAGE=y
> +CONFIG_VIDEO=y
> +CONFIG_FRAMEBUFFER_CONSOLE=y
> +CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
> +CONFIG_SOUND=y
>  CONFIG_MCI=y
>  CONFIG_MCI_STARTUP=y
>  CONFIG_MCI_MMC_BOOT_PARTITIONS=y
> @@ -187,12 +206,14 @@ CONFIG_HWRNG=y
>  CONFIG_HW_RANDOM_VIRTIO=y
>  CONFIG_GPIO_PCA953X=y
>  CONFIG_GPIO_ZYNQ=y
> +CONFIG_NVMEM_RMEM=y
>  CONFIG_IMX_OCOTP=y
>  CONFIG_RAVE_SP_EEPROM=y
>  CONFIG_REGULATOR=y
>  CONFIG_REGULATOR_FIXED=y
>  CONFIG_REGULATOR_RK808=y
>  CONFIG_RESET_IMX7=y
> +CONFIG_PCI_ECAM_GENERIC=y
>  CONFIG_RTC_CLASS=y
>  CONFIG_RTC_DRV_DS1307=y
>  CONFIG_FIRMWARE_ZYNQMP_FPGA=y
> @@ -201,7 +222,9 @@ CONFIG_USB_NOP_XCEIV=y
>  CONFIG_PHY_ROCKCHIP_INNO_USB2=y
>  CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
>  CONFIG_ROCKCHIP_IODOMAIN=y
> +CONFIG_NVMEM_REBOOT_MODE=y
>  CONFIG_VIRTIO_MMIO=y
> +CONFIG_VIRTIO_PCI=y
>  CONFIG_FS_CRAMFS=y
>  CONFIG_FS_EXT4=y
>  CONFIG_FS_TFTP=y
> @@ -211,5 +234,7 @@ CONFIG_FS_FAT_WRITE=y
>  CONFIG_FS_FAT_LFN=y
>  CONFIG_FS_BPKFS=y
>  CONFIG_FS_UIMAGEFS=y
> +CONFIG_FS_PSTORE=y
> +CONFIG_FS_PSTORE_CONSOLE=y
>  CONFIG_FS_RATP=y
>  CONFIG_LZO_DECOMPRESS=y
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


