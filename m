Delivery-date: Tue, 14 Jan 2025 06:49:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXZoJ-000tnS-1E
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 06:49:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXZoI-00041N-Oz
	for lore@pengutronix.de; Tue, 14 Jan 2025 06:49:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tqUtvbZsCUyK5NtK5+BcgInEFYDb73oZfVRGGZ84Y8M=; b=Z+NSL//lKaR5DjV6ObWVMekcyb
	Gt9/V2eA3pcvWYZ8wM+pFibrjUjXSiOVuKAXtzzGvoYcIExyeSRSi2/d6T/kBm5w2ytgcousdT02L
	tz5gqY8T7cCeMbhdnVuQl7GEH7aYQq5xy2ejZfs7ToPdKxG3mlzf0RF4jBPeonjtYKh76bjcmlh43
	XmOa/IoXKNOG5+F9Wo3D44R/YEoMJmabzeVVWvnyepgBoznp3yIwogHoueaL8y6+duhuysSfgje4m
	K+2dguMuejrNCpvkS8WXkMLrsmNG82fwdWYRiAOc2pRUBw9+5/XOA4BakFotVV0dxV+5bsANWz9nS
	WUPVfSCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXZns-00000007Xi0-0udJ;
	Tue, 14 Jan 2025 05:49:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXZnp-00000007Xhb-3Qi4
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 05:49:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tXZnm-0003xB-IB; Tue, 14 Jan 2025 06:49:22 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tXZnl-000Njo-2d;
	Tue, 14 Jan 2025 06:49:22 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tXZnm-009jWr-0h;
	Tue, 14 Jan 2025 06:49:22 +0100
Date: Tue, 14 Jan 2025 06:49:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <Z4X64t7ft77fV9Db@pengutronix.de>
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-6-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107143740.16903-6-jmaselbas@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_214925_859015_83AD2BCF 
X-CRM114-Status: GOOD (  25.72  )
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

Hi Jules,

On Tue, Jan 07, 2025 at 03:37:39PM +0100, Jules Maselbas wrote:
> Add some boilerplate, Makefiles, Kbuild.
> A generic barebox-dt-2nd.img image can be build for A64 SoC using
> the sunxi_v8_defconfig.
> 
> This image can be booted from u-boot and has been tested on Pine64+,
> it should work on other A64 SoC such as the pinephone, and other Pine64
> boards, it might also work on H6 SoC which uses the same sd/mmc controler.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
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

Can you put this into the multiarch section, i.e. outside the "ARM
system type" choice?

That way we can compile sunxi along with other SoCs.

> diff --git a/arch/arm/configs/sunxi_v8_defconfig b/arch/arm/configs/sunxi_v8_defconfig

With this separate config shouldn't be necessary anymore. Just enable
the sunxi specific drivers in multi_v8_defconfig.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


