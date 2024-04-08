Delivery-date: Mon, 08 Apr 2024 10:26:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtkKw-002NlV-0W
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 10:26:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtkKv-0006zj-JA
	for lore@pengutronix.de; Mon, 08 Apr 2024 10:26:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pgK96SPZ4TSDrbR0SWGDYwSddz57067hvaCHxZEd/Ro=; b=nP6Ur9y3b8MM1XYksyB4H5vhBk
	kbZlj4Mz/WFgvZjtRL8VIyNoUbDAodtfBdvwuxvnEBecH0ACuxCshbMaaa9DjgznwdqUgt1eC+QEj
	s3nJ4MYv1tdijq8CfrkmkmMexpG2ocaZaeXJqFHlBdK0K+I0FGJ6TuEplfZWt+wnDfFne1APsbgCF
	p6VaM2WbcJSB336zYv3GQ6KPJltXSNhrXEvw1G/8xZhM7W8H4NlnZx150EECMFlJr6DxPDNcWlTPg
	5a/jl5bqeAuzzdK25I6TT9HIUb53JLd23jv1k53r2nuy3V5bXOtF2mTOKEGixU70NSczh9FeQhDot
	zzS5Qf4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkKV-0000000Et3T-3kWt;
	Mon, 08 Apr 2024 08:26:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkKT-0000000Et34-0zAf
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 08:26:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rtkKR-0006q8-D3; Mon, 08 Apr 2024 10:26:11 +0200
Message-ID: <d64a0c84-bca0-42c9-955e-be23a65c38c9@pengutronix.de>
Date: Mon, 8 Apr 2024 10:26:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20240408073612.4075622-1-m.felsch@pengutronix.de>
 <20240408073612.4075622-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240408073612.4075622-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_012613_310612_D0D29A0F 
X-CRM114-Status: GOOD (  17.73  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] bootm: always apply strict signed FIT boot rules
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 08.04.24 09:36, Marco Felsch wrote:
> We do use an strict boot rule if the CONFIG_BOOTM_FORCE_SIGNED_IMAGES
> switch was enabled. Instead of only checking the compile time switch we
> should check the runtime configurable $global.bootm.verify param too
> while applying the rule.
> 
> Therefore make use of the bootm_get_verify_mode() to query the mode. If
> CONFIG_BOOTM_FORCE_SIGNED_IMAGES was enabled the only allowed value is
> BOOTM_VERIFY_SIGNATURE.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Are you aware of https://lore.barebox.org/barebox/20231023162748.533468-1-a.fatoum@pengutronix.de/

Would that address your use case?

Cheers,
Ahmad

> ---
>  common/bootm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index e6703b19b3ba..03af3d2b28f7 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -699,7 +699,7 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		goto err_out;
>  	}
>  
> -	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
> +	if (bootm_get_verify_mode() == BOOTM_VERIFY_SIGNATURE) {
>  		data->verify = BOOTM_VERIFY_SIGNATURE;
>  
>  		/*

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



