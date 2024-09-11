Delivery-date: Wed, 11 Sep 2024 10:41:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIuR-003QU8-2I
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:41:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIuQ-0000bC-Fb
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:41:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NxCneNPeLpq8vxeGYoVcSq93P5vmH4J40AvKnhHT9Pk=; b=Lpl3M4Ph/fnJkLKmaVOB+dKLoM
	ckm6Jhi+mn0Rkz+kMKe0oA34Yhz5RDcKBxLqbmTOKmXyBdKqu+D67VtpgBZSpMLtskYJ+QAH67gl/
	QsNPhuX/wqm2CUu/pzn7W58mQUQrDqahUJDflt3MPxhnKpVDbodY1z5C8o35QVEPY751hW72PgGWv
	cuwrBckBODYQ6up+UBmRu9NxLPBZ4TbHdlKFAeQ9R5RjvZOvOO3L9uA5JYxVasQG/X52RMWWEwCCz
	LLKy+IjbXvoxu9tCh2DCWnQelmzvBtfwC4sWIC2psM5+EBnM5ldfkWyXcUShdRP0qDp1ju+7ZRvrj
	fIrty7JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soItz-00000008i3f-3Aha;
	Wed, 11 Sep 2024 08:40:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIrx-00000008hT0-2mbu
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:38:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIrw-0007et-4p; Wed, 11 Sep 2024 10:38:32 +0200
Message-ID: <62d3a433-a07f-4d18-96ca-331b5c9b1f0a@pengutronix.de>
Date: Wed, 11 Sep 2024 10:38:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
 <20240906104028.2187872-12-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240906104028.2187872-12-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_013834_308130_50255AF0 
X-CRM114-Status: GOOD (  19.09  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 11/15] crypto: public-keys: use array of public_keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 06.09.24 12:40, Sascha Hauer wrote:
> Instead of collecting the public keys directly in a section, we used to
> collect pointers to the public keys. This indirection is unnecessary,
> so drop it and put the keys directly into a section.

The loop adding the keys duplicates them first, so this change looks sensible.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  crypto/public-keys.c | 10 +++++-----
>  scripts/keytoc.c     | 12 ++++--------
>  2 files changed, 9 insertions(+), 13 deletions(-)
> 
> diff --git a/crypto/public-keys.c b/crypto/public-keys.c
> index 36c308908d..dc51ef18f8 100644
> --- a/crypto/public-keys.c
> +++ b/crypto/public-keys.c
> @@ -73,15 +73,15 @@ int public_key_verify(const struct public_key *key, const uint8_t *sig,
>  	return -ENOKEY;
>  }
>  
> -extern const struct public_key * const __public_keys_start;
> -extern const struct public_key * const __public_keys_end;
> +extern const struct public_key __public_keys_start[];
> +extern const struct public_key __public_keys_end[];
>  
>  static int init_public_keys(void)
>  {
> -	const struct public_key * const *iter;
> +	const struct public_key *iter;
>  
> -	for (iter = &__public_keys_start; iter != &__public_keys_end; iter++) {
> -		struct public_key *key = public_key_dup(*iter);
> +	for (iter = __public_keys_start; iter != __public_keys_end; iter++) {
> +		struct public_key *key = public_key_dup(iter);
>  
>  		if (!key)
>  			continue;
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 8b29118c95..bdda059759 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -489,13 +489,11 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
>  		fprintf(outfilep, "\t.y = %s_y,\n", key_name_c);
>  		fprintf(outfilep, "};\n");
>  		if (!standalone) {
> -			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
> +			fprintf(outfilep, "\nstruct public_key __attribute__((section(\".public_keys.rodata.%s\"))) %s_public_key = {\n", key_name_c, key_name_c);
>  			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
>  			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
>  			fprintf(outfilep, "\t.ecdsa = &%s,\n", key_name_c);
> -			fprintf(outfilep, "};");
> -			fprintf(outfilep, "\nstruct public_key *%s_ecdsa_p __attribute__((section(\".public_keys.rodata.%s\"))) = &%s_public_key;\n",
> -				key_name_c, key_name_c, key_name_c);
> +			fprintf(outfilep, "};\n");
>  		}
>  	}
>  
> @@ -555,13 +553,11 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
>  		fprintf(outfilep, "};\n");
>  
>  		if (!standalone) {
> -			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
> +			fprintf(outfilep, "\nstruct public_key __attribute__((section(\".public_keys.rodata.%s\"))) %s_public_key = {\n", key_name_c, key_name_c);
>  			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
>  			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
>  			fprintf(outfilep, "\t.rsa = &%s,\n", key_name_c);
> -			fprintf(outfilep, "};");
> -			fprintf(outfilep, "\nstruct public_key *%sp __attribute__((section(\".public_keys.rodata.%s\"))) = &%s_public_key;\n",
> -				key_name_c, key_name_c, key_name_c);
> +			fprintf(outfilep, "};\n");
>  		}
>  	}
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


