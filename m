Delivery-date: Mon, 10 Jan 2022 12:01:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6sQX-00G26V-7S
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 12:01:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6sQV-0003In-Kx
	for lore@pengutronix.de; Mon, 10 Jan 2022 12:01:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjXmh1qrw0yxxsOA/hhand8ADMY1883M5qDV0Lh3VWQ=; b=bbQOj01UcMsvh/
	vmMET2Zkw1as2F5TrgIJ3u9X7yePeDdzuNem46bYRHwS//R5HiBOTUh1MBZ2DQbHK3BHsc8Tv+9L2
	OR3ZrNxKvKDb0xF8/qKdCm/p5IRTJBc0Jl3TbPcw6jcEuR9FpY58CWuX8LWXFRdbM3V2NuX5jvM/e
	zSeIiZASNQta0yu4LFZDcykBWDRGRKu4ybM2B8KqCnfjtguqEa9qgL2uimCVdttExluUuJbPugSam
	WjVDb6szwifc6l8QCjKU6qabM3AFDUTN6rPOsq23P3maZtoMdqUygHzTEXrjOaPY8XolxQkC3NtjS
	U/5jJETIxrPFVSbhYMzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6sP5-00Azfu-JG; Mon, 10 Jan 2022 10:59:55 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6sOz-00Aze3-S7
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 10:59:51 +0000
Received: by mail-lf1-x12a.google.com with SMTP id i31so42765766lfv.10
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 02:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U/0YqqOz5jTLfas9hIKuinONfidlhrsY89qoVNJ1VTo=;
 b=UBX3B2sRSmMEAL0NJUGMX6vOd+osI334XpY5rGWA8CQ4+qk945aYXRYFCJxIxwatXr
 I19+qx172F+QFSwq5DTN7plD3R7BMk0wQgW32yBcyBQ6Yw1bdQaiNxSxYJHYO+4c5J3n
 k8wuS7iZZz+U02dTGQsV0SlopEBoIoG4k+Jo4/3rnfSWmr4zL8rMU/FZktd6533kRVhX
 2lNI3VkjJT6nUwyBGq3ttlnVphSTErWw1NBm52PPDyfHm3mWJlt2O34Pw9oSgnDiCop+
 YjKih0P8G7GVzZck4JVbjCUFPxzsWd1HLVgZjRv/M8xFP80dzpN9t1p8ovaAw+1xMCvG
 lXow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U/0YqqOz5jTLfas9hIKuinONfidlhrsY89qoVNJ1VTo=;
 b=7vFzLP8bdnAPjYjomex0vl/mY0H0i2FeKpG2naoLxetK1oESH1bEzNh8koEekQfVWP
 RIQ7mYlTMUrqW52RjvWI0MBeauGQ/TLjzas8egsN0iF4xYecTfcGQGHzMN6Y0Fn+ieJb
 5AKBgPixwrsOpBgLDDgAYUpkjbk/sKwhsVISSp6vVsaQ0eKryy5EdmDTPdYAPE/vzgve
 dknGQ8S75+maGLlDWEkIbCp2j0752qSpDj5ejT4F+eLipWIkLWQYSGcZ104ZBq/9hvkj
 8ZKzIm3/lWTCcDn9jwQJ/CD+bG7Vt/HuctXOFVM/YD8oyMCSXdn2E9AF4jplmhR1eKHL
 O89g==
X-Gm-Message-State: AOAM531/39O+nQ2CqoNG341rD6UXRPoi4sgHCVZL9eTItNFWNOdmTwDe
 99z7PnYGbJqZVf9W8vHbZTrhQc3sn8I=
X-Google-Smtp-Source: ABdhPJxwW3f9wax46xqOVLLCOx/CyArk7Ic9a6KoR1KiM+ZzEaRyWlnxHgwXAet0sjr9ZJ2z5F8Njw==
X-Received: by 2002:a05:651c:1028:: with SMTP id
 w8mr163979ljm.231.1641812387445; 
 Mon, 10 Jan 2022 02:59:47 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id g5sm551566lfv.49.2022.01.10.02.59.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jan 2022 02:59:46 -0800 (PST)
Date: Mon, 10 Jan 2022 13:59:46 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-Id: <20220110135946.772f42aea56fedc19c68c2d8@gmail.com>
In-Reply-To: <6136d698-30cd-12a7-58e4-a6598ff3a86e@pengutronix.de>
References: <20220108171524.587144-1-a.fatoum@pengutronix.de>
 <20220108171524.587144-7-a.fatoum@pengutronix.de>
 <6136d698-30cd-12a7-58e4-a6598ff3a86e@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_025949_937089_4D7EE1CF 
