Delivery-date: Wed, 22 Oct 2025 12:01:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVeV-00AZ8h-2O
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 12:01:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVeU-0003w8-R3
	for lore@pengutronix.de; Wed, 22 Oct 2025 12:01:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9zOlbqrk2wEaT84BkjcubwpfFc0lpE10CV28AekdfU8=; b=0Hg6wk3Dj560AwkxpeedBeJ1ER
	087Phxf4h+boHuBm0nYhl8kyc1mdPa9klKvJdGtIuFd1ik5jE+selJuoHH7hvzFZjW1ghy9cNx29J
	ED2RScd277JDMfW/4DGagaoZDMGJNfznVsaY2hxAWgr5qc8LwNOC8jwLWauTaRPC+bUQFoG+AW7KM
	Uh2HTIn2NaCEDcOKRi6WyMEwH7JhDuuOwE7DFIarf1Fi4al1nvkrxIfsA4mdLzvvnKx93bolol5Pz
	JPpkgL70WChoca4FzAf4wQ//Z0tW5La29NqSOR0JrF1lbYxUinuyvdQROV/TLGWrDHDQwDPWsksZS
	Kg9bcjhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVdo-00000002NFE-1TPL;
	Wed, 22 Oct 2025 10:00:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVdk-00000002NDS-34rb
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 10:00:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVdj-0003cf-96; Wed, 22 Oct 2025 12:00:19 +0200
Message-ID: <7d50c7d4-06a2-40d4-9b77-114c5ab923ba@pengutronix.de>
Date: Wed, 22 Oct 2025 12:00:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-9-7a8aaf95081c@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251014-tlv-signature-v1-9-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_030020_977251_A919861A 
X-CRM114-Status: GOOD (  28.11  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/15] common: tlv: Add TLV-Signature support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/14/25 1:03 PM, Jonas Rebmann wrote:
> diff --git a/common/Kconfig b/common/Kconfig
> index d923d4c4b6..b7ac7094a6 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1122,6 +1122,10 @@ config TLV
>  	  barebox TLV is a scheme for storing factory data on non-volatile
>  	  storage. Unlike state, it's meant to be read-only.
>  
> +config TLV_SIGNATURE
> +	bool "barebox TLV signature support"

depends on TLV or open an if TLV to span this as well as TLV_DRV and
TLV_BAREBOX.

> +	select CRYPTO_BUILTIN_KEYS
> +
>  config TLV_DRV
>  	bool "barebox TLV generic driver"
>  	depends on TLV
> diff --git a/common/tlv/parser.c b/common/tlv/parser.c
> index f74ada99d7..0a23beba4e 100644
> --- a/common/tlv/parser.c
> +++ b/common/tlv/parser.c
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
> +#include "tlv/format.h"

pr_fmt definition must be before any headers to ensure that it's seen
when pr_info is defined, even with future changes to headers.

