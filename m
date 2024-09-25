Delivery-date: Wed, 25 Sep 2024 17:53:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stUKm-002eZA-03
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 17:53:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stUKm-0004Tn-8l
	for lore@pengutronix.de; Wed, 25 Sep 2024 17:53:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1SgQ/Cnu3SoMW1LZt/tfLrIR2LsGQEw9ai3SxMkQqnA=; b=T3JfpYNjC+wkOOJoDiLIPTm2Um
	UBCc0+cu6jHxHKFMqDZB98Rr4G7X/ibJjoTzLl35ouDAT1o0vvuqrBWrnvryZCesm2clYo1B5HQe8
	FdnSIbUwKT1i/3yX5w5Sp2bmFKKEcJDSKq5Te5zQGEQgC+t6dM1fcRGxYZSd9kvrkyr/atDFfjxRY
	ZVP+kfYzlENrMAJr/3nwT6DEk+KkaewjxiaJ3ZRZ+N1fqX1r4x+dieyYAP4N6KtpQuG4tAujof/S5
	7GzKffo7SPY5/lD/rGGdlcE/ctEljIDg/r4pzWwRVLrJ6ljTiFSpBfptd9hla+wAIw/Qzd2JlS7P4
	AAy1TsYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stUKK-00000005xbF-3r5h;
	Wed, 25 Sep 2024 15:53:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stUJD-00000005xTw-2O0p
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 15:52:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stUJC-0004Db-4t; Wed, 25 Sep 2024 17:52:06 +0200
Message-ID: <8424d0f3-20de-45df-8734-91b027d47469@pengutronix.de>
Date: Wed, 25 Sep 2024 17:52:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
 <20240925-arm-assembly-memmove-v1-2-0d92103658a0@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-2-0d92103658a0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_085207_651316_C6D62595 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/10] ARM: rename logical shift macros push pull into
 lspush lspull
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 15:55, Sascha Hauer wrote:
> Adoption of Linux commit:
> 
> | commit d98b90ea22b0a28d9d787769704a9cf1ea5a513a
> | Author: Victor Kamensky <victor.kamensky@linaro.org>
> | Date:   Tue Feb 25 08:41:09 2014 +0100
> |
> |     ARM: 7990/1: asm: rename logical shift macros push pull into lspush lspull
> |
> |     Renames logical shift macros, 'push' and 'pull', defined in
> |     arch/arm/include/asm/assembler.h, into 'lspush' and 'lspull'.
> |     That eliminates name conflict between 'push' logical shift macro
> |     and 'push' instruction mnemonic. That allows assembler.h to be
> |     included in .S files that use 'push' instruction.
> |
> |     Suggested-by: Will Deacon <will.deacon@arm.com>
> |     Signed-off-by: Victor Kamensky <victor.kamensky@linaro.org>
> |     Acked-by: Nicolas Pitre <nico@linaro.org>
> |     Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/include/asm/assembler.h |  8 ++++----
>  arch/arm/lib32/copy_template.S   | 36 ++++++++++++++++++------------------
>  arch/arm/lib32/io-readsl.S       | 12 ++++++------
>  arch/arm/lib32/io-writesl.S      | 12 ++++++------
>  4 files changed, 34 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
> index 5db0f692ee..4e7ad57170 100644
> --- a/arch/arm/include/asm/assembler.h
> +++ b/arch/arm/include/asm/assembler.h
> @@ -20,8 +20,8 @@
>   * Endian independent macros for shifting bytes within registers.
>   */
>  #ifndef __ARMEB__
> -#define pull            lsr
> -#define push            lsl
> +#define lspull          lsr
> +#define lspush          lsl
>  #define get_byte_0      lsl #0
>  #define get_byte_1	lsr #8
>  #define get_byte_2	lsr #16
> @@ -31,8 +31,8 @@
>  #define put_byte_2	lsl #16
>  #define put_byte_3	lsl #24
>  #else
> -#define pull            lsl
> -#define push            lsr
> +#define lspull          lsl
> +#define lspush          lsr
>  #define get_byte_0	lsr #24
>  #define get_byte_1	lsr #16
>  #define get_byte_2	lsr #8
> diff --git a/arch/arm/lib32/copy_template.S b/arch/arm/lib32/copy_template.S
> index f66cd6e667..897e3db3ff 100644
> --- a/arch/arm/lib32/copy_template.S
> +++ b/arch/arm/lib32/copy_template.S
> @@ -192,24 +192,24 @@
>  
>  12:	PLD(	pld	[r1, #124]		)
>  13:		ldr4w	r1, r4, r5, r6, r7, abort=19f
> -		mov	r3, lr, pull #\pull
> +		mov	r3, lr, lspull #\pull
>  		subs	r2, r2, #32
>  		ldr4w	r1, r8, r9, ip, lr, abort=19f
> -		orr	r3, r3, r4, push #\push
> -		mov	r4, r4, pull #\pull
> -		orr	r4, r4, r5, push #\push
> -		mov	r5, r5, pull #\pull
> -		orr	r5, r5, r6, push #\push
> -		mov	r6, r6, pull #\pull
> -		orr	r6, r6, r7, push #\push
> -		mov	r7, r7, pull #\pull
> -		orr	r7, r7, r8, push #\push
> -		mov	r8, r8, pull #\pull
> -		orr	r8, r8, r9, push #\push
> -		mov	r9, r9, pull #\pull
> -		orr	r9, r9, ip, push #\push
> -		mov	ip, ip, pull #\pull
> -		orr	ip, ip, lr, push #\push
> +		orr	r3, r3, r4, lspush #\push
> +		mov	r4, r4, lspull #\pull
> +		orr	r4, r4, r5, lspush #\push
> +		mov	r5, r5, lspull #\pull
> +		orr	r5, r5, r6, lspush #\push
> +		mov	r6, r6, lspull #\pull
> +		orr	r6, r6, r7, lspush #\push
> +		mov	r7, r7, lspull #\pull
> +		orr	r7, r7, r8, lspush #\push
> +		mov	r8, r8, lspull #\pull
> +		orr	r8, r8, r9, lspush #\push
> +		mov	r9, r9, lspull #\pull
> +		orr	r9, r9, ip, lspush #\push
> +		mov	ip, ip, lspull #\pull
> +		orr	ip, ip, lr, lspush #\push
>  		str8w	r0, r3, r4, r5, r6, r7, r8, r9, ip, , abort=19f
>  		bge	12b
>  	PLD(	cmn	r2, #96			)
> @@ -220,10 +220,10 @@
>  14:		ands	ip, r2, #28
>  		beq	16f
>  
> -15:		mov	r3, lr, pull #\pull
> +15:		mov	r3, lr, lspull #\pull
>  		ldr1w	r1, lr, abort=21f
>  		subs	ip, ip, #4
> -		orr	r3, r3, lr, push #\push
> +		orr	r3, r3, lr, lspush #\push
>  		str1w	r0, r3, abort=21f
>  		bgt	15b
>  	CALGN(	cmp	r2, #0			)
> diff --git a/arch/arm/lib32/io-readsl.S b/arch/arm/lib32/io-readsl.S
> index e1855fd636..7bcd0d45bc 100644
> --- a/arch/arm/lib32/io-readsl.S
> +++ b/arch/arm/lib32/io-readsl.S
> @@ -46,25 +46,25 @@ ENTRY(__raw_readsl)
>  		strb	ip, [r1], #1
>  
>  4:		subs	r2, r2, #1
> -		mov	ip, r3, pull #24
> +		mov	ip, r3, lspull #24
>  		ldrne	r3, [r0]
> -		orrne	ip, ip, r3, push #8
> +		orrne	ip, ip, r3, lspush #8
>  		strne	ip, [r1], #4
>  		bne	4b
>  		b	8f
>  
>  5:		subs	r2, r2, #1
> -		mov	ip, r3, pull #16
> +		mov	ip, r3, lspull #16
>  		ldrne	r3, [r0]
> -		orrne	ip, ip, r3, push #16
> +		orrne	ip, ip, r3, lspush #16
>  		strne	ip, [r1], #4
>  		bne	5b
>  		b	7f
>  
>  6:		subs	r2, r2, #1
> -		mov	ip, r3, pull #8
> +		mov	ip, r3, lspull #8
>  		ldrne	r3, [r0]
> -		orrne	ip, ip, r3, push #24
> +		orrne	ip, ip, r3, lspush #24
>  		strne	ip, [r1], #4
>  		bne	6b
>  
> diff --git a/arch/arm/lib32/io-writesl.S b/arch/arm/lib32/io-writesl.S
> index ed91ae19b7..61164234de 100644
> --- a/arch/arm/lib32/io-writesl.S
> +++ b/arch/arm/lib32/io-writesl.S
> @@ -40,26 +40,26 @@ ENTRY(__raw_writesl)
>  		blt	5f
>  		bgt	6f
>  
> -4:		mov	ip, r3, pull #16
> +4:		mov	ip, r3, lspull #16
>  		ldr	r3, [r1], #4
>  		subs	r2, r2, #1
> -		orr	ip, ip, r3, push #16
> +		orr	ip, ip, r3, lspush #16
>  		str	ip, [r0]
>  		bne	4b
>  		mov	pc, lr
>  
> -5:		mov	ip, r3, pull #8
> +5:		mov	ip, r3, lspull #8
>  		ldr	r3, [r1], #4
>  		subs	r2, r2, #1
> -		orr	ip, ip, r3, push #24
> +		orr	ip, ip, r3, lspush #24
>  		str	ip, [r0]
>  		bne	5b
>  		mov	pc, lr
>  
> -6:		mov	ip, r3, pull #24
> +6:		mov	ip, r3, lspull #24
>  		ldr	r3, [r1], #4
>  		subs	r2, r2, #1
> -		orr	ip, ip, r3, push #8
> +		orr	ip, ip, r3, lspush #8
>  		str	ip, [r0]
>  		bne	6b
>  		mov	pc, lr
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


