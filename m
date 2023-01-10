Delivery-date: Tue, 10 Jan 2023 15:39:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFmw-007qEB-TB
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:39:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFmu-0004QM-W7
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:39:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wwv+P28hWB8Kj4YqaV6x5475nalrzXegnq4jv84pwHU=; b=Xr2oKRrOGmIWNmYFQzS6nXuCa8
	8cuhM/ZWO2bgbYbJvKfti/P6butE/p6Tr9zXu+4mToWXqIvSl2Q4+Ad283MF5Bl5jZWKDNy/2an9C
	DqqFdhIs0xjl/0U/HOeWQO79dOLjY4y9+kqs4eRg4hXxoGZAh6Ql3mqNsnaCawGQHDlSPmdrV4V4u
	mr3jkIQ/3Q3jsYVoD4QObuphShY1a5ea5d4q4bp0aR04a9ZRFQ8RU+wJx0SI1WeDGjknbMQRjQd9T
	fpswXjYvr/2E/q0OcLaeiV7WICj57IylAl8eHjBkEdNTc+j+hgdFOY3zrEFhDoufbqrtpAznA1q3i
	l6hw37bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFkx-007Kq1-4J; Tue, 10 Jan 2023 14:37:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFks-007Koa-1m
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:37:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFkq-0004F4-Pd; Tue, 10 Jan 2023 15:37:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFkp-0004Rl-B5; Tue, 10 Jan 2023 15:37:31 +0100
Date: Tue, 10 Jan 2023 15:37:31 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230110143731.GG28911@pengutronix.de>
References: <20230109180024.2018960-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109180024.2018960-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_063734_117282_795C6F16 
X-CRM114-Status: GOOD (  27.54  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: make ATF installation optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 07:00:24PM +0100, Ahmad Fatoum wrote:
> On RK3399, ATF running as BL31 will disable normal world access to
> some peripherals. To make it easier to develop PBL code that accesses
> these peripherals prior to ATF installation, support running barebox
> proper in EL3, so all of memory can be poked from the barebox shell.
> 
> This is strictly a development feature. Linux on ARM64 is not meant to
> be booted without PSCI, which the secure monitor provides.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/mach-rockchip/Kconfig            | 13 +++++++++++--
>  arch/arm/mach-rockchip/Makefile           |  2 +-
>  arch/arm/mach-rockchip/include/mach/atf.h |  5 +++++
>  3 files changed, 17 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index 1f3ba706ee9f..4ac75ab9475c 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -88,16 +88,25 @@ config MACH_RADXA_ROCK3
>  
>  comment "select board features:"
>  
> +config ARCH_ROCKCHIP_ATF
> +	bool "Build rockchip ATF binaries into barebox"
> +	depends on ARCH_ROCKCHIP_V8
> +	default y
> +	help
> +	  When deselected, barebox proper will run in EL3. This can be
> +	  useful for debugging early startup, but for all other cases,
> +	  say y here.
> +
>  config ARCH_RK3399_OPTEE
>  	bool "Build rk3399 OP-TEE binary into barebox"
> -	depends on ARCH_RK3399
> +	depends on ARCH_ROCKCHIP_ATF && ARCH_RK3399
>  	help
>  	  With this option enabled the RK3399 OP-TEE binary is compiled
>  	  into barebox and started along with the BL31 trusted firmware.
>  
>  config ARCH_RK3568_OPTEE
>  	bool "Build rk3568 OP-TEE binary into barebox"
> -	depends on ARCH_RK3568
> +	depends on ARCH_ROCKCHIP_ATF && ARCH_RK3568
>  	help
>  	  With this option enabled the RK3568 OP-TEE binary is compiled
>  	  into barebox and started along with the BL31 trusted firmware.
> diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
> index a86ee71617c8..2529af7c7e97 100644
> --- a/arch/arm/mach-rockchip/Makefile
> +++ b/arch/arm/mach-rockchip/Makefile
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
>  obj-y += rockchip.o
> -pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += atf.o
> +pbl-$(CONFIG_ARCH_ROCKCHIP_ATF) += atf.o
>  obj-$(CONFIG_ARCH_RK3188) += rk3188.o
>  obj-$(CONFIG_ARCH_RK3288) += rk3288.o
>  obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
> diff --git a/arch/arm/mach-rockchip/include/mach/atf.h b/arch/arm/mach-rockchip/include/mach/atf.h
> index d1bae5a7714f..e5d55af3d74a 100644
> --- a/arch/arm/mach-rockchip/include/mach/atf.h
> +++ b/arch/arm/mach-rockchip/include/mach/atf.h
> @@ -19,8 +19,13 @@
>  #define RK3568_BAREBOX_LOAD_ADDRESS	(RK3568_DRAM_BOTTOM + 1024*1024)
>  
>  #ifndef __ASSEMBLY__
> +#ifdef CONFIG_ARCH_ROCKCHIP_ATF
>  void rk3399_atf_load_bl31(void *fdt);
>  void rk3568_atf_load_bl31(void *fdt);
> +#else
> +static inline void rk3399_atf_load_bl31(void *fdt) { }
> +static inline void rk3568_atf_load_bl31(void *fdt) { }
> +#endif
>  #endif
>  
>  #endif /* __MACH_ATF_H */
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


