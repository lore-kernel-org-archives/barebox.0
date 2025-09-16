Delivery-date: Tue, 16 Sep 2025 07:32:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyOJ0-003ZzH-2w
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 07:32:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyOJ0-0007YX-BL
	for lore@pengutronix.de; Tue, 16 Sep 2025 07:32:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wp/a8Go7U7p30YRh4wMFf9cTJ590QoI4x5jeHQ3O4Jw=; b=t7p2GgosI3+IOfGWQ/eL5IQgDO
	JnaVLM8Imbo52JAhNzkR79dP8x6G1lzOFaLov7arI/C2ca9Q+xdCqUXejS6yox8myXhHPrWL7YjBK
	hpTfjhOOyusLEnBdGkSUdAfyT/r4E/bIdHKevODh26s3bo+9tJs8go80rtx9VtddFwIKDJ3uqx5PJ
	e0Oi2vNugH/zK6TNbcid8ShgfQ2nY7iRlU9KJgHoCkg9SwvfRWsKWQz7CRuAdHj0JlOCbWTcSyznv
	cweA8/7GEnxThNSA3cb53BTU1IE0MREH+9x50K784UaRGlmftoi3WizdOk0L38OeWm2W+eC0CHK0n
	BWeuat9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyOIW-00000006p5Y-2YtI;
	Tue, 16 Sep 2025 05:32:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyOIT-00000006p53-1kXn
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 05:32:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uyOIR-0007QI-6f; Tue, 16 Sep 2025 07:32:07 +0200
Message-ID: <fef65104-2910-419f-aae7-bc41c08d4950@pengutronix.de>
Date: Tue, 16 Sep 2025 07:32:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de, a.fatoum@barebox.org
Cc: barebox@lists.infradead.org
References: <20250916045500.907542-1-chalianis1@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_223209_464884_319958EE 
X-CRM114-Status: GOOD (  19.42  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 01/12] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 16.09.25 06:54, chalianis1@gmail.com wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> We currently lack a way to build a barebox EFI payload on ARM without
> enabling some other subarchitecture. As CONFIG_EFI_PAYLOAD has a global
> effect and adds EFI stubs to all enabled board, an EFI subarchitecture
> doesn't fit into our current model.
> 
> Instead, let's make it possible to enable either CONFIG_CPU_V8 or
> CONFIG_CPU_V7 directly.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Link: https://lore.barebox.org/20250904081626.93182-1-a.fatoum@pengutronix.de
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

This patch is already upstream, so no need to resend. You can rebase the series
on next and it should be dropped automatically.

Also, did you intend to send this series 4 times? Unlike e.g. Github, sending
a series multiple times, results in separate mail threads and doesn't update
the original.

I will ignore the older series and review this one as it's the most recent.

Cheers,
Ahmad

> ---
>  arch/arm/cpu/Kconfig | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index e61bcadc8c35..fe0d1e470578 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -79,12 +79,15 @@ config CPU_V6
>  
>  # ARMv7
>  config CPU_V7
> -	bool
> +	bool "Generic ARMv7 support"
> +	depends on 32BIT
>  	select CPU_32v7
>  
>  # ARMv8
>  config CPU_V8
> -	bool
> +	bool "Generic ARMv8 support"
> +	default y
> +	depends on 64BIT
>  	select CPU_64v8
>  	select ARM_EXCEPTIONS
>  	select GENERIC_FIND_NEXT_BIT


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


