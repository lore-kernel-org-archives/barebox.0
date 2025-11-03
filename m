Delivery-date: Mon, 03 Nov 2025 12:55:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFtAA-00EqOb-0o
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 12:55:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFtA9-0000uJ-HQ
	for lore@pengutronix.de; Mon, 03 Nov 2025 12:55:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4VjWcVXATZiVL4jEukkaAKWgrfBd3tNlnHS3C1jAsZI=; b=ZgindyHoZ7C+gNaD8bjyUlBEPe
	O7ngJhQ7axEWugYqLX08eDqLmlSJNoSz6X3vwz1JGdtueWBwH4HKWg4jCR0IkOrRjeHPVSdbHvyyY
	nvnNuot0zpMqydifEizxRaJ7oAnLqjBfPU6DNPIRrn/YxYtdyRhQowxxRxdQA4/7LHYHFlrlAvV0E
	fdtWfFhuxTGURfnyhv7TL3LEJNPf+F3tRVcpbfSF1onzCWGwpuZ/G8PsqqU4FkPeofNK3dg51Se5h
	gBSqSXTI7LSVVyVvUMCiBK+gpmyglVAMRk72+Haq/HcJhnfHK2b2sAuXsSYemA7pd5cepVYQ87c4N
	Wx1Hssmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFt9i-00000009n9M-0xD4;
	Mon, 03 Nov 2025 11:55:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFt9e-00000009n8r-3ftS
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 11:55:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vFt9c-0000jZ-Fn; Mon, 03 Nov 2025 12:55:20 +0100
Message-ID: <45026e71-c901-428c-86b3-461c017db3f6@pengutronix.de>
Date: Mon, 3 Nov 2025 12:55:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-10-3bafce636ad7@pengutronix.de>
 <aQh9uBVAHngkoCow@pengutronix.de>
 <2249476f-03b5-404b-9a9b-feb69393ef1e@pengutronix.de>
 <aQiU0iaWu06nzXiE@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <aQiU0iaWu06nzXiE@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_035522_925460_1571B7F7 
