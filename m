Delivery-date: Wed, 04 Mar 2026 10:06:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxiBC-007vpW-1H
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 10:06:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxiBC-00039l-Mx
	for lore@pengutronix.de; Wed, 04 Mar 2026 10:06:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+7ZTzKjeq0y7o/yEwC7i7297chgcbS/dESCo3OQ2xo=; b=IVFFxeKWgLjs3HpHscV9OKYmCB
	p/d24igjq8o5hiRjCNM59WxhsF8bJq8djOFxNfs9k8JdZlt1Mk/TYgVGXdLbHzfxfsKbIucxC837j
	oBrRdAGfwpLYdTa0lL2yGwrZmWQw9zv7yXXV783vzOBs/Mz9z02cPDoCy5DnkLixswOsZXB0+fdNF
	49JQdDnxnMkGLiroVhwVp0seT15ODqBMDk3gGL/hvA3LYirrYi+jKeBisXyIQv+1/JdppX64Tq9H8
	ZlysFXPPaKwlE55L66pnpFUpPOPQClpi+dtQaCaf03g3liKqE6tEWo/449AxX5z4e3xY3swt1nOUv
	zIrk0PnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxiAo-0000000Gq0j-2hw9;
	Wed, 04 Mar 2026 09:05:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxiAm-0000000Gq0M-0AE0
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 09:05:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vxiAk-00030v-Eg; Wed, 04 Mar 2026 10:05:38 +0100
Message-ID: <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
Date: Wed, 4 Mar 2026 10:05:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
 <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_010540_099990_4A3A51C0 
X-CRM114-Status: GOOD (  15.72  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/4/26 8:53 AM, Sascha Hauer wrote:
> Add a bss_cleared variable that is set after the first call to
> setup_c(). On subsequent calls, the BSS clear is skipped to avoid
> wiping already-initialized data.
> 
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Minor point below:

> +.section .data

.data.bss_cleared or is it already in its own section?

> +bss_cleared:
> +	.word 	0
> +
>  /*
>   * void relocate_to_adr(unsigned long targetadr)
>   *
> diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
> index fd95187a04..caa16d3582 100644
> --- a/arch/arm/cpu/setupc_64.S
> +++ b/arch/arm/cpu/setupc_64.S
> @@ -7,19 +7,29 @@
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
> +.section .data

Same question

> +bss_cleared:
> +	.word 	0
> +
>  /*
>   * void relocate_to_adr(unsigned long targetadr)
>   *
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



