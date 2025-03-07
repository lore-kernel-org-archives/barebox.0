Delivery-date: Fri, 07 Mar 2025 09:44:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqTJK-00AwSe-0U
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 09:44:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqTJI-0002cZ-GX
	for lore@pengutronix.de; Fri, 07 Mar 2025 09:44:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dkWTI9H5TwsSz0yfm+TKNpxVBm+Ttfjy25S7OjhPG+8=; b=1+/pOE+Xf1yeijIjMmuoNuqovh
	KPa3/JrwavWsbv1npMkFxVOJ9UmQbh1AeoTLbfTCCpc7XgmE2GXgCaW/ri2PkT0uFmd6Sm62M3lSE
	jJvcYcqjSKZvHgARdqEcTKpcC9VxGHEXrrgPtUC1nylEHgxfTrtsagIWhgaHGnKIVOwjotpMVCzbl
	WLjfXJ4wDeAHLp/4gFTkmSOJqgboIf4h0hoOX3exLCjs18nJXU3IdkiogVDxe14hQuVrJy6AL8vMD
	d2EatE+0EjHr6Gz0DPXh2gxXzMTRfD7lpCcegYoFqNM01eS1QBfnOtyz6cFhUUgZ4rE3pt6JV+oGN
	n4fZhG9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTIo-0000000DbH1-2T75;
	Fri, 07 Mar 2025 08:43:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTIl-0000000DbGE-0EI5
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 08:43:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tqTIj-0002W3-LA; Fri, 07 Mar 2025 09:43:25 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tqTIj-004SMs-0y;
	Fri, 07 Mar 2025 09:43:25 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tqTIj-000R6D-0e;
	Fri, 07 Mar 2025 09:43:25 +0100
Date: Fri, 7 Mar 2025 09:43:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z8qxrYX0QOWkhO8J@pengutronix.de>
References: <20250306053920.7544-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306053920.7544-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_004327_250845_DC6A4FDE 
X-CRM114-Status: GOOD (  35.73  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC] at91: Remove AT91_LOAD_BAREBOX_SRAM option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 06, 2025 at 08:39:20AM +0300, Alexander Shiyan wrote:
> This patch removes the AT91_LOAD_BAREBOX_SRAM option.
> The option was introduced over 12 years ago and is now misleading.
> The functionality of loading a stage into SRAM can now be implemented
> via PBL in a low-level board-specific call.
> For boot sources (other than MMC), BOOTRom expects the size of the
> image to boot into SRAM in exception vector 6, so let's fix
> barebox-arm-head to always use the correct value here.
> 
> This partially reverts commits:
> 41d3371741: at91: introduce AT91_LOAD_BAREBOX_SRAM to specifcy which size load for external boot
> 4bd5ceee72: at91sam9261ek: add first stage support

Building at91sam9261ek_first_stage_defconfig currently fails with:

images/start_at91sam9261ek.pblb size 250172 > maximum size 159744

So this is unusable anyway. Trying to bring the binary size down by 40%
is likely more work than implementing a xload mechanism for NAND.

I think this patch is fine.

Sascha

> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  .../boards/at91/microchip-at91sam9263-ek.rst  |  7 --
>  .../defaultenv-at91sam9261ek/config           | 10 +--
>  arch/arm/boards/at91sam9261ek/init.c          | 16 +----
>  .../at91sam9261ek_first_stage_defconfig       | 65 -------------------
>  arch/arm/mach-at91/Kconfig                    | 10 ---
>  include/mach/at91/barebox-arm.h               | 11 +---
>  6 files changed, 6 insertions(+), 113 deletions(-)
>  delete mode 100644 arch/arm/configs/at91sam9261ek_first_stage_defconfig
> 
> diff --git a/Documentation/boards/at91/microchip-at91sam9263-ek.rst b/Documentation/boards/at91/microchip-at91sam9263-ek.rst
> index 8022cdd678..557e2040cb 100644
> --- a/Documentation/boards/at91/microchip-at91sam9263-ek.rst
> +++ b/Documentation/boards/at91/microchip-at91sam9263-ek.rst
> @@ -123,10 +123,3 @@ This is the reset vector and exception vectors. Must be the very first in the fi
>  ``.text_bare_init*:``
>  Everything in this section, and , is checked at link time.
>  Size most be less than BAREBOX_MAX_BARE_INIT_SIZE / ARCH_BAREBOX_MAX_BARE_INIT_SIZE
> -
> -at91 specify the size of the two sections in exception vector 6 (see above),
> -if CONFIG_AT91_LOAD_BAREBOX_SRAM is defined.
> -I think this is because some at91 variants have only very limited SRAM size,
> -and we copy only a minimal part to the SRAM. The remaining part is then
> -executed in-place.
> -For at91sam9263 we have a large SRAM so there is room for the full bootstrap binary.
> diff --git a/arch/arm/boards/at91sam9261ek/defaultenv-at91sam9261ek/config b/arch/arm/boards/at91sam9261ek/defaultenv-at91sam9261ek/config
> index cb3e847f54..7d855779ca 100644
> --- a/arch/arm/boards/at91sam9261ek/defaultenv-at91sam9261ek/config
> +++ b/arch/arm/boards/at91sam9261ek/defaultenv-at91sam9261ek/config
> @@ -34,14 +34,8 @@ kernelimage=zImage
>  #kernelimage=Image.lzo
>  
>  nand_device=atmel_nand
> -if [ x$borebox_first_stage = x1 ]
> -then
> -	nand_parts="384k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> -	rootfs_mtdblock_nand=5
> -else
> -	nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> -	rootfs_mtdblock_nand=6
> -fi
> +nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> +rootfs_mtdblock_nand=6
>  
>  autoboot_timeout=3
>  
> diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
> index da305fe9ed..799466d655 100644
> --- a/arch/arm/boards/at91sam9261ek/init.c
> +++ b/arch/arm/boards/at91sam9261ek/init.c
> @@ -319,9 +319,6 @@ mem_initcall(at91sam9261ek_mem_init);
>  
>  static int at91sam9261ek_devices_init(void)
>  {
> -	u32 barebox_part_start;
> -	u32 barebox_part_size;
> -
>  	ek_add_device_nand();
>  	ek_add_device_dm9000();
>  	ek_add_device_udc();
> @@ -330,17 +327,8 @@ static int at91sam9261ek_devices_init(void)
>  	ek_add_device_lcdc();
>  	ek_add_device_spi();
>  
> -	if (IS_ENABLED(CONFIG_AT91_LOAD_BAREBOX_SRAM)) {
> -		barebox_part_start = 0;
> -		barebox_part_size = SZ_256K + SZ_128K;
> -		export_env_ull("borebox_first_stage", 1);
> -	} else {
> -		devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
> -		barebox_part_start = SZ_128K;
> -		barebox_part_size = SZ_256K;
> -	}
> -	devfs_add_partition("nand0", barebox_part_start, barebox_part_size,
> -			    DEVFS_PARTITION_FIXED, "self_raw");
> +	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
> +	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
>  	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
>  	dev_add_bb_dev("env_raw", "env0");
> diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
> deleted file mode 100644
> index 8e6065de34..0000000000
> --- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
> +++ /dev/null
> @@ -1,65 +0,0 @@
> -CONFIG_ARCH_AT91=y
> -CONFIG_ARCH_AT91SAM9261=y
> -CONFIG_AT91_LOAD_BAREBOX_SRAM=y
> -CONFIG_AEABI=y
> -CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> -CONFIG_MMU=y
> -CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
> -CONFIG_EXPERIMENTAL=y
> -CONFIG_MALLOC_TLSF=y
> -CONFIG_PROMPT="9261-EK:"
> -CONFIG_HUSH_FANCY_PROMPT=y
> -CONFIG_CMDLINE_EDITING=y
> -CONFIG_AUTO_COMPLETE=y
> -CONFIG_MENU=y
> -CONFIG_BOOTM_SHOW_TYPE=y
> -CONFIG_BOOTM_INITRD=y
> -CONFIG_CONSOLE_ACTIVATE_ALL=y
> -CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
> -# CONFIG_CMD_ARM_CPUINFO is not set
> -CONFIG_LONGHELP=y
> -CONFIG_CMD_MEMINFO=y
> -CONFIG_CMD_AT91_BOOT_TEST=y
> -# CONFIG_CMD_BOOTU is not set
> -CONFIG_CMD_GO=y
> -CONFIG_CMD_LOADB=y
> -CONFIG_CMD_RESET=y
> -CONFIG_CMD_UIMAGE=y
> -CONFIG_CMD_PARTITION=y
> -CONFIG_CMD_EXPORT=y
> -CONFIG_CMD_PRINTENV=y
> -CONFIG_CMD_SAVEENV=y
> -CONFIG_CMD_SLEEP=y
> -CONFIG_CMD_DHCP=y
> -CONFIG_CMD_PING=y
> -CONFIG_CMD_TFTP=y
> -CONFIG_CMD_ECHO_E=y
> -CONFIG_CMD_EDIT=y
> -CONFIG_CMD_LOGIN=y
> -CONFIG_CMD_MENU=y
> -CONFIG_CMD_MENU_MANAGEMENT=y
> -CONFIG_CMD_PASSWD=y
> -CONFIG_CMD_READLINE=y
> -CONFIG_CMD_TIMEOUT=y
> -CONFIG_CMD_FLASH=y
> -CONFIG_CMD_GPIO=y
> -CONFIG_CMD_LED=y
> -CONFIG_CMD_LED_TRIGGER=y
> -CONFIG_NET=y
> -CONFIG_NET_NFS=y
> -CONFIG_NET_RESOLV=y
> -CONFIG_DRIVER_NET_DM9K=y
> -CONFIG_DRIVER_SPI_ATMEL=y
> -CONFIG_MTD=y
> -# CONFIG_MTD_OOB_DEVICE is not set
> -CONFIG_MTD_DATAFLASH=y
> -CONFIG_NAND=y
> -CONFIG_NAND_ATMEL=y
> -CONFIG_USB_GADGET=y
> -CONFIG_USB_GADGET_DFU=y
> -CONFIG_USB_GADGET_SERIAL=y
> -CONFIG_LED=y
> -CONFIG_LED_GPIO=y
> -CONFIG_LED_TRIGGERS=y
> -CONFIG_KEYBOARD_GPIO=y
> -CONFIG_FS_TFTP=y
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 0b3a4ac44c..5bc5cacb7c 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -152,9 +152,6 @@ config HAVE_NAND_ATMEL_BUSWIDTH_16
>  config HAVE_AT91_DATAFLASH_CARD
>  	bool
>  
> -config HAVE_AT91_LOAD_BAREBOX_SRAM
> -	bool
> -
>  comment "Atmel AT91 System-on-Chip"
>  
>  config SOC_AT91RM9200
> @@ -177,7 +174,6 @@ config SOC_AT91SAM9261
>  	bool
>  	select SOC_AT91SAM9
>  	select PINCTRL_AT91
> -	select HAVE_AT91_LOAD_BAREBOX_SRAM
>  	help
>  	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
>  
> @@ -185,7 +181,6 @@ config SOC_AT91SAM9263
>  	bool
>  	select SOC_AT91SAM9
>  	select HAS_MACB
> -	select HAVE_AT91_LOAD_BAREBOX_SRAM
>  	select PINCTRL_AT91
>  
>  config SOC_AT91SAM9G45
> @@ -707,9 +702,4 @@ config AT91_BOOTSTRAP
>  	depends on HAVE_AT91_BOOTSTRAP
>  	select BOOTSTRAP
>  
> -config AT91_LOAD_BAREBOX_SRAM
> -	bool "at91 load barebox in sram"
> -	depends on SHELL_NONE || HAVE_AT91_LOAD_BAREBOX_SRAM
> -	default y if SHELL_NONE
> -
>  endif
> diff --git a/include/mach/at91/barebox-arm.h b/include/mach/at91/barebox-arm.h
> index 652fd283a0..3a041b4557 100644
> --- a/include/mach/at91/barebox-arm.h
> +++ b/include/mach/at91/barebox-arm.h
> @@ -4,18 +4,11 @@
>  
>  #include <asm/barebox-arm.h>
>  #include <asm/common.h>
> +#include <linux/compiler.h>
>  #include <mach/at91/sama5d3.h>
>  #include <mach/at91/sama5d4.h>
>  #include <mach/at91/at91sam9261.h>
>  
> -#ifdef CONFIG_AT91_LOAD_BAREBOX_SRAM
> -#define AT91_EXV6	".word _barebox_image_size\n"
> -#else
> -#define AT91_EXV6	".word _barebox_bare_init_size\n"
> -#endif
> -
> -#include <linux/compiler.h>
> -
>  static __always_inline void __barebox_at91_head(void)
>  {
>  	__asm__ __volatile__ (
> @@ -27,7 +20,7 @@ static __always_inline void __barebox_at91_head(void)
>  		"1: b 1b\n"
>  		"1: b 1b\n"
>  		"1: b 1b\n"
> -		AT91_EXV6				/* image size to load by the bootrom */
> +		".word _barebox_image_size\n"		/* image size to load by the bootrom */
>  		"1: b 1b\n"
>  		"1: b 1b\n"
>  #endif
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