X-CRM114-Status: GOOD (  24.90  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/9] RISC-V: don't use x8/s0/fp in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, 8 Jan 2022 19:25:03 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> Hello Antony,
> =

> On 08.01.22 18:15, Ahmad Fatoum wrote:
> > Free up the register to allow building a configuration with x8/s0 used
> > as the frame pointer.
> > =

> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  arch/riscv/include/asm/debug_ll_litex.h   | 12 +++---
> >  arch/riscv/include/asm/debug_ll_ns16550.h |  8 ++--
> >  arch/riscv/include/asm/riscv_nmon.h       | 50 +++++++++++------------
> =

> I just bumped the s register: s2 -> s3, s1 -> s2, s0 -> s1 to
> clear s0. Is that ok?

I suppose that there is no problem if nmon still works under qemu.


> >  3 files changed, 35 insertions(+), 35 deletions(-)
> > =

> > diff --git a/arch/riscv/include/asm/debug_ll_litex.h b/arch/riscv/inclu=
de/asm/debug_ll_litex.h
> > index 2fcdd9b0ec3e..295477fc1010 100644
> > --- a/arch/riscv/include/asm/debug_ll_litex.h
> > +++ b/arch/riscv/include/asm/debug_ll_litex.h
> > @@ -90,11 +90,11 @@ static inline void PUTC_LL(char ch)
> >  	li	t0, DEBUG_LL_UART_ADDR
> >  =

> >  	/* get line status and check for data present */
> > -	lbu	s0, UART_RXEMPTY(t0)
> > -	bnez    s0, 243f
> > -	li	s0, 1
> > +	lbu	s1, UART_RXEMPTY(t0)
> > +	bnez    s1, 243f
> > +	li	s1, 1
> >  	j	244f
> > -243:	li	s0, 0
> > +243:	li	s1, 0
> >  244:	nop
> >  #endif /* CONFIG_DEBUG_LL */
> >  .endm
> > @@ -109,10 +109,10 @@ static inline void PUTC_LL(char ch)
> >  	debug_ll_tstc
> >  =

> >  	/* try again */
> > -	beqz	s0, 204b
> > +	beqz	s1, 204b
> >  =

> >  	/* read a character */
> > -	lb	s0, UART_RXTX(t0)
> > +	lb	s1, UART_RXTX(t0)
> >  	li      t1, UART_EV_RX
> >  	sb	t1, UART_EV_PENDING(t0)
> >  =

> > diff --git a/arch/riscv/include/asm/debug_ll_ns16550.h b/arch/riscv/inc=
lude/asm/debug_ll_ns16550.h
> > index e208ef4fb1e1..47f0be328ce8 100644
> > --- a/arch/riscv/include/asm/debug_ll_ns16550.h
> > +++ b/arch/riscv/include/asm/debug_ll_ns16550.h
> > @@ -143,8 +143,8 @@ static inline void debug_ll_ns16550_init(void)
> >  	li      t0, DEBUG_LL_UART_ADDR
> >  =

> >  	/* get line status and check for data present */
> > -	UART_REG_L	s0, UART_LSR(DEBUG_LL_UART_SHIFT)(t0)
> > -	andi	s0, s0, UART_LSR_DR
> > +	UART_REG_L	s1, UART_LSR(DEBUG_LL_UART_SHIFT)(t0)
> > +	andi	s1, s1, UART_LSR_DR
> >  =

> >  #endif /* CONFIG_DEBUG_LL */
> >  .endm
> > @@ -159,10 +159,10 @@ static inline void debug_ll_ns16550_init(void)
> >  	debug_ll_tstc
> >  =

> >  	/* try again */
> > -	beqz	s0, 204b
> > +	beqz	s1, 204b
> >  =

> >  	/* read a character */
> > -	UART_REG_L	s0, UART_RBR(DEBUG_LL_UART_SHIFT)(t0)
> > +	UART_REG_L	s1, UART_RBR(DEBUG_LL_UART_SHIFT)(t0)
> >  =

> >  #endif /* CONFIG_DEBUG_LL */
> >  .endm
> > diff --git a/arch/riscv/include/asm/riscv_nmon.h b/arch/riscv/include/a=
sm/riscv_nmon.h
> > index 8a44e216d72d..3e349025febc 100644
> > --- a/arch/riscv/include/asm/riscv_nmon.h
> > +++ b/arch/riscv/include/asm/riscv_nmon.h
> > @@ -84,7 +84,7 @@ nmon_main:
> >  	debug_ll_getc
> >  =

