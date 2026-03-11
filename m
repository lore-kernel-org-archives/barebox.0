Delivery-date: Wed, 11 Mar 2026 15:41:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0Kkq-00ATZF-2K
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 15:41:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0Kkr-00078j-08
	for lore@pengutronix.de; Wed, 11 Mar 2026 15:41:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=spI2JgEb8fkKBPxgvXIcVZI0qepFOT2IPnqg1KIoa/o=; b=FLHQVhHoyjwifK/7WtkzrRGkOO
	Y6ZawHO/UA903OYgF6s0HcH3fagimofJTnybHCbwUu1eXyuVoUbLlDB72aKYeEGQuAfeQ8X/kZsRF
	bZAmI/kXkYtBdBVYW8uhZGXeeQzi5vpTBumAR29qhaOojb4l8mBYzQG5lbtnb7xKeL4t5h0Qy8I76
	8CTeBahzF+JsB9qeUf0HCJiUB8DciusJi8CG1KQQD71ip5ipJ3ZmqsYLH3Ks3lOOH05izPbBXgd2n
	rvqHLXxjyUZtT99biXNtbNMptYvKlMIqnEg2oXmRnZo13O5SNaeJXWb5/nN7nNFdksMoMLitVTqDZ
	thoNq8hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KkH-0000000BjJm-3emT;
	Wed, 11 Mar 2026 14:41:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KkF-0000000BjIp-0uvV
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 14:41:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0KkD-000702-Fq; Wed, 11 Mar 2026 15:41:05 +0100
Message-ID: <96ca3d06-c1ec-4329-af77-5b7eb89047bb@pengutronix.de>
Date: Wed, 11 Mar 2026 15:41:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>,
 David Picard <david.picard@clermont.in2p3.fr>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
 <20260304-arm-setup-c-v2-1-d26af520ab03@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260304-arm-setup-c-v2-1-d26af520ab03@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_074107_336883_AEBF2F6C 
X-CRM114-Status: GOOD (  19.65  )
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
Subject: Re: [PATCH v2 1/2] ARM: setupc_32: remove relocation code from
 setup_c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/4/26 8:53 AM, Sascha Hauer wrote:
> All callers of setup_c() already call relocate_to_current_adr() or
> relocate_to_adr() before setup_c(), so the relocation (memcpy) code
> in setup_c is dead and also the sync_caches_for_execution() is unnecessary
> Remove it and reduce setup_c to just clearing BSS.

David reports this breaks his enclustra-sa2 and I observe also a hang on
Qemu Virt:

$ make multi_v7_defconfig
$ pytest --interactive
Using -bios device tree at 40000000
<hang>

Please drop from next, it's likely also what's breaking CI.

Cheers,
Ahmad

> 
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/setupc_32.S | 27 +++++----------------------
>  1 file changed, 5 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
> index 0134637f62..c2c3f97528 100644
> --- a/arch/arm/cpu/setupc_32.S
> +++ b/arch/arm/cpu/setupc_32.S
> @@ -7,33 +7,16 @@
>  .section .text.setupc
>  
>  /*
> - * setup_c: copy binary to link address, clear bss and
> - * continue executing at new address.
> - *
> - * This function does not return to the address it is
> - * called from, but to the same location in the copied
> - * binary.
> + * setup_c: clear bss
>   */
>  ENTRY(setup_c)
> -	push	{r4, r5}
> -	mov	r5, lr
> -	bl	get_runtime_offset
> -	subs	r4, r0, #0
> -	beq	1f			/* skip memcpy if already at correct address */
> -	ldr	r0,=_text
> -	ldr	r2,=__bss_start
> -	sub	r2, r2, r0
> -	add	r1, r0, r4
> -	bl	__memcpy			/* memcpy(_text, _text + offset, __bss_start - _text) */
> -1:	ldr	r0, =__bss_start
> +	mov	r4, lr
> +	ldr	r0, =__bss_start
>  	mov	r1, #0
>  	ldr	r2, =__bss_stop
>  	sub	r2, r2, r0
> -	bl	__memset			/* clear bss */
> -	bl	sync_caches_for_execution
> -	sub	lr, r5, r4		/* adjust return address to new location */
> -	pop	{r4, r5}
> -	ret	lr
> +	bl	__memset		/* clear bss */
> +	ret	r4
>  ENDPROC(setup_c)
>  
>  /*
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



