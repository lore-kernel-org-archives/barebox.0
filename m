Delivery-date: Tue, 18 Oct 2022 11:19:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiks-00CUR5-A2
	for lore@lore.pengutronix.de; Tue, 18 Oct 2022 11:19:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okikq-0007sq-D8
	for lore@pengutronix.de; Tue, 18 Oct 2022 11:19:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bfa+g8UhgPyEo416McdnhUqmeavYw7wA5rz7RooGODg=; b=ViOKasEKqjBiNrR6vKyqSzsBaF
	HrbO3xbxbq8KK1DX3UC5uNYjYEzQaLKjzIXLZYE/+Sv1algtcvI0Is7PC29osRQjOJwAuzQtJp9Az
	lWLP/K2Op3ZhPQAbAKqMw6nn4F6/QIbFfn/oz1tfKemt9FWjNEUZ/L7j5GdBawMO0TM++BUu82SGL
	l+oZQp0lksOA9nLx9BPeajdjTb8O7YZ4KaPORWHMJaex2CjZAxGIt2RUA9Tcnj6JiensGtmkuWv2o
	a27hjQS4Q3Fcqux/FMmJ0iS6FnpOJ8Z8LAgfbiKDuZoMdl4ATIDaECbAhf09AdFBQba/X8l9uDldm
	ZDBPKgsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okijT-004ppf-2m; Tue, 18 Oct 2022 09:17:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okijN-004pof-Uy
	for barebox@lists.infradead.org; Tue, 18 Oct 2022 09:17:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okijM-0007ad-NZ; Tue, 18 Oct 2022 11:17:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okijM-0008WR-Gg; Tue, 18 Oct 2022 11:17:48 +0200
Date: Tue, 18 Oct 2022 11:17:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221018091748.GT6702@pengutronix.de>
References: <20221017070517.1456378-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017070517.1456378-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_021750_016636_0BA2EC0B 
X-CRM114-Status: GOOD (  18.79  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mfd: axp20x: drop info message on successful probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 17, 2022 at 09:05:17AM +0200, Ahmad Fatoum wrote:
> Successful probe is expected and doesn't warrant a message. The driver
> will already print that what variant in that case. In the error case,
> we will get an error message anyway, so this log message serves no
> purpose.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mfd/axp20x.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
> index 0a53eaea7cfa..8d9de59e7d49 100644
> --- a/drivers/mfd/axp20x.c
> +++ b/drivers/mfd/axp20x.c
> @@ -354,8 +354,6 @@ int axp20x_device_probe(struct axp20x_dev *axp20x)
>  	if (axp20x->variant != AXP288_ID)
>  		poweroff_handler_register(&axp20x->poweroff);
>  
> -	dev_info(axp20x->dev, "AXP20X driver loaded\n");
> -
>  	return 0;
>  }
>  EXPORT_SYMBOL(axp20x_device_probe);
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


