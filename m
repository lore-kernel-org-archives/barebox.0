Delivery-date: Wed, 13 Nov 2024 09:47:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB92a-001MnH-1O
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 09:47:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB92Z-0008Ey-RM
	for lore@pengutronix.de; Wed, 13 Nov 2024 09:47:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v42WzXAZ1OeyAjdDMxoZd2n4dJZ9x/pfy7JLMnWzkZY=; b=SXLupVEj+USisstYE0pJ18b7XH
	P0+ePv8Z4n7m1F4YsQjx/4Cmq1Exk0P/POR27xt9wU8kpGKT9QjCYhaftAKin118o40Lcc0GgvfIE
	F3l08JxJwK98WEofkhQZnRTFBvW/A+o6NVR43nkGQXI8wA52q+mSgWrtNCNyrxxar01rXUbKQ9jsq
	16RlCivyqHg+8+/YHPgAm4cwOMVKwSXZ5DY+HOjIhhvv9uua4qwGG+pIGa56/A7365k7jYqgsnmuH
	wcdxchH0XL0cSZztS3M9p3VCcqivhJwiNOrDzl0nY6IFIgiprKHxaSxLDuSeUNU8BKenuOpJ/4E6S
	4KeQjLDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB928-000000068sK-1gyU;
	Wed, 13 Nov 2024 08:47:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB925-000000068rl-3eSa
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 08:47:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tB924-00086u-8q; Wed, 13 Nov 2024 09:47:24 +0100
Message-ID: <ca70b3f9-a178-4c74-9b86-d4fae0093b00@pengutronix.de>
Date: Wed, 13 Nov 2024 09:47:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-3-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241107145722.5145-3-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_004725_941558_6E68C32F 
X-CRM114-Status: GOOD (  19.08  )
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
Subject: Re: [PATCH 2/6] clk: divider: add error code propagation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jules,

On 07.11.24 15:57, Jules Maselbas wrote:
> divider_get_val can return a negative error code and should not be used
> as a valid divider.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
>  drivers/clk/clk-divider.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
> index ccab70aecc..b05b042da5 100644
> --- a/drivers/clk/clk-divider.c
> +++ b/drivers/clk/clk-divider.c
> @@ -308,6 +308,7 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
>  	struct clk *clk = clk_hw_to_clk(hw);
>  	struct clk_divider *divider = to_clk_divider(hw);
>  	unsigned int value;
> +	int ret;
>  	u32 val;
>  
>  	if (divider->flags & CLK_DIVIDER_READ_ONLY)
> @@ -320,8 +321,10 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
>  		clk_set_rate(clk_get_parent(clk), parent_rate);
>  	}
>  
> -	value = divider_get_val(rate, parent_rate, divider->table,
> +	value = ret = divider_get_val(rate, parent_rate, divider->table,
>  				divider->width, divider->flags);
> +	if (ret < 0)
> +		return ret;

Can't we just make value an int? This tidies up the code a bit at no
change of behavior.

Thanks,
Ahmad

>  
>  	val = readl(divider->reg);
>  	val &= ~(clk_div_mask(divider->width) << divider->shift);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


