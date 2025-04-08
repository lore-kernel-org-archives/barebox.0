Delivery-date: Tue, 08 Apr 2025 09:32:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u23Ru-009tOF-32
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 09:32:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u23Ru-0000EL-8q
	for lore@pengutronix.de; Tue, 08 Apr 2025 09:32:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0mDz8t/Pxd7slHnPlyj1s8Q+R40MkZynjzUpVy/nhHQ=; b=vxv7uWpxRhusYlCWyowVHjOxB8
	NSKwExcC7JYNnILcGnO/uLNQlwhOX/YMl85Wcd3dyOv3sygZ2/8ZIIye93Wweob8GuwwlsVlIrosG
	qIPG/gNwmB2Ak3iCnfEfL76i3eM3FbpSGzeqiEzDAWdDqoHaapk6lMiNzCVcQoq3Rhi2TBPTXd+Gx
	uR9CjQndZ4fy3BIxOsz4YXzXsHGusmbP38XU0tPl4mWdRfMXRAW3DqS9bZ0hI65qUAYqRb/QjNRdA
	Od2QlsbA9R1/RyATB4wZmFEzhjX3q1kMFdc/8a4n5g/2b1z4CzBYWxUZVmUofcCkR9gr1/LAu/zMh
	DMfD5Nrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u23RP-000000034jR-3nJX;
	Tue, 08 Apr 2025 07:32:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u23JC-000000032xT-096A
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 07:23:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u23JA-0006E8-P0; Tue, 08 Apr 2025 09:23:44 +0200
Message-ID: <a5ec5fc6-ecf8-4033-bc5d-34a0f1818b71@pengutronix.de>
Date: Tue, 8 Apr 2025 09:23:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20250408071658.56670-1-eagle.alexander923@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250408071658.56670-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_002346_076128_44D4A644 
X-CRM114-Status: GOOD (  19.20  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: Remove support for RK3399
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 08.04.25 09:16, Alexander Shiyan wrote:
> Since barebox does not support RK3399-based boards, let's
> remove RK3399 support for now.

I have out-of-tree RK3399 (and PX30) support, but haven't got around
to fully upstream it :/

> It can be easily added later if needed.
> This change will help update the Rockchip CLK subsystem to
> a more recent version from the kernel.

Fair enough..

> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  arch/arm/mach-rockchip/Kconfig    |    9 -
>  arch/arm/mach-rockchip/atf.c      |    5 -
>  drivers/clk/rockchip/Makefile     |    1 -
>  drivers/clk/rockchip/clk-rk3399.c | 1660 -----------------------------
>  firmware/Makefile                 |    2 -
>  include/mach/rockchip/atf.h       |    2 -
>  6 files changed, 1679 deletions(-)
>  delete mode 100644 drivers/clk/rockchip/clk-rk3399.c
> 
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index bfbfa7367a..98dfd11c18 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -27,15 +27,6 @@ config ARCH_ROCKCHIP_V8
>  	select CPU_V8
>  	select ARM_ATF
>  
> -config ARCH_RK3399
> -	bool
> -	select ARCH_ROCKCHIP_V8
> -	select ARCH_HAS_RESET_CONTROLLER
> -
> -config ARCH_RK3399PRO
> -	bool
> -	select ARCH_RK3399
> -
>  config ARCH_RK3568
>  	bool
>  	select ARCH_ROCKCHIP_V8
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 86a28c5101..d3a40e3c1b 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -132,11 +132,6 @@ static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
>  		   SOC##_BAREBOX_LOAD_ADDRESS, (uintptr_t)fdt);                 \
>  } while (0)                                                                     \
>  
> -void rk3399_atf_load_bl31(void *fdt)
> -{
> -	rockchip_atf_load_bl31(RK3399, rk3399_bl31_bin, rk3399_bl32_bin, fdt);
> -}
> -
>  void rk3568_atf_load_bl31(void *fdt)
>  {
>  	rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin, rk3568_bl32_bin, fdt);
> diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
> index f01014da0c..02320025e5 100644
> --- a/drivers/clk/rockchip/Makefile
> +++ b/drivers/clk/rockchip/Makefile
> @@ -3,6 +3,5 @@ obj-y += clk-cpu.o clk-pll.o clk.o clk-muxgrf.o clk-mmc-phase.o clk-inverter.o
>  obj-$(CONFIG_RESET_CONTROLLER) += softrst.o
>  obj-$(CONFIG_ARCH_RK3188) += clk-rk3188.o
>  obj-$(CONFIG_ARCH_RK3288) += clk-rk3288.o
> -obj-$(CONFIG_ARCH_RK3399) += clk-rk3399.o
>  obj-$(CONFIG_ARCH_RK3568) += clk-rk3568.o
>  obj-$(CONFIG_ARCH_RK3588) += clk-rk3588.o rst-rk3588.o
> diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> deleted file mode 100644
> index 5954e9bebb..0000000000
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 6b83bb4344..0bc502f3d4 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -25,13 +25,11 @@ fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE) += imx93-bl32.bin \
>  fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE_A0) += mx93a0-ahab-container.img
>  pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
>  pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
> -pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
>  ifeq ($(CONFIG_ARCH_ROCKCHIP_OPTEE),y)
>  # We install BL31 & BL32 while already running in DRAM,
>  # so fw-external is not needed
>  pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl32.bin
>  pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl32.bin
> -pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl32.bin
>  endif
>  
>  firmware-$(CONFIG_FIRMWARE_NEXT_IMAGE) += next-image.bin
> diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
> index db00dc7119..f4f819f4dc 100644
> --- a/include/mach/rockchip/atf.h
> +++ b/include/mach/rockchip/atf.h
> @@ -38,11 +38,9 @@
>  
>  #ifndef __ASSEMBLY__
>  #ifdef CONFIG_ARCH_ROCKCHIP_ATF
> -void rk3399_atf_load_bl31(void *fdt);
>  void rk3568_atf_load_bl31(void *fdt);
>  void rk3588_atf_load_bl31(void *fdt);
>  #else
> -static inline void rk3399_atf_load_bl31(void *fdt) { }
>  static inline void rk3568_atf_load_bl31(void *fdt) { }
>  static inline void rk3588_atf_load_bl31(void *fdt) { }
>  #endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


