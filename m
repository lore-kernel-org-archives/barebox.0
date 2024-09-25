Delivery-date: Wed, 25 Sep 2024 10:53:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stNmQ-002WqK-0Z
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 10:53:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stNmQ-0007PC-Lb
	for lore@pengutronix.de; Wed, 25 Sep 2024 10:53:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9HbfwulMgMSFFRjDe2fB8T8EEpNFG6904G780N/lRQo=; b=ElYTKNaG0ApVRWynXpyrfRgoYg
	shDonfrzpzVcjEMfwjeTVasnh/h/F4ldKMJ08+/k/uah5miS2UsIfwDbwmatFTGH5CdynaAeWF3Kk
	A5Wc8dkXNG1SX6FX1na90vZTYilS7Mel2BPNfCPqetrx5qicAy1gFAPxubeqe+64qXwYKAk0EJ7+T
	ZImTqBf+9BXFG0y9/L+z16q42utFsE7oz+5pSC6mnYoDnhYrpkXH6UIXnqlV35/NftyCVBZMIvj02
	ViFUukq6X++nMhDWAYYClaC0Cg2oH9TRwkRTDMVWJ9tVF3yoUtSRTzfCdQmHOQgRa0x/IN8Io5dMI
	94bNwVDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stNlp-00000004XzU-2onZ;
	Wed, 25 Sep 2024 08:53:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stNlm-00000004Xxu-0QSf
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 08:53:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stNlj-0007Hq-9e; Wed, 25 Sep 2024 10:53:07 +0200
Message-ID: <9befb925-04ed-416b-b9a1-f7da34195c31@pengutronix.de>
Date: Wed, 25 Sep 2024 10:53:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-2-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_015310_318380_23E90B91 
X-CRM114-Status: GOOD (  18.18  )
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
Subject: Re: [PATCH v4 01/16] keytoc: remove ECDSA dts support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> Generating dts snippets for ECDSA keys does not work properly,
> there are various endianess problems. As we do not need this currently
> for barebox drop the support for now.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/keytoc.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 60e177aeee..3ac42bc6d0 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -470,15 +470,8 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
>  		return -EINVAL;
>  
>  	if (dts) {
> -		fprintf(outfilep, "\t\tkey-%s {\n", key_name_c);
> -		fprintf(outfilep, "\t\t\tecdsa,x-point = <");
> -		print_bignum(key_x, bits);
> -		fprintf(outfilep, ">;\n");
> -		fprintf(outfilep, "\t\t\tecdsa,y-point = <");
> -		print_bignum(key_y, bits);
> -		fprintf(outfilep, ">;\n");
> -		fprintf(outfilep, "\t\t\tecdsa,curve = \"%s\";\n", group);
> -		fprintf(outfilep, "\t\t};\n");
> +		fprintf(stderr, "ERROR: generating a dts snippet for ECDSA keys is not yet supported\n");
> +		return -EOPNOTSUPP;
>  	} else {
>  		fprintf(outfilep, "\nstatic uint32_t %s_x[] = {", key_name_c);
>  		print_bignum(key_x, bits);
> @@ -598,6 +591,9 @@ static int gen_key(const char *keyname, const char *path)
>  	}
>  
>  	ret = gen_key_ecdsa(key, keyname, key_name_c);
> +	if (ret == -EOPNOTSUPP)
> +		return ret;
> +
>  	if (ret)
>  		ret = gen_key_rsa(key, keyname, key_name_c);
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


