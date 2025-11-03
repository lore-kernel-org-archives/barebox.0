Delivery-date: Mon, 03 Nov 2025 12:22:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFsdv-00EpzI-2W
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 12:22:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFsdu-00041W-Pi
	for lore@pengutronix.de; Mon, 03 Nov 2025 12:22:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ouAOwzVM23Qu6oCVuBtUKmTLuQs6t0yras/UZW0tPbo=; b=GIHxlXoKCBC/g38EwTTEZInn1S
	9u93M4m3reeR9Mp7rov/tm2JocUN7fXriVEvYnSTD4VLxb4H+lFQD05E3IlAOmGQySbVSaVo5VK7s
	7HT0oUBgHLlhB3qQx0NzywzH/STlBykhnfGf4HpndC6YH3o7p/Dl06kiSFh/Y0pv3SlGHriy//Icn
	jFF15Xp6WU5JCsQHuS434WTKBYI+XbUJTavGc/us828c6vhOTvft6cCTUcDRFEoFHazPQue79xUHe
	rObSYocD7wB8yPjSFknpbKW7mzKhBmnY2BTfE5URXqDAkLAocPfIjcYqVKDrj6LHGd22ToXfvuT+7
	SlWfnBIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFsdP-00000009itD-3aJE;
	Mon, 03 Nov 2025 11:22:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFsdM-00000009imq-018G
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 11:22:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vFsdI-0003wR-Q5; Mon, 03 Nov 2025 12:21:56 +0100
Message-ID: <2249476f-03b5-404b-9a9b-feb69393ef1e@pengutronix.de>
Date: Mon, 3 Nov 2025 12:21:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-10-3bafce636ad7@pengutronix.de>
 <aQh9uBVAHngkoCow@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <aQh9uBVAHngkoCow@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_032200_210775_117CDEBA 
X-CRM114-Status: GOOD (  37.45  )
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

Hi Sascha,

