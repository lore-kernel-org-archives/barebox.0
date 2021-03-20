Delivery-date: Sat, 20 Mar 2021 08:50:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNWNk-0000Ef-Jb
	for lore@lore.pengutronix.de; Sat, 20 Mar 2021 08:50:48 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNWNg-0007C6-5L
	for lore@pengutronix.de; Sat, 20 Mar 2021 08:50:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PNUYeQ9BKyggbRuETMpTdA6EEx6DrDxTvaVjk7cOKbg=; b=TyErj03bF4YcBBXAIJSqgShyD
	BiUivheNVkd7J7dHxqjZx8ElOvvQEV5U5YIYkZXr2AStHPjG7DNET4MLtUM5d90AIS1xE8biWmY0q
	qPAh1cQF+QXJhp7v545DEFx7WWwnHMeFF8M8fZKjJMv6SWg54xWqqHTCj3QbgmlCCMfNuRGYOWLFM
	EvaRQLnqSjz2SoNl2d6sim3S+/a0X4ymQbCLEmnRuOe+NdrxFzr8WjrUvDRIPXOFyZcJ1ytue8xkF
	2WpNqVaPWBh1z0yfrrI7bQ9S40qBNDb2VY2LlLrE0EK/d4veVA2Nrgcp+Ws4nrbty5mwvoJcBE8jV
	5F7U3K9SA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNWMI-008d5l-Pv; Sat, 20 Mar 2021 07:49:18 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNWMC-008d5B-Lb
 for barebox@lists.infradead.org; Sat, 20 Mar 2021 07:49:14 +0000
Received: by mail-lf1-x12c.google.com with SMTP id n138so13537652lfa.3
 for <barebox@lists.infradead.org>; Sat, 20 Mar 2021 00:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=393UFWAtq7vbnUfi5gsk/5ZwSZjxQC2/u5LINsBvKKo=;
 b=P8tghehUTxa1JhXoXb2p7ZJTGBKqdNNggkbSiVWl04xZUb6HuRTtPDPLPHVoKRbzwr
 PzdAbJxmDiknqJ4PQYy8LZqNWjoE/DxOTU4ljxoEeXXFVM/kAhm7Qj9T5DYkh1Lkq6Bm
 +CK168aVHHxUDJVlBsjXEPm46j6xdgm3tBzxgYc/EqpLQkOLYWVRl3UdrhUIhXBPTIrN
 aEfUW47eZSC+NMdhPQQSl06Hulm92/z02KrGwpJET1WawTht1P+hrf4D/41xu++Jr9op
 X1YFxyEASsYFWpy7w/1rydnb6JsEWlNlO7I2ltoc0aJVA7YNk2j97TPodOmHhs7he+cl
 6+MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=393UFWAtq7vbnUfi5gsk/5ZwSZjxQC2/u5LINsBvKKo=;
 b=T1dqF1PqAk+9091T+qcyDjHwCkqV0/xZ/54dn1XGrFhIiM0wDCDvU8N90FoJxaqzGa
 TzqsVGwFfenJtqH5BQQ2db5B+qaKZ3gpsW6Z5WsyPfc09yndQGO6E1Kb5t5tHTSGMjRl
 Eh9emzY3zRkTp5abiwiouoaFfxRKcq7tLi74LLS00XKwnbcVd9HKqn8o7kuAVpalmyTP
 IAG0gYrvthPZPJ1NTbn1WW94/tUvq/nDWJgww1IQVCkpS97EkpQSV2vHAeM6he5JUTrA
 sA4z1n9egwbAXCYwzf9VnR1ZnhOEYWvfLa1K3wvhY4DvwYPCEUPe8HfMEDr00bDFCgln
 f3+w==
X-Gm-Message-State: AOAM530JKbUGIYM9gNmqd3kg7Sa+OA1+p9DuLXDFfMLVJ2DojD5AvNnV
 ZIumNMeEuKnXsevFItpr1LI=
X-Google-Smtp-Source: ABdhPJyZtaFIYxN9ewpTZ50f0C5vuabAhom8z+NV8iFQ7/SG1pKRcf7L/p89/IOhB7c1GtK0KvdFQw==
X-Received: by 2002:a05:6512:22c8:: with SMTP id
 g8mr3170894lfu.388.1616226551928; 
 Sat, 20 Mar 2021 00:49:11 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id o22sm1017574ljh.31.2021.03.20.00.49.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 20 Mar 2021 00:49:11 -0700 (PDT)
Date: Sat, 20 Mar 2021 10:49:10 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-Id: <20210320104910.c14dc0ab27d06e653c29e1c1@gmail.com>
In-Reply-To: <20210316080505.19361-15-a.fatoum@pengutronix.de>
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
 <20210316080505.19361-15-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210320_074913_004923_6D109F3A 
X-CRM114-Status: GOOD (  19.43  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 16 Mar 2021 09:04:59 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> We now have everything in place to migrate erizo to PBL.
> As currently, this is the only board, we can drop all non-PBL support
> in the same go.
...
> diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo=
/lowlevel.c
> index f9c640c1123f..d9edb530b746 100644
> --- a/arch/riscv/boards/erizo/lowlevel.c
> +++ b/arch/riscv/boards/erizo/lowlevel.c
> @@ -1,35 +1,18 @@
>  // SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
>  =

>  #include <common.h>
> -#include <memory.h>
> -#include <asm-generic/memory_layout.h>
> -#include <asm/sections.h>
> +#include <asm/barebox-riscv.h>
> +#include <debug_ll.h>
>  =

> -void main_entry(void);
> -
> -/**
> - * Called plainly from assembler code
> - *
> - * @note The C environment isn't initialized yet
> - */
> -void main_entry(void)
> +ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
>  {
> -	/* clear the BSS first */
> -	memset(__bss_start, 0x00, __bss_stop - __bss_start);
> +	extern char __dtb_z_erizo_generic_start[];
> +
> +	debug_ll_ns16550_init();
> +	putc_ll('>');
>  =

> -	mem_malloc_init((void *)MALLOC_BASE,
> -			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
> +	/* On POR, we are running from read-only memory here. */
>  =

> -	start_barebox();
> +	barebox_riscv_entry(0x80000000, SZ_8M,
> +			    __dtb_z_erizo_generic_start + get_runtime_offset());
>  }


Let's see first instructions of resulting barebox-erizo-generic.img image:

  barebox$ xxd -l 16 -e -g 4 ./images/barebox-erizo-generic.img
  00000000: ff010113 00112623 900007b7 08700713  ....#&........p.

one can disassembly it:

  barebox$ riscv64-linux-gnu-objdump -D images/start_erizo_generic.pbl | he=
ad -n 9

  images/start_erizo_generic.pbl:     file format elf32-littleriscv


  Disassembly of section .text:

  00000000 <start_erizo_generic>:
     0:	ff010113          	addi	sp,sp,-16
     4:	00112623          	sw	ra,12(sp)


In general case 'sp' is in indeterminate state at start.
But despite this we use 'sp'-based address
for storing 'ra' register in memory! (sw ra,12(sp))

This behaviour can be fixed with adding __naked to ENTRY_FUNCTION macro def=
inition:

--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -78,7 +78,7 @@ static inline unsigned long riscv_mem_barebox_image(unsig=
ned long membase,
 =

 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)         \
        void name (ulong a0, ulong a1, ulong a2);       \
-       void __section(.text_head_entry_##name) name (ulong a0, ulong a1, u=
long a2)
+       void __section(.text_head_entry_##name) __naked name (ulong a0, ulo=
ng a1, ulong a2)
 =

 /*
  * When using compressed images in conjunction with relocatable images

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

