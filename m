Delivery-date: Mon, 03 Nov 2025 12:41:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFswS-00EqBn-2j
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 12:41:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFswS-0006Xs-3o
	for lore@pengutronix.de; Mon, 03 Nov 2025 12:41:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=st6fEji/oP5C9CQ9RGOR1Ge2excUVfz5lKNDMr+v7x4=; b=vZLiORYPHkRd3ASA0r5pFs4owL
	m/VjOYtXhcjXbKWzYrLeGrmfSNx/KTWi+w81Th8V1UFIBfcbwLMMyXwI1E28TGo7mRDr/tU14JbAt
	xg6Mh/7TY32MUUfyJrRb0EQzn3zR2zZDuKOp6D2W4huUXjvP6jrNTq+TuAGnBs4r5bNXZYttEr80j
	YZ90hIX/Coc9kKHJMDdYQ6+FXB536QPsnCxj+Kh/715M3AOaWa75WUylUVhGZk3QavDZQvRq1Xfzo
	Sya+wZ/OLH0MBVh8IAHL40t84EnYpOYItN0yUw20AGJ1ycHF7iaqX6OdXVQWtRXtHm7a4XxyUMKLi
	JB9/sH4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFsvv-00000009kig-2rpu;
	Mon, 03 Nov 2025 11:41:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFsvs-00000009kiI-3ebB
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 11:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vFsvq-0006NO-V4; Mon, 03 Nov 2025 12:41:06 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vFsvq-006qsK-2W;
	Mon, 03 Nov 2025 12:41:06 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vFsvq-00GecP-2F;
	Mon, 03 Nov 2025 12:41:06 +0100
Date: Mon, 3 Nov 2025 12:41:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aQiU0iaWu06nzXiE@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-10-3bafce636ad7@pengutronix.de>
 <aQh9uBVAHngkoCow@pengutronix.de>
 <2249476f-03b5-404b-9a9b-feb69393ef1e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2249476f-03b5-404b-9a9b-feb69393ef1e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_034108_924687_871B447F 
X-CRM114-Status: GOOD (  46.91  )
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

