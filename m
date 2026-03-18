Delivery-date: Wed, 18 Mar 2026 08:49:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2lf8-0026QN-2L
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 08:49:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2lf7-0005eZ-Ny
	for lore@pengutronix.de; Wed, 18 Mar 2026 08:49:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VB4r2OSXVM/jlbntppC72jc+6mxDWtsvw3iZhw5tv4A=; b=v1LMV0fWUMGHhePmusOHBjcxD2
	hAwusayOSvycjJMDGSci/wEAELIYPfQNkOrncuVt4gGCDZYwN7dvTtw5NR9cZsLJnGiOym/5oNZTI
	yczswixecEHrWtulP5ByQtaYJotaMzFSrL4yRRXiSVOuIdUMpuJSCIaD4pPdnko/Y/gdL4UcuVwg0
	6YJAiXy/M0ZbX61SuVfekqvzEReMS16TKY8ipHQUH/xuVmNpor2uJBrnd0tYy0X0PLdz4EAsCfjVh
	98b7wWID3JPYp2mvb3mLkBmfhFnHD1Uvo9v8LmSNxxCnwn8LuAT+kcM4j5wfKl67zVBTbYZOOAhh4
	btSXmTPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2led-00000007xJ2-2mia;
	Wed, 18 Mar 2026 07:49:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2leb-00000007xIu-1d5N
	for barebox@bombadil.infradead.org;
	Wed, 18 Mar 2026 07:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VB4r2OSXVM/jlbntppC72jc+6mxDWtsvw3iZhw5tv4A=; b=omntDfMjylZ4QakiB91ltEfur4
	HWOvRcYfUEQLwYeRfhoFgWxNDOo1vSV8iuc71RSq+GyYN8Ovz7r43HSmoGTYUvbZH85fP+5Nd3yoI
	mUiOCF/fjj4buvasUa9SbW7ZwgIIi9HZxAyOZIB+2DoRlSVSR0RoLSoYvqFhr97qhmhjX0Qnvz2J+
	OHyHSO+R9h1S5VEZMLhEVF13otGj3GaLbWZLFU1skRM7SOkpkMcDtNSWnvIk1ucDCWJgV40enoGEN
	IunWf4/ULKBLvKSU8W698IYv8qhLYbfpsUenYZRYhHfCWxlAWbDeapxxCn2gxNe4jZLglB/SbSfjN
	mRHXqOaQ==;
Received: from cczrelay02-placeholder.in2p3.fr ([134.158.66.152] helo=cczrelay04.in2p3.fr)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2leU-0000000Aajk-3EFI
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 07:49:16 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id 0D0BD8005D8;
	Wed, 18 Mar 2026 08:49:08 +0100 (CET)
Message-ID: <1f36feab-574b-4dc5-9a2d-4eb1da213d6f@clermont.in2p3.fr>
Date: Wed, 18 Mar 2026 08:49:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
 <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
 <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
 <aa_1-MX7hnrlJ3Ff@pengutronix.de>
 <ca6784d7-14c0-4716-8951-67d31fd40cdd@clermont.in2p3.fr>
 <abkZpI9KA1Q2A7VL@pengutronix.de>
 <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
 <57f1a773-8ead-486d-88a3-415d96966918@pengutronix.de>
 <e0c8e7e3-13d2-4f1d-a2f2-47e5d94c25cb@clermont.in2p3.fr>
 <9c45c9dd-757f-4a13-8b6d-34eccab8fc5b@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <9c45c9dd-757f-4a13-8b6d-34eccab8fc5b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_074914_937440_C376A5BA 
