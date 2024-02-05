Delivery-date: Mon, 05 Feb 2024 14:22:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWyvt-004IZW-0Q
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 14:22:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWyvt-00017y-Pf
	for lore@pengutronix.de; Mon, 05 Feb 2024 14:22:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8wQQJAolPqt9HC5jNFUnzGwR16wQ2rEJ7pRt5Qi/j70=; b=ckYaEYASKsfGNmba3HHZ6O/FyY
	7ppnVplg5y6pdDbgt2GFJIYgIb3++hG6bvJuP/Ik6rXKQhOvD6Gh0RaQroHTAfVn3jDBt03oe/H2N
	N9ZLSjDeZ6y01SVY/NCAooN3XHU6bMp9QEoT7h4EdoZZy+MiHx/IGnsRmahZkXDiGAplulJlfOCk6
	Qrhiv+iEbwTZR37wzzodKxI1tWqjTl98N22EEaUHITnyVVNalsFf6FqHZcADrJYm/UkSRoqps/jIa
	2U/n5tZH+M0AGRYLP1B/IO91Sasci9985Ny0XJBmHVzRYR0ryj5ig2UYnq0po+3dVhQ2eWMc/Y8VE
	pFDctAfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWyvO-00000003OcE-1JI1;
	Mon, 05 Feb 2024 13:22:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWyvL-00000003ObT-3lE1
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 13:22:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rWyvK-00013K-Id; Mon, 05 Feb 2024 14:22:10 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rWyvK-004dqm-6I; Mon, 05 Feb 2024 14:22:10 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rWyvK-00Cn5r-0M;
	Mon, 05 Feb 2024 14:22:10 +0100
Date: Mon, 5 Feb 2024 14:22:10 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240205132210.mjhi4tvw4hsg32wm@pengutronix.de>
References: <20240205125728.2470228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240205125728.2470228-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_052211_958360_CBF1E085 
X-CRM114-Status: GOOD (  16.31  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: add Kconfig option for scratchmem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-05, Sascha Hauer wrote:
> scratch.c is needed for both i.MX8 and i.MX9, but is compiled only for
> i.MX8, so linking will failed if only i.MX9 is enabled.
> Add a Kconfig option for it and select it from both i.MX8 and i.MX9.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm/mach-imx/Kconfig  | 4 ++++
>  arch/arm/mach-imx/Makefile | 3 ++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index b6936a7554..a87ba1cef0 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -42,6 +42,10 @@ config ARCH_IMX_ROMAPI
>  	def_bool y
>  	depends on ARCH_IMX8M || ARCH_IMX9
>  
> +config ARCH_IMX_SCRATCHMEM
> +	def_bool y
> +	depends on ARCH_IMX8M || ARCH_IMX9
> +
>  #
>  # PMIC configuration found on i.MX51 Babbadge board
>  #
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index 9505cffa81..ce8af486ae 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -17,7 +17,8 @@ CFLAGS_imx6.o := -march=armv7-a
>  lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
>  obj-$(CONFIG_ARCH_IMX7) += imx7.o
>  obj-$(CONFIG_ARCH_VF610) += vf610.o
> -obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o scratch.o
> +obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
> +obj-pbl-$(CONFIG_ARCH_IMX_SCRATCHMEM) += scratch.o
>  obj-$(CONFIG_ARCH_IMX9) += imx9.o
>  lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
>  obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
> -- 
> 2.39.2
> 
> 
> 


