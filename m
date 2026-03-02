Delivery-date: Mon, 02 Mar 2026 08:02:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vwxI6-007Cen-1O
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 08:02:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vwxI6-0000cr-KB
	for lore@pengutronix.de; Mon, 02 Mar 2026 08:02:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XxghKkpWRjTT9tpY3m4EyUNcqOimMceG82GkQoYggmY=; b=VBR2WnBPEYmryYqe/Ouyp1ivAh
	uSssTs5ZZ692hMOrIFYn9L1dnUHvHAZPSt4fDa/FoZtknF/oOAjS0fmbY+Pumq3yEmfa+jQ6p/Mkt
	xqWSsICDQGCEkWg73ZzYywfA5RIX/d91z4aRfYoe6WITWd9oXK0Dea9OLyzlmSEI3wqiHBtIE3/pE
	F8JfS2VIlXF1NGLcFWUbq3lmZwzBV4XHdTv7HUWyaNcHxD47GxMq+41DHiqVIjLavHr9QE5aBMZUO
	PK1NW4YktblHp24ts29wioUWOmXVkSla/QuUP0H7vfRtwe1jqiTNeDePtWyAVdkYIxpdFUc6SVAhk
	1WQUA1IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwxHQ-0000000CNao-0Hrs;
	Mon, 02 Mar 2026 07:01:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwxHM-0000000CNa4-2wAE
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 07:01:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vwxHI-0000Kc-QT; Mon, 02 Mar 2026 08:01:16 +0100
Message-ID: <b781d9f1-3b24-4246-aa21-e60df7691ee0@pengutronix.de>
Date: Mon, 2 Mar 2026 08:01:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260226-arm-setup-c-v1-0-f52fe8ee81ba@pengutronix.de>
 <20260226-arm-setup-c-v1-2-f52fe8ee81ba@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260226-arm-setup-c-v1-2-f52fe8ee81ba@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_230120_754165_79D13F32 
X-CRM114-Status: GOOD (  19.53  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/26/26 13:23, Sascha Hauer wrote:
> Add a bss_cleared variable that is set after the first call to
> setup_c(). On subsequent calls, the BSS clear is skipped to avoid
> wiping already-initialized data.
> 
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/common.c    |  2 ++
>  arch/arm/cpu/setupc_32.S | 10 +++++++++-
>  arch/arm/cpu/setupc_64.S | 10 ++++++++--
>  3 files changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index e86c89f808..40742894c2 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -77,6 +77,8 @@ int __pure cpu_architecture(void)
>  }
>  #endif
>  
> +int bss_cleared;

This will go into BSS, so you implicitly assume BSS to be already
zero as this is accessed first before BSS initialization.

I suggest, along with moving it into the .data section, that you
also move it into the assembly file, so the consumer is directly
next to it:

       .pushsection .data
       .align 2
setup_c_done:
       .word 0
       .popsection

> +
>  extern int __boot_cpu_mode;
>  
>  int boot_cpu_mode(void)
> diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
> index c2c3f97528..d923a8f621 100644
> --- a/arch/arm/cpu/setupc_32.S
> +++ b/arch/arm/cpu/setupc_32.S
> @@ -7,16 +7,24 @@
>  .section .text.setupc
>  
>  /*
> - * setup_c: clear bss
> + * setup_c: clear bss if not yet done
>   */
>  ENTRY(setup_c)
> +	ldr	r0, =bss_cleared
> +	ldr	r1, [r0]
> +	cmp	r1, #0
> +	bne	1f			/* skip if already done */
>  	mov	r4, lr

Move this instruction to the start, so ...

>  	ldr	r0, =__bss_start
>  	mov	r1, #0
>  	ldr	r2, =__bss_stop
>  	sub	r2, r2, r0
>  	bl	__memset		/* clear bss */
> +	ldr	r0, =bss_cleared
> +	mov	r1, #1
> +	str	r1, [r0]		/* mark bss cleared */
>  	ret	r4
> +1:	ret	lr

This instruction can be dropped and 1: just points at the existing
ret r4?

>  ENDPROC(setup_c)
>  
>  /*
> diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
> index fd95187a04..8262deb512 100644
> --- a/arch/arm/cpu/setupc_64.S
> +++ b/arch/arm/cpu/setupc_64.S
> @@ -7,17 +7,23 @@
>  .section .text.setupc
>  
>  /*
> - * setup_c: clear bss
> + * setup_c: clear bss if not yet done
>   */
>  ENTRY(setup_c)
> +	adr_l	x0, bss_cleared
> +	ldr	w1, [x0]
> +	cbnz	w1, 1f			/* skip if already done */
>  	mov	x15, x30
>  	adr_l	x0, __bss_start
>  	mov	x1, #0
>  	adr_l	x2, __bss_stop
>  	sub	x2, x2, x0
>  	bl	__memset		/* clear bss */
> +	adr_l	x0, bss_cleared
> +	mov	w1, #1
> +	str	w1, [x0]		/* mark bss cleared */
>  	mov	x30, x15
> -	ret
> +1:	ret
>  ENDPROC(setup_c)
>  
>  /*
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


