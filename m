Delivery-date: Wed, 08 Jan 2025 15:20:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWvP-000lsg-0y
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:20:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWvP-0006BU-8I
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:20:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BMJjilDru7DVFeCHvl7Op2Njx2NLJDtC4dQpE7VpyAc=; b=DaIZkW1jTI89/WDtNDdEc0GDt8
	XWVf+e3Aze0ODnrQnrYKTGw0QGeCL4OP+duR3+S8TUqBIkbmPJwaI4REljvMse7gw+/ivyWJWeCkO
	cFyyAzeJL8JDNatJvhcdQPKS0lLJ3wQ60ujL7PECpUyNjbhCjrA0CPwT80SpU+EdaTdeobKEq51+L
	ANQ5xmg1QszQKfNSC67vs5prkzJysJPQBmQzIpRkuCWr0Fa38kmhW5NxfDPOWBUAkDjAOtMkJG+87
	6lrXVIle8WvR4y6RmDgDfizt4eCfelvGebw5YbqECl6Y5eaDOq9GnH46chSUYw9ynMDrtIS2Kd+ar
	7CzcYo3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWuz-00000008lvz-2cXh;
	Wed, 08 Jan 2025 14:20:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWuw-00000008lvb-3cSj
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:20:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVWuu-00064I-Bd; Wed, 08 Jan 2025 15:20:16 +0100
Message-ID: <f51737e3-1e20-43e2-a48a-5d19cc66951c@pengutronix.de>
Date: Wed, 8 Jan 2025 15:20:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-2-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107143740.16903-2-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_062018_903369_A3492B28 
X-CRM114-Status: GOOD (  19.71  )
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
Subject: Re: [PATCH v2 1/6] clk: divider: add error code propagation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 07.01.25 15:37, Jules Maselbas wrote:
> divider_get_val can return a negative error code and should not be used
> as a valid divider.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> v1->v2:
>   - changed value to int and removed ret variable (Ahmad)
> 
> drivers/clk/clk-divider.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
> index ccab70aecc..b0df34e858 100644
> --- a/drivers/clk/clk-divider.c
> +++ b/drivers/clk/clk-divider.c
> @@ -307,7 +307,7 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
>  {
>  	struct clk *clk = clk_hw_to_clk(hw);
>  	struct clk_divider *divider = to_clk_divider(hw);
> -	unsigned int value;
> +	int value;
>  	u32 val;
>  
>  	if (divider->flags & CLK_DIVIDER_READ_ONLY)
> @@ -322,6 +322,8 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
>  
>  	value = divider_get_val(rate, parent_rate, divider->table,
>  				divider->width, divider->flags);
> +	if (value < 0)
> +		return value;
>  
>  	val = readl(divider->reg);
>  	val &= ~(clk_div_mask(divider->width) << divider->shift);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