On 2025-11-03 11:02, Sascha Hauer wrote:
> On Tue, Oct 28, 2025 at 07:03:15PM +0100, Jonas Rebmann wrote:
>> Implement TLV signature using the existing placeholders for it. Use the
>> existing cryptographic primitives and public key handling used for
>> fitimage verification.
>>
>> Signature is verified and then must be valid iff CONFIG_TLV_SIGNATURE is
>> enabled and a keyring is selected for the decoder. SHA256 hashing is
>> hardcoded for now.
>>
>> As 16 bit are well sufficient to store the length of the signature
>> section in bytes, reduce it to its least significant 16 bit and reserve
>> the remaining 16 bit for future use.
>>
>> As sig_len where the only reserved bits left, and where zero-reserved,
>> this leaves more wiggle room to still expand the format in the future.
>>
>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>> ---
>>   common/Kconfig       |  5 +++
>>   common/tlv/parser.c  | 87 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>>   include/tlv/format.h | 22 ++++++++++---
>>   3 files changed, 109 insertions(+), 5 deletions(-)
>>
>> diff --git a/common/Kconfig b/common/Kconfig
>> index d923d4c4b6..663465443d 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -1122,6 +1122,11 @@ config TLV
>>   	  barebox TLV is a scheme for storing factory data on non-volatile
>>   	  storage. Unlike state, it's meant to be read-only.
>>   
>> +config TLV_SIGNATURE
>> +	bool "barebox TLV signature support"
>> +	depends on TLV
>> +	select CRYPTO_BUILTIN_KEYS
>> +
>>   config TLV_DRV
>>   	bool "barebox TLV generic driver"
>>   	depends on TLV
>> diff --git a/common/tlv/parser.c b/common/tlv/parser.c
>> index f74ada99d7..cbf45413dd 100644
>> --- a/common/tlv/parser.c
>> +++ b/common/tlv/parser.c
>> @@ -1,6 +1,7 @@
>>   // SPDX-License-Identifier: GPL-2.0-only
>>   
>>   #define pr_fmt(fmt) "barebox-tlv: " fmt
>> +#include "tlv/format.h"
>>   
>>   #include <common.h>
>>   #include <tlv/tlv.h>
>> @@ -9,6 +10,80 @@
>>   #include <linux/stat.h>
>>   #include <crc.h>
>>   #include <net.h>
>> +#include <crypto/public_key.h>
>> +
>> +static int tlv_verify_try_key(const struct public_key *key, const uint8_t *sig,
>> +			      const uint32_t sig_len, const void *data,
>> +			      unsigned long data_len)
>> +{
>> +	enum hash_algo algo = HASH_ALGO_SHA256;
>> +	int ret;
>> +	struct digest *digest;
>> +	void *hash;
>> +
>> +	digest = digest_alloc_by_algo(algo);
>> +	if (!digest)
>> +		return -ENOMEM;
>> +
>> +	digest_init(digest);
>> +	if (IS_ERR(digest)) {
> 
> What you meant to do here is
> 
> 	ret = digest_init(digest);
> 	if (ret) {
> 		...
> 	}
> 

I used IS_ERR() here simply because that's how I saw it in
common/image-fit.c. Will that need to be changed too then?

>> +		digest_free(digest);
>> +		return -EINVAL;
>> +	}
>> +	digest_update(digest, data, data_len);
>> +	hash = xzalloc(digest_length(digest));
>> +	digest_final(digest, hash);
>> +
>> +	ret = public_key_verify(key, sig, sig_len, hash, algo);
>> +
>> +	digest_free(digest);
>> +	free(hash);
>> +
>> +	return ret;
>> +}
>> +
>> +static int tlv_verify(struct tlv_header *header, const char *keyring)
>> +{
>> +	const struct public_key *key;
>> +	size_t payload_sz = tlv_spki_hash_offset(header);
>> +	const void *spki_tlv_ptr = (void *)header + payload_sz;
>> +	u32 spki_tlv = get_unaligned_le32(spki_tlv_ptr);
>> +	int SPKI_LEN = 4;
>> +	u32 sig_len = get_unaligned_be16(&header->length_sig);
>> +	int ret, id;
>> +	int count_spki_matches = 0;
>> +
>> +	if (!IS_ENABLED(CONFIG_TLV_SIGNATURE)) {
>> +		pr_err("signature selected in decoder but not enabled!\n");
>> +		return -ENOSYS;
>> +	} else if (sig_len == 0) {
>> +		pr_err("signature selected in decoder but an unsigned TLV matched by magic %08x!\n", be32_to_cpu(header->magic));
>> +		return -EPROTO;
>> +	}
>> +	/* signature length field must always be zeroed during signing and verification */
>> +	header->length_sig = 0;
>> +
>> +	for_each_public_key_keyring(key, id, keyring) {
>> +		u32 spki_key = get_unaligned_le32(key->hash);
>> +
>> +		if (spki_key == spki_tlv) {
>> +			count_spki_matches++;
>> +			ret = tlv_verify_try_key(key, spki_tlv_ptr + SPKI_LEN, sig_len - SPKI_LEN, header, payload_sz);
>> +			if (!ret)
>> +				return 0;
>> +			pr_warn("TLV spki %08x matched available key but signature verification failed: %pe!\n", spki_tlv, ERR_PTR(ret));
> 
> Not sure what this warning is about. Either it can happen that there are
> two keys with the same hash in which case there's nothing to warn about,
> or it can't happen and you would return an error here.

When this happens, there is either a 32-bit hash collision, or
something's broken, such as what we had last week, where ECDSA keys
where incorrectly initialized, leading to signature verification to
always fail even with a valid key.

We can't error out here already because when we designed the TLV
signature verification feature we specified that in case of spki hash
collision, all matching keys must be tried.

If tlv_verify() cannot verify the signature with any of the keys, it
will return an error code and the error will occur later on and these
warnings provide extra context as to why.

>> +		}
>> +	}
>> +
>> +	/* reset signature length field after verification to avoid later confusion */
>> +	put_unaligned_be16(sig_len, &header->length_sig);
> 
> You do not write the original value back when tlv_verify_try_key()
> succeeds.
> 
> It might be less confusing if you treat the original header const and
> duplicate it in tlv_verify_try_key().

Will fix that in v3.

>> +
>> +	if (!count_spki_matches) {
>> +		pr_warn("TLV spki %08x matched no key!\n", spki_tlv);
>> +		return -ENOKEY;
>> +	}
>> +	return -EINVAL;
>> +}
>>   
>>   int tlv_parse(struct tlv_device *tlvdev,
>>   	      const struct tlv_decoder *decoder)
>> @@ -17,6 +92,7 @@ int tlv_parse(struct tlv_device *tlvdev,
>>   	struct tlv_mapping *map = NULL;
>>   	struct tlv_header *header = tlv_device_header(tlvdev);
>>   	u32 magic;
>> +	u16 reserved;
>>   	size_t size;
>>   	int ret = 0;
>>   	u32 crc = ~0;
>> @@ -24,6 +100,7 @@ int tlv_parse(struct tlv_device *tlvdev,
>>   	magic = be32_to_cpu(header->magic);
>>   
>>   	size = tlv_total_len(header);
>> +	reserved = get_unaligned_be16(&header->reserved);
>>   
>>   	if (size == SIZE_MAX) {
>>   		pr_warn("Invalid TLV header, overflows\n");
>> @@ -36,6 +113,16 @@ int tlv_parse(struct tlv_device *tlvdev,
>>   		return -EILSEQ;
>>   	}
>>   
>> +	if (decoder->signature_keyring) {
>> +		ret = tlv_verify(header, decoder->signature_keyring);
>> +		if (ret)
>> +			return ret;
> 
> Does this mean I can bypass the verification just by putting some
> unsigned TLV data with TLV_MAGIC_BAREBOX_V1 into the TLV partition?

If barebox_tlv_v1 or another unsigned decoder is enabled, its compatible
needs to be referenced in a devicetree node in order for unsigned TLVs
to be parseable (except when using the "TLV" command which does create a
new devicetree node named tlv<num>).

Even if both signed and unsigned decoder are both enabled and referenced
in the devicetree (and I can see applications where this may be
desirable), feeding the device with unsigned TLV data never lets you
modify the devicetree node that has a compatible string of a signed TLV
decoder.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


