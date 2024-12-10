Delivery-date: Tue, 10 Dec 2024 16:19:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tL211-006QFk-2F
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 16:19:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tL211-0002Vj-IX
	for lore@pengutronix.de; Tue, 10 Dec 2024 16:19:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8olRrwq0FAE54LnfzjfzCNjzamHFd9NjYdluPL7jrCA=; b=PUZdwyTqD6VcHf3yqbNgYuReve
	xbYV3HiBL8THE5egP6hE7eJLff9anpybxz2jfKu9tGjvRiD8DYbcdUyxD4HX8kJEM7aI2k9jRH0IC
	mFmCtCISGeaH1TQayRAa9K4kdY/jTYamiKURE9B6E86qMr5S2IrwNA4WuP+1iA8rCWZle7In1EAyQ
	GSfna3EbYoe9Smv5/0rDQlqTb13S2h0IMeKFjtRQ0b9e8nL/gMqcN4i2ngzeBCiRn9shx2K/lgz2n
	S4p4J1Hlo41J6I+P8I9TdcilF7FnZVeiM5N+odIZqz5LaAQH++xSwGqzbeVos8Exw1y/J7AyJKMmH
	EfxRRmMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL20Z-0000000Buyg-3x72;
	Tue, 10 Dec 2024 15:18:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL20X-0000000BuxO-0POo
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 15:18:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tL20V-0002Om-Ad; Tue, 10 Dec 2024 16:18:39 +0100
Message-ID: <0acbfc9d-2337-4ffe-97bb-3ea1bbc1b1a8@pengutronix.de>
Date: Tue, 10 Dec 2024 16:18:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-7-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241107145722.5145-7-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_071841_137057_A9F911AA 
X-CRM114-Status: GOOD (  21.62  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] ARM: sunxi: Introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 07.11.24 15:57, Jules Maselbas wrote:
> Add some boilerplate, Makefiles, Kbuild.
> A generic barebox-dt-2nd.img image can be build for A64 SoC using
> the sunxi_v8_defconfig.
> 
> This image can be booted from u-boot and has been tested on Pine64+,
> it should work on other A64 SoC such as the pinephone, and other Pine64
> boards, it might also work on H6 SoC which uses the same sd/mmc controler.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

With below nitpicks addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/Kconfig                    | 14 ++++++++++++++
>  arch/arm/Makefile                   |  1 +
>  arch/arm/configs/sunxi_v8_defconfig | 12 ++++++++++++
>  arch/arm/mach-sunxi/Kconfig         | 12 ++++++++++++
>  arch/arm/mach-sunxi/Makefile        |  1 +
>  arch/arm/mach-sunxi/common.c        |  0
>  include/mach/sunxi/barebox-arm.h    |  7 +++++++
>  7 files changed, 47 insertions(+)
>  create mode 100644 arch/arm/configs/sunxi_v8_defconfig
>  create mode 100644 arch/arm/mach-sunxi/Kconfig
>  create mode 100644 arch/arm/mach-sunxi/Makefile
>  create mode 100644 arch/arm/mach-sunxi/common.c
>  create mode 100644 include/mach/sunxi/barebox-arm.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 9b90c8009a..fa163f182c 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -109,6 +109,19 @@ config ARCH_SOCFPGA
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
> +	select HAVE_PBL_MULTI_IMAGES

This is the arch-wide default now, so you can drop it here.

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
> index 0000000000..f95691b59a
> --- /dev/null
> +++ b/arch/arm/mach-sunxi/Makefile
> @@ -0,0 +1 @@
> +obj-y += common.o

Convention is to use obj := __dummy__.o instead.

> diff --git a/arch/arm/mach-sunxi/common.c b/arch/arm/mach-sunxi/common.c
> new file mode 100644
> index 0000000000..e69de29bb2
> diff --git a/include/mach/sunxi/barebox-arm.h b/include/mach/sunxi/barebox-arm.h
> new file mode 100644
> index 0000000000..2ce1db587b
> --- /dev/null
> +++ b/include/mach/sunxi/barebox-arm.h
> @@ -0,0 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef MACH_SUNXI_BAREBOX_ARM_H
> +#define MACH_SUNXI_BAREBOX_ARM_H
> +
> +#include <asm/barebox-arm.h>
> +
> +#endif

This file is unused.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


