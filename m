Delivery-date: Fri, 18 Jul 2025 19:13:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucoeh-001HDE-16
	for lore@lore.pengutronix.de;
	Fri, 18 Jul 2025 19:13:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucoeg-0007GV-Q7
	for lore@pengutronix.de; Fri, 18 Jul 2025 19:13:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W6JiI2CT4Ol7dXEX5T10CkKJBUbPijhDFccIbekudGc=; b=K6a+2kAWCT+k8d2Lz7V7xGODY0
	w4KZrggEGMWMoM88jjWvaHM85Aze+0FbO3jo7zxfp3/95DLf+vomDq9R09Sao5rMhfgxv9kYqMuIu
	B384UBUlieYRkgcLdTu9UC19wtKoWtMN7xTxzn5CjdSUl3yFrQkpXnIMRL5cZNeokeoy+rVb4WViF
	EGA5jAT7Vg/ahM/fnY4DsKgvAJ1fvLy2PMOQegfouEtTQfUipndKWiCM1RURnfs0c3Ct9m4ldbGAR
	ky+eBVCYBrZoS4d4EVsY6l3EMNafEfsJThhCm1QbnValU5ZAPowQJP/mzrz/HWZCh4v1jveVLXn8i
	UJONMeSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucodz-0000000DBqp-3cs5;
	Fri, 18 Jul 2025 17:13:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucoYO-0000000DBE9-0B7h
	for barebox@lists.infradead.org;
	Fri, 18 Jul 2025 17:07:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ucoYK-00027r-Dg; Fri, 18 Jul 2025 19:07:20 +0200
Message-ID: <a629c053-7446-405a-946c-d02174e12925@pengutronix.de>
Date: Fri, 18 Jul 2025 19:07:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
References: <20250718-clk_register-v1-1-009e23a7da84@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250718-clk_register-v1-1-009e23a7da84@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_100724_086821_63A975F9 
X-CRM114-Status: GOOD (  17.90  )
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
Subject: Re: [PATCH] clk: clk-gpio: Use clk_register instead of bclk_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.07.25 15:37, Jonas Rebmann wrote:
> GPIO-gated clocks wrongfully used barebox clock interface which leads to
> bugs due to clk not being initialized from init->ops.
> 

Fixes: b1fb0aac1ed5 ("gpio: clk-gpio: Updating the driver from the kernel repository")

> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/clk/clk-gpio.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
> index dc61c88b9f..3f9760c921 100644
> --- a/drivers/clk/clk-gpio.c
> +++ b/drivers/clk/clk-gpio.c
> @@ -96,7 +96,6 @@ static struct clk_hw *clk_register_gpio(struct device *dev, u8 num_parents,
>  	struct clk_hw *hw;
>  	struct clk_init_data init = {};
>  	const char *parent_names[2];
> -	int err;
>  
>  	clk_gpio = xzalloc(sizeof(*clk_gpio));
>  	if (!clk_gpio)
> @@ -116,11 +115,7 @@ static struct clk_hw *clk_register_gpio(struct device *dev, u8 num_parents,
>  	clk_gpio->hw.init = &init;
>  
>  	hw = &clk_gpio->hw;
> -	err =  bclk_register(&clk_gpio->hw.clk);
> -	if (err)
> -		return ERR_PTR(err);
> -
> -	return hw;
> +	return clk_to_clk_hw(clk_register(dev, hw));
>  }
>  
>  static struct clk_hw *clk_hw_register_gpio_gate(struct device *dev,
> 
> ---
> base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
> change-id: 20250717-clk_register-3ff98f73451e
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


