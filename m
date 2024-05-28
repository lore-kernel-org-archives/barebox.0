Delivery-date: Tue, 28 May 2024 16:27:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBxnN-000wIk-25
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 16:27:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBxnN-0000uk-1l
	for lore@pengutronix.de; Tue, 28 May 2024 16:27:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kxVbMD1WGoF7XfogP0/xd+C7gwxVZuq0xve42olVtLk=; b=zbdA2Z/qFgPe26HqZ7oIeSiHjU
	xLCwIk6Hw+MRk5ttgLKelFpRh6ozcqrNPgxxDy045Jtkn6NIK08782tyezlHivuo80auJVcc0uQdZ
	lWFAQA4Ur640pscfg6HFefdrwHFFgKt9rnKtlHvTSxRpLMoSNsZotBB5f0PMP7Vyl3ST66QWJ/fnE
	r8VPOa132g9ggG5P6dmvbDIVPQiYpxiQ09mgBx/rRtANgd3zo2hm1ICgOsQdZ/9zvSqSWyYvtAFl9
	rGsOFhxCIvLlgg8JO1hSqIbx5ay4OQqMnY+zp+ZHRIaxD1M7REuIUuPs9ZsCTxogYOismBF3/83cy
	OEkJIDpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxmw-000000011O9-3Cvn;
	Tue, 28 May 2024 14:26:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxmt-000000011Mz-19QX
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 14:26:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sBxmq-0000n0-50; Tue, 28 May 2024 16:26:48 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sBxmp-003L8R-OU; Tue, 28 May 2024 16:26:47 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sBxmp-001Nji-29;
	Tue, 28 May 2024 16:26:47 +0200
Date: Tue, 28 May 2024 16:26:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: Barebox List <barebox@lists.infradead.org>,
	jianqiang wang <wjq.sec@gmail.com>
Message-ID: <ZlXpp6lqqDIjvI9i@pengutronix.de>
References: <20240528085806.1172689-1-s.hauer@pengutronix.de>
 <20240528085806.1172689-8-s.hauer@pengutronix.de>
 <D1LBBBUVTEKQ.21VMXYL98EK08@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D1LBBBUVTEKQ.21VMXYL98EK08@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_072651_334294_07F72092 
X-CRM114-Status: GOOD (  21.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 7/9] net: smc911x: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jules,

On Tue, May 28, 2024 at 03:29:47PM +0200, Jules Maselbas wrote:
> Hi,
> 
> On Tue May 28, 2024 at 10:58 AM CEST, Sascha Hauer wrote:
> > The hardware may report a packet longer than our receive buffer. Instead
> > of reading past the read buffer, discard too long packets.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/net/smc911x.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> > index 1fca58ab84..8a0fa5cc25 100644
> > --- a/drivers/net/smc911x.c
> > +++ b/drivers/net/smc911x.c
> > @@ -460,14 +460,14 @@ static int smc911x_eth_rx(struct eth_device *edev)
> >  		smc911x_reg_write(priv, RX_CFG, 0);
> >  
> >  		tmplen = (pktlen + 3) / 4;
> > -		while(tmplen--)
> > -			*data++ = smc911x_reg_read(priv, RX_DATA_FIFO);
> > -
> > -		if(status & RX_STS_ES)
> > -			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
> > -				status);
> > -		else
> > -			net_receive(edev, priv->rx_buf, pktlen);
> I don't see a call to net_receive anymore

D'oh! Thanks for being patient with me. I've sent a fixup. I hope I got
it correct now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


