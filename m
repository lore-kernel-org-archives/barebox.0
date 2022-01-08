Delivery-date: Sat, 08 Jan 2022 19:26:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6GQU-00EfNf-J4
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 19:26:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6GQT-0002vX-3s
	for lore@pengutronix.de; Sat, 08 Jan 2022 19:26:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Cc:References:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9s6YjPoNZ9viLMQPKJ6oOvUXUIlUzcIlFDhiKxXu/F0=; b=tK+z68Gqdv49capmyW7pfzuZGA
	LjgvMOf7xFH0Yxsi+F1m8W6K2hPJZWHN/Sgmt+qnqzIm/Js/1g/IE1FMnfsOverlyYEISM/RLY9Le
	tQwr7QLs7akNbcsCdyH2KxKB2BWYiHOfIbAd7W8F2iFfJoum5l9hjI5FO8h4mVL+EitFaE3A3qhIb
	aFJ3fXTixZV2b7s8n2o7FUFuOJkX/3HYlBN8D5pOkaHmu1fLJwK7K/Dx18PXwrDQD9MQpXu4GTR/H
	DVEGc71ZM+9aKVRtQ88rMKfUJkvsd0rB52tXQ8QukWDhR/UsMrVH3a8IJsBy6DFsJAsZwUuzZ5e2S
	YsU6We5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6GOw-006pm9-Rz; Sat, 08 Jan 2022 18:25:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6GOs-006pll-J4
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 18:25:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n6GOn-0002XP-3o; Sat, 08 Jan 2022 19:25:05 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>
References: <20220108171524.587144-1-a.fatoum@pengutronix.de>
 <20220108171524.587144-7-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6136d698-30cd-12a7-58e4-a6598ff3a86e@pengutronix.de>
Date: Sat, 8 Jan 2022 19:25:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220108171524.587144-7-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_102510_692248_7862FC7D 
X-CRM114-Status: GOOD (  21.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/9] RISC-V: don't use x8/s0/fp in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 08.01.22 18:15, Ahmad Fatoum wrote:
> Free up the register to allow building a configuration with x8/s0 used
> as the frame pointer.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/riscv/include/asm/debug_ll_litex.h   | 12 +++---
>  arch/riscv/include/asm/debug_ll_ns16550.h |  8 ++--
>  arch/riscv/include/asm/riscv_nmon.h       | 50 +++++++++++------------

I just bumped the s register: s2 -> s3, s1 -> s2, s0 -> s1 to
clear s0. Is that ok?

