Delivery-date: Wed, 11 Jan 2023 09:00:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW2Y-008dgw-G0
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:00:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW2W-00081h-FT
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:00:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5aDD98FdzB/EG4WdRuDc379YbIckYHgQIBJqGMNiNBs=; b=RuzsIdS/vSfpR99JQAL+HmgFEk
	Ndmh4bGmIRqsaj/IbCWV3MXuTQW5q8vfrMZex0F48KLn3CbboDFLS9E4bG3ARmg6E9Te+7c2XO0WT
	gTvb98XwmHyqeP7Oft7Spn4hgCbPN833xjuGvefe7p1lg1qwUVtEInn36tpX/VRx51i1oFHGelg9g
	CPTTLQfU/qTa0zl0m+eCXe4lMrpijFGLOYIzcio5S5SZezX81toNwkPBXWpB25kj//dRErq8Rb2VT
	BzKk7fgv0DyM+i/qOd8k1Ih4pFNSTOEAbHs2pETZ3RkcCYFAsZZoQy6uHxpVA/JON23mRmd4jrxgc
	yUmfU2FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1E-00ADIv-RA; Wed, 11 Jan 2023 07:59:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW17-00ADHB-EJ
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:59:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFW16-0007Tq-4d; Wed, 11 Jan 2023 08:59:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFW15-0005nN-UI; Wed, 11 Jan 2023 08:59:23 +0100
Date: Wed, 11 Jan 2023 08:59:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111075923.GE24755@pengutronix.de>
References: <20230110174104.51204-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230110174104.51204-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235925_503843_F3FE4078 
X-CRM114-Status: GOOD (  22.90  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pinctrl: stm32: fix pinctrl/gpio dependency ordering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 06:41:04PM +0100, Ahmad Fatoum wrote:
> pinctrl_register will apply pinctrl hogs if specified and the STM32
> pinctrl driver expects the GPIO chips to be registered by then.
> 
> Swap the order of registration to accommodate this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/pinctrl/pinctrl-stm32.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
> index 5e6625072a8f..15d845e0ad34 100644
> --- a/drivers/pinctrl/pinctrl-stm32.c
> +++ b/drivers/pinctrl/pinctrl-stm32.c
> @@ -368,12 +368,6 @@ static int stm32_pinctrl_probe(struct device *dev)
>  		dev_dbg(dev, "proceeding without hw spinlock support: (%d)\n",
>  			ret);
>  
> -	ret = pinctrl_register(&pinctrl->pdev);
> -	if (ret) {
> -		dev_dbg(dev, "pinctrl_register failed: (%d)\n", ret);
> -		return ret;
> -	}
> -
>  	gpio_bank = pinctrl->gpio_banks;
>  	for_each_available_child_of_node(np, child) {
>  		if (!of_property_read_bool(child, "gpio-controller"))
> @@ -389,9 +383,7 @@ static int stm32_pinctrl_probe(struct device *dev)
>  		gpio_bank++;
>  	}
>  
> -	dev_dbg(dev, "pinctrl/gpio driver registered\n");
> -
> -	return 0;
> +	return pinctrl_register(&pinctrl->pdev);
>  }
>  
>  static __maybe_unused struct of_device_id stm32_pinctrl_dt_ids[] = {
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


