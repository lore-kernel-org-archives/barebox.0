Delivery-date: Fri, 14 Jan 2022 10:22:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8InT-001uXD-A7
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 10:22:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8InS-0006uy-5j
	for lore@pengutronix.de; Fri, 14 Jan 2022 10:22:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W/qvq12CJ83fcg6Jr6Ozszxx8yT2kQkGvO5q8uLZwG8=; b=IND4TREimCWkejJkN/ydkvPr/4
	JDeqg9a9rpuqrsAJU8CztWL7NrpH9LI0RaOg6aMqWyMZ0SXv7+KgVYj+udOfUY629OiVspKwh3ggG
	gaCbwdjadcO4ZcQw+GmH80NbqyQKvJW2TUob70si04HMKbpg/hQ6mLXkYB4pMfSxPbLotFQbrCLAZ
	x6fHbJ9KBdBRLukCxwoEOEpPu0snIirUgDgsqBEgtf7GsqoFU/dsy723/gc3MHu9gUz1J9ICLMJwM
	2kBQzMqvvaL1OrBsdRwwvWZea6WJ/FE4YaPyRWM5n2bShl0XJaFXQasICa3dlV3JYmDW/vVAjWSdB
	4bFLlC4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Im6-008SKJ-7V; Fri, 14 Jan 2022 09:21:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Im1-008SJT-N8
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 09:21:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8Im0-0006ao-GI; Fri, 14 Jan 2022 10:21:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8Im0-0001VR-4y; Fri, 14 Jan 2022 10:21:28 +0100
Date: Fri, 14 Jan 2022 10:21:28 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220114092128.GT26619@pengutronix.de>
References: <20220114083825.726347-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114083825.726347-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:21:03 up 34 days, 18:06, 79 users,  load average: 0.07, 0.14, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_012129_780078_71598C3A 
X-CRM114-Status: GOOD (  21.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: rockchip: add new ARCH_ROCKCHIP_{V7,V8} symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 09:38:23AM +0100, Ahmad Fatoum wrote:
> In preparation for adding rk3399 support, which is another SoC with
> ARMv8 CPUs, add new ARCH_ROCKCHIP_{V7,V8} symbols for the common
> functionality.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/mach-rockchip/Kconfig  | 18 ++++++++++++------
>  arch/arm/mach-rockchip/Makefile |  5 +++--
>  2 files changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index 2e855714f7da..596de663f9e3 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -12,24 +12,30 @@ config RK_TIMER
>  	hex
>  	default 1
>  
> -config ARCH_RK3188
> +config ARCH_ROCKCHIP_V7
>  	bool
>  	select CPU_V7
>  	select ARM_SMP_TWD
>  	select ARCH_HAS_L2X0
>  
> +config ARCH_RK3188
> +	bool
> +	select ARCH_ROCKCHIP_V7
> +
>  config ARCH_RK3288
>  	bool
> -	select CPU_V7
> -	select ARM_SMP_TWD
> -	select ARCH_HAS_L2X0
> +	select ARCH_ROCKCHIP_V7
>  	select CLOCKSOURCE_ROCKCHIP
>  
> -config ARCH_RK3568
> +config ARCH_ROCKCHIP_V8
>  	bool
>  	select CPU_V8
> -	select ARM_ATF
>  	select SYS_SUPPORTS_64BIT_KERNEL
> +	select ARM_ATF
> +
> +config ARCH_RK3568
> +	bool
> +	select ARCH_ROCKCHIP_V8
>  
>  comment "select Rockchip boards:"
>  
> diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
> index 72bf77c1e124..474b8629d13f 100644
> --- a/arch/arm/mach-rockchip/Makefile
> +++ b/arch/arm/mach-rockchip/Makefile
> @@ -1,9 +1,10 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
>  obj-y += rockchip.o
> -pbl-$(CONFIG_ARCH_RK3568) += atf.o
> +pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += atf.o
>  obj-$(CONFIG_ARCH_RK3188) += rk3188.o
>  obj-$(CONFIG_ARCH_RK3288) += rk3288.o
> +obj-pbl-$(CONFIG_ARCH_RK3399) += rk3399.o

We don't have this yet, removed this hunk while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