> >  	li	a0, 'q'
> > -	bne	s0, a0, 3f
> > +	bne	s1, a0, 3f
> >  =

> >  	jal	a2, _nmon_outc_a0
> >  =

> > @@ -92,13 +92,13 @@ nmon_main:
> >  =

> >  3:
> >  	li	a0, 'd'
> > -	beq	s0, a0, nmon_cmd_d
> > +	beq	s1, a0, nmon_cmd_d
> >  =

> >  	li	a0, 'w'
> > -	beq	s0, a0, nmon_cmd_w
> > +	beq	s1, a0, nmon_cmd_w
> >  =

> >  	li	a0, 'g'
> > -	beq	s0, a0, nmon_cmd_g
> > +	beq	s1, a0, nmon_cmd_g
> >  =

> >  	j	nmon_main_help
> >  =

> > @@ -112,7 +112,7 @@ nmon_cmd_d:
> >  =

> >  	nmon_outs	msg_nl
> >  =

> > -	lw	a0, (s0)
> > +	lw	a0, (s1)
> >  	debug_ll_outhexw
> >  =

> >  	j	nmon_main
> > @@ -124,13 +124,13 @@ nmon_cmd_w:
> >  	jal	a2, _nmon_outc_a0
> >  =

> >  	jal	a2, _nmon_gethexw
> > -	move	s2, s0
> > +	move	s3, s1
> >  =

> >  	li	a0, ' '
> >  	jal	a2, _nmon_outc_a0
> >  	jal	a2, _nmon_gethexw
> >  =

> > -	sw	s0, 0(s2)
> > +	sw	s1, 0(s3)
> >  	j	nmon_main
> >  =

> >  nmon_cmd_g:
> > @@ -140,11 +140,11 @@ nmon_cmd_g:
> >  	jal	a2, _nmon_outc_a0
> >  =

> >  	jal	a2, _nmon_gethexw
> > -	move	s2, s0
> > +	move	s3, s1
> >  =

> >  	nmon_outs	msg_nl
> >  =

> > -	jalr	s2
> > +	jalr	s3
> >  	j	nmon_main
> >  =

> >  _nmon_outc_a0:
> > @@ -169,37 +169,37 @@ _nmon_gethexw:
> >  _get_hex_digit:
> >  	debug_ll_getc
> >  =

> > -	li	s1, CODE_ESC
> > -	beq	s0, s1, nmon_main
> > +	li	s2, CODE_ESC
> > +	beq	s1, s2, nmon_main
> >  =

> > -	li	s1, '0'
> > -	bge	s0, s1, 0f
> > +	li	s2, '0'
> > +	bge	s1, s2, 0f
> >  	j	_get_hex_digit
> >  =

> >  0:
> > -	li	s1, '9'
> > -	ble	s0, s1, 9f
> > +	li	s2, '9'
> > +	ble	s1, s2, 9f
> >  =

> > -	li	s1, 'f'
> > -	ble	s0, s1, 1f
> > +	li	s2, 'f'
> > +	ble	s1, s2, 1f
> >  	j	_get_hex_digit
> >  =

> >  1:
> > -	li	s1, 'a'
> > -	bge	s0, s1, 8f
> > +	li	s2, 'a'
> > +	bge	s1, s2, 8f
> >  =

> >  	j	_get_hex_digit
> >  =

> > -8: /* s0 \in {'a', 'b' ... 'f'} */
> > -	sub	a3, s0, s1
> > +8: /* s1 \in {'a', 'b' ... 'f'} */
> > +	sub	a3, s1, s2
> >  	addi	a3, a3, 0xa
> >  	j	0f
> >  =

> > -9: /* s0 \in {'0', '1' ... '9'} */
> > +9: /* s1 \in {'0', '1' ... '9'} */
> >  	li	a3, '0'
> > -	sub	a3, s0, a3
> > +	sub	a3, s1, a3
> >  =

> > -0:	move	a0, s0
> > +0:	move	a0, s1
> >  	debug_ll_outc_a0
> >  =

> >  	sll	t2, t2, 4
> > @@ -212,7 +212,7 @@ _get_hex_digit:
> >  	j	_get_hex_digit
> >  =

> >  0:
> > -	move	s0, t2
> > +	move	s1, t2
> >  =

> >  _nmon_jr_ra_exit:
> >  	jr	a2
> > =

> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

