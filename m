Delivery-date: Fri, 08 Sep 2023 14:34:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeagl-008EBD-SA
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 14:34:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeagj-0005vk-9E
	for lore@pengutronix.de; Fri, 08 Sep 2023 14:34:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xQ2u4WKp0TdclKZ4wkrW2xlMJKvsDl4EtRk33ZpS9HI=; b=16WBRze+NfJYg+LiE1AttS+q1M
	6Tvf7QxWpHuvVFNBSbUVVkHNEdLTa1O9ZaE3xW2vhEQYT6vzN5wZdxWMElMPApdbZU5OeCJtdT53z
	2Izxqa2ZMo25rOxwb9NPSd/y/cEckLJTbyF0Usj3TujObRYvyNbGN+qkvDHjAYkKK4B+S7AIq01kn
	KpqKtCv7dNP4sJnURzR0K//vcwmuH93y6xprBQetZ4sYHxIxnsT/FXsQOtITG3HwabqhKHoUptW3y
	BnEyePKScomd/eXgGtIVbDaLmpN6O5Txx1eZ2CFRFHztQ+LcJ6RUo0a3+ADY8NB6yxknBU1HQTVjR
	+gdlNkww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeafI-00DlkE-1c;
	Fri, 08 Sep 2023 12:32:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeafF-00DljF-0b
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 12:32:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qeafB-0005Wp-Sa; Fri, 08 Sep 2023 14:32:41 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qeafB-004sNM-As; Fri, 08 Sep 2023 14:32:41 +0200
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qeafA-003LYu-Un; Fri, 08 Sep 2023 14:32:40 +0200
Date: Fri, 8 Sep 2023 14:32:40 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>,
	barebox@lists.infradead.org
Message-ID: <20230908123240.GA780075@pengutronix.de>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
 <20230908-bugfix-i2c-rockchip-v1-3-f8235d811f6b@wolfvision.net>
 <23240e08-f109-36e4-8588-df64d8594f7a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <23240e08-f109-36e4-8588-df64d8594f7a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_053245_227036_407665B3 
X-CRM114-Status: GOOD (  24.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] net: ksz9477: propagate phy read error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Fri, Sep 08, 2023 at 01:59:05PM +0200, Ahmad Fatoum wrote:
> On 08.09.23 12:16, Gerald Loacker wrote:
> > In case of an error we should not return an arbitrary value, propagate the
> > error code instead.
> > Fix return value in case of address error.
> > 
> > Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> > ---
> >  drivers/net/ksz9477.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> > index 9665e0f723..d664b7cf01 100644
> > --- a/drivers/net/ksz9477.c
> > +++ b/drivers/net/ksz9477.c
> > @@ -29,14 +29,15 @@ static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
> >  {
> >  	struct device *dev = ds->dev;
> >  	struct ksz_switch *priv = dev_get_priv(dev);
> > -	u16 val = 0xffff;
> > +	u16 val;
> > +	int ret;
> >  
> >  	if (addr >= priv->phy_port_cnt)
> > -		return val;
> > +		return -EINVAL;
> 
> Looks sensible IMO, but shouldn't we do the same in dsa_slave_phy_read
> if no callback is defined?
> 
> @Oleksij, why did you decide for 0xffff instead of a negative error code?

This code imitate real MDIO bus access. If you trying to read at not
existing PHY address, you will get 0xffff instead of negative error.
May be it is better to add a comment :)

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


