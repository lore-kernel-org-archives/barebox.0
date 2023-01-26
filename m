Delivery-date: Thu, 26 Jan 2023 09:16:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxQz-002TZy-Jf
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:16:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxQw-0003xf-Lu
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:16:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/0lryD5G6jD6AKe8MaeVlUACAiQSmb7gSaIiXyi+tN8=; b=F+V60CGP/d3+9Vws7RVJHXHaiw
	je//zHwOur8+hlfZr0nQqoWvHdXUg5N6RT+GWSbWFAH/Y163l2FicB3HqeE0OHUKfc/QI1A6ggVgJ
	8oOf80+l7D8Wd+7JJFsu1R0LwVouGv68R8FoL6VbLPE6yEQ5shIs6ovsNrwvQer7GndsNj3q0roaB
	m5eqmUzfEIJxZ0RYNce9e03l9oX0Kh6uVv4qS7kLGgP9+jyoFjPzNP6lLzPONz8dUGEpFaxywcorI
	wf0hRxf31Bd3osng7SYqyudJKvaZ8wLtpn92n+bLcZw2N56t4kHsxBkttjGqrXz3GFKHHWWkjkTE9
	JYae8I4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxPj-009xZH-AG; Thu, 26 Jan 2023 08:15:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxPf-009xYm-2P
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:15:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxPd-0003eA-Qp; Thu, 26 Jan 2023 09:15:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxPd-0004Tg-Jt; Thu, 26 Jan 2023 09:15:13 +0100
Date: Thu, 26 Jan 2023 09:15:13 +0100
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230126081513.GH13319@pengutronix.de>
References: <20230124203119.3489559-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230124203119.3489559-1-m.grzeschik@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_001515_127307_5249EC0D 
X-CRM114-Status: GOOD (  26.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: stm32-usphyc: add mdelay(1) to fix timeout on some
 machines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 24, 2023 at 09:31:19PM +0100, Michael Grzeschik wrote:
> An mdelay of 1 seems to be necessary on some machines, since
> the monsel status does not seem to be accurate. On rare occasions just
> working with the phy after this pll check lead to no functional usb.
> With this short mdelay this issue was not reported again.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/phy/phy-stm32-usbphyc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
> index 657824405f..aff6b60d5e 100644
> --- a/drivers/phy/phy-stm32-usbphyc.c
> +++ b/drivers/phy/phy-stm32-usbphyc.c
> @@ -271,6 +271,15 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
>  		goto pll_disable;
>  	}
>  
> +	/* This is a workaround that seems to be necessary on some
> +	 * machines, since the monsel status does not seem to be
> +	 * accurate. On rare occasions just working with the phy after
> +	 * this pll check the usb peripheral (e.g. on the dwc2) run into
> +	 * timeout issues and leading to no functional usb. With this
> +	 * short mdelay this issue was not reported again.
> +	 */
> +	mdelay(1);
> +
>  	usbphyc_phy->active = true;
>  
>  	return 0;
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


