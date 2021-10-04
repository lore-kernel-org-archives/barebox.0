Delivery-date: Mon, 04 Oct 2021 13:09:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLqE-0005dU-2Q
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:09:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXLqD-0007dn-3l
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:09:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NelLiQyizH6vUqS+qMrvyWq1ak5brxWha2dJQ9J5sMo=; b=XLMuh4kIUZ1Y/ZmuuYUCIJZ9GM
	m+LwPg7dTYt7mv42HyRlXiyFi0L+EQlHKtMIHJ0f9x155kfKTYuKmF/m1PYV0F4n1xnMCUBHTm/ID
	X95rwRpgWpX4asgmsVxU/n0Imd/U9lC7oshYDWm6AZVNekXY3uwEgOsO6h9701SM0+BukGG03Pl+l
	cLAT3hQDc9a2OjY0ohMphpa4IdzW5Di4IkXVg2BqWF778R5vqJ3e4GFGdlBHfHpigezzz9lHdwfQm
	s8hrhcYtAp1gExV9oXzp9lo6ij5wp4PXAX+vM6lcMZgBcNOBYU21Dc/dtxT5y348JCIEDZTFeoJRd
	4koVnBfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXLoq-0064re-Ho; Mon, 04 Oct 2021 11:07:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXLom-0064rF-4q
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:07:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXLok-0007Ry-Ph; Mon, 04 Oct 2021 13:07:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXLoj-0002NL-LC; Mon, 04 Oct 2021 13:07:33 +0200
Date: Mon, 4 Oct 2021 13:07:33 +0200
To: "Karfich, Oleg" <Oleg.Karfich@wago.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20211004110733.GW28453@pengutronix.de>
References: <1630414594-10601-1-git-send-email-oleg.karfich@wago.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1630414594-10601-1-git-send-email-oleg.karfich@wago.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:07:24 up 228 days, 14:31, 143 users,  load average: 0.15, 0.29,
 0.30
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_040736_217496_296B6262 
X-CRM114-Status: GOOD (  25.86  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: cpsw: fix ethernet bringup in case of a fixed-link
 phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 31, 2021 at 12:57:01PM +0000, Karfich, Oleg wrote:
> In case of a fixed-link phy the cpsw_adjust_link() function is
> called directly in phy_device_attach() and configures the MACCONTROL
> register. Right after this configuration cpsw_init() is called and
> resets the MACCONTROL register.
> Fix this by initializing the slave before connecting the phy device in
> cpsw_open().
> 
> Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
> ---
>  drivers/net/cpsw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index b01e7ac..4a8f9e6 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -901,13 +901,13 @@ static int cpsw_open(struct eth_device *edev)
>  
>  	dev_dbg(&slave->dev, "* %s\n", __func__);
>  
> +	cpsw_slave_init(slave, priv);
> +
>  	ret = phy_device_connect(edev, NULL, slave->phy_id,
>  				 cpsw_adjust_link, 0, slave->phy_if);
>  	if (ret)
>  		return ret;
>  
> -	cpsw_slave_init(slave, priv);
> -
>  	return 0;
>  }
>  
> -- 
> 2.7.4
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

