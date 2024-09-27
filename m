Delivery-date: Fri, 27 Sep 2024 09:09:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su56X-003JNL-0k
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 09:09:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su56X-000417-Mh
	for lore@pengutronix.de; Fri, 27 Sep 2024 09:09:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V5cTYH4ZBUkZGS3XDSc/bm9f8/AoyGoJ2BB/rO2SVl8=; b=nTrx62I1ztzhigwLNUBb9i1Ln7
	dtxCd5ohPGiSwskDnJK9u752ECRleDI9a4QZ/Bq6jNF9nZ7DDI9vqNtruo2gaFG1DHiwJL4HQo9Rb
	gI0UxsPgIjFd7sM0jFHsX8kdRjkv6uZ9xvyXNeGu96jAMgzMZ4nNbN1ip2dTNE2HfOKH6W2apdc2g
	Tj7T2jrEN68n0turqHcN9EMqR2s4CXfJmm0ZBED39rnIPW/l2pl5fX5ovwhiAm9B2DeAG/uGxhj2m
	miJJNoPjI4xsclMsf2NM/kAE4doHEiy8MYdMvVs67Jf3xYmhgVXK3iEs6zO3JZIIvKADIS9qwVdgp
	NNsafwQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su563-0000000AInT-1P8r;
	Fri, 27 Sep 2024 07:08:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su4yd-0000000AHXG-2ANn
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 07:01:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su4yc-0000U9-8e; Fri, 27 Sep 2024 09:01:18 +0200
Message-ID: <72a300ba-4e32-485e-977c-2fde060e6561@pengutronix.de>
Date: Fri, 27 Sep 2024 09:01:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-6-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-6-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_000119_596498_EFFE75B9 
X-CRM114-Status: GOOD (  16.89  )
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
Subject: Re: [PATCH v4 05/16] crypto: Makefile: make simpler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> We have:
> 
> $(if $(RSA_DEP),$<,$(CONFIG_CRYPTO_RSA_KEY))
> 
> '$<' is the first dependency which is $(RSA_DEP). $(RSA_DEP) is either
> empty (in which case $(CONFIG_CRYPTO_RSA_KEY) is used), or set to
> $(CONFIG_CRYPTO_RSA_KEY) a few lines up.
> so all this is a complicated way of using $(CONFIG_CRYPTO_RSA_KEY)
> directly.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  crypto/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/crypto/Makefile b/crypto/Makefile
> index e84360a8c7..d7a06a721d 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -34,5 +34,5 @@ RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
>  endif
>  
>  $(obj)/rsa-keys.h: $(RSA_DEP) FORCE
> -	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(if $(RSA_DEP),$<,$(CONFIG_CRYPTO_RSA_KEY)))
> +	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CONFIG_CRYPTO_RSA_KEY))
>  endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


