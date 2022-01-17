Delivery-date: Mon, 17 Jan 2022 06:14:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9KLz-004I0H-Q8
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 06:14:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9KLy-0002g0-Ft
	for lore@pengutronix.de; Mon, 17 Jan 2022 06:14:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PBmWAgFoWoGvLv7F98v9mKHNuJCLLNTa7xXoBiB5Uxg=; b=zI8/ZU0Zq0UoCSqhP+yRllC+Tb
	tMeyDQF00JtXoyw1z2ls9ZL5cyx0nUeVdp7rWP5+hTXkhFGAOU5LSbRBRlivI7Kdne7Mh+39AYy1Q
	qb/B1rr6UX3J00xuF/6N3r0Wtj5Pd1kbzx8vOWKQ3tjElu0YL1i9cpWkhvsmGKM/Ke+O01tJlqx03
	KPBxLeTRCfvP7dAaM2DesFmW8vdL0wXp6MSwxop02i7UDiOPx9DA79ZUt5nb1k936uovyZcRk3JRD
	HrXx4QPTbAJE7bU46Hpbr8mEe+Sa1y91JSNZ23gQ/wViFACA9Ft0IqmYdeGrFv/VAHfpmgZEV+X81
	vFfNTq5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9KKT-00DS4K-2a; Mon, 17 Jan 2022 05:13:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9KKI-00DRzP-VZ
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 05:13:10 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n9KK8-0002b0-IL; Mon, 17 Jan 2022 06:12:56 +0100
To: Lucas Stach <dev@lynxeye.de>, barebox@lists.infradead.org
References: <20220116213221.3466936-1-dev@lynxeye.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <095bafc0-7261-aa13-a9c7-8022cc78b26c@pengutronix.de>
Date: Mon, 17 Jan 2022 06:12:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220116213221.3466936-1-dev@lynxeye.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_211307_098000_473BB277 
X-CRM114-Status: GOOD (  23.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] clk: ignore of_device_ensure_probed error in clock
 lookup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lucas,

On 16.01.22 22:32, Lucas Stach wrote:
> For CLK_OF_DECLARE clocks there is no driver that is bound to the device,
> so the lookup fails before even trying to find the provider, breaking
> the parent_ready() logic used when initializing the declared providers.
> 
> Ignore the return code from of_device_ensure_probed to allow the lookup
> to proceed as usual. If of_device_ensure_probed the lookup will also fail,
> as no provider will be found.

This seems to be an alternate fix for the issue addressed by:
bd516e38dd14 ("clk: handle CLK_OF_DECLARE in deep probe")

What do you think?

> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/clk/clk.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 189c9c62df5c..a1d1d7f1a467 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -643,11 +643,9 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
>  {
>  	struct of_clk_provider *provider;
>  	struct clk *clk = ERR_PTR(-EPROBE_DEFER);
> -	int ret;
>  
> -	ret = of_device_ensure_probed(clkspec->np);
> -	if (ret)
> -		return ERR_PTR(ret);
> +	/* Ignore error, as CLK_OF_DECLARE clocks have no proper driver. */
> +	of_device_ensure_probed(clkspec->np);
>  
>  	/* Check if we have such a provider in our array */
>  	list_for_each_entry(provider, &of_clk_providers, link) {
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

