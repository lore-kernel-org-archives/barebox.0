Delivery-date: Tue, 29 Aug 2023 12:57:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qawPC-00DDY7-Aw
	for lore@lore.pengutronix.de; Tue, 29 Aug 2023 12:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qawPA-0008Ew-6h
	for lore@pengutronix.de; Tue, 29 Aug 2023 12:57:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O5KogX0nchxO0+T7xtUcL1ATQ0qr68YAPlgz5Je8S+4=; b=SooRfi+h/0RbdMdUs1RoPbxx6d
	KjGiw+RI2Ts+5mROtVtGdUXH7YKDEG0k2lsiA7g0DKho4n7MoCAONL37gXKnjUhazFjH9t8vGotr2
	VVn16SKQuiQVrQXGMNKgaYQGm7KNNBwkk/Jd+EnWj3Cxn6UC3sJHIMBF+gyyU0ZWO7Sr/dueVPi9Z
	QxJrfE4qqQt+6mRvdw1AJsQnHp6lu/9MCfksWITKQGn3uuHRptrKxA6U2gl3ChVPGK1pdnPzj7ZLQ
	sqTMNFzlrCoRS/eUMtf6mhFaVCPCvHAxbpafFH3ToIccR0lhyXP/XSRoWSe5HJve8PtlJljKNHolH
	8+qWQCNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qawO2-00BMBk-2v;
	Tue, 29 Aug 2023 10:55:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qawNq-00BM7H-2n
	for barebox@lists.infradead.org;
	Tue, 29 Aug 2023 10:55:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qawNp-0007mi-4c; Tue, 29 Aug 2023 12:55:41 +0200
Message-ID: <80bc6b24-35c5-f895-ace2-887ceddaa542@pengutronix.de>
Date: Tue, 29 Aug 2023 12:55:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US, de-DE
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, patchwork-jzi@pengutronix.de
Cc: Barebox Mailing List <barebox@lists.infradead.org>
References: <20230829-crc32_in_pbl-v1-1-6a3e01a74c8d@pengutronix.de>
 <7101f4d9-9ebc-9d73-40a5-85a96c34589c@pengutronix.de>
 <44ee704c-8e28-a0a6-6627-c33f0bd56d3d@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <44ee704c-8e28-a0a6-6627-c33f0bd56d3d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_035542_910178_C9572284 
X-CRM114-Status: GOOD (  20.88  )
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

Hi Ahmad,

thank you for your review.

On 8/29/23 12:45, Ahmad Fatoum wrote:
> On 29.08.23 12:29, Ahmad Fatoum wrote:
>> On 29.08.23 11:28, Johannes Zink wrote:
>>> crc32 may be required in PBL for checking data integrity. Add
>>> CONFIG_CRC32_EARLY to kconfig which allows adding crc32 also in the PBL.
>>>
>>> As the PBL has no dynamic allocation, do not use dynamic CRC table
>>> generation when CRC32 is added in PBL.
>>>
>>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
>>> ---
>>> To: Barebox Mailing List <barebox@lists.infradead.org>
>>> Cc: Johannes Zink <j.zink@pengutronix.de>
>>> Cc: patchwork-jzi@pengutronix.de
>>> ---
>>>   crypto/Kconfig  | 3 +++
>>>   crypto/Makefile | 1 +
>>>   crypto/crc32.c  | 6 +++---
>>>   3 files changed, 7 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/crypto/Kconfig b/crypto/Kconfig
>>> index 04e5ef43705b..6e18b5868061 100644
>>> --- a/crypto/Kconfig
>>> +++ b/crypto/Kconfig
>>> @@ -5,6 +5,9 @@ menu "Crypto support"
>>>   config CRC32
>>>   	bool
>>>   
>>> +config CRC32_EARLY
>>> +	bool
>>> +
>>>   config CRC_ITU_T
>>>   	bool
>>>   
>>> diff --git a/crypto/Makefile b/crypto/Makefile
>>> index 22035d4f69ee..24e1f3d91797 100644
>>> --- a/crypto/Makefile
>>> +++ b/crypto/Makefile
>>> @@ -11,6 +11,7 @@ obj-$(CONFIG_DIGEST_SHA1_GENERIC)	+= sha1.o
>>>   obj-$(CONFIG_DIGEST_SHA224_GENERIC)	+= sha2.o
>>>   obj-$(CONFIG_DIGEST_SHA256_GENERIC)	+= sha2.o
>>>   pbl-y					+= sha2.o digest.o
>>> +lwl-$(CONFIG_CRC32_EARLY)		+= crc32.o
>>
>> pbl-obj- is the correct prefix. lwl- means pbl- if we have PBL
>> support at all and obj- otherwise (for legacy systems without PBL),
>> while pbl-obj- is equivalent to duplicating the line once with pbl-
>> and once with obj-
> 
> s/pbl-obj-/obj-pbl-/ :)
> 

ack, gonna fix this for v2.

>>
>>>   obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
>>>   obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
>>>   obj-y	+= memneq.o
>>> diff --git a/crypto/crc32.c b/crypto/crc32.c
>>> index 95cb2212db2b..284d39351682 100644
>>> --- a/crypto/crc32.c
>>> +++ b/crypto/crc32.c
>>> @@ -22,7 +22,7 @@
>>>   #define STATIC static inline
>>>   #endif
>>>   
>>> -#ifdef CONFIG_DYNAMIC_CRC_TABLE
>>> +#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
>>
>> You could also replace the dynamic allocation with a static array initialized
>> to zero. That way you can have a dynamic crc table even in PBL without affecting
>> image size as the BSS is not part of the image.

ack. Is this ok?

#ifdef __PBL__
   static uint32_t _crc_table_memory[sizeof(uint32_t) * 256] = { 0 };
#endif

static void *alloc_crc_table() {
#ifdef __PBL__
	return _crc_table_memory;
#else
	return xmalloc(sizeof(uint32_t) * 256);
#endif
}

If so, I can change it for v2.

Best regards
Johannes


>>
>>>   
>>>   static uint32_t *crc_table;
>>>   
>>> @@ -145,7 +145,7 @@ STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
>>>   {
>>>       const unsigned char *buf = _buf;
>>>   
>>> -#ifdef CONFIG_DYNAMIC_CRC_TABLE
>>> +#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
>>>   	if (!crc_table)
>>>   		make_crc_table();
>>>   #endif
>>> @@ -171,7 +171,7 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
>>>   {
>>>      const unsigned char *buf = _buf;
>>>   
>>> -#ifdef CONFIG_DYNAMIC_CRC_TABLE
>>> +#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
>>>   	if (!crc_table)
>>>   		make_crc_table();
>>>   #endif
>>>
>>> ---
>>> base-commit: bef38b18eeb5d2f1fac334fb8b831e47261e099c
>>> change-id: 20230829-crc32_in_pbl-4d824629d4e2
>>>
>>> Best regards,
>>
> 

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



