Delivery-date: Tue, 17 Mar 2026 13:44:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Tn8-001o9n-2F
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 13:44:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Tn7-0007G7-R1
	for lore@pengutronix.de; Tue, 17 Mar 2026 13:44:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vIiRCuYJoDoYIEEOUMaEWjRMz/8Nn5m9ePH82XdhHTE=; b=qLkSVuYk5fyLUxRrrgU2P5MfRn
	bLdSDMVxm25KTZTRunlkSJr/w/k7dAIQo7gAWqZKdRrBLLDUZtBw2CKo+ig6subZ0wHjJHSd4UDhJ
	L8KVvungI/KluSigGZm9Ntyq/POfxd2D5KehJ9UkkdLSwjYSLxyA9PCr2wICUEFx/EFGuB79SjPSU
	mhz8gGAAOSeJ8gp/EMy5kLE5hcYWp3mJgFRV00BUKp2lsv+r7f/qvvPx7MIIYmkGupSijdpbgAfyW
	DY5sgiZMHqcJ4nB8f87VIN0vQ4Msb02b7oqYsOoU/5/a3Tp6ygdONV68Iwpbkc60M6iVMW7HVKgJi
	cN6BXPPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2TmK-00000006K8M-1Wrj;
	Tue, 17 Mar 2026 12:44:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2TmJ-00000006K87-2HS2
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 12:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vIiRCuYJoDoYIEEOUMaEWjRMz/8Nn5m9ePH82XdhHTE=; b=FfNPRKeynLvn++1PIRuAhyGcLs
	3A8Br6C/iiFRE4h0Z0pgdpfs+iVngjljQ6yuWfvLRJiE0Q7wREGPDVhG9SuSVjOhqDMOqXS6UzY1S
	BSVBBlKdrxB4LNQN1cKhh36pNWAolY/wtD/KivZDGB5nxnU5QIDXXV2kZ4vfDSNyRq8kZcrAW9f1o
	QmktpJE3lJm2MX7wwGI1igTfNH+7plrobArBqt25yI1RGnIwaHBIEL8L+utOXgAEF87S+oTwH66ag
	aVsc1JiO9wUt1fJdqF9ifskYc5fmf0FQEO/pPILFT+TIGd6nut+XNDF/QmC2gtGS5Lp/dZyXsNOMu
	Syv03emA==;
Received: from cczrelay02-placeholder.in2p3.fr ([134.158.66.152] helo=cczrelay04.in2p3.fr)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2TmG-00000008zj5-0Sc3
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 12:44:06 +0000
Received: from [172.27.130.86] (unknown [195.221.122.29])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id 7F08080C6D3;
	Tue, 17 Mar 2026 13:43:57 +0100 (CET)
Message-ID: <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
Date: Tue, 17 Mar 2026 13:43:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
 <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
 <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
 <aa_1-MX7hnrlJ3Ff@pengutronix.de>
 <ca6784d7-14c0-4716-8951-67d31fd40cdd@clermont.in2p3.fr>
 <abkZpI9KA1Q2A7VL@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: en-US
