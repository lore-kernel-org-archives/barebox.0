Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyj7E-0002nN-NR
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 13:14:45 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 86F7CDC09DA
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 14:24:32 +0100 (CET)
Date: Fri, 25 Jan 2013 14:13:24 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130125131324.GB26329@game.jcrosoft.org>
References: <1359117181-18599-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359117181-18599-1-git-send-email-fabio.porcedda@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4] ARM: at91: Add Telit EVK-PRO3 board support
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

> +
> +/*
> + * MCI (SD/MMC)
> + */
> +#if defined(CONFIG_MCI_ATMEL)
> +static struct atmel_mci_platform_data __initdata evk_mci_data = {
> +	.bus_width	= 4,
> +	.slot_b		= 1,
this will not work correctly

and you do not init the cd and wp gpio so you use gpio 0 (PIOA0) for both

as we now request the gpio and 0 is a valid gpio you will get an issue

Best Regards,
J.
> +};
> +
> +static void evk_usb_add_device_mci(void)
> +{
> +	at91_add_device_mci(0, &evk_mci_data);
> +}
> +#else
> +static void evk_usb_add_device_mci(void) {}
> +#endif
> +
> +/*
> + * USB Host port
> + */
> +static struct at91_usbh_data __initdata evk_usbh_data = {
> +	.ports		= 2,
> +	.vbus_pin	= { -EINVAL, -EINVAL },
> +};
> +
> +/*
> + * USB Device port
> + */
> +static struct at91_udc_data __initdata evk_udc_data = {
> +	.vbus_pin	= AT91_PIN_PC4,
> +	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
> +};
> +
> +static int evk_mem_init(void)
> +{
> +	at91_add_device_sdram(0);
> +
> +	return 0;
> +}
> +mem_initcall(evk_mem_init);
> +
> +static int evk_devices_init(void)
> +{
> +	evk_add_device_nand();
> +	evk_phy_reset();
> +	at91_add_device_eth(0, &macb_pdata);
> +	at91_add_device_usbh_ohci(&evk_usbh_data);
> +	at91_add_device_udc(&evk_udc_data);
> +	evk_usb_add_device_mci();
> +
> +	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
> +
> +	devfs_add_partition("nand0", 0x00000, BOOTSTRAP_SIZE,
> +			    DEVFS_PARTITION_FIXED, "bootstrap_raw");
> +	dev_add_bb_dev("bootstrap_raw", "bootstrap");
> +	devfs_add_partition("nand0", BOOTSTRAP_SIZE, SZ_256K,
> +			    DEVFS_PARTITION_FIXED, "self_raw");
> +	dev_add_bb_dev("self_raw", "self0");
> +	devfs_add_partition("nand0", BOOTSTRAP_SIZE + SZ_256K, SZ_128K,
> +			    DEVFS_PARTITION_FIXED, "env_raw");
> +	dev_add_bb_dev("env_raw", "env0");
> +	devfs_add_partition("nand0", BOOTSTRAP_SIZE + SZ_256K + SZ_128K,
> +			    SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
> +	dev_add_bb_dev("env_raw1", "env1");
> +
> +	return 0;
> +}
> +
> +device_initcall(evk_devices_init);
> +
> +static int evk_console_init(void)
> +{
> +	at91_register_uart(0, 0);
> +	return 0;
> +}
> +console_initcall(evk_console_init);
> diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
> new file mode 100644
> index 0000000..050d176
> --- /dev/null
> +++ b/arch/arm/configs/telit_evk_pro3_defconfig
> @@ -0,0 +1,73 @@
> +CONFIG_ARCH_AT91SAM9260=y
> +CONFIG_MACH_GE863=y
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
> +CONFIG_AEABI=y
> +# CONFIG_CMD_ARM_CPUINFO is not set
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
> +CONFIG_MMU=y
> +CONFIG_EXPERIMENTAL=y
> +CONFIG_PROMPT="EVK-PRO3:"
> +CONFIG_LONGHELP=y
> +CONFIG_PROMPT_HUSH_PS2="y"
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/telit-evk-pro3/env"
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_TFTP=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_LOADB=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_FLASH=y
> +CONFIG_CMD_UBIFORMAT=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_BOOTM_INITRD=y
> +CONFIG_CMD_BOOTM_OFTREE=y
> +CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
> +CONFIG_CMD_UIMAGE=y
> +# CONFIG_CMD_BOOTU is not set
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_OFTREE=y
> +CONFIG_CMD_MTEST=y
> +CONFIG_CMD_MTEST_ALTERNATIVE=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_CMD_LED=y
> +CONFIG_CMD_LED_TRIGGER=y
> +CONFIG_NET=y
> +CONFIG_NET_DHCP=y
> +CONFIG_NET_NFS=y
> +CONFIG_NET_PING=y
> +CONFIG_NET_NETCONSOLE=y
> +CONFIG_DRIVER_NET_MACB=y
> +# CONFIG_SPI is not set
> +CONFIG_MTD=y
> +# CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_NAND=y
> +# CONFIG_NAND_ECC_HW is not set
> +# CONFIG_NAND_ECC_HW_SYNDROME is not set
> +# CONFIG_NAND_ECC_HW_NONE is not set
> +CONFIG_NAND_ATMEL=y
> +CONFIG_UBI=y
> +CONFIG_USB_GADGET=y
> +CONFIG_USB_GADGET_DFU=y
> +CONFIG_USB_GADGET_SERIAL=y
> +CONFIG_MCI=y
> +CONFIG_MCI_STARTUP=y
> +CONFIG_MCI_ATMEL=y
> +CONFIG_LED=y
> +CONFIG_LED_GPIO=y
> +CONFIG_LED_TRIGGERS=y
> +CONFIG_FS_TFTP=y
> +CONFIG_FS_FAT=y
> +CONFIG_FS_FAT_LFN=y
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index fcba7fb..97eec3e 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -46,6 +46,7 @@ config BOARDINFO
>  	default "Calao TNY-A9263" if MACH_TNY_A9263
>  	default "Calao TNY-A9G20" if MACH_TNY_A9G20
>  	default "Calao QIL-A9260" if MACH_QIL_A9260
> +	default "Telit EVK-PRO3" if MACH_GE863
>  
>  config HAVE_NAND_ATMEL_BUSWIDTH_16
>  	bool
> @@ -235,6 +236,13 @@ config MACH_USB_A9260
>  	  Select this if you are using a Calao Systems USB-A9260.
>  	  <http://www.calao-systems.com>
>  
> +config MACH_GE863
> +	bool "Telit EVK-PRO3"
> +	select HAVE_DEFAULT_ENVIRONMENT_NEW
> +	help
> +	  Say y here if you are using Telit EVK-PRO3 with GE863-PRO3
> +	  <http://www.telit.com>
> +
>  endchoice
>  
>  endif
> -- 
> 1.8.0.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
