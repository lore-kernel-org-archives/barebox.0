Delivery-date: Thu, 07 Nov 2024 16:06:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t945F-005xsY-1V
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 16:06:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t945G-0003Dg-3g
	for lore@pengutronix.de; Thu, 07 Nov 2024 16:06:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=emUtuCOCCmUyvrvgiK30QLd9/BOyt5vUybcNwzOhCx4=; b=kfCLpxN+7ovy6i6OWYAJdszmJp
	zwg5jcE83Rq0gkqipB0ELaQ7vB4Xo51OfkkDlxRcV+LOKqayMhbByMA/xFpjFjPVqLPiRffLLoLsJ
	UFcEfgIaydkEXcpZh5aSgVsXfLLkrJOqOrqAu4Bk35lfy9zHL6eiGGmjV5WdyRlGu9AagqbNNEaKN
	TTxaASAqHYnnhgSPVgYe/w0s206oTtY2ok9jUNjGN9Kzdsk23BnGR4KSgBzKowGVXSETTHKyJ+UZQ
	dGQ7jymMIkbPcozwrDTYLHubsdlZCuntv/fg7RGj1w2VdRCuYGwsMuQaSuqxZqV/f/9H762xHhyEH
	QHj+nF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t944q-00000007Not-1pvK;
	Thu, 07 Nov 2024 15:05:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t944n-00000007Nni-14jx
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 15:05:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t944k-00038m-Gj; Thu, 07 Nov 2024 16:05:34 +0100
Message-ID: <74c2ba5e-9497-41e0-9d81-94b93d878951@pengutronix.de>
Date: Thu, 7 Nov 2024 16:05:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-2-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241107145722.5145-2-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_070537_352734_85B35C6B 
X-CRM114-Status: GOOD (  17.65  )
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
Subject: Re: [PATCH 1/6] clk: clk-composite: fix callback guard in
 clk_composite_round_rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 07.11.24 15:57, Jules Maselbas wrote:
> In the function clk_composite_round_rate a test for a NULL function pointer
> guard the call to the round_rate callback but doesn't check for the correct
> callback: it should be round_rate instead of set_rate
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/clk/clk-composite.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
> index 454bfaeb0c..fdf53ce75e 100644
> --- a/drivers/clk/clk-composite.c
> +++ b/drivers/clk/clk-composite.c
> @@ -65,7 +65,7 @@ static long clk_composite_round_rate(struct clk_hw *hw, unsigned long rate,
>  
>  	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
>  	    mux_clk &&
> -	    mux_clk->ops->set_rate)
> +	    mux_clk->ops->round_rate)
>  		return mux_clk->ops->round_rate(clk_to_clk_hw(mux_clk), rate, prate);
>  
>  	return *prate;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


