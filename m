Delivery-date: Tue, 29 Aug 2023 14:18:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaxfx-00DJ4Y-RN
	for lore@lore.pengutronix.de; Tue, 29 Aug 2023 14:18:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaxfv-0001eC-EZ
	for lore@pengutronix.de; Tue, 29 Aug 2023 14:18:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qet0FRBsZvD5wZXXUEiQykdjPVcF/WzYYfcFjXpR6To=; b=0F+dw3GVbNWWLx7BIP1ol4SWvI
	rytCr5xusTBoqDkICDjM6lqg9ctk2/XIP/+Rt5DxgeaKCRNl9FG5/nqSF4PbSzgYvLjyXSaDM7Ttr
	DrqCGBPw/CKvr3i489Nmu8dIJDKZo5b7hNsSSkTiixbXKO/HlF4C9rJpZ7rZladnKJfqRZlmD2YzO
	invgzxAnXcluaK1eX3joe29EXvPDMjoE1mJNy5AMcELvYddYg9MzTUUSnBgMtgUucfCfXWr9hnUCq
	3bfEoe4SjrBDTU9K4ORUBCQs6E4FDQrwqDfLJrI9nvjFqo2kUD1qMwG5/ZwuOHYIfZS9BSeErUdeW
	rjckcrxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaxen-00BTxj-0H;
	Tue, 29 Aug 2023 12:17:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaxeg-00BTr4-0P
	for barebox@lists.infradead.org;
	Tue, 29 Aug 2023 12:17:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qaxee-0001UN-J7; Tue, 29 Aug 2023 14:17:08 +0200
Message-ID: <fab30831-f823-3926-7c01-19af1de8deaa@pengutronix.de>
Date: Tue, 29 Aug 2023 14:17:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, patchwork-jzi@pengutronix.de
Cc: Barebox Mailing List <barebox@lists.infradead.org>
References: <20230829-crc32_in_pbl-v1-1-6a3e01a74c8d@pengutronix.de>
 <7101f4d9-9ebc-9d73-40a5-85a96c34589c@pengutronix.de>
 <44ee704c-8e28-a0a6-6627-c33f0bd56d3d@pengutronix.de>
 <80bc6b24-35c5-f895-ace2-887ceddaa542@pengutronix.de>
 <65dea589-e8f6-e5d3-76a6-7a966e498017@pengutronix.de>
 <065ee7e7-cb0a-6651-8d24-e4a4be941956@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <065ee7e7-cb0a-6651-8d24-e4a4be941956@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_051710_174933_BDBF6B4C 
X-CRM114-Status: GOOD (  35.70  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: crc32: make crc32 available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Johannes,

On 29.08.23 14:05, Johannes Zink wrote:
> Hi Ahmad,
> 
> On 8/29/23 13:08, Ahmad Fatoum wrote:
>> On 29.08.23 12:55, Johannes Zink wrote:
>>> On 8/29/23 12:45, Ahmad Fatoum wrote:
>>>>>> +lwl-$(CONFIG_CRC32_EARLY)        += crc32.o
>>>>>
>>>>> pbl-obj- is the correct prefix. lwl- means pbl- if we have PBL
>>>>> support at all and obj- otherwise (for legacy systems without PBL),
>>>>> while pbl-obj- is equivalent to duplicating the line once with pbl-
>>>>> and once with obj-
>>>>
>>>> s/pbl-obj-/obj-pbl-/ :)
>>
>> Sorry, had a small brain fart here.
>>
>> You didn't remove the original obj-,
>> so now lwl- either expands to and extra obj- or to pbl-.
>>
>> obj-pbl- makes sense when you use the same symbol for both PBL and
>> barebox proper, but as you're introducing a new symbol, you can
>> leave it as lwl- or make it pbl- for explicitness.
>>
> 
> ok. I think I won't glob it in obj-pbl, as one might want to explicitly add crc32.o only for PBL or only for barebox-proper.

Linker garbage collection throws away any unreferenced function, so the extra
Kconfig symbol only saves a little bit of compile time. Given that we don't
have special symbols for the other CRC/SHA implementation used in PBL, it
might be out of place to have one for CRC32, but not for the others.