>  #define pr_fmt(fmt) "barebox-tlv: " fmt
>  
>  #include <common.h>
> @@ -9,6 +10,81 @@
>  #include <linux/stat.h>
>  #include <crc.h>
>  #include <net.h>
> +#include <crypto/public_key.h>
> +
> +static int tlv_verify_try_key(const struct public_key *key, const uint8_t *sig,
> +			      const uint32_t sig_len, const void *data,
> +			      unsigned long data_len)
> +{
> +	enum hash_algo algo = HASH_ALGO_SHA256;
> +	int ret;
> +	struct digest *digest = digest_alloc_by_algo(algo);

Make it either the last definition or move the assignment before the if.

> +	void *hash;
> +
> +	if (!digest)
> +		return -ENOMEM;
> +
> +	digest_init(digest);
> +	if (IS_ERR(digest)) {
> +		digest_free(digest);
> +		return -EINVAL;
> +	}
> +	digest_update(digest, data, data_len);
> +	hash = xzalloc(digest_length(digest));
> +	digest_final(digest, hash);
> +
> +	ret = public_key_verify(key, sig, sig_len, hash, algo);
> +
> +	digest_free(digest);
> +	free(hash);
> +
> +	if (ret)
> +		return -ENOKEY;

We have no strerror text for ENOKEY, but I believe it's a bit
out-of-place here anyway. -ENOKEY could be an error code from
tlv_verify, but when trying a specific key, -ENOKEY appears to be
inaccurate.

> +	return 0;
> +}
> +
> +static int tlv_verify(struct tlv_header *header, const char *keyring)
> +{
> +	const struct public_key *key;
> +	size_t payload_sz = tlv_spki_hash_offset(header);
> +	void *spki_tlv_ptr = (void *)header + payload_sz;

Can this be made const void *.

> +	u32 spki_tlv = get_unaligned_le32(spki_tlv_ptr);
> +	const int SPKI_LEN = 4;

Drop the const without a pointer (this isn't C++).

> +	u32 sig_len = get_unaligned_be16(&header->length_sig);
> +	int ret;
> +	int count_spki_matches = 0;
> +
> +	if (!IS_ENABLED(CONFIG_TLV_SIGNATURE)) {
> +		pr_err("TLV signature selected in decoder but not enabled!\n");

Remove TLV prefix here and below, there's already a barebox-tlv: prefix.

> +		return -ENOSYS;
> +	} else if (sig_len == 0) {
> +		pr_err("TLV signature selected in decoder but an unsigned TLV matched by magic %08x!\n", be32_to_cpu(header->magic));
> +		return -EPROTO;
> +	}
> +	/* signature length field must always be zeroed during signage and verification */

s/signage/signing/

> +	header->length_sig = 0;
> +
> +	for_each_public_key_keyring(key, keyring) {
> +		u32 spki_key = get_unaligned_le32(key->hash);
> +
> +		if (spki_key == spki_tlv) {
> +			count_spki_matches++;
> +			ret = tlv_verify_try_key(key, spki_tlv_ptr + SPKI_LEN, sig_len - SPKI_LEN, header, payload_sz);
> +			if (!ret)
> +				return 0;
> +			pr_warn("TLV spki %08x matched available key but signature verification failed: %s!\n", spki_tlv, strerror(-ret));

"%s", strerror(-ret) -> "%pE", PTR_ERR(ret)

> +		}
> +	}
> +
> +	/* reset signature length field after verification to avoid later confusion */
> +	put_unaligned_be16(sig_len, &header->length_sig);
> +
> +	if (!count_spki_matches) {
> +		pr_warn("TLV spki %08x matched no key!\n", spki_tlv);
> +		return -ENOKEY;
> +	}
> +	return -EINVAL;
> +}
>  
>  int tlv_parse(struct tlv_device *tlvdev,
>  	      const struct tlv_decoder *decoder)
> @@ -17,6 +93,7 @@ int tlv_parse(struct tlv_device *tlvdev,
>  	struct tlv_mapping *map = NULL;
>  	struct tlv_header *header = tlv_device_header(tlvdev);
>  	u32 magic;
> +	u16 reserved;
>  	size_t size;
>  	int ret = 0;
>  	u32 crc = ~0;
> @@ -24,6 +101,7 @@ int tlv_parse(struct tlv_device *tlvdev,
>  	magic = be32_to_cpu(header->magic);
>  
>  	size = tlv_total_len(header);
> +	reserved = get_unaligned_be16(&header->reserved);
>  
>  	if (size == SIZE_MAX) {
>  		pr_warn("Invalid TLV header, overflows\n");
> @@ -36,6 +114,12 @@ int tlv_parse(struct tlv_device *tlvdev,
>  		return -EILSEQ;
>  	}
>  
> +	if (decoder->signature_keyring) {
> +		ret = tlv_verify(header, decoder->signature_keyring);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	for_each_tlv(header, tlv) {
>  		struct tlv_mapping **mappings;
>  		u16 tag = TLV_TAG(tlv);
> diff --git a/include/tlv/format.h b/include/tlv/format.h
> index c4521c3131..cbe0a132b1 100644
> --- a/include/tlv/format.h
> +++ b/include/tlv/format.h
> @@ -47,11 +47,12 @@ struct tlv {
>  struct tlv_header {
>  	__be32 magic;
>  	__be32 length_tlv; /* in bytes */
> -	__be32 length_sig; /* in bytes */
> +	__be16 reserved;
> +	__be16 length_sig; /* in bytes */
>  	struct tlv tlvs[];
> -	/* __be32 crc; */
>  	/* u8 sig[]; */
> -};
> +	/* __be32 crc; */
> +} __packed;
>  static_assert(sizeof(struct tlv_header) == 3 * 4);
>  
>  #define for_each_tlv(tlv_head, tlv) \
> @@ -62,8 +63,19 @@ static inline size_t tlv_total_len(const struct tlv_header *header)
>  	size_t ret;
>  
>  	ret = size_add(sizeof(struct tlv_header), get_unaligned_be32(&header->length_tlv));
> -	ret = size_add(ret, sizeof(__be32)); /* CRC appended after TLVs */
> -	ret = size_add(ret, get_unaligned_be32(&header->length_sig)); /* optional signature appended after CRC */
> +	ret = size_add(ret, get_unaligned_be16(&header->length_sig)); /* optional signature appended after TLVs */
> +	ret = size_add(ret, sizeof(__be32)); /* CRC at end of file */
> +
> +	return ret; /* SIZE_MAX on overflow */
> +}
> +
> +/*
> + * Retrieve length of header+TLVs (offset of spki hash part of signature if available)
> + */
> +
> +static inline size_t tlv_spki_hash_offset(const struct tlv_header *header)
> +{
> +	size_t ret = size_add(sizeof(struct tlv_header), get_unaligned_be32(&header->length_tlv));
>  
>  	return ret; /* SIZE_MAX on overflow */

Shouldn't you then check for SIZE_MAX at callsites?

Cheers,
Ahmad

>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



