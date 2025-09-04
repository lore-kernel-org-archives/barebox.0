Delivery-date: Thu, 04 Sep 2025 10:56:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5lx-007yfw-0Z
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 10:56:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5lv-000439-KL
	for lore@pengutronix.de; Thu, 04 Sep 2025 10:56:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K67kNmL9IoIrUrcYECEbPEDnCKgrnQ1VYcu9nxeHfvo=; b=SwbmVpjJYnjRmKHndbgmc4F+0p
	zFGggGCN410YNiULNuFos6uejuW1UbacYK8lJY7B134J4mDYWNygvPE7m5LK6rodH5c5gSD7DJ4vC
	uCoOnTDfcrn87iGoa8eve6yTQzf2XnIHV6DWh2O7w8hroGzb4OX0OCakLU5vmVLjCNKbEXXvI9mRl
	cdg1s+KaVw0x/3mJXwq30Htu7tLxzr0O8KBq3+enuRjiSxaUxZ/NAPKGcP1sazJm+wV7ilG5NcPHN
	4NbmqD180YAfwTFg5/aAQImknQFKxcVIsmQEBO6O46funyrwvxnDMssGE7vAxf3NgsLISHR2Binc+
	X4ZgvIlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5lU-0000000ANuG-4B2a;
	Thu, 04 Sep 2025 08:56:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5Cp-0000000ABXS-2Fds
	for barebox@bombadil.infradead.org;
	Thu, 04 Sep 2025 08:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=K67kNmL9IoIrUrcYECEbPEDnCKgrnQ1VYcu9nxeHfvo=; b=Zx0vMUbs3v5TRopa0r2SpwrfFw
	3HBqBUHDqZb99Pvuy4Sqa7yTmVGFzw3s7H803LXqZeqAkxIuD0PR2DTYjJuO6cOubk8b0nG+nJsI0
	ENPFTE1mVhXr3tMz+Cb8l/w54uHB7XUWRcGZIqnNYo/uTzwviq0RK8HgotcJyHAtzalB++parRpzN
	DQWht75taTi1+q27clzefjDC+tz4WT2WnpqazZA6DwdKl6oytqrMLvEL1Oml5ANTi+aKv/iDWkIbE
	4y2LZG3PHHQ6VhkKEO+TJyilsy1o+vq82LihHpQwqDVKTbvRfJRthadXJZyzBijGs/RwxxGcYE4G7
	bx6lwiag==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5Cm-00000004JHs-0xmp
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 08:20:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu5Cl-0001RR-FQ; Thu, 04 Sep 2025 10:20:27 +0200
Message-ID: <c7d7bfa9-c165-4ad0-a4a2-76c0de24c56c@pengutronix.de>
Date: Thu, 4 Sep 2025 10:20:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-4-chalianis1@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250831035542.1623695-4-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_092028_487535_9BBD79DB 
X-CRM114-Status: GOOD (  24.12  )
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
Subject: Re: [PATCH 4/7] arm: efi: add a generic efi machine.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 31.08.25 05:55, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> add a generic arm64 machine that can select the CPU_V8 and the
> required efi payload minimal configs. this machine permits to have
> a clean arm64 efi payload, idealy we don't need the other machine
> that comes from multi arch since they execute code that is specific
> for the correspondig hardware. with this generic efi machine the
> barebox log shell is more clean. to get a pure clean efi payload
> you need to unselect all the other arch machines and keep only the
> EFI ARM64.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  arch/arm/Kconfig | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index cce71b50eb04..0a098440ddde 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -254,6 +254,18 @@ config ARCH_ZYNQMP
>  	select GPIOLIB
>  	select HAS_MACB
>  
> +config EFI_ARM64

Thinking about it, this doesn't really fit into the existing model.
We have CONFIG_EFI_PAYLOAD, which when enabled gives _all_ images
an EFI stub.

I think it's better to just give CPU_V7 and CPU_V8 prompts.
Then they can be enabled for the barebones EFI-only use case alongside
CONFIG_EFI_PAYLOAD. CONFIG_EFI_PAYLOAD should have its depends on
COMPILE_TEST removed as last patch in your series then I think (or
before last if you add a dedicated efi_defconfig).

> +	bool "EFI on ARM64"

Generally, we should call it EFI payload to differentiate from
EFI loader (firmware)

> +	select CPU_V8
> +	select CPU_SUPPORTS_64BIT_KERNEL

Symbol doesn't exist on ARM.

> +	select HAVE_EFI_PAYLOAD

Already selected by CPU_64

> +	select EFI_PAYLOAD
> +	select BOOTM_FITIMAGE

select means it can't be deselected, which is not needed here.

> +    select CLOCKSOURCE_EFI
> +    select DRIVER_VIDEO_EFI_GOP

It's reasonable to disable GOP if the device is headless anyway.
You can give the DRIVER_VIDEO_EFI_GOP a default y though if you like,
because many (most?) users will likely want to use GOP.

Point is moot with above suggested change though.

> +	depends on 64BIT
> +	default y if ARCH_MULTIARCH

> +
>  source "arch/arm/cpu/Kconfig"
>  source "arch/arm/mach-at91/Kconfig"
>  source "arch/arm/mach-bcm283x/Kconfig"


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


