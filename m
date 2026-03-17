Delivery-date: Tue, 17 Mar 2026 16:57:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WnQ-001r7R-07
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:57:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WnP-0003oC-89
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:57:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eYvkCATJj4VRAvihAX4A4jBUyUxuo/stFQlU1srLtC8=; b=jF6pu4LYfMg4KFNoLOKYela17F
	znP7sQGA7bImZLIjXV/XVq1vPmSOQV3Y69OGjxX661E0YNGNBPIhFKfrDeI3c9B48rGRPxtYVsgI/
	L1Z7bdk6LIe400tI4qyNUcCHvjFsdVsnjwv9TFXX+mSHJY8xN6xVJzGmxD3T8PW7v4nUq1tf9kF6A
	SvPwQSWFgWU8GM0Rv0dmhNDmu3moW6ClA5sjK96s8WYsiejtdbNXkB1yS+Ms3rDMo80qOHTws9qU4
	aGTJ+p6os2X4u88bCXirqgz7HeKPclvROwYNwv8qXwvynLJXA3+T5Mn5mm48xhmldF9WUdxN/nWev
	Xl447NzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Wmp-00000006llb-2BTz;
	Tue, 17 Mar 2026 15:56:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Wmn-00000006ll8-0fOT
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:56:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2Wmk-0003gV-2Z; Tue, 17 Mar 2026 16:56:46 +0100
Message-ID: <57f1a773-8ead-486d-88a3-415d96966918@pengutronix.de>
Date: Tue, 17 Mar 2026 16:56:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
 <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
 <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
 <aa_1-MX7hnrlJ3Ff@pengutronix.de>
 <ca6784d7-14c0-4716-8951-67d31fd40cdd@clermont.in2p3.fr>
 <abkZpI9KA1Q2A7VL@pengutronix.de>
 <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_085649_200900_3DB20E78 
X-CRM114-Status: GOOD (  28.90  )
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
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello David,

On 3/17/26 1:43 PM, David Picard wrote:
> I tested from the last but one commit on master, but I don't think it's
> a big deal.
> 
> Anyway, my board boots. Congrats!

I think you missed Sascha's patch at the end of his mail.

The change that has been dropped from next is a building block for a
boot time optimization and it would be very helpful to understand what
exactly broke at your side, so a revised patch can be applied.

To help with that, Sascha included a patch with some extra debug output.

Cheers,
Ahmad