X-CRM114-Status: GOOD (  27.10  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

The boot log with CONFIG_DEBUG_LL enabled for 1st and 2nd stage: 
https://paste.debian.net/hidden/d82f6a59

David

Le 17/03/2026 à 17:11, Ahmad Fatoum a écrit :
> Hello David,
>
> On 3/17/26 5:03 PM, David Picard wrote:
>> I applied the patch on 36b7e6f4245cb29e3e95cd9e50bc49ad61ba9c2b.
>>
>> The boot log: https://paste.debian.net/hidden/7fa6ec69
> Is it possible to enable CONFIG_DEBUG_LL also in the first stage?
>
> I assume that's what was hanging with the patch applied, so debug output
> from there would be valuable.
>
> Thanks,
> Ahmad
>
>> David
>>
>>
>> Le 17/03/2026 à 16:56, Ahmad Fatoum a écrit :
>>> Hello David,
>>>
>>> On 3/17/26 1:43 PM, David Picard wrote:
>>>> I tested from the last but one commit on master, but I don't think it's
>>>> a big deal.
>>>>
>>>> Anyway, my board boots. Congrats!
>>> I think you missed Sascha's patch at the end of his mail.
>>>
>>> The change that has been dropped from next is a building block for a
>>> boot time optimization and it would be very helpful to understand what
>>> exactly broke at your side, so a revised patch can be applied.
>>>
>>> To help with that, Sascha included a patch with some extra debug output.
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>> David
>>>>
>>>> Le 17/03/2026 à 10:06, Sascha Hauer a écrit :
>>>>> Hi David,
>>>>>
>>>>> On Mon, Mar 16, 2026 at 02:21:37PM +0100, David Picard wrote:
>>>>>> Hi,
>>>>>>
>>>>>> I would like this patches be reverted, since, despite the proposed
>>>>>> fixes, it
>>>>>> prevents the board arch/arm/boards/enclustra-sa2 to boot.
>>>>> I reverted this patch for now, but nevertheless I'd like to understand
>>>>> what's wrong with it.
>>>>>
>>>>>> With the option CONFIG_DEBUG_LL enabled, the output is:
>>>>>>
>>>>>> lowlevel init done
>>>>>> SDRAM setup...
>>>>>> SDRAM calibration...
>>>>>> done
>>>>>>
>>>>>> Then, it hangs.
>>>>> Could you apply the following patch to current master and see what the
>>>>> output is?
>>>>>
>>>>> Thanks
>>>>>     Sascha
>>>>>
>>>>> ----------------------------------8<-----------------------------------
>>>>>
>>>>>    From b784bc80756d127ae4a824ad235d4e113d5dcc1f Mon Sep 17 00:00:00
>>>>> 2001
>>>>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>>>> Date: Wed, 4 Mar 2026 08:53:22 +0100
>>>>> Subject: [PATCH] ARM: setup_c: avoid clearing BSS twice
>>>>>
>>>>> Add a bss_cleared variable that is set after the first call to
>>>>> setup_c(). On subsequent calls, the BSS clear is skipped to avoid
>>>>> wiping already-initialized data.
>>>>>
>>>>> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
>>>>> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>> Link: https://lore.barebox.org/20260304-arm-setup-c-v2-2-
>>>>> d26af520ab03@pengutronix.de
>>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>>> ---
>>>>>     arch/arm/cpu/setupc_32.S  | 16 ++++++++++++++--
>>>>>     arch/arm/cpu/setupc_64.S  | 15 +++++++++++++--
>>>>>     arch/arm/cpu/uncompress.c | 15 +++++++++++++++
>>>>>     3 files changed, 42 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
>>>>> index fa31f94442..fadfc28ae1 100644
>>>>> --- a/arch/arm/cpu/setupc_32.S
>>>>> +++ b/arch/arm/cpu/setupc_32.S
>>>>> @@ -7,18 +7,30 @@
>>>>>     .section .text.setupc
>>>>>       /*
>>>>> - * setup_c: clear bss
>>>>> + * setup_c: clear bss if not yet done
>>>>>      */
>>>>>     ENTRY(setup_c)
>>>>>         push    {r4, lr}
>>>>> +    ldr    r0, =bss_cleared
>>>>> +    ldr    r1, [r0]
>>>>> +    cmp    r1, #0
>>>>> +    bne    1f            /* skip if already done */
>>>>>         ldr    r0, =__bss_start
>>>>>         mov    r1, #0
>>>>>         ldr    r2, =__bss_stop
>>>>>         sub    r2, r2, r0
>>>>>         bl    __memset        /* clear bss */
>>>>> -    pop    {r4, pc}
>>>>> +    ldr    r0, =bss_cleared
>>>>> +    mov    r1, #1
>>>>> +    str    r1, [r0]        /* mark bss cleared */
>>>>> +1:    pop    {r4, pc}
>>>>>     ENDPROC(setup_c)
>>>>>     +.section .data.bss_cleared
>>>>> +.balign 4
>>>>> +bss_cleared:
>>>>> +    .word     0
>>>>> +
>>>>>     /*
>>>>>      * void relocate_to_adr(unsigned long targetadr)
>>>>>      *
>>>>> diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
>>>>> index 18ab7ff3fe..a0767c5136 100644
>>>>> --- a/arch/arm/cpu/setupc_64.S
>>>>> +++ b/arch/arm/cpu/setupc_64.S
>>>>> @@ -7,19 +7,30 @@
>>>>>     .section .text.setupc
>>>>>       /*
>>>>> - * setup_c: clear bss
>>>>> + * setup_c: clear bss if not yet done
>>>>>      */
>>>>>     ENTRY(setup_c)
>>>>> +    adr_l    x0, bss_cleared
>>>>> +    ldr    w1, [x0]
>>>>> +    cbnz    w1, 1f            /* skip if already done */
>>>>>         mov    x15, x30
>>>>>         adr_l    x0, __bss_start
>>>>>         mov    x1, #0
>>>>>         adr_l    x2, __bss_stop
>>>>>         sub    x2, x2, x0
>>>>>         bl    __memset        /* clear bss */
>>>>> +    adr_l    x0, bss_cleared
>>>>> +    mov    w1, #1
>>>>> +    str    w1, [x0]        /* mark bss cleared */
>>>>>         mov    x30, x15
>>>>> -    ret
>>>>> +1:    ret
>>>>>     ENDPROC(setup_c)
>>>>>     +.section .data.bss_cleared
>>>>> +.balign 4
>>>>> +bss_cleared:
>>>>> +    .word     0
>>>>> +
>>>>>     /*
>>>>>      * void relocate_to_adr(unsigned long targetadr)
>>>>>      *
>>>>> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
>>>>> index 38f7dbc113..bde0f2a0a5 100644
>>>>> --- a/arch/arm/cpu/uncompress.c
>>>>> +++ b/arch/arm/cpu/uncompress.c
>>>>> @@ -50,6 +50,15 @@ void __noreturn barebox_pbl_start(unsigned long
>>>>> membase, unsigned long memsize,
>>>>>         pg_start = runtime_address(input_data);
>>>>>         pg_end = runtime_address(input_data_end);
>>>>>     +    puthex_ll((unsigned long)pg_start); putc_ll('\r');
>>>>> putc_ll('\n');
>>>>> +    puthex_ll((unsigned long)pg_end); putc_ll('\r'); putc_ll('\n');
>>>>> +    puthex_ll((unsigned long)pc); putc_ll('\r'); putc_ll('\n');
>>>>> +    puthex_ll(membase); putc_ll('\r'); putc_ll('\n');
>>>>> +    puthex_ll(memsize); putc_ll('\r'); putc_ll('\n');
>>>>> +    puthex_ll((unsigned long)&__bss_start); putc_ll('\r');
>>>>> putc_ll('\n');
>>>>> +    puthex_ll((unsigned long)&__bss_stop); putc_ll('\r');
>>>>> putc_ll('\n');
>>>>> +    puthex_ll((unsigned long)&__image_end); putc_ll('\r');
>>>>> putc_ll('\n');
>>>>> +
>>>>>         /*
>>>>>          * If we run from inside the memory just relocate the binary
>>>>>          * to the current address. Otherwise it may be a readonly
>>>>> location.
>>>>> @@ -60,11 +69,17 @@ void __noreturn barebox_pbl_start(unsigned long
>>>>> membase, unsigned long memsize,
>>>>>         else
>>>>>             relocate_to_adr(membase);
>>>>>     +    putc_ll('A');
>>>>> +
>>>>>         pg_len = pg_end - pg_start;
>>>>>         uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len
>>>>> - 4));
>>>>>     +    putc_ll('B');
>>>>> +
>>>>>         setup_c();
>>>>>     +    putc_ll('C');
>>>>> +
>>>>>         pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>>>>>           arm_pbl_init_exceptions();
>>>>
>>



