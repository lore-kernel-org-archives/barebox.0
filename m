Delivery-date: Tue, 28 May 2024 16:38:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBxxu-000wMb-2V
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 16:38:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBxxu-0002X9-5O
	for lore@pengutronix.de; Tue, 28 May 2024 16:38:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Subject:Cc:To:From:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nqLtTKplRmnPL1kPXUstgFegAdRipeBVTY0zf8+yZWI=; b=uoGJN3JNgq+JaaGh6ZaXqtWx3H
	jurG1fln6hP3fjZ+oyvxfmASBCy9rFXVO/AUjlHV5NcsDI+0EVRKg025iQwywrVKrRufMfEiQgcah
	+mDG/XhyiuLdnpyEZaA0nzcvqZX9sNYom5ibhDgTuxg3KvYUPqeuDdgQxzoKI/tFf3uJHJIAs9GMX
	e8TSgtTJV4XdvqRu1ip3ZcXQdle6C0XAFY1jtZxrLZk/boqmvbNaeuqDLN3C7Piut2niApm8JM47a
	I74TwdlFPhiJ0t7DBJVOQilFG5S2ny2AYr07bmhBNhmXIjUyyJULE/XiQ8wTwdwsFJN82T97moIi2
	7L4Yby+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxxI-000000013CO-1HBF;
	Tue, 28 May 2024 14:37:36 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxxE-000000013BX-3mwk
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 14:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1716907045;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nqLtTKplRmnPL1kPXUstgFegAdRipeBVTY0zf8+yZWI=;
	b=Nh/+iyjwIv61nLwqp4scO3COGxO81uVkNYa24yNuBMxQ8pPgFxKIefno+ISF3XO8YKiW9M
	YxrBpGPlZto/p0YvuYj5WUvKd1dJE4t5Y8RMPBH1+xTilTL9tvBlrmBitTIYKaRUeYWaJq
	24q9zXMr4QAe4sFPx5zF+XH/bZyQRpJe0WDPYMDXPkqvtY+Np/pJ58xNU1TXGH6Gnq1XkF
	TVCQN9tsefzEBwm1mztgPAcIKINPAgRJxTpDBSYoP512RJIv9Geos4UPTXKsbMg0VBpN4x
	xqIzGXS+Nzn9quUooKnFvCb9CSe/CDUrZkeBCK7vR/4t3nCAfTiz3LeFgXHNTw==
Received: from localhost (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 7c0c8901 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 28 May 2024 14:37:25 +0000 (UTC)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 28 May 2024 16:37:24 +0200
Message-Id: <D1LCR3QK8TER.30MFDYZ02EJQ6@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Sascha Hauer" <s.hauer@pengutronix.de>
Cc: "Barebox List" <barebox@lists.infradead.org>, "jianqiang wang"
 <wjq.sec@gmail.com>
X-Mailer: aerc 0.17.0
References: <20240528085806.1172689-1-s.hauer@pengutronix.de>
 <20240528085806.1172689-8-s.hauer@pengutronix.de>
 <D1LBBBUVTEKQ.21VMXYL98EK08@zdiv.net> <ZlXpp6lqqDIjvI9i@pengutronix.de>
In-Reply-To: <ZlXpp6lqqDIjvI9i@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_073733_231125_1B23D859 
X-CRM114-Status: GOOD (  17.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 7/9] net: smc911x: do not read past the receive
 buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue May 28, 2024 at 4:26 PM CEST, Sascha Hauer wrote:
> Hi Jules,
>
> On Tue, May 28, 2024 at 03:29:47PM +0200, Jules Maselbas wrote:
> > Hi,
> >=20
> > On Tue May 28, 2024 at 10:58 AM CEST, Sascha Hauer wrote:
> > > The hardware may report a packet longer than our receive buffer. Inst=
ead
> > > of reading past the read buffer, discard too long packets.
> > >
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/net/smc911x.c | 16 ++++++++--------
> > >  1 file changed, 8 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> > > index 1fca58ab84..8a0fa5cc25 100644
> > > --- a/drivers/net/smc911x.c
> > > +++ b/drivers/net/smc911x.c
> > > @@ -460,14 +460,14 @@ static int smc911x_eth_rx(struct eth_device *ed=
ev)
> > >  		smc911x_reg_write(priv, RX_CFG, 0);
> > > =20
> > >  		tmplen =3D (pktlen + 3) / 4;
> > > -		while(tmplen--)
> > > -			*data++ =3D smc911x_reg_read(priv, RX_DATA_FIFO);
> > > -
> > > -		if(status & RX_STS_ES)
> > > -			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
> > > -				status);
> > > -		else
> > > -			net_receive(edev, priv->rx_buf, pktlen);
> > I don't see a call to net_receive anymore
>
> D'oh! Thanks for being patient with me. I've sent a fixup. I hope I got
> it correct now.

I don't usually read much patches but i am happy to help :)



