Delivery-date: Tue, 14 Jan 2025 09:39:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcSO-000wka-0Z
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 09:39:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcSN-00066K-G5
	for lore@pengutronix.de; Tue, 14 Jan 2025 09:39:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EXz7gEwKfaquYx1CMS5KoZiU/AWQpSspQ6B+Wlt4oHk=; b=EvNVL/US342Bh11pUASlK4xtgz
	LeG2gMOcON32i6ZrtzbPIN3EN+meFe7c1kUR0pTVLXxsIXmTmXRjU5nyiT9obNgA1pGX/KW21jCHK
	HCyU+VRfvARTqCasqrvN6o8BG7g5Dtgjcm86qWaJe8m9xsIQUkHPviyR18srMCxzhgIsOXYvo1zmc
	pChebrBVBo5irS71M0tktj2XMuc5w0cw3b5xDmBkMdvtXaKhJuRWl9X5HqjjA+FMfryQXbq+IkYBQ
	W+TbXLyj5fSPaXyATvmW8Zs0dFQevFTsE5MaYbVCV1zpeyhrosJDMlOmhs8Eq5ZYQwzibc24F+L5Y
	VQOv0S2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcS0-00000007qko-2EOz;
	Tue, 14 Jan 2025 08:39:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcRw-00000007qgL-42Z5
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 08:39:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXcRv-0005m6-Sd; Tue, 14 Jan 2025 09:38:59 +0100
Message-ID: <a17b5684-9f0a-4e6b-a10d-a88448963d63@pengutronix.de>
Date: Tue, 14 Jan 2025 09:38:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-6-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107143740.16903-6-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_003901_009579_6099D35A 
X-CRM114-Status: GOOD (  21.49  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/6] ARM: sunxi: Introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.01.25 15:37, Jules Maselbas wrote:
> Add some boilerplate, Makefiles, Kbuild.
> A generic barebox-dt-2nd.img image can be build for A64 SoC using
> the sunxi_v8_defconfig.
> 
> This image can be booted from u-boot and has been tested on Pine64+,
> it should work on other A64 SoC such as the pinephone, and other Pine64
> boards, it might also work on H6 SoC which uses the same sd/mmc controler.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

After addition to MULTIARCH (really MULTIPLATFORM):

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
> v1->v2:
>  - removed RELOCATABLE and HAVE_PBL_MULTI_IMAGES from Kconfig (Ahmad)
>  - used __dummy__.o insead of an empty file (Ahmad)
>  - removed include/mach/sunxi/barebox-arm.h (Ahmad)
> 
>  arch/arm/Kconfig                    | 12 ++++++++++++
>  arch/arm/Makefile                   |  1 +
>  arch/arm/configs/sunxi_v8_defconfig | 12 ++++++++++++
>  arch/arm/mach-sunxi/Kconfig         | 12 ++++++++++++
>  arch/arm/mach-sunxi/Makefile        |  1 +
>  5 files changed, 38 insertions(+)
>  create mode 100644 arch/arm/configs/sunxi_v8_defconfig
>  create mode 100644 arch/arm/mach-sunxi/Kconfig
>  create mode 100644 arch/arm/mach-sunxi/Makefile
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 0251f2dcef..83adfaddf7 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -109,6 +109,17 @@ config ARCH_SOCFPGA
>  	select CPU_V7
>  	select COMMON_CLK
>  
> +config ARCH_SUNXI
> +	bool "Allwinner SoCs"
> +	depends on 64BIT
> +	select CLKDEV_LOOKUP
> +	select COMMON_CLK
> +	select COMMON_CLK_OF_PROVIDER
> +	select GPIOLIB
> +	select OFDEVICE
> +	select OFTREE
> +	select PINCTRL
> +
>  config ARCH_TEGRA
>  	bool "NVIDIA Tegra"
>  	depends on 32BIT
> @@ -256,6 +267,7 @@ source "arch/arm/mach-omap/Kconfig"
>  source "arch/arm/mach-pxa/Kconfig"
>  source "arch/arm/mach-rockchip/Kconfig"
>  source "arch/arm/mach-socfpga/Kconfig"
> +source "arch/arm/mach-sunxi/Kconfig"
>  source "arch/arm/mach-stm32mp/Kconfig"
>  source "arch/arm/mach-versatile/Kconfig"
>  source "arch/arm/mach-vexpress/Kconfig"
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 270f5dfdc1..e4041cf715 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -102,6 +102,7 @@ machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
>  machine-$(CONFIG_ARCH_SAMSUNG)		+= samsung
>  machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
>  machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
> +machine-$(CONFIG_ARCH_SUNXI)		+= sunxi
>  machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
>  machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
>  machine-$(CONFIG_ARCH_TEGRA)		+= tegra
> diff --git a/arch/arm/configs/sunxi_v8_defconfig b/arch/arm/configs/sunxi_v8_defconfig
> new file mode 100644
> index 0000000000..ebadd1c950
> --- /dev/null
> +++ b/arch/arm/configs/sunxi_v8_defconfig
> @@ -0,0 +1,12 @@
> +CONFIG_ARCH_SUNXI=y
> +CONFIG_64BIT=y
> +CONFIG_BOARD_ARM_GENERIC_DT=y
> +CONFIG_ARCH_SUN50I_A64=y
> +CONFIG_DRIVER_SERIAL_NS16550=y
> +CONFIG_MCI=y
> +CONFIG_MCI_SUNXI_SMHC=y
> +CONFIG_CMD_DMESG=y
> +CONFIG_MCI_STARTUP=y
> +CONFIG_FS_FAT=y
> +CONFIG_IMAGE_COMPRESSION_XZKERN=y
> +CONFIG_MMU=y
> diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
> new file mode 100644
> index 0000000000..e8d23772c2
> --- /dev/null
> +++ b/arch/arm/mach-sunxi/Kconfig
> @@ -0,0 +1,12 @@
> +if ARCH_SUNXI
> +
> +config ARCH_SUN50I_A64
> +	bool "Allwinner A64 SoC"
> +	select CPU_V8
> +	select CPU_SUPPORTS_64BIT_KERNEL
> +	select CLOCKSOURCE_ARM_ARCHITECTED_TIMER
> +	select PINCTRL_SUN50I_A64
> +	help
> +	  Allwinner A64 (sun50iw1) SoC
> +
> +endif
> diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
> new file mode 100644
> index 0000000000..16a218658a
> --- /dev/null
> +++ b/arch/arm/mach-sunxi/Makefile
> @@ -0,0 +1 @@
> +obj- := __dummy__.o


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


