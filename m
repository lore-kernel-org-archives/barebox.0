Delivery-date: Tue, 06 Jun 2023 10:24:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rzl-00Codm-IG
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:24:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rzi-0003m7-LF
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:24:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gNzmDzUqta7OYDH480nMRUWhDsss7zYOf7eDYXX8d/U=; b=hjkWKGLHBqn3cyVv6ZM7DXj4pl
	J6Po1zymd24o6b2PJ3IzNhbC/7KZLewXRDBicADs/jHqSqWzadUfdeOdtMZ9Y06OupSEeqD72BsnW
	qJpus6gR/DO/DiXI8oMxYsk1VeTPKLiXwDgSE8Vxdvp/Z/aRM4n31cSF/lRQbBsQIFhPANKAjp99n
	5pXfhBtfuWMGOnpUGHKTcPPRgnrPETSi49WR+KfmF1ZfzThNn5JP5pFA35Izwqi1B+fUn9OJ2pR5K
	EbR/kKX6HC9D2Onzxin92hJkns1DtkDViGkhbCkvf0vdrTRRUaaa/ldzlsuUxfacA3wRb7dNZGHzR
	LEbNHGXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Ryc-000mw5-1E;
	Tue, 06 Jun 2023 08:23:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6RyY-000mvO-1O
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:23:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6RyX-0003e8-5Y; Tue, 06 Jun 2023 10:23:33 +0200
Message-ID: <c6ee2ea3-4d6d-43da-a916-b25f9265f525@pengutronix.de>
Date: Tue, 6 Jun 2023 10:23:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-8-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-8-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_012334_465651_5ECA0172 
X-CRM114-Status: GOOD (  23.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 07/17] MIPS: use MIPS32/MIPS64 generic instruction macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> Use PTR_* for various arithmetic operations on pointers, and also use
> PTR_LA instead of simple 'la' instruction, as it will correctly handle
> loading 64-bit addresses from non-32-bit-compatible virtual memory
> segments.
> 
> This fixes "la used to load 64-bit address; recommend using dla instead"
> warnings when compiling assembly code with CONFIG_64BIT.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/boot/start.S                   |  2 +-
>  arch/mips/include/asm/asm.h              | 10 +++++-----
>  arch/mips/include/asm/debug_ll_ns16550.h |  6 +++---
>  arch/mips/include/asm/pbl_macros.h       | 22 +++++++++++-----------
>  arch/mips/lib/genex.S                    |  8 ++++----
>  5 files changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> index c1cd2d9dd5..5f134f9ae9 100644
> --- a/arch/mips/boot/start.S
> +++ b/arch/mips/boot/start.S
> @@ -34,7 +34,7 @@ EXPORT(_start)
>  	move	a0, s0
>  	move	a1, s1
>  	move	a2, s2
> -	la	v0, relocate_code
> +	PTR_LA	v0, relocate_code
>  	jal	v0
>  	 nop
>  
> diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
> index 69931662ff..c699542a55 100644
> --- a/arch/mips/include/asm/asm.h
> +++ b/arch/mips/include/asm/asm.h
> @@ -94,10 +94,10 @@ EXPORT(symbol)
>  	copy_to_link_location	symbol;			\
>  	stack_setup;					\
>  							\
> -	la	a0, __dtb_ ## dtb##_start;		\
> -	la	a1, __dtb_ ## dtb##_end;		\
> -	li	a2, ram_size;				\
> -	la	v0, pbl_main_entry;			\
> +	PTR_LA	a0, __dtb_ ## dtb##_start;		\
> +	PTR_LA	a1, __dtb_ ## dtb##_end;		\
> +	PTR_LI	a2, ram_size;				\
> +	PTR_LA	v0, pbl_main_entry;			\
>  	jal	v0;					\
>  	 nop;						\
>  							\
> @@ -122,7 +122,7 @@ EXPORT(symbol)
>  	/* Call some code from .text section.		\
>  	 * It is needed to keep same linker script for	\
>  	 * all images. */				\
> -	la	v0, mips_dead_end;			\
> +	PTR_LA	v0, mips_dead_end;			\
>  	jal	v0;					\
>  	 nop;
>  
> diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
> index 703bfaee77..7cfd844cb6 100644
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -60,7 +60,7 @@ static inline void PUTC_LL(char ch)
>  
>  .macro	debug_ll_ns16550_init divisor=DEBUG_LL_UART_DIVISOR
>  #ifdef CONFIG_DEBUG_LL
> -	la	t0, DEBUG_LL_UART_ADDR
> +	PTR_LA	t0, DEBUG_LL_UART_ADDR
>  
>  	li	t1, UART_LCR_DLAB		/* DLAB on */
>  	sb	t1, UART_LCR(t0)		/* Write it out */
> @@ -83,7 +83,7 @@ static inline void PUTC_LL(char ch)
>  	.set	push
>  	.set	reorder
>  
> -	la	t0, DEBUG_LL_UART_ADDR
> +	PTR_LA	t0, DEBUG_LL_UART_ADDR
>  
>  201:	lbu	t1, UART_LSR(t0)	/* get line status */
>  	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
> @@ -126,7 +126,7 @@ static inline void PUTC_LL(char ch)
>  	.set	push
>  	.set	reorder
>  
> -	la      t0, DEBUG_LL_UART_ADDR
> +	PTR_LA     t0, DEBUG_LL_UART_ADDR
>  
>  	/* get line status and check for data present */
>  	lbu	t1, UART_LSR(t0)
> diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
> index e60af38442..1fba690c8c 100644
> --- a/arch/mips/include/asm/pbl_macros.h
> +++ b/arch/mips/include/asm/pbl_macros.h
> @@ -73,7 +73,7 @@
>  	.macro	pbl_probe_mem ret1 ret2 addr
>  	.set	push
>  	.set	noreorder
> -	la	\ret1, \addr
> +	PTR_LA	\ret1, \addr
>  	sw	zero, 0(\ret1)
>  	li	\ret2, 0x12345678
>  	sw	\ret2, 0(\ret1)
> @@ -97,7 +97,7 @@
>  	move	\temp, ra			# preserve ra beforehand
>  	bal	255f
>  	 nop
> -255:	addiu	\rd, ra, \label - 255b		# label is assumed to be
> +255:	PTR_ADDIU	\rd, ra, \label - 255b	# label is assumed to be
>  	move	ra, \temp			# within pc +/- 32KB
>  	.set	pop
>  	.endm
> @@ -110,15 +110,15 @@
>  	ADR	a0, \start_addr, t1	/* a0 <- pc-relative
>  					position of start_addr */
>  
> -	la	a1, \start_addr	/* a1 <- link (RAM) start_addr address */
> +	PTR_LA	a1, \start_addr	/* a1 <- link (RAM) start_addr address */
>  
>  	beq	a0, a1, copy_loop_exit
>  	 nop
>  
> -	la	t0, \start_addr
> -	la	t1, __bss_start
> -	subu	t2, t1, t0	/* t2 <- size of pbl */
> -	addu	a2, a0, t2	/* a2 <- source end address */
> +	PTR_LA	t0, \start_addr
> +	PTR_LA	t1, __bss_start
> +	PTR_SUBU	t2, t1, t0	/* t2 <- size of pbl */
> +	PTR_ADDU	a2, a0, t2	/* a2 <- source end address */
>  
>  #define WSIZE	4
>  copy_loop:
> @@ -132,10 +132,10 @@
>  	sw	ta1, WSIZE * 1(a1)
>  	sw	ta2, WSIZE * 2(a1)
>  	sw	ta3, WSIZE * 3(a1)
> -	addi	a0, WSIZE * 4
> -	subu	t3, a0, a2
> +	PTR_ADDI	a0, WSIZE * 4
> +	PTR_SUBU	t3, a0, a2
>  	blez	t3, copy_loop
> -	 addi	a1, WSIZE * 4
> +	 PTR_ADDI	a1, WSIZE * 4
>  
>  copy_loop_exit:
>  
> @@ -196,7 +196,7 @@
>  	.set	noreorder
>  
>  	/* set stack pointer; reserve four 32-bit argument slots */
> -	la	sp, (TEXT_BASE - MALLOC_SIZE - 16)
> +	PTR_LA	sp, (TEXT_BASE - MALLOC_SIZE - 16)
>  
>  	.set	pop
>  	.endm
> diff --git a/arch/mips/lib/genex.S b/arch/mips/lib/genex.S
> index d75a652e4d..b9d18fc394 100644
> --- a/arch/mips/lib/genex.S
> +++ b/arch/mips/lib/genex.S
> @@ -14,7 +14,7 @@
>  /* Exception vector */
>  NESTED(handle_reserved, 0, sp)
>  	SAVE_ALL
> -	la	k0, barebox_exc_handler
> +	PTR_LA	k0, barebox_exc_handler
>  	jal	k0
>  	 move	a0, sp
>  	/* will never return here */
> @@ -24,10 +24,10 @@ NESTED(handle_reserved, 0, sp)
>  NESTED(except_vec3_generic, 0, sp)
>  	.set	noat
>  	mfc0	k1, CP0_CAUSE
> -	la	k0, exception_handlers
> +	PTR_LA	k0, exception_handlers
>  	andi	k1, k1, 0x7c
> -	addu	k0, k0, k1
> -	lw	k0, (k0)
> +	PTR_ADDU	k0, k0, k1
> +	PTR_L	k0, (k0)
>  	nop
>  	jr	k0
>  	 nop

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



