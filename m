Delivery-date: Mon, 27 Jun 2022 12:53:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5mMo-00GHpZ-P6
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:53:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5mMq-0004lQ-De
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:53:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bAj5TvwP82m1Ge3aucvaKMtJkr9Er1X7X/DObWYdDBA=; b=PtUDdXy0nhmk4Hlubm9KvxHlTl
	eNQvQDBfag2CQnCMXJaLZnJXHBvI6cDdQlFjf8qwCj5JA2IH7zx0Qw2mGli1vBDNJgExPhwuqbQQQ
	9dE+1f/hiSCmUpEv/0b6UpjVNomvjCf+mHwB759UGwg5p7yBhG35oq7KZAMZBQmr8zmI01Evy/4AY
	yD/7tlvz9E0aGsSdk0xxiDrSnwOR6l8u11in8LbH/e9JS9y07oB7/OI2bbx2ifMYgPdmScX6TKMF/
	sBD7QYW2RzsfHL/r3v3o2nj7Fv2nXobRqeCbeGKi0SX169/JbMyxm5QjDMssrk+G3dq6sJoiS+SO/
	bUeKnA6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5mLT-000GyK-6K; Mon, 27 Jun 2022 10:51:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5mLO-000GuC-0R
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:51:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o5mLK-0004eb-0p; Mon, 27 Jun 2022 12:51:46 +0200
Message-ID: <b204e43f-3a98-b666-8a78-3281f5221f17@pengutronix.de>
Date: Mon, 27 Jun 2022 12:51:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
References: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_035150_122801_E636DE2E 
X-CRM114-Status: GOOD (  19.05  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] watchdog: imxwd: Add error messages for some failure
 points in .probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Uwe,

On 27.06.22 12:33, Uwe Kleine-König wrote:
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/watchdog/imxwd.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index 31ea388c2cf2..3e596b55f8f7 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -245,12 +245,16 @@ static int imx_wd_probe(struct device_d *dev)
>  	}
>  
>  	clk = clk_get(dev, NULL);
> -	if (IS_ERR(clk))
> +	if (IS_ERR(clk)) {
> +		dev_err(dev, "Failed to get clk: %d\n", PTR_ERR(clk));

Can you use dev_err_probe instead? Same for the messages below.

>  		return PTR_ERR(clk);
> +	}
>  
>  	ret = clk_enable(clk);
> -	if (ret)
> +	if (ret) {
> +		dev_err(dev, "Failed to enable clk: %d\n", ret);
>  		return ret;
> +	}
>  
>  	priv->base = IOMEM(iores->start);
>  	priv->ops = ops;
> @@ -272,14 +276,16 @@ static int imx_wd_probe(struct device_d *dev)
>  		}
>  
>  		ret = watchdog_register(&priv->wd);
> -		if (ret)
> +		if (ret) {
> +			dev_err(dev, "Failed to register watchdog device: %d\n", ret);
>  			goto on_error;
> +		}
>  	}
>  
>  	if (priv->ops->init) {
>  		ret = priv->ops->init(priv);
>  		if (ret) {
> -			dev_err(dev, "Failed to init watchdog device %d\n", ret);
> +			dev_err(dev, "Failed to init watchdog device: %d\n", ret);
>  			goto error_unregister;
>  		}
>  	}
> 
> base-commit: 512d036587a38c57a30cc63ce48c19c895b9d729


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