> 
> David
> 
> Le 17/03/2026 à 10:06, Sascha Hauer a écrit :
>> Hi David,
>>
>> On Mon, Mar 16, 2026 at 02:21:37PM +0100, David Picard wrote:
>>> Hi,
>>>
>>> I would like this patches be reverted, since, despite the proposed
>>> fixes, it
>>> prevents the board arch/arm/boards/enclustra-sa2 to boot.
>> I reverted this patch for now, but nevertheless I'd like to understand
>> what's wrong with it.
>>
>>> With the option CONFIG_DEBUG_LL enabled, the output is:
>>>
>>> lowlevel init done
>>> SDRAM setup...
>>> SDRAM calibration...
>>> done
>>>
>>> Then, it hangs.
>> Could you apply the following patch to current master and see what the
>> output is?
>>
>> Thanks
>>   Sascha
>>
>> ----------------------------------8<-----------------------------------
>>
>>  From b784bc80756d127ae4a824ad235d4e113d5dcc1f Mon Sep 17 00:00:00 2001
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>> Date: Wed, 4 Mar 2026 08:53:22 +0100
>> Subject: [PATCH] ARM: setup_c: avoid clearing BSS twice
>>
>> Add a bss_cleared variable that is set after the first call to
>> setup_c(). On subsequent calls, the BSS clear is skipped to avoid
>> wiping already-initialized data.
>>
>> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
>> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Link: https://lore.barebox.org/20260304-arm-setup-c-v2-2-
>> d26af520ab03@pengutronix.de
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>   arch/arm/cpu/setupc_32.S  | 16 ++++++++++++++--
>>   arch/arm/cpu/setupc_64.S  | 15 +++++++++++++--
>>   arch/arm/cpu/uncompress.c | 15 +++++++++++++++
>>   3 files changed, 42 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
>> index fa31f94442..fadfc28ae1 100644
>> --- a/arch/arm/cpu/setupc_32.S
>> +++ b/arch/arm/cpu/setupc_32.S
>> @@ -7,18 +7,30 @@
>>   .section .text.setupc
>>     /*
>> - * setup_c: clear bss
>> + * setup_c: clear bss if not yet done
>>    */
>>   ENTRY(setup_c)
>>       push    {r4, lr}
>> +    ldr    r0, =bss_cleared
>> +    ldr    r1, [r0]
>> +    cmp    r1, #0
>> +    bne    1f            /* skip if already done */
>>       ldr    r0, =__bss_start
>>       mov    r1, #0
>>       ldr    r2, =__bss_stop
>>       sub    r2, r2, r0
>>       bl    __memset        /* clear bss */
>> -    pop    {r4, pc}
>> +    ldr    r0, =bss_cleared
>> +    mov    r1, #1
>> +    str    r1, [r0]        /* mark bss cleared */
>> +1:    pop    {r4, pc}
>>   ENDPROC(setup_c)
>>   +.section .data.bss_cleared
>> +.balign 4
>> +bss_cleared:
>> +    .word     0
>> +
>>   /*
>>    * void relocate_to_adr(unsigned long targetadr)
>>    *
>> diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
>> index 18ab7ff3fe..a0767c5136 100644
>> --- a/arch/arm/cpu/setupc_64.S
>> +++ b/arch/arm/cpu/setupc_64.S
>> @@ -7,19 +7,30 @@
>>   .section .text.setupc
>>     /*
>> - * setup_c: clear bss
>> + * setup_c: clear bss if not yet done
>>    */
>>   ENTRY(setup_c)
>> +    adr_l    x0, bss_cleared
>> +    ldr    w1, [x0]
>> +    cbnz    w1, 1f            /* skip if already done */
>>       mov    x15, x30
>>       adr_l    x0, __bss_start
>>       mov    x1, #0
>>       adr_l    x2, __bss_stop
>>       sub    x2, x2, x0
>>       bl    __memset        /* clear bss */
>> +    adr_l    x0, bss_cleared
>> +    mov    w1, #1
>> +    str    w1, [x0]        /* mark bss cleared */
>>       mov    x30, x15
>> -    ret
>> +1:    ret
>>   ENDPROC(setup_c)
>>   +.section .data.bss_cleared
>> +.balign 4
>> +bss_cleared:
>> +    .word     0
>> +
>>   /*
>>    * void relocate_to_adr(unsigned long targetadr)
>>    *
>> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
>> index 38f7dbc113..bde0f2a0a5 100644
>> --- a/arch/arm/cpu/uncompress.c
>> +++ b/arch/arm/cpu/uncompress.c
>> @@ -50,6 +50,15 @@ void __noreturn barebox_pbl_start(unsigned long
>> membase, unsigned long memsize,
>>       pg_start = runtime_address(input_data);
>>       pg_end = runtime_address(input_data_end);
>>   +    puthex_ll((unsigned long)pg_start); putc_ll('\r'); putc_ll('\n');
>> +    puthex_ll((unsigned long)pg_end); putc_ll('\r'); putc_ll('\n');
>> +    puthex_ll((unsigned long)pc); putc_ll('\r'); putc_ll('\n');
>> +    puthex_ll(membase); putc_ll('\r'); putc_ll('\n');
>> +    puthex_ll(memsize); putc_ll('\r'); putc_ll('\n');
>> +    puthex_ll((unsigned long)&__bss_start); putc_ll('\r');
>> putc_ll('\n');
>> +    puthex_ll((unsigned long)&__bss_stop); putc_ll('\r'); putc_ll('\n');
>> +    puthex_ll((unsigned long)&__image_end); putc_ll('\r');
>> putc_ll('\n');
>> +
>>       /*
>>        * If we run from inside the memory just relocate the binary
>>        * to the current address. Otherwise it may be a readonly location.
>> @@ -60,11 +69,17 @@ void __noreturn barebox_pbl_start(unsigned long
>> membase, unsigned long memsize,
>>       else
>>           relocate_to_adr(membase);
>>   +    putc_ll('A');
>> +
>>       pg_len = pg_end - pg_start;
>>       uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len
>> - 4));
>>   +    putc_ll('B');
>> +
>>       setup_c();
>>   +    putc_ll('C');
>> +
>>       pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>>         arm_pbl_init_exceptions();
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