On Mon, Nov 03, 2025 at 12:21:56PM +0100, Jonas Rebmann wrote:
> Hi Sascha,
> 
> On 2025-11-03 11:02, Sascha Hauer wrote:
> > On Tue, Oct 28, 2025 at 07:03:15PM +0100, Jonas Rebmann wrote:
> > > Implement TLV signature using the existing placeholders for it. Use the
> > > existing cryptographic primitives and public key handling used for
> > > fitimage verification.
> > > 
> > > Signature is verified and then must be valid iff CONFIG_TLV_SIGNATURE is
> > > enabled and a keyring is selected for the decoder. SHA256 hashing is
> > > hardcoded for now.
> > > 
> > > As 16 bit are well sufficient to store the length of the signature
> > > section in bytes, reduce it to its least significant 16 bit and reserve
> > > the remaining 16 bit for future use.
> > > 
> > > As sig_len where the only reserved bits left, and where zero-reserved,
> > > this leaves more wiggle room to still expand the format in the future.
> > > 
> > > Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> > > ---
> > >   common/Kconfig       |  5 +++
> > >   common/tlv/parser.c  | 87 ++++++++++++++++++++++++++++++++++++++++++++++++++++
> > >   include/tlv/format.h | 22 ++++++++++---
> > >   3 files changed, 109 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/common/Kconfig b/common/Kconfig
> > > index d923d4c4b6..663465443d 100644
> > > --- a/common/Kconfig
> > > +++ b/common/Kconfig
> > > @@ -1122,6 +1122,11 @@ config TLV
> > >   	  barebox TLV is a scheme for storing factory data on non-volatile
> > >   	  storage. Unlike state, it's meant to be read-only.
> > > +config TLV_SIGNATURE
> > > +	bool "barebox TLV signature support"
> > > +	depends on TLV
> > > +	select CRYPTO_BUILTIN_KEYS
> > > +
> > >   config TLV_DRV
> > >   	bool "barebox TLV generic driver"
> > >   	depends on TLV
> > > diff --git a/common/tlv/parser.c b/common/tlv/parser.c
> > > index f74ada99d7..cbf45413dd 100644
> > > --- a/common/tlv/parser.c
> > > +++ b/common/tlv/parser.c
> > > @@ -1,6 +1,7 @@
> > >   // SPDX-License-Identifier: GPL-2.0-only
> > >   #define pr_fmt(fmt) "barebox-tlv: " fmt
> > > +#include "tlv/format.h"
> > >   #include <common.h>
> > >   #include <tlv/tlv.h>
> > > @@ -9,6 +10,80 @@
> > >   #include <linux/stat.h>
> > >   #include <crc.h>
> > >   #include <net.h>
> > > +#include <crypto/public_key.h>
> > > +
> > > +static int tlv_verify_try_key(const struct public_key *key, const uint8_t *sig,
> > > +			      const uint32_t sig_len, const void *data,
> > > +			      unsigned long data_len)
> > > +{
> > > +	enum hash_algo algo = HASH_ALGO_SHA256;
> > > +	int ret;
> > > +	struct digest *digest;
> > > +	void *hash;
> > > +
> > > +	digest = digest_alloc_by_algo(algo);
> > > +	if (!digest)
> > > +		return -ENOMEM;
> > > +
> > > +	digest_init(digest);
> > > +	if (IS_ERR(digest)) {
> > 
> > What you meant to do here is
> > 
> > 	ret = digest_init(digest);
> > 	if (ret) {
> > 		...
> > 	}
> > 
> 
> I used IS_ERR() here simply because that's how I saw it in
> common/image-fit.c. Will that need to be changed too then?

I don't see that the return value of digest_init() is checked in
common/image-fit.c.

Yes, we should consistently check the return value of digest_init().

Anyway, my point was that your IS_ERR(digest) is bogus.

> > > +	for_each_public_key_keyring(key, id, keyring) {
> > > +		u32 spki_key = get_unaligned_le32(key->hash);
> > > +
> > > +		if (spki_key == spki_tlv) {
> > > +			count_spki_matches++;
> > > +			ret = tlv_verify_try_key(key, spki_tlv_ptr + SPKI_LEN, sig_len - SPKI_LEN, header, payload_sz);
> > > +			if (!ret)
> > > +				return 0;
> > > +			pr_warn("TLV spki %08x matched available key but signature verification failed: %pe!\n", spki_tlv, ERR_PTR(ret));
> > 
> > Not sure what this warning is about. Either it can happen that there are
> > two keys with the same hash in which case there's nothing to warn about,
> > or it can't happen and you would return an error here.
> 
> When this happens, there is either a 32-bit hash collision, or
> something's broken, such as what we had last week, where ECDSA keys
> where incorrectly initialized, leading to signature verification to
> always fail even with a valid key.
> 
> We can't error out here already because when we designed the TLV
> signature verification feature we specified that in case of spki hash
> collision, all matching keys must be tried.

Ok, considering that a hash collision can happen we shouldn't warn about
it.

> > > +	if (decoder->signature_keyring) {
> > > +		ret = tlv_verify(header, decoder->signature_keyring);
> > > +		if (ret)
> > > +			return ret;
> > 
> > Does this mean I can bypass the verification just by putting some
> > unsigned TLV data with TLV_MAGIC_BAREBOX_V1 into the TLV partition?
> 
> If barebox_tlv_v1 or another unsigned decoder is enabled, its compatible
> needs to be referenced in a devicetree node in order for unsigned TLVs
> to be parseable (except when using the "TLV" command which does create a
> new devicetree node named tlv<num>).
> 
> Even if both signed and unsigned decoder are both enabled and referenced
> in the devicetree (and I can see applications where this may be
> desirable), feeding the device with unsigned TLV data never lets you
> modify the devicetree node that has a compatible string of a signed TLV
> decoder.

I see. I hoped I missed something :)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


