Delivery-date: Thu, 18 May 2023 21:06:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzixO-005qf1-Nu
	for lore@lore.pengutronix.de; Thu, 18 May 2023 21:06:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzixM-0001n0-FZ
	for lore@pengutronix.de; Thu, 18 May 2023 21:06:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MXc2yQx5/eOPgNHF2Qtn5ZRPoImdPwTbreLbeqta4l4=; b=RCoBvWiPELv+zB6Kcv1YRvikpp
	rgKF9fIv+Pkr0V6Ekb+kNJld35RBJuSev/8Qe6n9yk7ajFEc+PjrNLfgtHASeD4dhvreX/YrHFQ7d
	xT+a0pYWuU7WIlInI+Tv6I1ulT42QME7hBVK2E6zLhsu4Pn4K0P5WQTyOv6bt+VgjNcQPd42z6lG9
	TB79+Y3mJ2REzb0tC9sGPfMRt9758ZRi5FOO/GZ09PzZS5i//ai7LSWT9c1BftcNTroMyqCVvfMPC
	W13IYbSOLKRH0LuMVsZ4F560GZ92FYSxj8R0+SkIJGW0qo7Ihjp1fg9i/XflrJ79YjphjpaxT88rY
	99a1IJqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pziwJ-00Duja-1t;
	Thu, 18 May 2023 19:05:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pziwF-00Duiw-23
	for barebox@lists.infradead.org;
	Thu, 18 May 2023 19:05:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pziwE-0001Rd-7r; Thu, 18 May 2023 21:05:22 +0200
Message-ID: <ff0cb7f1-9487-06c4-4db0-942a13a10ecc@pengutronix.de>
Date: Thu, 18 May 2023 21:05:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-6-jmaselbas@zdiv.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230510233711.37345-6-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_120523_697961_9D4AE87B 
X-CRM114-Status: GOOD (  18.30  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 05/11] arm: sunxi: Add debug_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.05.23 01:37, Jules Maselbas wrote:
> ---
>  arch/arm/include/asm/debug_ll.h |  2 ++
>  arch/arm/mach-sunxi/Kconfig     |  4 ++++
>  include/mach/sunxi/debug_ll.h   | 35 +++++++++++++++++++++++++++++++++
>  3 files changed, 41 insertions(+)
>  create mode 100644 include/mach/sunxi/debug_ll.h
> 
> diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
> index a1d5161ccf..054d021bab 100644
> --- a/arch/arm/include/asm/debug_ll.h
> +++ b/arch/arm/include/asm/debug_ll.h
> @@ -50,6 +50,8 @@
>  #include <mach/uemd/debug_ll.h>
>  #elif defined CONFIG_ARCH_SOCFPGA
>  #include <mach/socfpga/debug_ll.h>
> +#elif defined CONFIG_ARCH_SUNXI
> +#include <mach/sunxi/debug_ll.h>
>  #elif defined CONFIG_ARCH_PXA
>  #include <mach/pxa/debug_ll.h>
>  #elif defined CONFIG_ARCH_NOMADIK
> diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
> index e28f04c354..2580a9e56a 100644
> --- a/arch/arm/mach-sunxi/Kconfig
> +++ b/arch/arm/mach-sunxi/Kconfig
> @@ -9,6 +9,10 @@ config SUNXI_RVBAR_IOMAP
>  	default 0x017000a0  if ARCH_SUN50I_A64
>  	# default 0x09010040 if ARCH_SUN50I_H5
>  
> +config SUNXI_DEBUG_LL_UART_BASE
> +	hex
> +	default 0x01c28000
> +
>  menuconfig SUNXI_MULTI_BOARDS
>  	bool "Allwinner boards"
>  	select HAVE_PBL_MULTI_IMAGES
> diff --git a/include/mach/sunxi/debug_ll.h b/include/mach/sunxi/debug_ll.h
> new file mode 100644
> index 0000000000..64c65a5917
> --- /dev/null
> +++ b/include/mach/sunxi/debug_ll.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __MACH_DEBUG_LL_H__
> +#define __MACH_DEBUG_LL_H__
> +
> +#include <io.h>
> +
> +#define DEBUG_LL_UART_ADDR CONFIG_SUNXI_DEBUG_LL_UART_BASE
> +
> +static inline uint8_t debug_ll_read_reg(int reg)
> +{
> +	return readl(IOMEM(DEBUG_LL_UART_ADDR) + reg * sizeof(uint32_t));
> +}
> +
> +static inline void debug_ll_write_reg(int reg, uint8_t val)
> +{
> +	writel(val, IOMEM(DEBUG_LL_UART_ADDR) + reg * sizeof(uint32_t));
> +}
> +
> +#include <debug_ll/ns16550.h>
> +
> +static inline void debug_ll_init(void)
> +{
> +	uint16_t divisor;

Call sunxi_uart_setup here?

> +
> +	divisor = debug_ll_ns16550_calc_divisor(24 * 1000 * 1000);
> +	debug_ll_ns16550_init(divisor);
> +}
> +
> +static inline void PUTC_LL(int c)
> +{
> +       debug_ll_ns16550_putc(c);
> +}
> +
> +#endif

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