>  3 files changed, 35 insertions(+), 35 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/debug_ll_litex.h b/arch/riscv/include/asm/debug_ll_litex.h
> index 2fcdd9b0ec3e..295477fc1010 100644
> --- a/arch/riscv/include/asm/debug_ll_litex.h
> +++ b/arch/riscv/include/asm/debug_ll_litex.h
> @@ -90,11 +90,11 @@ static inline void PUTC_LL(char ch)
>  	li	t0, DEBUG_LL_UART_ADDR
>  
>  	/* get line status and check for data present */
> -	lbu	s0, UART_RXEMPTY(t0)
> -	bnez    s0, 243f
> -	li	s0, 1
> +	lbu	s1, UART_RXEMPTY(t0)
> +	bnez    s1, 243f
> +	li	s1, 1
>  	j	244f
> -243:	li	s0, 0
> +243:	li	s1, 0
>  244:	nop
>  #endif /* CONFIG_DEBUG_LL */
>  .endm
> @@ -109,10 +109,10 @@ static inline void PUTC_LL(char ch)
>  	debug_ll_tstc
>  
>  	/* try again */
> -	beqz	s0, 204b
> +	beqz	s1, 204b
>  
>  	/* read a character */
> -	lb	s0, UART_RXTX(t0)
> +	lb	s1, UART_RXTX(t0)
>  	li      t1, UART_EV_RX
>  	sb	t1, UART_EV_PENDING(t0)
>  
> diff --git a/arch/riscv/include/asm/debug_ll_ns16550.h b/arch/riscv/include/asm/debug_ll_ns16550.h
> index e208ef4fb1e1..47f0be328ce8 100644
> --- a/arch/riscv/include/asm/debug_ll_ns16550.h
> +++ b/arch/riscv/include/asm/debug_ll_ns16550.h
> @@ -143,8 +143,8 @@ static inline void debug_ll_ns16550_init(void)
>  	li      t0, DEBUG_LL_UART_ADDR
>  
>  	/* get line status and check for data present */
> -	UART_REG_L	s0, UART_LSR(DEBUG_LL_UART_SHIFT)(t0)
> -	andi	s0, s0, UART_LSR_DR
> +	UART_REG_L	s1, UART_LSR(DEBUG_LL_UART_SHIFT)(t0)
> +	andi	s1, s1, UART_LSR_DR
>  
>  #endif /* CONFIG_DEBUG_LL */
>  .endm
> @@ -159,10 +159,10 @@ static inline void debug_ll_ns16550_init(void)
>  	debug_ll_tstc
>  
>  	/* try again */
> -	beqz	s0, 204b
> +	beqz	s1, 204b
>  
>  	/* read a character */
> -	UART_REG_L	s0, UART_RBR(DEBUG_LL_UART_SHIFT)(t0)
> +	UART_REG_L	s1, UART_RBR(DEBUG_LL_UART_SHIFT)(t0)
>  
>  #endif /* CONFIG_DEBUG_LL */
>  .endm
> diff --git a/arch/riscv/include/asm/riscv_nmon.h b/arch/riscv/include/asm/riscv_nmon.h
> index 8a44e216d72d..3e349025febc 100644
> --- a/arch/riscv/include/asm/riscv_nmon.h
> +++ b/arch/riscv/include/asm/riscv_nmon.h
> @@ -84,7 +84,7 @@ nmon_main:
>  	debug_ll_getc
>  
>  	li	a0, 'q'
> -	bne	s0, a0, 3f
> +	bne	s1, a0, 3f
>  
>  	jal	a2, _nmon_outc_a0
>  
> @@ -92,13 +92,13 @@ nmon_main:
>  
>  3:
>  	li	a0, 'd'
> -	beq	s0, a0, nmon_cmd_d
> +	beq	s1, a0, nmon_cmd_d
>  
>  	li	a0, 'w'
> -	beq	s0, a0, nmon_cmd_w
> +	beq	s1, a0, nmon_cmd_w
>  
>  	li	a0, 'g'
> -	beq	s0, a0, nmon_cmd_g
> +	beq	s1, a0, nmon_cmd_g
>  
>  	j	nmon_main_help
>  
> @@ -112,7 +112,7 @@ nmon_cmd_d:
>  
>  	nmon_outs	msg_nl
>  
> -	lw	a0, (s0)
> +	lw	a0, (s1)
>  	debug_ll_outhexw
>  
>  	j	nmon_main
> @@ -124,13 +124,13 @@ nmon_cmd_w:
>  	jal	a2, _nmon_outc_a0
>  
>  	jal	a2, _nmon_gethexw
> -	move	s2, s0
> +	move	s3, s1
>  
>  	li	a0, ' '
>  	jal	a2, _nmon_outc_a0
>  	jal	a2, _nmon_gethexw
>  
> -	sw	s0, 0(s2)
> +	sw	s1, 0(s3)
>  	j	nmon_main
>  
>  nmon_cmd_g:
> @@ -140,11 +140,11 @@ nmon_cmd_g:
>  	jal	a2, _nmon_outc_a0
>  
>  	jal	a2, _nmon_gethexw
> -	move	s2, s0
> +	move	s3, s1
>  
>  	nmon_outs	msg_nl
>  
> -	jalr	s2
> +	jalr	s3
>  	j	nmon_main
>  
>  _nmon_outc_a0:
> @@ -169,37 +169,37 @@ _nmon_gethexw:
>  _get_hex_digit:
>  	debug_ll_getc
>  
> -	li	s1, CODE_ESC
> -	beq	s0, s1, nmon_main
> +	li	s2, CODE_ESC
> +	beq	s1, s2, nmon_main
>  
> -	li	s1, '0'
> -	bge	s0, s1, 0f
> +	li	s2, '0'
> +	bge	s1, s2, 0f
>  	j	_get_hex_digit
>  
>  0:
> -	li	s1, '9'
> -	ble	s0, s1, 9f
> +	li	s2, '9'
> +	ble	s1, s2, 9f
>  
> -	li	s1, 'f'
> -	ble	s0, s1, 1f
> +	li	s2, 'f'
> +	ble	s1, s2, 1f
>  	j	_get_hex_digit
>  
>  1:
> -	li	s1, 'a'
> -	bge	s0, s1, 8f
> +	li	s2, 'a'
> +	bge	s1, s2, 8f
>  
>  	j	_get_hex_digit
>  
> -8: /* s0 \in {'a', 'b' ... 'f'} */
> -	sub	a3, s0, s1
> +8: /* s1 \in {'a', 'b' ... 'f'} */
> +	sub	a3, s1, s2
>  	addi	a3, a3, 0xa
>  	j	0f
>  
> -9: /* s0 \in {'0', '1' ... '9'} */
> +9: /* s1 \in {'0', '1' ... '9'} */
>  	li	a3, '0'
> -	sub	a3, s0, a3
> +	sub	a3, s1, a3
>  
> -0:	move	a0, s0
> +0:	move	a0, s1
>  	debug_ll_outc_a0
>  
>  	sll	t2, t2, 4
> @@ -212,7 +212,7 @@ _get_hex_digit:
>  	j	_get_hex_digit
>  
>  0:
> -	move	s0, t2
> +	move	s1, t2
>  
>  _nmon_jr_ra_exit:
>  	jr	a2
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

