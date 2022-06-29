Delivery-date: Wed, 29 Jun 2022 11:28:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6TzT-0011bl-0o
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 11:28:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6TzV-00007e-2u
	for lore@pengutronix.de; Wed, 29 Jun 2022 11:28:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kGCEAOkKBGHR0XZ5wjNgeVnbnYZfyl7xnuHdBlbnQf4=; b=zz9p5Iw0FVpP6ao1vJI4jsl0nA
	Qt13H5nYQnDLtrgF/wmXfGfedk6063NM+ar8hB54daklvyFXeyjGdmG3NmPatdozvEdBPD1cAKkRx
	U9eaQD8S4xZX/ClcRc2B1zxOlMnemnxLfDoEZxWxsQcIMIhP0Dmo27Tk3MpaQ6EYuU6x4i75BOAd4
	l8OeYK/wfWpXoLbxOS2GwaQXgxxeM/WbLISWjQ6/c8EI4hzZKQqMee4DNRWYqwmpBoc65IgpXyDqR
	4UzefCZ51QVX0ulnijcXAIUBlKvejXwFLbSEBYy6ZRikEq5n/5D7bOw+y0sPg1WAEfjolnHFSmSXM
	z2sKF35g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Ty6-00AfEA-QJ; Wed, 29 Jun 2022 09:26:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Ty1-00AfCf-St
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 09:26:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6Txy-0008Jb-Ej; Wed, 29 Jun 2022 11:26:34 +0200
Message-ID: <892ca07e-a3c7-4618-b83a-10fab9269a2c@pengutronix.de>
Date: Wed, 29 Jun 2022 11:26:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
References: <20220629085628.106086-1-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220629085628.106086-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_022637_980127_E7AC3B66 
X-CRM114-Status: GOOD (  20.15  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] watchdog: imxwd: Convert error messages in .probe
 to dev_err_probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29.06.22 10:56, Uwe Kleine-König wrote:
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

Once there are enough dev_err_probe users, we could make it optional
to compile these strings in, so thanks for using it:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/watchdog/imxwd.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index 31ea388c2cf2..e9856c94c2fc 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -239,10 +239,9 @@ static int imx_wd_probe(struct device_d *dev)
>  
>  	priv = xzalloc(sizeof(struct imx_wd));
>  	iores = dev_request_mem_resource(dev, 0);
> -	if (IS_ERR(iores)) {
> -		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(iores);
> -	}
> +	if (IS_ERR(iores))
> +		return dev_err_probe(dev, PTR_ERR(iores),
> +				     "could not get memory region\n");
>  
>  	clk = clk_get(dev, NULL);
>  	if (IS_ERR(clk))
> @@ -279,7 +278,8 @@ static int imx_wd_probe(struct device_d *dev)
>  	if (priv->ops->init) {
>  		ret = priv->ops->init(priv);
>  		if (ret) {
> -			dev_err(dev, "Failed to init watchdog device %d\n", ret);
> +			dev_err_probe(dev, ret,
> +				      "Failed to init watchdog device\n");
>  			goto error_unregister;
>  		}
>  	}


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


