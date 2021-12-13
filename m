Delivery-date: Mon, 13 Dec 2021 23:39:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtyh-005ivt-Vd
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:39:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtyf-0003x1-OV
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:39:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kVmr5TJUqGldL/LX6L5DwvdRtf7dkPabsQ+joAAzys0=; b=OIIVzSInalhqtoHC1uWBTp7XE4
	MjHsY0kezyE8xSIDxGbqWHkwF2dsUrWjLVPZzxMdbIP2bKlIfijTVQbk5L45pKu8tkmSd8a2mzoRM
	oy/ollsUf/xP6veSSv+Q9Wr9fX4CLlZOg00GgWo08XamwtcT6/0ZV0o2TyjJlIyjsUyfwRo6hp/UC
	FZcIEX2m2pluCzGXATVEYahWaHLN7GYxc6x5ZjANr6jgKQbKpsd5EOy91qp58Q+I2P2shlabKA01w
	1+nSHFbeHGaP04YxE6bhb5U5WHeqdzz1Yo4boMKg0grP6BUDzNyXGl6hzUUKgbmcw0Ne0QVCXW2fC
	l1EqxmwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwtx4-00Bn9t-8W; Mon, 13 Dec 2021 22:37:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtaU-00BeUw-4V
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:14:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtaS-0001CP-Rp; Mon, 13 Dec 2021 23:14:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtaS-0003zc-Ir; Mon, 13 Dec 2021 23:14:24 +0100
Date: Mon, 13 Dec 2021 23:14:24 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211213221424.GD6003@pengutronix.de>
References: <20211202074224.193631-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211202074224.193631-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:14:16 up 3 days, 6:59, 33 users, load average: 0.00, 0.07, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_141426_237992_908886F0 
X-CRM114-Status: GOOD (  24.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: bulk: improve error message on failure to get
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 02, 2021 at 08:42:24AM +0100, Ahmad Fatoum wrote:
> We didn't have the need to handle %pOF specially yet, but for the error
> message in clk-bulk, not readily knowing what component couldn't get its
> clocks is annoying. Print the node name directly and change the error
> code to the error string if those are compiled in.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/clk-bulk.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
> index d530b4f968e6..4510283962ae 100644
> --- a/drivers/clk/clk-bulk.c
> +++ b/drivers/clk/clk-bulk.c
> @@ -88,8 +88,8 @@ static int __must_check of_clk_bulk_get(struct device_node *np, int num_clks,
>  		clks[i].clk = of_clk_get(np, i);
>  		if (IS_ERR(clks[i].clk)) {
>  			ret = PTR_ERR(clks[i].clk);
> -			pr_err("%pOF: Failed to get clk index: %d ret: %d\n",
> -				np, i, ret);
> +			pr_err("%s: Failed to get clk index: %d ret: %pe\n",
> +				np->name, i, clks[i].clk);
>  			clks[i].clk = NULL;
>  			goto err;
>  		}
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