In-Reply-To: <abkZpI9KA1Q2A7VL@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_124404_478438_06210CB0 
X-CRM114-Status: GOOD (  27.04  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I tested from the last but one commit on master, but I don't think it's 
a big deal.

Anyway, my board boots. Congrats!

David

Le 17/03/2026 à 10:06, Sascha Hauer a écrit :
> Hi David,
>
> On Mon, Mar 16, 2026 at 02:21:37PM +0100, David Picard wrote:
>> Hi,
>>
>> I would like this patches be reverted, since, despite the proposed fixes, it
>> prevents the board arch/arm/boards/enclustra-sa2 to boot.
> I reverted this patch for now, but nevertheless I'd like to understand
> what's wrong with it.
>
>> With the option CONFIG_DEBUG_LL enabled, the output is:
>>
>> lowlevel init done
>> SDRAM setup...
>> SDRAM calibration...
>> done
>>
>> Then, it hangs.
> Could you apply the following patch to current master and see what the
> output is?
>
> Thanks
>   Sascha
>
> ----------------------------------8<-----------------------------------
>
>  From b784bc80756d127ae4a824ad235d4e113d5dcc1f Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Wed, 4 Mar 2026 08:53:22 +0100
> Subject: [PATCH] ARM: setup_c: avoid clearing BSS twice
>
> Add a bss_cleared variable that is set after the first call to
> setup_c(). On subsequent calls, the BSS clear is skipped to avoid
> wiping already-initialized data.
>
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Link: https://lore.barebox.org/20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/cpu/setupc_32.S  | 16 ++++++++++++++--
>   arch/arm/cpu/setupc_64.S  | 15 +++++++++++++--
>   arch/arm/cpu/uncompress.c | 15 +++++++++++++++
>   3 files changed, 42 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
> index fa31f94442..fadfc28ae1 100644
> --- a/arch/arm/cpu/setupc_32.S
> +++ b/arch/arm/cpu/setupc_32.S
> @@ -7,18 +7,30 @@
>   .section .text.setupc
>   
>   /*
> - * setup_c: clear bss
> + * setup_c: clear bss if not yet done
>    */
>   ENTRY(setup_c)
>   	push	{r4, lr}
> +	ldr	r0, =bss_cleared
> +	ldr	r1, [r0]
> +	cmp	r1, #0
> +	bne	1f			/* skip if already done */
>   	ldr	r0, =__bss_start
>   	mov	r1, #0
>   	ldr	r2, =__bss_stop
>   	sub	r2, r2, r0
>   	bl	__memset		/* clear bss */
> -	pop	{r4, pc}
> +	ldr	r0, =bss_cleared
> +	mov	r1, #1
> +	str	r1, [r0]		/* mark bss cleared */
> +1:	pop	{r4, pc}
>   ENDPROC(setup_c)
>   
> +.section .data.bss_cleared
> +.balign 4
> +bss_cleared:
> +	.word 	0
> +
>   /*
>    * void relocate_to_adr(unsigned long targetadr)
>    *
> diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
> index 18ab7ff3fe..a0767c5136 100644
> --- a/arch/arm/cpu/setupc_64.S
> +++ b/arch/arm/cpu/setupc_64.S
> @@ -7,19 +7,30 @@
>   .section .text.setupc
>   
>   /*
> - * setup_c: clear bss
> + * setup_c: clear bss if not yet done
>    */
>   ENTRY(setup_c)
> +	adr_l	x0, bss_cleared
> +	ldr	w1, [x0]
> +	cbnz	w1, 1f			/* skip if already done */
>   	mov	x15, x30
>   	adr_l	x0, __bss_start
>   	mov	x1, #0
>   	adr_l	x2, __bss_stop
>   	sub	x2, x2, x0
>   	bl	__memset		/* clear bss */
> +	adr_l	x0, bss_cleared
> +	mov	w1, #1
> +	str	w1, [x0]		/* mark bss cleared */
>   	mov	x30, x15
> -	ret
> +1:	ret
>   ENDPROC(setup_c)
>   
> +.section .data.bss_cleared
> +.balign 4
> +bss_cleared:
> +	.word 	0
> +
>   /*
>    * void relocate_to_adr(unsigned long targetadr)
>    *
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index 38f7dbc113..bde0f2a0a5 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -50,6 +50,15 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>   	pg_start = runtime_address(input_data);
>   	pg_end = runtime_address(input_data_end);
>   
> +	puthex_ll((unsigned long)pg_start); putc_ll('\r'); putc_ll('\n');
> +	puthex_ll((unsigned long)pg_end); putc_ll('\r'); putc_ll('\n');
> +	puthex_ll((unsigned long)pc); putc_ll('\r'); putc_ll('\n');
> +	puthex_ll(membase); putc_ll('\r'); putc_ll('\n');
> +	puthex_ll(memsize); putc_ll('\r'); putc_ll('\n');
> +	puthex_ll((unsigned long)&__bss_start); putc_ll('\r'); putc_ll('\n');
> +	puthex_ll((unsigned long)&__bss_stop); putc_ll('\r'); putc_ll('\n');
> +	puthex_ll((unsigned long)&__image_end); putc_ll('\r'); putc_ll('\n');
> +
>   	/*
>   	 * If we run from inside the memory just relocate the binary
>   	 * to the current address. Otherwise it may be a readonly location.
> @@ -60,11 +69,17 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>   	else
>   		relocate_to_adr(membase);
>   
> +	putc_ll('A');
> +
>   	pg_len = pg_end - pg_start;
>   	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
>   
> +	putc_ll('B');
> +
>   	setup_c();
>   
> +	putc_ll('C');
> +
>   	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>   
>   	arm_pbl_init_exceptions();



