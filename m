Delivery-date: Thu, 14 Apr 2022 06:50:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nerR7-001LG7-QH
	for lore@lore.pengutronix.de; Thu, 14 Apr 2022 06:50:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nerR5-0008ML-7P
	for lore@pengutronix.de; Thu, 14 Apr 2022 06:50:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpuhuAa1EIX6Aniw7/8lPvn3PSNpc7HaRtwci2FrmGM=; b=0wXuxu9fRl1Mjw
	luxgNi2AZBxK76sdWO2Ws+eYJMeVp/cJaKw4UODv7CM44Nr9huz4viWDn4Y+kgo4U/ZjzSGjvzu1V
	/38UNd6fjvl2pkn7sUDSkWwnJFfKIubHAhz7DYJyNdJzlGIFe8UqJG8Apjm8DlRc0pd2U48XXWsCp
	CRi5RlJJUwtRJZr++vTiSuVK44jMdKSOq2sgdbdCPk7Na4tz7WP9vrat6zd72LOWK74eHR76o2Q9H
	b0Ygi5zvz8/eZ4HMCZU9lZFvxsIyzHE3Cdw565H9BEYnoISwwnERANLdH1aLE/iXOaq2jRNf5DzYU
	a8T1HeUmL29EiyA8H9xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nerPJ-003qnN-Vw; Thu, 14 Apr 2022 04:48:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nerPF-003qlc-2w
 for barebox@lists.infradead.org; Thu, 14 Apr 2022 04:48:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nerP4-0008H5-SP; Thu, 14 Apr 2022 06:48:22 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nerP4-0006aO-An; Thu, 14 Apr 2022 06:48:22 +0200
Date: Thu, 14 Apr 2022 06:48:22 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Lucas Stach <lst@pengutronix.de>
Message-ID: <20220414044822.GB6930@pengutronix.de>
References: <20220413123708.623736-1-o.rempel@pengutronix.de>
 <63ddfbdb-9d82-43fc-189d-d6b3b53e11f3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63ddfbdb-9d82-43fc-189d-d6b3b53e11f3@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:47:56 up 14 days, 17:17, 49 users,  load average: 0.07, 0.08, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_214833_169521_5D229C74 
X-CRM114-Status: GOOD (  26.38  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] net: designware: eqos: fix link speed configuration
 for speed < 1000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 13, 2022 at 03:54:54PM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 13.04.22 14:37, Oleksij Rempel wrote:
> > Put phy_device_connect() after MAC/DMA reset, otherwise link speed
> > configuration will be zeroed by the MAC/DMA reset. By an accident zero
> > configuration equal to the speed 1000, so it was still working for many users.
> 
> This hunk used to be farther down, but Lucas moved it in
> 7c5c6561f0ca ("net: designware: eqos: attach PHY earlier").
> 
> I suspect your patch might break his hardware configuration.

Hm, interesting. I'll send a new version.

> Cheers,
> Ahmad
> 
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/net/designware_eqos.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> > index 6b372e4274..d93cccd634 100644
> > --- a/drivers/net/designware_eqos.c
> > +++ b/drivers/net/designware_eqos.c
> > @@ -390,11 +390,6 @@ static int eqos_start(struct eth_device *edev)
> >  	int ret;
> >  	int i;
> >  
> > -	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
> > -				 eqos->ops->adjust_link, 0, eqos->interface);
> > -	if (ret)
> > -		return ret;
> > -
> >  	setbits_le32(&eqos->dma_regs->mode, EQOS_DMA_MODE_SWR);
> >  
> >  	ret = readl_poll_timeout(&eqos->dma_regs->mode, mode_set,
> > @@ -405,6 +400,11 @@ static int eqos_start(struct eth_device *edev)
> >  		return ret;
> >  	}
> >  
> > +	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
> > +				 eqos->ops->adjust_link, 0, eqos->interface);
> > +	if (ret)
> > +		return ret;
> > +
> >  	/* Reset above clears MAC address */
> >  	eqos_set_ethaddr(edev, eqos->macaddr);
> >  
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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