X-CRM114-Status: GOOD (  27.85  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/17] common: tlv: Add TLV-Signature support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 2025-11-03 12:41, Sascha Hauer wrote:
> On Mon, Nov 03, 2025 at 12:21:56PM +0100, Jonas Rebmann wrote:
>> Hi Sascha,
>>
>> On 2025-11-03 11:02, Sascha Hauer wrote:
>>> On Tue, Oct 28, 2025 at 07:03:15PM +0100, Jonas Rebmann wrote:
>>>> Implement TLV signature using the existing placeholders for it. Use the
>>>> existing cryptographic primitives and public key handling used for
>>>> fitimage verification.
>>>>
>>>> Signature is verified and then must be valid iff CONFIG_TLV_SIGNATURE is
>>>> enabled and a keyring is selected for the decoder. SHA256 hashing is
>>>> hardcoded for now.
>>>>
>>>> As 16 bit are well sufficient to store the length of the signature
>>>> section in bytes, reduce it to its least significant 16 bit and reserve
>>>> the remaining 16 bit for future use.
>>>>
>>>> As sig_len where the only reserved bits left, and where zero-reserved,
>>>> this leaves more wiggle room to still expand the format in the future.
>>>>
>>>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>>>> ---
>>>>    common/Kconfig       |  5 +++
>>>>    common/tlv/parser.c  | 87 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>>    include/tlv/format.h | 22 ++++++++++---
>>>>    3 files changed, 109 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/common/Kconfig b/common/Kconfig
>>>> index d923d4c4b6..663465443d 100644
>>>> --- a/common/Kconfig
>>>> +++ b/common/Kconfig
>>>> @@ -1122,6 +1122,11 @@ config TLV
>>>>    	  barebox TLV is a scheme for storing factory data on non-volatile
>>>>    	  storage. Unlike state, it's meant to be read-only.
>>>> +config TLV_SIGNATURE
>>>> +	bool "barebox TLV signature support"
>>>> +	depends on TLV
>>>> +	select CRYPTO_BUILTIN_KEYS
>>>> +
>>>>    config TLV_DRV
>>>>    	bool "barebox TLV generic driver"
>>>>    	depends on TLV
>>>> diff --git a/common/tlv/parser.c b/common/tlv/parser.c
>>>> index f74ada99d7..cbf45413dd 100644
>>>> --- a/common/tlv/parser.c
>>>> +++ b/common/tlv/parser.c
>>>> @@ -1,6 +1,7 @@
>>>>    // SPDX-License-Identifier: GPL-2.0-only
>>>>    #define pr_fmt(fmt) "barebox-tlv: " fmt
>>>> +#include "tlv/format.h"
>>>>    #include <common.h>
>>>>    #include <tlv/tlv.h>
>>>> @@ -9,6 +10,80 @@
>>>>    #include <linux/stat.h>
>>>>    #include <crc.h>
>>>>    #include <net.h>
>>>> +#include <crypto/public_key.h>
>>>> +
>>>> +static int tlv_verify_try_key(const struct public_key *key, const uint8_t *sig,
>>>> +			      const uint32_t sig_len, const void *data,
>>>> +			      unsigned long data_len)
>>>> +{
>>>> +	enum hash_algo algo = HASH_ALGO_SHA256;
>>>> +	int ret;
>>>> +	struct digest *digest;
>>>> +	void *hash;
>>>> +
>>>> +	digest = digest_alloc_by_algo(algo);
>>>> +	if (!digest)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	digest_init(digest);
>>>> +	if (IS_ERR(digest)) {
>>>
>>> What you meant to do here is
>>>
>>> 	ret = digest_init(digest);
>>> 	if (ret) {
>>> 		...
>>> 	}
>>>
>>
>> I used IS_ERR() here simply because that's how I saw it in
>> common/image-fit.c. Will that need to be changed too then?
> 
> I don't see that the return value of digest_init() is checked in
> common/image-fit.c.
> 
> Yes, we should consistently check the return value of digest_init().
> 
> Anyway, my point was that your IS_ERR(digest) is bogus.

Oh indeed, common/image-fit.c uses IS_ERR(digest) for fit_alloc_digest()
but digest_init() is unchecked. Will apply your suggestion for v3.

>>>> +	for_each_public_key_keyring(key, id, keyring) {
>>>> +		u32 spki_key = get_unaligned_le32(key->hash);
>>>> +
>>>> +		if (spki_key == spki_tlv) {
>>>> +			count_spki_matches++;
>>>> +			ret = tlv_verify_try_key(key, spki_tlv_ptr + SPKI_LEN, sig_len - SPKI_LEN, header, payload_sz);
>>>> +			if (!ret)
>>>> +				return 0;
>>>> +			pr_warn("TLV spki %08x matched available key but signature verification failed: %pe!\n", spki_tlv, ERR_PTR(ret));
>>>
>>> Not sure what this warning is about. Either it can happen that there are
>>> two keys with the same hash in which case there's nothing to warn about,
>>> or it can't happen and you would return an error here.
>>
>> When this happens, there is either a 32-bit hash collision, or
>> something's broken, such as what we had last week, where ECDSA keys
>> where incorrectly initialized, leading to signature verification to
>> always fail even with a valid key.
>>
>> We can't error out here already because when we designed the TLV
>> signature verification feature we specified that in case of spki hash
>> collision, all matching keys must be tried.
> 
> Ok, considering that a hash collision can happen we shouldn't warn about
> it.
> 

The odds of this happening are 1 in 2^32. It is much more likely that
the underlying issue lays elsewhere. If no spki hash match occurs,
there's a warning too:

	if (!count_spki_matches) {
		pr_warn("TLV spki %08x matched no key!\n", spki_tlv);
		return -ENOKEY;
	}

The difference between: 'There was no matching key' and 'We had a key
but failed to verify for dubious reasons' should clearly be reflected
in the logs.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


