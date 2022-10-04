Delivery-date: Tue, 04 Oct 2022 09:47:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofcdv-005KhU-TE
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 09:47:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofcdu-0004xE-S0
	for lore@pengutronix.de; Tue, 04 Oct 2022 09:47:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x3UTAuQMekYrPuqod/VCUuhQpxR7dBFchxG1ijVyeW0=; b=hPjZ42szfEtVFmnuIEmryL7Jvj
	8D9FC7MV9EvgP3WuQtsKK9gpU5FgkM+GMapTRU8tQFCkFO7sm7giz38A37NjCPStmPJ9z7qffhHLQ
	ApTBNJGi1hxgyYxmeReyjgTL/x+WdtKE1LuSDw52OY/x6MWv851ZV4g3HnWc6hfl8Vmy1Sr84LqD9
	MJkUQJKH4F4tvGQoT/OnA8vZTpLkoFEFzxDJJSLiqyRvEgGPt9REAse6r6N2FrreSJPvcuPG9vWLz
	UE4NX4+V6nCD8BwJkmVGdLS6obe6btBOyMoehjOLh3TF35X3WDUQ44oyR70b2tOXeDNZPmgW+/E7S
	ODOXMAhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcbz-008nCq-8w; Tue, 04 Oct 2022 07:45:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcbs-008nAT-B4
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 07:45:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofcbo-0004J7-6p; Tue, 04 Oct 2022 09:44:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofcbn-0004gB-Vh; Tue, 04 Oct 2022 09:44:55 +0200
Date: Tue, 4 Oct 2022 09:44:55 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221004074455.GE986@pengutronix.de>
References: <20220926081740.76968-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926081740.76968-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_004500_437482_67AC148F 
X-CRM114-Status: GOOD (  20.89  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/8] mdio_bus: do reset only on PHY devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 26, 2022 at 10:17:33AM +0200, Oleksij Rempel wrote:
> Do not reset MDIO devices. Device drivers should handle it.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/phy/mdio_bus.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index f06ab68f50..a68b0e47c0 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -263,12 +263,13 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
>  		}
>  
>  		of_pinctrl_select_state_default(child);
> -		of_mdiobus_reset_phy(mdio, child);
>  
> -		if (of_mdiobus_child_is_phy(child))
> +		if (of_mdiobus_child_is_phy(child)) {
> +			of_mdiobus_reset_phy(mdio, child);
>  			of_mdiobus_register_phy(mdio, child, addr);
> -		else
> +		} else {
>  			of_mdiobus_register_device(mdio, child, addr);
> +		}
>  	}
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


