Delivery-date: Mon, 03 Nov 2025 11:03:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFrP9-00EoZV-1z
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 11:03:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFrP8-0001oS-Sl
	for lore@pengutronix.de; Mon, 03 Nov 2025 11:03:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tqt3WWFf3pqTqwC6NF/wktB/2NuUvWqJncjCxNBx9h0=; b=xhFvL4OuLTRPQ/WvJqdT7gckle
	EbTha71w3USxbFP4se0QV3bYJVuSAqImQhTGouryixVk76D2WEGa1IxHVJRpIO/bErA2RCxOAR0zF
	P4U0WspOXSe4gmy7yuexeC7SgShITFt8Gbr1oEoH3qXFie6HPUzgvuQgQ+FWY34TU+B9cUkwKh5aF
	VIp1ccDywV4QbHIPTzWprGHcI7rt2xKFdFrXgpvRWDR7TbsWguVqR8VmK6YSe7i+0j7+H8yIChuV2
	RYBzaYd4yuQbZ7pD1Lngd/hZJQSUvhn6ynhuzYJj/HrbLW1l7/3w34DQedoV+aFKkt3DH1I10AaO+
	hjxh9+cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFrOY-00000009YWg-3TUW;
	Mon, 03 Nov 2025 10:02:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFrOV-00000009YVa-0kme
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 10:02:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vFrOS-0001fc-PS; Mon, 03 Nov 2025 11:02:32 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vFrOS-006q0p-1w;
	Mon, 03 Nov 2025 11:02:32 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vFrOS-00Gcs2-1d;
	Mon, 03 Nov 2025 11:02:32 +0100
Date: Mon, 3 Nov 2025 11:02:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aQh9uBVAHngkoCow@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-10-3bafce636ad7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251028-tlv-signature-v2-10-3bafce636ad7@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_020235_223077_DE6342E6 
X-CRM114-Status: GOOD (  35.59  )
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
Subject: Re: [PATCH v2 10/17] common: tlv: Add TLV-Signature support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 28, 2025 at 07:03:15PM +0100, Jonas Rebmann wrote:
> Implement TLV signature using the existing placeholders for it. Use the
> existing cryptographic primitives and public key handling used for
> fitimage verification.
> 
> Signature is verified and then must be valid iff CONFIG_TLV_SIGNATURE is
> enabled and a keyring is selected for the decoder. SHA256 hashing is
> hardcoded for now.
> 
> As 16 bit are well sufficient to store the length of the signature
> section in bytes, reduce it to its least significant 16 bit and reserve
> the remaining 16 bit for future use.
> 
> As sig_len where the only reserved bits left, and where zero-reserved,
> this leaves more wiggle room to still expand the format in the future.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  common/Kconfig       |  5 +++
>  common/tlv/parser.c  | 87 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/tlv/format.h | 22 ++++++++++---
>  3 files changed, 109 insertions(+), 5 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index d923d4c4b6..663465443d 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1122,6 +1122,11 @@ config TLV
>  	  barebox TLV is a scheme for storing factory data on non-volatile
>  	  storage. Unlike state, it's meant to be read-only.
>  
> +config TLV_SIGNATURE
> +	bool "barebox TLV signature support"
> +	depends on TLV
> +	select CRYPTO_BUILTIN_KEYS
> +
>  config TLV_DRV
>  	bool "barebox TLV generic driver"
>  	depends on TLV
> diff --git a/common/tlv/parser.c b/common/tlv/parser.c
> index f74ada99d7..cbf45413dd 100644
> --- a/common/tlv/parser.c
> +++ b/common/tlv/parser.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
>  #define pr_fmt(fmt) "barebox-tlv: " fmt
> +#include "tlv/format.h"
>  
>  #include <common.h>
>  #include <tlv/tlv.h>
> @@ -9,6 +10,80 @@
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
> +	struct digest *digest;
> +	void *hash;
> +
> +	digest = digest_alloc_by_algo(algo);
> +	if (!digest)
> +		return -ENOMEM;
> +
> +	digest_init(digest);
> +	if (IS_ERR(digest)) {

What you meant to do here is

	ret = digest_init(digest);
	if (ret) {
		...
	}

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
> +	return ret;
> +}
> +
> +static int tlv_verify(struct tlv_header *header, const char *keyring)
> +{
> +	const struct public_key *key;
> +	size_t payload_sz = tlv_spki_hash_offset(header);
> +	const void *spki_tlv_ptr = (void *)header + payload_sz;
> +	u32 spki_tlv = get_unaligned_le32(spki_tlv_ptr);
> +	int SPKI_LEN = 4;
> +	u32 sig_len = get_unaligned_be16(&header->length_sig);
> +	int ret, id;
> +	int count_spki_matches = 0;
> +
> +	if (!IS_ENABLED(CONFIG_TLV_SIGNATURE)) {
> +		pr_err("signature selected in decoder but not enabled!\n");
> +		return -ENOSYS;
> +	} else if (sig_len == 0) {
> +		pr_err("signature selected in decoder but an unsigned TLV matched by magic %08x!\n", be32_to_cpu(header->magic));
> +		return -EPROTO;
> +	}
> +	/* signature length field must always be zeroed during signing and verification */
> +	header->length_sig = 0;
> +
> +	for_each_public_key_keyring(key, id, keyring) {
> +		u32 spki_key = get_unaligned_le32(key->hash);
> +
> +		if (spki_key == spki_tlv) {
> +			count_spki_matches++;
> +			ret = tlv_verify_try_key(key, spki_tlv_ptr + SPKI_LEN, sig_len - SPKI_LEN, header, payload_sz);
> +			if (!ret)
> +				return 0;
> +			pr_warn("TLV spki %08x matched available key but signature verification failed: %pe!\n", spki_tlv, ERR_PTR(ret));

Not sure what this warning is about. Either it can happen that there are
two keys with the same hash in which case there's nothing to warn about,
or it can't happen and you would return an error here.

> +		}
> +	}
> +
> +	/* reset signature length field after verification to avoid later confusion */
> +	put_unaligned_be16(sig_len, &header->length_sig);

You do not write the original value back when tlv_verify_try_key()
succeeds.

It might be less confusing if you treat the original header const and
duplicate it in tlv_verify_try_key().

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
> @@ -17,6 +92,7 @@ int tlv_parse(struct tlv_device *tlvdev,
>  	struct tlv_mapping *map = NULL;
>  	struct tlv_header *header = tlv_device_header(tlvdev);
>  	u32 magic;
> +	u16 reserved;
>  	size_t size;
>  	int ret = 0;
>  	u32 crc = ~0;
> @@ -24,6 +100,7 @@ int tlv_parse(struct tlv_device *tlvdev,
>  	magic = be32_to_cpu(header->magic);
>  
>  	size = tlv_total_len(header);
> +	reserved = get_unaligned_be16(&header->reserved);
>  
>  	if (size == SIZE_MAX) {
>  		pr_warn("Invalid TLV header, overflows\n");
> @@ -36,6 +113,16 @@ int tlv_parse(struct tlv_device *tlvdev,
>  		return -EILSEQ;
>  	}
>  
> +	if (decoder->signature_keyring) {
> +		ret = tlv_verify(header, decoder->signature_keyring);
> +		if (ret)
> +			return ret;

Does this mean I can bypass the verification just by putting some
unsigned TLV data with TLV_MAGIC_BAREBOX_V1 into the TLV partition?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


