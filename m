Delivery-date: Tue, 03 Jun 2025 17:58:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMU2J-003M0K-1y
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 17:58:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMU2I-0000bW-TJ
	for lore@pengutronix.de; Tue, 03 Jun 2025 17:58:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kZF4/VFQCJYkK2dbrBRJR0vJ+uy/zotLIPhM/Ps3RiI=; b=VxMWHuAMBKhmysGi8MVKbVzGpy
	55AGoIfenVm0hcPaoVBOe+hBGNk+Q9wMoFungzpgUk9xcYgXStF5Aff18kuRXNKmC/QnWvrMY7+2L
	plLximYy3W8DvQkNZ9eK3oclwxuUDUV+RYhc0rplsubH8mNVdHNBwSyPXYrF8cMf76b+PMeIHXrJj
	Cjnxi7yWHLea4VmsFCGzK122f9XwjaeInLEcb9+Y795y3B/+jOOPQZWwSo29c4OCvqY67myI5fWi+
	qxxybHihWPf2PWRSvFRxMb6leajFC32GM+s9gHtgSLgkEr5f0Qz7XUH8wbw2y/vxWIBecljWrgsp6
	EMDVXiuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMU23-0000000BLtD-2GrO;
	Tue, 03 Jun 2025 15:58:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMSzg-0000000BCvz-3kgc
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 14:52:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uMSzf-0004ch-Nl; Tue, 03 Jun 2025 16:51:59 +0200
Message-ID: <f3f703ea-c7e6-4635-ace6-d5ccd0418c4f@pengutronix.de>
Date: Tue, 3 Jun 2025 16:51:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lucas Stach <l.stach@pengutronix.de>,
 Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
Cc: rouven.czerwinski@linaro.org
References: <20250603092044.1464440-1-f.pflug@pengutronix.de>
 <20250603092044.1464440-2-f.pflug@pengutronix.de>
 <569963942cf35755dfdf34b240c350986fda4727.camel@pengutronix.de>
 <6ce5c98c-4f8e-46f6-8dd3-7c911578feb8@pengutronix.de>
 <47261d55d72a6f34618ca9d4b86214f306a91f5a.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <47261d55d72a6f34618ca9d4b86214f306a91f5a.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_075200_945349_A665B1AD 
X-CRM114-Status: GOOD (  30.24  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: optee-early: invalidate caches before jump to
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Lucas,

On 6/3/25 16:47, Lucas Stach wrote:
> Am Dienstag, dem 03.06.2025 um 12:18 +0200 schrieb Ahmad Fatoum:
>> On 6/3/25 11:57, Lucas Stach wrote:
>> Ok, so if CR_C is unset, the cache is still used when reading/writing,
>> provided that the cache line is valid.
>>
> Exactly. Clearing CR_C disables cache allocation, but lookups in the
> cache still proceed as normal.

I hope to remember that this time. I am fairly sure you explained this
to me once before already...

>> We don't have many objects that are accessed both before and after
>> arm_early_mmu_cache_invalidate, so maybe that's why we didn't run into
>> more problems?
>>
> Yea, I would guess that the probability of hitting this issue with the
> handoff data, which isn't that big, is quite low. At least from the
> description above I think we can hit the same issues with the handoff
> data.

Ack.

>>> I guess it would be much better to simply have the
>>> arm_early_mmu_cache_invalidate() as part of the Cortex A9 lowlevel CPU
>>> initialization at the very start of the PBL entry.
>>
>> We don't have a dedicated Cortex-A9 lowlevel entry function
>> unfortunately, just some for specific processors, e.g. the
>> imx6_cpu_lowlevel_init.
>>
>> We could add CONFIG_CPU_CORTEX_A9, select it from the relevant SoC
>> options and depending on it, add the invalidation to
>> arm_cpu_lowlevel_init()? What do you think?
>>
> This would then trigger the invalidation even on systems that don't
> need it in case of a multiarch Barebox. There aren't that many Cortex
> A9 based SoCs supported in Barebox and all of them should have a SoC
> specific init function to apply the necessary workarounds, so I think
> it would be fine to call the cache invalidate from the SoC specific
> lowlevel init of those few SoCs?

Fair enough. How do we know we only need this for Cortex-A9 though?
Couldn't e.g. the Cortex-A8 also be affected?

Cheers,
Ahmad

> 
> Regards,
> Lucas
> 
>> Thanks,
>> Ahmad
>>
>>
>>>
>>> Regards,
>>> Lucas
>>>
>>>> This means on e.g. the i.MX6UL, we will now do one extra cache invalidation
>>>> that's not needed. This should be negligible and we are already had an
>>>> unconditional invalidation in __barebox_arm_entry.
>>>>
>>>> Note that this is a different implementation than what we do on ARM64,
>>>> there we load TF-A before it jumps to OP-TEE and assuming
>>>> non-architected caches or caches with uninitialized content on power-on
>>>> to be a dying breed, our ARM64 implementation is likely not affected.
>>>>
>>>> Co-authored-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
>>>> ---
>>>>  arch/arm/lib32/optee-early.c | 13 +++++++++++++
>>>>  1 file changed, 13 insertions(+)
>>>>
>>>> diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
>>>> index 0cda0ab163..b1dba67d42 100644
>>>> --- a/arch/arm/lib32/optee-early.c
>>>> +++ b/arch/arm/lib32/optee-early.c
>>>> @@ -35,6 +35,19 @@ int start_optee_early(void *fdt, void *tee)
>>>>  	/* We use setjmp/longjmp here because OP-TEE clobbers most registers */
>>>>  	ret = setjmp(tee_buf);
>>>>  	if (ret == 0) {
>>>> +		/*
>>>> +		 * At least OP-TEE v4.1.0 seems to not invalidate all dirty cache
>>>> +		 * lines before enabling the MMU. This can lead to spurious hangs
>>>> +		 * on return to barebox on systems where there might be left-over
>>>> +		 * dirty cache lines, whether from BootROM or because L2 cache
>>>> +		 * is non-architected and powers on with unpredictable content
>>>> +		 * like is the case with PL310 on i.MX6Q.
>>>> +		 *
>>>> +		 * Let's invalidate the caches here, so board entry points need
>>>> +		 * not bother.
>>>> +		 */
>>>> +		arm_early_mmu_cache_invalidate();
>>>> +
>>>>  		tee_start(0, 0, fdt);
>>>>  		longjmp(tee_buf, 1);
>>>>  	}
>>>
>>>
>>
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



