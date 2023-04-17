Delivery-date: Mon, 17 Apr 2023 08:54:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIkw-0060sV-L4
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 08:54:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIkw-0001Xw-Fw
	for lore@pengutronix.de; Mon, 17 Apr 2023 08:54:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JIj33nS2hkvONZnzviDadH3OufBOsxjBAY4Ddf1Pp3o=; b=0tb12dm2SWKeYtOp05IQJrlAEz
	a6yPNMWZYcCpDO38EgV01FEC0ZmGnp7lOMYAqhUnQKj9Z2bP5FLGcooTQX1NR2U3LKMxusqPf2fcZ
	nc11ekDujO36KaHTm64mEv7+CHvlpanhA6QHTBEHGz990J8RJbluZCgn5iUW7MV6L8lh/BAzc43Fa
	8kvW/xb5Mm6LBFeSPeKOWIzq/Jo68DQPMxNUCHFWw8LucTbbCNrbTwIJbPiTOanqXNF77mYdQ3GNo
	HLtUeKSBNOwbjhDkoEq+zkvuwSxAcC/m85XEGaMYFzFnQwQ6HI6l41VfT6ilahpy4c6TpAQB5Q4iq
	nu0FwcPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poIjW-00F669-0P;
	Mon, 17 Apr 2023 06:53:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poIjT-00F64m-0Z
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 06:53:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIjQ-0001Ev-FQ; Mon, 17 Apr 2023 08:52:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIjQ-00046z-7A; Mon, 17 Apr 2023 08:52:56 +0200
Date: Mon, 17 Apr 2023 08:52:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230417065256.GC13543@pengutronix.de>
References: <20230415083447.3069903-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230415083447.3069903-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_235259_207282_B12706B5 
X-CRM114-Status: GOOD (  26.69  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM64: setupc: don't invoke KASAN before
 relocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 15, 2023 at 10:34:47AM +0200, Ahmad Fatoum wrote:
> Plain memset and memcpy are checked by KASAN if enabled before calling
> unchecked __memset and __memcpy respectively.
> 
> KASAN uses a kasan_initialized variable as first condition in its memory
> check, but that only works after relocation. For that reason, we must
> take care not to invoke KASAN before then. This was done for ARM32, but
> was missing for ARM64. Do so now.
> 
> This fixes an annoying issue where network booting a KASAN-enabled barebox
> twice in a row would fail: The first happened to work because the memory
> kasan_initialized was placed at was zero. The second would behave
> erratically, because BSS initialization would silently fail and barebox
> static storage would then be initialized with the final values of the
> previous run.
> 
> Fixes: 932ef7a02e2f ("ARM: Add KASan support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Applied, thanks

Sascha

> ---
> I wondered if there's a way to print a KASAN error that early, but it's
> not easy. Calling even global_variable_offset() in kasan_report caused
> infinite recursion, despite use of __no_sanitize_address. Printing
> unconditionally could be a way around this.
> ---
>  arch/arm/cpu/setupc_64.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
> index d64281c148fc..f38f893be90b 100644
> --- a/arch/arm/cpu/setupc_64.S
> +++ b/arch/arm/cpu/setupc_64.S
> @@ -14,7 +14,7 @@ ENTRY(setup_c)
>  	mov	x1, #0
>  	ldr	x2, =__bss_stop
>  	sub	x2, x2, x0
> -	bl	memset			/* clear bss */
> +	bl	__memset		/* clear bss */
>  	mov	x30, x15
>  	ret
>  ENDPROC(setup_c)
> @@ -63,7 +63,7 @@ ENTRY(relocate_to_adr)
>  	sub	x19, x19, x1		/* sub address where we are actually running */
>  	add	x19, x19, x0		/* add address where we are going to run */
>  
> -	bl	memcpy			/* copy binary */
> +	bl	__memcpy		/* copy binary */
>  
>  	bl	sync_caches_for_execution
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


