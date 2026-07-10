Delivery-date: Fri, 10 Jul 2026 19:55:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wiFRS-002Kdy-01
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 19:55:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7CF19202021
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 19:55:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oLeZ0tGE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q0SOyG5DmTuaj55iojBOPf8HhSOx6nZ9Nqh4b91ultY=; b=oLeZ0tGEc3a41XO6RA5RHg6hrn
	PRHFAhJrDAdl3geCLK50w+2IhN+0tDyTTH80W1TG37HCyAVhM94F/wCUaIrYp4YxBNT2cckPyucff
	J+OEtOyt1SxwSN1eJBQzdxqQyGCaLd4zWyk77wT8buJKj6X8/so0nriMwGR+UKzLK3j6+jjorjLCB
	q4i3ZVXy4lmTuR3rRrx3XatywBvUF2SBRw4EQbamoI81c3skrwow429XjW7o+qDBi4z4XMo1c74X/
	nHtiS8AXa5Vbv+qLrTSoHRn3e0P0pgPNalrbAPFiMjDcjQ0AnK5zlIXGEHs4m/aVUNf/8ZudVkdEC
	SpQgBPUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiFQF-00000005T5D-0k6X;
	Fri, 10 Jul 2026 17:53:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiFQA-00000005T4W-2xAL
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 17:53:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wiFQ7-0000UQ-25; Fri, 10 Jul 2026 19:53:51 +0200
Message-ID: <6c5a0521-7374-40d9-9bd4-1bddd123efdb@pengutronix.de>
Date: Fri, 10 Jul 2026 19:53:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] PBL: add pbl_sha256()
To: Lucas Stach <l.stach@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260709-pbl-sha256-v1-0-453800909579@pengutronix.de>
 <20260709-pbl-sha256-v1-1-453800909579@pengutronix.de>
 <7ed858acc36fa7e9ae970f98d5a96e712e01b44c.camel@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <7ed858acc36fa7e9ae970f98d5a96e712e01b44c.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_105354_750473_A219C819 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 7/10/26 19:01, Lucas Stach wrote: > Am Donnerstag, dem
   09.07.2026 um 13:14 +0200 schrieb Sascha Hauer: >> The PBL open-codes SHA-256
    as sha256_init()/sha256_update()/sha256_final() >> wherever it n [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7CF19202021
X-Stat-Signature: hekkbj367qr3h3bcjxiq8w63aiuuw5xi

On 7/10/26 19:01, Lucas Stach wrote:
> Am Donnerstag, dem 09.07.2026 um 13:14 +0200 schrieb Sascha Hauer:
>> The PBL open-codes SHA-256 as sha256_init()/sha256_update()/sha256_final()
>> wherever it needs to hash a blob, which always uses the generic C transform.
>> Add pbl_sha256(), a one-shot helper that hides this behind a single call and
>> is free to pick the best transform available in the PBL. For now it only
>> wraps the generic C implementation; an accelerated path is added on top in a
>> later commit.
>>
>> Convert pbl_barebox_verify() in pbl/decomp.c to the new helper as the first
>> user.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>>  include/crypto/pbl-sha.h |  4 ++++
>>  pbl/Makefile             |  1 +
>>  pbl/decomp.c             |  6 +-----
>>  pbl/sha256.c             | 25 +++++++++++++++++++++++++
>>  4 files changed, 31 insertions(+), 5 deletions(-)
>>
>> diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
>> index 7d323ab479..2508448ab4 100644
>> --- a/include/crypto/pbl-sha.h
>> +++ b/include/crypto/pbl-sha.h
>> @@ -3,6 +3,7 @@
>>  
>>  #define __PBL_SHA_H_
>>  
>> +#include <crypto/sha.h>
>>  #include <digest.h>
>>  #include <types.h>
>>  
>> @@ -10,4 +11,7 @@ int sha256_init(struct digest *desc);
>>  int sha256_update(struct digest *desc, const void *data, unsigned long len);
>>  int sha256_final(struct digest *desc, u8 *out);
>>  
>> +/* One-shot SHA-256 that picks the best transform available in the PBL. */
>> +void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE]);
>> +
>>  #endif /* __PBL-SHA_H_ */
>> diff --git a/pbl/Makefile b/pbl/Makefile
>> index 45cfbf5fba..4506f192fe 100644
>> --- a/pbl/Makefile
>> +++ b/pbl/Makefile
>> @@ -6,6 +6,7 @@
>>  pbl-y += misc.o
>>  pbl-y += string.o
>>  pbl-y += malloc.o
>> +pbl-y += sha256.o
>>  pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
>>  pbl-$(CONFIG_LIBFDT) += fdt.o
>>  pbl-$(CONFIG_PBL_CONSOLE) += console.o
>> diff --git a/pbl/decomp.c b/pbl/decomp.c
>> index 1539a6b67e..2b3c35012f 100644
>> --- a/pbl/decomp.c
>> +++ b/pbl/decomp.c
>> @@ -58,8 +58,6 @@ extern unsigned char sha_sum_end[];
>>  int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>>  		       const void *hash, unsigned int hash_len)
>>  {
>> -	struct sha256_state sha_state = { 0 };
>> -	struct digest d = { .ctx = &sha_state };
>>  	char computed_hash[SHA256_DIGEST_SIZE];
>>  	int i;
>>  	const char *char_hash = hash;
>> @@ -67,9 +65,7 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>>  	if (hash_len != SHA256_DIGEST_SIZE)
>>  		return -1;
>>  
>> -	sha256_init(&d);
>> -	sha256_update(&d, compressed_start, len);
>> -	sha256_final(&d, computed_hash);
>> +	pbl_sha256(compressed_start, len, computed_hash);
>>  	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>>  		puts_ll("CH ");
>>  
>> diff --git a/pbl/sha256.c b/pbl/sha256.c
>> new file mode 100644
>> index 0000000000..86e54f8a25
>> --- /dev/null
>> +++ b/pbl/sha256.c
>> @@ -0,0 +1,25 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * pbl_sha256() - one-shot SHA-256 for the PBL, picking the best available
>> + * transform (ARMv8 Crypto Extensions if present, else generic C).
> 
> This file isn't ARMv8 specific, so I don't really see why the comment
> would reference a specific implementation.
> 
>> + */
>> +
>> +#include <common.h>
>> +#include <crypto/sha.h>
>> +#include <crypto/pbl-sha.h>
>> +#include <digest.h>
>> +
>> +static void pbl_sha256_generic(const void *buf, size_t len, u8 *out)
>> +{
>> +	struct sha256_state state = { };
>> +	struct digest d = { .ctx = &state, .length = SHA256_DIGEST_SIZE };
>> +
>> +	sha256_init(&d);
>> +	sha256_update(&d, buf, len);
>> +	sha256_final(&d, out);
>> +}
>> +
>> +void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE])
> 
> That's a weird way to write "u8 *out"...

Not weird enough: If we make it

u8 out[static SHA256_DIGEST_SIZE])

Compiler can emit some useful warnings if it deduces buffer isn't big enough.

Cheers,
Ahmad

> 
>> +{
>> +	pbl_sha256_generic(buf, len, out);
>> +}
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


