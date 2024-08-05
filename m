Delivery-date: Mon, 05 Aug 2024 11:30:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sau2W-006Rea-0W
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 11:30:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sau2V-0000vr-J2
	for lore@pengutronix.de; Mon, 05 Aug 2024 11:30:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1mOnDB9pvpc8JbcohrUhHSP0xA50qq7pmqQWZCUuzYM=; b=ETAP0FqjcmvjlGVlcSD4oh4Bc9
	/o5E9MxwdFMBW3altQXdrKxIGz3rZiY4oJXN4lqdG+QgAUm2skhmdiHXzi8jjMMkOPoZxcJXr8Mna
	TXxknhh85JRBgKz6pzI9gEgQSQnRzPdcyYLH0nEJODWAkhxWIXrymiDxSU0wy8oA+YE4HX+JOPSCB
	FLMQSTPVAFr8HYVXMLg7TjntpqO2BzOL+p9hU4ceAxoCl313MP/TYs91CycmicRaLg0vX/oBYoaWN
	coPpJrsY4TYD4DgJv1gdsyrd0HbseESXcEml3gsTsz1OY4PduNIhSXeAg2CH7jDEi7/adkOU3PLYh
	TQzpIaGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau26-0000000FI0a-2awC;
	Mon, 05 Aug 2024 09:29:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau23-0000000FHzh-0CRv
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 09:29:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sau21-0000mO-RZ; Mon, 05 Aug 2024 11:29:33 +0200
Message-ID: <2c8b0ede-1d51-4412-a110-5369382eb3fb@pengutronix.de>
Date: Mon, 5 Aug 2024 11:29:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-4-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_022935_119897_EEF43C58 
X-CRM114-Status: GOOD (  18.15  )
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
Subject: Re: [PATCH v2 03/19] rsatoc: remove unnecessary function call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> Calling ENGINE_set_default_RSA() doesn't seem appropriate for upcoming
> ECDSA support. I don't know what the call is good for, it works without
> it, so remove it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/rsatoc.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index ed167bf247..37728899f8 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -289,12 +289,6 @@ static int rsa_engine_init(ENGINE **pe)
>  		}
>  	}
>  
> -	if (!ENGINE_set_default_RSA(e)) {
> -		fprintf(stderr, "Couldn't set engine as default for RSA\n");
> -		ret = -1;
> -		goto err_set_rsa;
> -	}
> -
>  	*pe = e;
>  
>  	return 0;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



