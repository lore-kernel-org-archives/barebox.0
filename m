Delivery-date: Thu, 22 Jan 2026 15:24:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivbz-0049Qz-0Z
	for lore@lore.pengutronix.de;
	Thu, 22 Jan 2026 15:24:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivby-0004QW-2d
	for lore@pengutronix.de; Thu, 22 Jan 2026 15:24:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y6NrqXsmFVwx7r0HfHMSS8CfeQr1/FoUAWHRFYB3Rb8=; b=M7bPnEtsu+4vWsAq7hhmbymY2S
	tpJK1/ycixlzk7kJ7pgWy5wT5lkfGn6IH+FvrpC6w0FvWFMbBIQHzDpcK8QEhOa2dfCVOVCHPGDSB
	MDt0PON0/X64VpybvGtnYHG0iTvBeULluZgEvpLG/WwkETSu94ahFBHrvna5xt7kZGV2v+7VW0p52
	LgJN1nPuJcvIYxXbBL6CWgcqlB7hUbi7wdPH7zrvWQ12NGLVx4oUHWB++st+ow+c0wlfvdSE4yNBi
	W9/6R8DxIXnFaqcuAnf+NFOgsUxBk6DahPjK3Uz4RPcsLd9jgtWK0Qm7TEoGlaUfDsu3b6typL+Fo
	CSDLcTaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivbR-00000007EYO-0X0B;
	Thu, 22 Jan 2026 14:24:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivbN-00000007EY2-20aR
	for barebox@lists.infradead.org;
	Thu, 22 Jan 2026 14:24:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vivbL-0004HF-46; Thu, 22 Jan 2026 15:23:59 +0100
Message-ID: <4a413faf-f9ac-4a11-ba09-47a384b29cb8@pengutronix.de>
Date: Thu, 22 Jan 2026 15:23:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-20-8f0625ac5471@pengutronix.de>
 <aRrnxjr_iL3mCKZa@pengutronix.de>
 <c0aeacd1-8b11-4f98-ba8a-dd4af0d6e333@pengutronix.de>
 <20260115151953.ufmzak6ax57q37sy@pengutronix.de>
 <058c0e31-2308-4ec3-aea5-bdbd07732317@pengutronix.de>
 <20260116095151.ij3ixvvjj7zsaotn@pengutronix.de>
 <20260118202628.wvnc7zspc6hk5ksh@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260118202628.wvnc7zspc6hk5ksh@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_062401_527056_AFFA28D8 
X-CRM114-Status: GOOD (  29.20  )
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
Subject: Re: [PATCH 20/23] ARM: i.MX8M: Add support to extract OP-TEE provided
 informations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 1/18/26 9:26 PM, Marco Felsch wrote:
> On 26-01-16, Marco Felsch wrote:
>> Hi Ahmad,
>>
>> On 26-01-15, Ahmad Fatoum wrote:
>>> Hello,
>>>
>>> On 1/15/26 4:19 PM, Marco Felsch wrote:
>>>> On 26-01-15, Ahmad Fatoum wrote:
>>>>>>> +		pr_warn("Failed to extract OP-TEE FDTO, continue without FDTO\n");
>>>>>>> +		/*
>>>>>>> +		 * Don't BUG() because the system may have compile-time config
>>>>>>> +		 * support
>>>>>>> +		 */
>>>>>>> +		return;
>>>>>>> +	}
>>>>>>> +
>>>>>>> +	handoff_data_add(HANDOFF_DATA_BL32_DT_OVL, fdto_dst, fdto_size);
>>>>>>
>>>>>> The overlay isn't used in barebox itself, but only for the Kernel.
>>>>
>>>> This is not true. This patchset adds to support to use the overlay
>>>> within barebox too. With the patches Fabian provided, it would eliminate
>>>> the need for i.MX6(ULL) boards to have this strange initcall which
>>>> checks a magic memory location for an overlay to apply it.
>>>>>>>
>>>>>> You Could just pick up the overlay from the i.MX scratch space in
>>>>>> barebox proper and pass it to optee_register_overlay().
>>>>>
>>>>> Agreed. There seems to be no need to do this in the PBL.
>>>>
>>>> The early barebox code checks for HANDOFF_DATA_BL32_DT_OVL and applies
>>>> the overlay. Do you suggest that I shall extract the data within barebox
>>>> common code rather? I'm not sure if this is even possible.
>>>
>>> Isn't this basically what virt_board_driver_init() is doing? Would this
>>> not work for your purposes?
>>>
>>> I am generally not a friend of putting logic that can equally well be
>>> located in barebox proper into the PBL. It's slow, it's code duplication
>>> and if we do it, there should be a strong reason why it needs to be in
>>> the PBL. There might very well be a reason here that this needs to be
>>> absolutely done in the PBL (e.g. I can understand fixing up memory size
>>> in PBL, because firmware needs it that early), but I don't yet see it
>>> here for application of the overlay.
>>
>> I see and you're completely right, if something can be done in barebox
>> proper we should do it there. I have to check the
>> virt_board_driver_init() and how this approach can be re-used for the
>> this common abbroach.
> 
> I've checked the virt_board_driver_init() and have to disagree. What I
> do here is to extract the overlay-fragments into a overlay-only FDT to
> not cause any issues while applying the overlay later on. The
> virt_board_driver_init() is applying a builtin overlay-only devicetree.

Sure, but why can't you do this stuff in barebox proper? As mentioned
before PBL runs mostly with MMU disabled and we don't want to increase
its size with things that could be done much better in barebox proper,
both execution time and code size wise.

> That beeing said, I wasn't sure if we need to extract the
> overlay-fragments before applying the overlay. Applying the FDT provided
> by OP-TEE which contains both the complete FDT and the overlay-fragments
> should work too, but doesn't feel right. Therefore I went the way of
> extract them into a dedicated overlay which can be applied later on
> without worries (like the virt_board_driver_init() does).

I don't mind the extraction, just where it's currently done.

> I could check if applying the completed FDT (incl. the
> overlay-fragments9 provided by OP-TEE as of-overlay works too.
> 
> IMHO this doesn't feel right, but the appending OP-TEE does doesn't feel
> right too.

Just moving it into barebox proper suffices for me.

Thanks,
Ahmad

> 
> Regards,
>   Marco
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



