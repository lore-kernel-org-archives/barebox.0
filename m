Delivery-date: Tue, 03 Jun 2025 12:48:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMPC4-003HRv-09
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 12:48:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMPC3-00088I-57
	for lore@pengutronix.de; Tue, 03 Jun 2025 12:48:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cQwGuphJPAU0De6o8ZItldsGISgguQOn5llHm6fOgyo=; b=LumAgsQILk6yNu4Eck086/Uzng
	29U2RXHUeBLl7rpU28/zTOXdbeU3Ee+gw+Thi3BHbsJ19/PeLyUT2nrU5apTz4BMT1aGMZEhR25B6
	Olz2X11AXHLe8rLEKrxe2hhqKIZr6s+pEyQj12XKBAbVZdP1MgYyMZJ3vGmtXyoa2QZoXi3CFtMJE
	Gb6mY8vvFzyh+wwiTGl6N7WBli0wwV9rfERzzy9YlneodzW9LwL56Ye7kiISDbIKO9cTPwRbsQIWY
	2FlAIs0PjjYPWH25+gG/Y2Hvt2q1V6lEGODL3jVArPFjopBGFV+lVJ7jHYRZQXGcP9WN1GOgo3EsK
	G1wqen/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPBS-0000000AhTb-3ZXD;
	Tue, 03 Jun 2025 10:47:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMOjS-0000000AfLx-1M8B
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 10:18:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uMOjR-0005Wn-2V; Tue, 03 Jun 2025 12:18:57 +0200
Message-ID: <6ce5c98c-4f8e-46f6-8dd3-7c911578feb8@pengutronix.de>
Date: Tue, 3 Jun 2025 12:18:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lucas Stach <l.stach@pengutronix.de>,
 Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
Cc: rouven.czerwinski@linaro.org
References: <20250603092044.1464440-1-f.pflug@pengutronix.de>
 <20250603092044.1464440-2-f.pflug@pengutronix.de>
 <569963942cf35755dfdf34b240c350986fda4727.camel@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <569963942cf35755dfdf34b240c350986fda4727.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_031858_374707_274D2F8A 
X-CRM114-Status: GOOD (  41.06  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: optee-early: invalidate caches before jump to
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Lucas,

On 6/3/25 11:57, Lucas Stach wrote:
> Hi Fabian,
> 
> Am Dienstag, dem 03.06.2025 um 11:20 +0200 schrieb Fabian Pflug:
>> The optee-early code was initially added for i.MX6UL. Trying to naively
>> enable it on an i.MX6Q boards was observed to cause spurious hangs on
>> return from OP-TEE to barebox.
>>
>> The root cause seems to be inadequate cache handling by OP-TEE: OP-TEE
>> enables the MMU and caches with it, but didn't take care to invalidate
>> all cache lines before enabling the MMU, which triggered the
>> aforementioned hangs.
>>
>> To paper over this issue, let's just invalidate the cache lines on the
>> barebox side instead before jumping to OP-TEE. This issue did likely not
>> affect the original i.MX6UL, because its Cortex-A7 has an architected L2
>> cache that's guaranteed zeroed (no dirty cache lines) on power-on reset,
>> unlike the i.MX6Q's Cortex-A9, where the external L2 cache powers on
>> with unpredictable content including the dirty bits.
>>
> The explanation here doesn't make too much sense to me. I don't think
> the outer L2 cache is even enabled at this point, but even if it were
> arm_early_mmu_cache_invalidate() only handles architected caches, so it
> wouldn't affect the PL310 on the i.MX6Q/DL.

You're right. I recalled issues that bit us in the past on the
Cortex-A9, but not on the A7 and took a wrong turn trying to rationalize
this change with a spotty recollection.

> The real issue with the Cortex A9 caches is that the tags aren't
> cleared on power-up, so some sets/ways may end up in "valid" state if
> not explicitly invalidated.

I see, thanks for the clarification. So the issue is with our handling
of the L1 cache instead.

> Thus any write to memory may get stuck in
> the cache, even if caching is disabled, as this knob only turns off 
> allocation in the cache, but doesn't prevent updates of such bogus
> valid lines.

Ok, so if CR_C is unset, the cache is still used when reading/writing,
provided that the cache line is valid.

> If you then proceed to invalidate the cache, you may
> discard data that has not yet reached DRAM. So IMO this fix here seems
> risky, as it assumes that there have been no writes to memory that are
> worth keeping before calling start_optee_early(). While this might be
> the case in the current implementation, this assumption is quite non-
> obvious to someone just looking at the individual functions.

Agreed. If the issue is with the valid and not the dirty bit,
invalidation at this location is incorrect.

> The stuck writes are also why OP-TEE is unable to handle this itself:
> any cache invalidation there would risk discarding writes from software
> running before OP-TEE. So the only way to handle this properly is to
> invalidate the caches before issuing any writes.

This makes me wonder though about the regular case without any OP-TEE as
we are already doing arm_early_mmu_cache_invalidate() inside
__barebox_arm_entry:

 - low level init code writes something to handoff object or to scratch
   area

 - The freshly written data ends up in (L1) cache as tag was valid

 - arm_early_mmu_cache_invalidate() discards these writes

 - The uncompressor or barebox proper ends up with corrupted data.

We don't have many objects that are accessed both before and after
arm_early_mmu_cache_invalidate, so maybe that's why we didn't run into
more problems?

> I guess it would be much better to simply have the
> arm_early_mmu_cache_invalidate() as part of the Cortex A9 lowlevel CPU
> initialization at the very start of the PBL entry.

We don't have a dedicated Cortex-A9 lowlevel entry function
unfortunately, just some for specific processors, e.g. the
imx6_cpu_lowlevel_init.

We could add CONFIG_CPU_CORTEX_A9, select it from the relevant SoC
options and depending on it, add the invalidation to
arm_cpu_lowlevel_init()? What do you think?

Thanks,
Ahmad


> 
> Regards,
> Lucas
> 
>> This means on e.g. the i.MX6UL, we will now do one extra cache invalidation
>> that's not needed. This should be negligible and we are already had an
>> unconditional invalidation in __barebox_arm_entry.
>>
>> Note that this is a different implementation than what we do on ARM64,
>> there we load TF-A before it jumps to OP-TEE and assuming
>> non-architected caches or caches with uninitialized content on power-on
>> to be a dying breed, our ARM64 implementation is likely not affected.
>>
>> Co-authored-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
>> ---
>>  arch/arm/lib32/optee-early.c | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>
>> diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
>> index 0cda0ab163..b1dba67d42 100644
>> --- a/arch/arm/lib32/optee-early.c
>> +++ b/arch/arm/lib32/optee-early.c
>> @@ -35,6 +35,19 @@ int start_optee_early(void *fdt, void *tee)
>>  	/* We use setjmp/longjmp here because OP-TEE clobbers most registers */
>>  	ret = setjmp(tee_buf);
>>  	if (ret == 0) {
>> +		/*
>> +		 * At least OP-TEE v4.1.0 seems to not invalidate all dirty cache
>> +		 * lines before enabling the MMU. This can lead to spurious hangs
>> +		 * on return to barebox on systems where there might be left-over
>> +		 * dirty cache lines, whether from BootROM or because L2 cache
>> +		 * is non-architected and powers on with unpredictable content
>> +		 * like is the case with PL310 on i.MX6Q.
>> +		 *
>> +		 * Let's invalidate the caches here, so board entry points need
>> +		 * not bother.
>> +		 */
>> +		arm_early_mmu_cache_invalidate();
>> +
>>  		tee_start(0, 0, fdt);
>>  		longjmp(tee_buf, 1);
>>  	}
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



