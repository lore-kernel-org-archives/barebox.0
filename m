Delivery-date: Fri, 07 Mar 2025 08:52:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSVT-00AvNR-0c
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 08:52:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSVR-0004e6-Vo
	for lore@pengutronix.de; Fri, 07 Mar 2025 08:52:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=crVTx5E3BWZmfsTiY5Wc3hUUGU8i1yYSgYkS+hQNLfg=; b=zpK+7zi4gAc5pFGYJ7UyyBj5gz
	DM83y74elNs6nqyY6SlC5EaFNZOvzU8sqL2hzx69jZlgMwZXN3hsXN1jracpgnS3GcQUNuKcOqK2j
	MYxCMeHfFh23Kvc60sPE49n+K9wPPEyzihx/t2PSepqnaz6MY0trx3/hT/epx1SMX3kYRGwLPcVv2
	PrI3+tJ6MrA+hS0RB9v2U3W+BVrA5bTzI2VgIw8Llb/8IjYsOjLq7r04vLp/aYk3wTEFKhHD9Ihsx
	HHgAIfG3JcVfkdhRhQ74b9/ZHN9gpZZqe+xhrIz5+cJEPRM9HemVzts33s1IvdhwxGSG6YrT9oG1k
	6lJoV6Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSUz-0000000DTMf-3cXg;
	Fri, 07 Mar 2025 07:52:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSUx-0000000DTKG-0DkZ
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 07:52:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tqSUu-0004UV-Fk; Fri, 07 Mar 2025 08:51:56 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tqSUu-004Ruu-0y;
	Fri, 07 Mar 2025 08:51:56 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tqSUu-000Ptr-0d;
	Fri, 07 Mar 2025 08:51:56 +0100
Date: Fri, 7 Mar 2025 08:51:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z8qlnE2kk64HdkDy@pengutronix.de>
References: <20250307055135.26298-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307055135.26298-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_235159_089341_8B09C885 
X-CRM114-Status: GOOD (  19.24  )
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
Subject: Re: [PATCH] at91: Remove non-devicetree board support for SAMA5D3 SOC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 07, 2025 at 08:51:35AM +0300, Alexander Shiyan wrote:
> Since all SAMA5D3 boards now do not use the devicetree,
> we can safely remove the board support files for this SOC.

s/do not//

I fixed that while applying.

Sascha

> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-at91/Kconfig           |   5 -
>  arch/arm/mach-at91/Makefile          |   1 -
>  arch/arm/mach-at91/sama5d3.c         | 410 ----------------------
>  arch/arm/mach-at91/sama5d3_devices.c | 491 ---------------------------
>  4 files changed, 907 deletions(-)
>  delete mode 100644 arch/arm/mach-at91/sama5d3.c
>  delete mode 100644 arch/arm/mach-at91/sama5d3_devices.c
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 0b3a4ac44c..d63845437d 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -269,10 +269,6 @@ config ARCH_AT91SAM9N12
>  	bool "AT91SAM9N12"
>  	select SOC_AT91SAM9N12
>  
> -config ARCH_SAMA5D3
> -	bool "SAMA5D3x"
> -	select SOC_SAMA5D3
> -
>  config ARCH_SAMA5D4
>  	bool "SAMA5D4"
>  	select SOC_SAMA5D4
> @@ -289,7 +285,6 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
>  	default 0xF000 if ARCH_AT91SAM9G45
>  	default 0x6000 if ARCH_AT91SAM9X5
>  	default 0x6000 if ARCH_AT91SAM9N12
> -	default 0x6000 if ARCH_SAMA5D3
>  	default 0xffffffff
>  
>  if ARCH_AT91RM9200
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 857f77ab49..556e46f181 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -27,7 +27,6 @@ obj-$(CONFIG_SOC_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
>  ifeq ($(CONFIG_AT91_MULTI_BOARDS),)
>  obj-$(CONFIG_SOC_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
>  obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
> -obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
>  obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
>  endif
>  lwl-$(CONFIG_SOC_AT91SAM9263)	+= sam9263_ll.o
> diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
> deleted file mode 100644
> index 447ac711b4..0000000000
> diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
> deleted file mode 100644
> index f6d5617e5f..0000000000
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


