Delivery-date: Mon, 27 May 2024 11:35:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBWlP-000eOP-2O
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 11:35:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBWlP-0007Np-4h
	for lore@pengutronix.de; Mon, 27 May 2024 11:35:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+k9TGUNVhA4Udxo0+V8gr91ltvPARmnlFwHr6kCRSrI=; b=g2i3ohSo4t6lsszo/GMU3k+RvJ
	YqHYS6+Z/Wj/LIpjVSG3DC/eP3IzQciDjJxoJ1SUTSIFf977NhEdc6e6XKHWE945OC9fjC+HyHbcE
	Xq5LMNcLh89IHuUL0TPPin2vukwAHYPEXRuaCHpJX/XeNaaCTBHymUhDj9TE754VJOmx2aUr0Py4R
	3y5i4SESxzsHhQkz9Cth59J/yRmFkOeecSESeeR5b0QC6U1M2d/D5VcLc4sHX/sLbIYyyQhNdlDgR
	7lSco/4Fo+GlVWuqmIi7vRwR/aWVyHltqSs3HXeMhUIsZaJzBOJ5x9QU+L1j792RD+cq06b6ClzvS
	7+e/qgqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWko-0000000EQWL-1Ybu;
	Mon, 27 May 2024 09:34:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWkc-0000000EQPS-2j30
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 09:34:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sBWka-0007AJ-Vy; Mon, 27 May 2024 11:34:41 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sBWka-003AZA-CU; Mon, 27 May 2024 11:34:40 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sBWka-00H3sb-0y;
	Mon, 27 May 2024 11:34:40 +0200
Date: Mon, 27 May 2024 11:34:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: Barebox List <barebox@lists.infradead.org>,
	jianqiang wang <wjq.sec@gmail.com>
Message-ID: <ZlRTsAszwwA-10wM@pengutronix.de>
References: <20240527072915.3229221-1-s.hauer@pengutronix.de>
 <20240527072915.3229221-2-s.hauer@pengutronix.de>
 <D1KAXE1FR9NJ.XQQM6JG3M6F7@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D1KAXE1FR9NJ.XQQM6JG3M6F7@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_023442_797345_EA239F64 
X-CRM114-Status: GOOD (  24.90  )
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
Subject: Re: [PATCH 2/5] net: cs8900: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jules,

On Mon, May 27, 2024 at 10:58:55AM +0200, Jules Maselbas wrote:
> Hi Sascha,
> 
> Just a quick remark:
> 
> On Mon May 27, 2024 at 9:29 AM CEST, Sascha Hauer wrote:
> > the hardware may report a packet longer than our receive buffer. Instead
> > of reading past the read buffer, discard too long packets.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/net/cs8900.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
> > index afb0f3e26e..a96b574f95 100644
> > --- a/drivers/net/cs8900.c
> > +++ b/drivers/net/cs8900.c
> > @@ -295,8 +295,13 @@ static int cs8900_recv(struct eth_device *dev)
> >  	status = readw(priv->regs + CS8900_RTDATA0);
> >  	len = readw(priv->regs + CS8900_RTDATA0);
> >  
> > -	for (addr = (u16 *)priv->rx_buf, i = (len + 1) >> 1; i > 0; i--)
> > -		*addr++ = readw(priv->regs + CS8900_RTDATA0);
> > +	if (len <= PKTSIZE) {
> > +		for (addr = (u16 *)priv->rx_buf, i = (len + 1) >> 1; i > 0; i--)
> > +			*addr++ = readw(priv->regs + CS8900_RTDATA0);
> > +	} else {
> > +		for (addr = (u16 *)priv->rx_buf, i = (len + 1) >> 1; i > 0; i--)
> > +			(void)readw(priv->regs + CS8900_RTDATA0);
> So the packet is "discarded" here but the function doesn't returns with an error
> and proceed to call net_received with the previous (if any) packet but with the
> new length ...

Ouch, that was not intenden. Will fix.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


