Delivery-date: Mon, 05 Aug 2024 11:39:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauBo-006Rm8-18
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 11:39:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauBn-0002gK-MU
	for lore@pengutronix.de; Mon, 05 Aug 2024 11:39:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yQK9ui8QeTKyBCUI8/Uc5e/jpYwQY5OEhvo2jQukIQ8=; b=ZY87wokMaVB7Wc0H5P3gGu8Lm0
	N3bdmHAoiwKdjKq44ykMR3fsF/pvuo/8E/vmWHjOjSYknqFqZft2OhVcJDKmQjUPmZwd8ggxin6k7
	MOlp2uNTT74+DezBwgwkf9NJCrB2yexzdvmedaxZElcbfA0UqWhUAfzml0JCW9CMS4e8fZnt6BFkQ
	eQAG9HjrozOrXMZ5UzggHyTf68AO8k646TtSZIGosSMq5dCIMC1JP7cX8pttA/wE7FAbzjMjf21D4
	2+U30oP6ia8rUB8CsxmgCXDR9AcK9gwBmBOI7vwJa4UOiTLwjid6X7bxr+SmNV+BLNx2QIklxkIT1
	le38BXwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauBL-0000000FMHb-0DpM;
	Mon, 05 Aug 2024 09:39:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau9a-0000000FLDg-3UYn
	for barebox@bombadil.infradead.org;
	Mon, 05 Aug 2024 09:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=yQK9ui8QeTKyBCUI8/Uc5e/jpYwQY5OEhvo2jQukIQ8=; b=bR+mOdoY1+GlRNDmF+IccAsDnj
	eL4Z0ndq5UDs6sOhpuaDMi09UyS1WTmleeR3BgN8XBazg6D9dCebuf77DsrSSnsqZmBcDoKlmpN0U
	36IzN/i6+/Ij/DzgqiTrjDHh86asqMFni7mFg5YLleqLWx2O5Tyje5v42kZF7f66oHynCjHPrbA47
	UBhEtvrJK8ySEPgcz3YAxdZkCb7JwspcaiAq7gdujBY5Y3sbxvAm9DQCcO5QKkhRMQsvLfvdSaITj
	0SkcyImRsCW8YOi71q305a9z8gaXdLge6X2jqSKlXnFsNMskDPhZWGxMLWIKIQSuyde9HBfV8Ncfe
	Nr/l76CQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau9W-00000006EKq-2FUu
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 09:37:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sau9W-0002FH-2u; Mon, 05 Aug 2024 11:37:18 +0200
Message-ID: <8168c6a2-f444-4562-8748-ed26c0c8121c@pengutronix.de>
Date: Mon, 5 Aug 2024 11:37:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-6-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-6-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_103718_737783_A1298BC5 
X-CRM114-Status: GOOD (  20.45  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 05/19] rsatoc: rename rsa_err() to openssl_error()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 01.08.24 07:57, Sascha Hauer wrote:
> There's nothing rsa_err() specific in this function, rename to
> openssl_error().
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Just one nit below, which can follow separately though.

> ---
>  scripts/rsatoc.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index 462963424a..1d2eb48d08 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -21,7 +21,7 @@
>  
>  static int dts, standalone;
>  
> -static int rsa_err(const char *msg)
> +static int openssl_error(const char *msg)
>  {
>  	unsigned long sslErr = ERR_get_error();
>  
> @@ -61,7 +61,7 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
>  		rewind(f);
>  		key = PEM_read_PUBKEY(f, NULL, NULL, NULL);
>  		if (!key) {
> -			rsa_err("Couldn't read certificate");
> +			openssl_error("Couldn't read certificate");
>  			ret = -EINVAL;
>  			goto err_cert;
>  		}
> @@ -69,7 +69,7 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
>  		/* Get the public key from the certificate. */
>  		key = X509_get_pubkey(cert);
>  		if (!key) {
> -			rsa_err("Couldn't read public key\n");
> +			openssl_error("Couldn't read public key\n");

No fault of this patch, but this trailing line feed should be dropped,
so the error message doesn't span two lines.

>  			ret = -EINVAL;
>  			goto err_pubkey;
>  		}
> @@ -103,7 +103,7 @@ static int engine_get_pub_key(const char *key_id,
>  {
>  	*key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
>  	if (!*key)
> -		return rsa_err("Failure loading public key from engine");
> +		return openssl_error("Failure loading public key from engine");
>  
>  	return 0;
>  }
> @@ -173,7 +173,7 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
>  	/* Convert to a RSA_style key. */
>  	rsa = EVP_PKEY_get1_RSA(key);
>  	if (!rsa) {
> -		rsa_err("Couldn't convert to a RSA style key");
> +		openssl_error("Couldn't convert to a RSA style key");
>  		return -EINVAL;
>  	}
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



