Delivery-date: Sun, 21 Mar 2021 16:23:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzvP-00028k-MM
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:23:31 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzvO-0003PA-Mp
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:23:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iOWgv76y6ZwmLCEpTeiPI/zC577V7dNwp1hX+2t+X+k=; b=nxiLbOAhuj357BwNNNhHI3/2q
	UEfNKt+fNb2inj30F3w6JyCt3MYlfrWM6/mU4f1MsRdqT5HcoO0gcCH3/xmIYywIp+I/cwb4kuW6V
	cI4bKc1VACJGm1rfG+QkT+E0acKlQCtQRapW+lvm85eeujtXQulBgCbLlIwPjoEHshOhuX7eqAzED
	vd53D4GThtwm8yjmnVBQ5RzTHKr2IJdj2ZYCa8SxQ4W5Npf0FDieUqK9J1ld8IUtlfVwBzgxmW06O
	t+QZHGBndSyxP+vKB05hVUqTQ0Q64+WqOA/gW7kOoli5BHZSAs3Qlk1lOSKqx3ooY5Sh1qnCN/lrR
	VLcNMpfNw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzsn-00A5La-Bu; Sun, 21 Mar 2021 15:20:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzoo-00A4FE-D6
 for barebox@desiato.infradead.org; Sun, 21 Mar 2021 15:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=piyZ3DtXDDc3zASX5ebHHoJjkpSmoHbq3CqOBzY9aXM=; b=Bb79N1O0HhJGFZONzyuIlFDw3I
 RRjNc/tFILIpN7SP5ugHJPUckVmO5XPIybOFhTopwyWXu3nGm3F2Sgw2dxB8NZ2KcgyMAT+nmf+36
 SJAaoytBSMJ6DYW7ucE38+sL++ZNN1/h+iwLUHkyeKsdFXwUkKJijw1lM3zZB4ebrXF5T3m5DHTWq
 FFB9brp8VzV6Qfg3hbAGstYwMpYEbeBjxZR/Lla+HZBbZAIbrYGj+qBSUFxl7HeGcM+TmkNHeZvoG
 OH24fdr7C7no72Z/yveH4FLRceavhaB7nn14etxEa6Ct2uLy8LXu4MaFL0bFWkJSgP1xfTYUZWCLx
 6pWeC08g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzof-007G4u-RX
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:16:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lNzof-0001Ow-DR; Sun, 21 Mar 2021 16:16:33 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
 <20210316080505.19361-15-a.fatoum@pengutronix.de>
 <20210320104910.c14dc0ab27d06e653c29e1c1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ab2f113f-757b-f8bb-d97e-bb812f719add@pengutronix.de>
Date: Sun, 21 Mar 2021 16:16:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210320104910.c14dc0ab27d06e653c29e1c1@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151635_894490_1FD178CF 
X-CRM114-Status: GOOD (  20.97  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 20.03.21 08:49, Antony Pavlov wrote:
> On Tue, 16 Mar 2021 09:04:59 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
>> We now have everything in place to migrate erizo to PBL.
>> As currently, this is the only board, we can drop all non-PBL support
>> in the same go.
> ...
>> diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
>> index f9c640c1123f..d9edb530b746 100644
>> --- a/arch/riscv/boards/erizo/lowlevel.c
>> +++ b/arch/riscv/boards/erizo/lowlevel.c
>> @@ -1,35 +1,18 @@
>>  // SPDX-License-Identifier: GPL-2.0-only
>> -/*
>> - * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
>> - *
>> - * This file is part of barebox.
>> - *
>> - * This program is distributed in the hope that it will be useful,
>> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> - * GNU General Public License for more details.
>> - *
>> - */
>>  
>>  #include <common.h>
>> -#include <memory.h>
>> -#include <asm-generic/memory_layout.h>
>> -#include <asm/sections.h>
>> +#include <asm/barebox-riscv.h>
>> +#include <debug_ll.h>
>>  
>> -void main_entry(void);
>> -
>> -/**
>> - * Called plainly from assembler code
>> - *
>> - * @note The C environment isn't initialized yet
>> - */
>> -void main_entry(void)
>> +ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
>>  {
>> -	/* clear the BSS first */
>> -	memset(__bss_start, 0x00, __bss_stop - __bss_start);
>> +	extern char __dtb_z_erizo_generic_start[];
>> +
>> +	debug_ll_ns16550_init();
>> +	putc_ll('>');
>>  
>> -	mem_malloc_init((void *)MALLOC_BASE,
>> -			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
>> +	/* On POR, we are running from read-only memory here. */
>>  
>> -	start_barebox();
>> +	barebox_riscv_entry(0x80000000, SZ_8M,
>> +			    __dtb_z_erizo_generic_start + get_runtime_offset());
>>  }
> 
> 
> Let's see first instructions of resulting barebox-erizo-generic.img image:
> 
>   barebox$ xxd -l 16 -e -g 4 ./images/barebox-erizo-generic.img
>   00000000: ff010113 00112623 900007b7 08700713  ....#&........p.
> 
> one can disassembly it:
> 
>   barebox$ riscv64-linux-gnu-objdump -D images/start_erizo_generic.pbl | head -n 9
> 
>   images/start_erizo_generic.pbl:     file format elf32-littleriscv
> 
> 
>   Disassembly of section .text:
> 
>   00000000 <start_erizo_generic>:
>      0:	ff010113          	addi	sp,sp,-16
>      4:	00112623          	sw	ra,12(sp)
> 
> 
> In general case 'sp' is in indeterminate state at start.
> But despite this we use 'sp'-based address
> for storing 'ra' register in memory! (sw ra,12(sp))
> 
> This behaviour can be fixed with adding __naked to ENTRY_FUNCTION macro definition:

Thank you. I did so in v3.

> 
> --- a/arch/riscv/include/asm/barebox-riscv.h
> +++ b/arch/riscv/include/asm/barebox-riscv.h
> @@ -78,7 +78,7 @@ static inline unsigned long riscv_mem_barebox_image(unsigned long membase,
>  
>  #define ENTRY_FUNCTION(name, arg0, arg1, arg2)         \
>         void name (ulong a0, ulong a1, ulong a2);       \
> -       void __section(.text_head_entry_##name) name (ulong a0, ulong a1, ulong a2)
> +       void __section(.text_head_entry_##name) __naked name (ulong a0, ulong a1, ulong a2)
>  
>  /*
>   * When using compressed images in conjunction with relocatable images
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