> 
>>> ack, gonna fix this for v2.
>>>
>>>>>
>>>>>>    obj-$(CONFIG_DIGEST_SHA384_GENERIC)    += sha4.o
>>>>>>    obj-$(CONFIG_DIGEST_SHA512_GENERIC)    += sha4.o
>>>>>>    obj-y    += memneq.o
>>>>>> diff --git a/crypto/crc32.c b/crypto/crc32.c
>>>>>> index 95cb2212db2b..284d39351682 100644
>>>>>> --- a/crypto/crc32.c
>>>>>> +++ b/crypto/crc32.c
>>>>>> @@ -22,7 +22,7 @@
>>>>>>    #define STATIC static inline
>>>>>>    #endif
>>>>>>    -#ifdef CONFIG_DYNAMIC_CRC_TABLE
>>>>>> +#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
>>>>>
>>>>> You could also replace the dynamic allocation with a static array initialized
>>>>> to zero. That way you can have a dynamic crc table even in PBL without affecting
>>>>> image size as the BSS is not part of the image.
>>>
>>> ack. Is this ok?
>>>
>>> #ifdef __PBL__
>>>    static uint32_t _crc_table_memory[sizeof(uint32_t) * 256] = { 0 };
>>
>> The array is 256 elements, not 1024 elements. Explicit intialization
>> is unnecessary.
> 
> good catch. thanks.
> 
>>
>>> #endif
>>>
>>> static void *alloc_crc_table() {
>>> #ifdef __PBL__
>>>      return _crc_table_memory;
>>> #else
>>>      return xmalloc(sizeof(uint32_t) * 256);
>>> #endif
>>> }
>>>
>>> If so, I can change it for v2.
>>
>> My idea was to drop the allocation altogether by using BSS.
>> If you do this, you should not need any __PBL__ checking at all.
> 
> I guess that should work indeed. Do I need to explicitly mark the array with a prefix to force it into BSS (sorry, I am not too familiar with the barebox linker scripts...)?

By default, any variable with static storage duration that is not
initialized to a non-zero value, will be allocated inside .bss.

.bss in barebox and elsewhere is allocated at runtime and zeroed.
This avoids the need to allocate zeroes in the binary.

The CRC code uses a table with values != zero, so it can't be elided.

>> Either you have CONFIG_DYNAMIC_CRC_TABLE and the table is dynamically
>> filled in bss on first access or you have CONFIG_DYNAMIC_CRC_TABLE=n
>> and the table is already there and need not be allocated.
>>
>> On a second thought, I am not sure if we want a table at all in PBL.
>> Do you do a lot of CRC32 computation? Maybe we should just not use
>> a table at all in PBL and just calculate a single crc32?
>> That's what Sascha did here:
>>
>> 2d13b856604b ("crc: Add PBL variant for crc_itu_t()")
>>
> 
> For my specific usecase I need to check a single CRC32 once, so probably there is the same or even more overhead to dynamically filling the Table than just doing a single CRC32 computation. Maybe more overhead than using the precompiled, pre-filled table, but I fully acknowledge that size matters in PBL.
> 
> I like Sascha's approach, so let me try to do a dynamic computation for the PBL implementation in my v2 patch.

Ye, adding a PBL only implementation sounds like the best way to go about it then.

Cheers,
Ahmad

> 
> Best regards
> Johannes
> 
>> Let me know what you think.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Best regards
>>> Johannes
>>>
>>>
>>>>>
>>>>>>      static uint32_t *crc_table;
>>>>>>    @@ -145,7 +145,7 @@ STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
>>>>>>    {
>>>>>>        const unsigned char *buf = _buf;
>>>>>>    -#ifdef CONFIG_DYNAMIC_CRC_TABLE
>>>>>> +#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
>>>>>>        if (!crc_table)
>>>>>>            make_crc_table();
>>>>>>    #endif
>>>>>> @@ -171,7 +171,7 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
>>>>>>    {
>>>>>>       const unsigned char *buf = _buf;
>>>>>>    -#ifdef CONFIG_DYNAMIC_CRC_TABLE
>>>>>> +#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
>>>>>>        if (!crc_table)
>>>>>>            make_crc_table();
>>>>>>    #endif
>>>>>>
>>>>>> ---
>>>>>> base-commit: bef38b18eeb5d2f1fac334fb8b831e47261e099c
>>>>>> change-id: 20230829-crc32_in_pbl-4d824629d4e2
>>>>>>
>>>>>> Best regards,
>>>>>
>>>>
>>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



