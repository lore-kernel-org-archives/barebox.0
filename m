Delivery-date: Mon, 05 Aug 2024 11:57:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauSf-006S00-2x
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 11:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauSf-0004Eo-Bg
	for lore@pengutronix.de; Mon, 05 Aug 2024 11:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cuU0gcjyUCAr+9cQgHcVbVKxh8i0CX/6wwz7Q5yJYw4=; b=TVn62kfs80PBHGC7uBm6/MNf1X
	fq0cweWOjLO+9hJOhq6uc44hyC0ytsFehleejvQjh0+idMxK+OJcUINzo+3+5BN1cGsBsHRG4m+dO
	o99BeMh32UxC02WbQ6neBGIcDwvmjxeblpXeQ2iUEsOcOLybiMwfIAEbc91uRnRrBUofdpztmOuY0
	SbkUXgcBkNrP8vD4+xYCjeI81CHhpysVdWOzqtFyrXHeuKgDMGU8bNd0UPh02wrI5lIJxzYcMN5mf
	v/c1V1TLjQ5tFZLzGfkN8OhfwGmVZHNBP0nsMOIF1yXEK2sGccT1U6tigp8+BcPhxaa1lgF3oZCTa
	HYcMHr8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauS6-0000000FP8T-025B;
	Mon, 05 Aug 2024 09:56:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauS2-0000000FP7U-2WB0
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 09:56:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauS1-00048s-D1; Mon, 05 Aug 2024 11:56:25 +0200
Message-ID: <158f349e-edef-48f3-a4c8-a072e6990a53@pengutronix.de>
Date: Mon, 5 Aug 2024 11:56:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-9-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-9-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_025626_669751_871CA535 
X-CRM114-Status: GOOD (  16.91  )
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
Subject: Re: [PATCH v2 08/19] rsatoc: remove unnecessary error check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> In rsa_get_exponent() 'e' will always be a non NULL argument, no need to
> check for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/rsatoc.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index 22f0318298..afef6212d0 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -163,15 +163,10 @@ static int engine_get_pub_key(const char *key_id, EVP_PKEY **key)
>  static int rsa_get_exponent(RSA *key, uint64_t *e)
>  {
>  	int ret;
> -	BIGNUM *bn_te;
> +	BIGNUM *bn_te = NULL;
>  	const BIGNUM *key_e;
>  	uint64_t te;
>  
> -	bn_te = NULL;
> -
> -	if (!e)
> -		goto cleanup;
> -
>  	RSA_get0_key(key, NULL, &key_e, NULL);
>  	if (BN_num_bits(key_e) > 64) {
>  		ret = -EINVAL;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



