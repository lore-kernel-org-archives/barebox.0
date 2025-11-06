Delivery-date: Thu, 06 Nov 2025 09:02:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGux7-00Fs8W-1d
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 09:02:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGux6-0003X1-UG
	for lore@pengutronix.de; Thu, 06 Nov 2025 09:02:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FIUnK22d+EKK9Yw8+bZctY8o/k4QQVxntAAKfufrf+g=; b=l+vHG5nKa2ijiJ6Zisy3YP9DoO
	coZq6t3lx9Wis/Xj1+rrIaJJB65qXiCun42IEcTkJ7BDoZN+nyLw7DwEGcTk3HDZo9JU/LBGGscPe
	/J4aC0umgPg/pyzJmpIsqHaGsTApFc2qZejpDvzBv2kvU+tiEmLFSXashzn7Mt2dJdL/+DrfFSN0P
	YmB+8qrXyQEMDCcB7mJJ/DZ6T8TgstYlOHgAJ2DdHb8r1wxk0DdN2CL2S8IEqBVvgBhUiPMqVOeLx
	cUaia+PNW9lqLBgDn1jWxZj0sxIEtWfdQtVROP8pkgkCbrqBn7n10vwd4ob36qTtxzoBXHTq9ifYk
	IPqYQ6hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGuwd-0000000F2NW-2p7u;
	Thu, 06 Nov 2025 08:02:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGuwc-0000000F2Mv-0zN2
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 08:02:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vGuwZ-0003Nz-Cg; Thu, 06 Nov 2025 09:02:07 +0100
Message-ID: <edc3b34d-a2ed-41c3-b272-51c8cb98eaf5@pengutronix.de>
Date: Thu, 6 Nov 2025 09:02:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20251106073035.3580913-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251106073035.3580913-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_000210_277361_751B1070 
X-CRM114-Status: GOOD (  20.42  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: allow to take signing key from environment
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 06.11.25 08:30, Sascha Hauer wrote:
> This adds a new Kconfig option CONFIG_ARCH_K3_SIGNING_KEY_ENV. With
> this option enabled the content of CONFIG_ARCH_K3_SIGNING_KEY is treated
> as the name of an environment variable from which the private key
> file/uri is taken. This allows for better integration with build
> systems.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-k3/Kconfig |  8 ++++++++
>  images/Makefile.k3       | 12 +++++++++++-
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
> index ecd77d8d9a..58f6ba827d 100644
> --- a/arch/arm/mach-k3/Kconfig
> +++ b/arch/arm/mach-k3/Kconfig
> @@ -81,6 +81,14 @@ config ARCH_K3_SIGNING_KEY_CUSTOM
>  
>  endchoice
>  
> +config ARCH_K3_SIGNING_KEY_ENV
> +	bool "Specify signing key in environment"
> +	depends on ARCH_K3_SIGNING_KEY_CUSTOM
> +	help
> +	  If this option is enabled the content of CONFIG_ARCH_K3_SIGNING_KEY
> +	  is treated as name of an environment variable rather than a filename/uri
> +	  directly which allows for better integration with build systems.

Why an extra option instead of just interpreting any number of __ENV_something
as environment variable ${something} as we already do for CONFIG_CRYPTO_PUBLIC_KEYS?

Cheers,
Ahmad

> +
>  config ARCH_K3_SIGNING_KEY
>  	string "Signing key"
>  	depends on ARCH_K3_SIGNING_KEY_CUSTOM
> diff --git a/images/Makefile.k3 b/images/Makefile.k3
> index 1a8bfe641a..9de48f4d2b 100644
> --- a/images/Makefile.k3
> +++ b/images/Makefile.k3
> @@ -17,10 +17,20 @@ image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay.img
>  
>  endif
>  
> +
> +
>  ifdef CONFIG_ARCH_K3_SIGNING_KEY_TI_DEVEL
>  KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
>  else
> -KEY_custmpk="$(CONFIG_ARCH_K3_SIGNING_KEY)"
> +
> +k3_sigining_key=$(call remove_quotes,$(CONFIG_ARCH_K3_SIGNING_KEY))
> +
> +ifeq ($(CONFIG_ARCH_K3_SIGNING_KEY_ENV),y)
> +KEY_custmpk=$(shell echo $$$(k3_sigining_key))
> +else
> +KEY_custmpk=$(k3_sigining_key)
> +endif
> +
>  endif
>  KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


