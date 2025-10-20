Delivery-date: Mon, 20 Oct 2025 14:59:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTh-009tpj-2K
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTb-0000tx-Js
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+BFJNRup3IH88uQ8xTVw2uG6cqY2lmp3EGSM1AupHbE=; b=urhnpmNTraujgJAbnSBHOT9EG4
	rSdNIdGPcEv2dKOPK8slbaHV8IQZaJBeB9L6QaDDyTZHGf/vMNvtBXg+12/FvRXMYhThHiI/0aluK
	ffgj0cGoGD1U9OW3n33vjQPRPeZc+5kqDI4oalS5gBz/qWka3YzGgsduDYASJamUmLg1xhWSCXeEt
	uQTHFhDhPZb+4gDj2IEfzBCPtlSLeBS0UadTNE6fXl/B+fARSoGL1bEiL45HI9jUluPijPlG5iKUM
	F3p7ZAhRVqBBXIw0KsrB8petTBsnBVbnl8cNubhRfgRFiBeCvfqMr3TW7Kvlqzkqut/yvzf7JwOEw
	e2SKnaTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSn-0000000DfLF-2hVF;
	Mon, 20 Oct 2025 12:58:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSg-0000000Df8A-0qmJ
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vApSe-0008EJ-R1
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAoAg-004XZ2-0D;
	Mon, 20 Oct 2025 13:35:26 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAoAf-007JfK-38;
	Mon, 20 Oct 2025 13:35:25 +0200
Date: Mon, 20 Oct 2025 13:35:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aPYefTVIVhDIazXE@pengutronix.de>
References: <20251014-ecdsa_keys-v1-1-08a72cfeec28@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-ecdsa_keys-v1-1-08a72cfeec28@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055806_259504_3716DFD6 
X-CRM114-Status: GOOD (  22.67  )
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
Subject: Re: [PATCH] crypto: ecdsa: remove unused ecdsa public key list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 14, 2025 at 11:38:36AM +0200, Jonas Rebmann wrote:
> This code is unused in barebox and is misleading as we're using
> public_key lists containing keys of all supported types.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  crypto/ecdsa.c         | 18 ------------------
>  include/crypto/ecdsa.h |  7 -------
>  2 files changed, 25 deletions(-)

This is fine. I came up with the same patch, please see my more complete
series I created before my holidays but haven't sent yet. I hope this
doesn't conflict with your TLV signature series.

Sascha

> 
> diff --git a/crypto/ecdsa.c b/crypto/ecdsa.c
> index 69c0accc95..6aaeff5c14 100644
> --- a/crypto/ecdsa.c
> +++ b/crypto/ecdsa.c
> @@ -104,15 +104,6 @@ int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
>  	return _ecdsa_verify(ctx, (void *)mhash, rh, sh);
>  }
>  
> -static LIST_HEAD(ecdsa_keys);
> -
> -int ecdsa_key_add(struct ecdsa_public_key *key)
> -{
> -	list_add_tail(&key->list, &ecdsa_keys);
> -
> -	return 0;
> -}
> -
>  struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
>  {
>  	struct ecdsa_public_key *new;
> @@ -129,12 +120,3 @@ struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
>  
>  	return new;
>  }
> -
> -const struct ecdsa_public_key *ecdsa_key_next(const struct ecdsa_public_key *prev)
> -{
> -	prev = list_prepare_entry(prev, &ecdsa_keys, list);
> -	list_for_each_entry_continue(prev, &ecdsa_keys, list)
> -		return prev;
> -
> -	return NULL;
> -}
> diff --git a/include/crypto/ecdsa.h b/include/crypto/ecdsa.h
> index 2e2b359d96..1bad70b9d2 100644
> --- a/include/crypto/ecdsa.h
> +++ b/include/crypto/ecdsa.h
> @@ -4,21 +4,14 @@
>  
>  #include <linux/types.h>
>  #include <linux/list.h>
> -#include <errno.h>
>  
>  struct ecdsa_public_key {
>  	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
>  	const uint64_t *x;	/* x coordinate of public key */
>  	const uint64_t *y;	/* y coordinate of public key */
>  	unsigned int size_bits;	/* key size in bits, derived from curve name */
> -	struct list_head list;
>  };
>  
> -const struct ecdsa_public_key *ecdsa_key_next(const struct ecdsa_public_key *prev);
> -
> -#define for_each_ecdsa_key(key) \
> -	for (key = ecdsa_key_next(NULL); key; key = ecdsa_key_next(key))
> -
>  #ifdef CONFIG_CRYPTO_ECDSA
>  int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
>  		 const uint32_t sig_len, const uint8_t *hash);
> 
> ---
> base-commit: 8785a6ad7467b6f1f70b6e12aa2ceb2fdd5d8546
> change-id: 20251014-ecdsa_keys-fd8125a83e38
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


