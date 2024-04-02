Delivery-date: Tue, 02 Apr 2024 10:43:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZkN-0037hS-1F
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 10:43:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZkM-0007ne-Kr
	for lore@pengutronix.de; Tue, 02 Apr 2024 10:43:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ahtLQJkJ4IdyjDdfMK0WoIVt1umRlNbdVjexhJJHr10=; b=i6/5v87KpFIF17X+mvd+7Wv88a
	I2ULwhLsNJeCQsP9Djaaz1a1mlgbIR5leXckjmnIPkJ+08slNvJ3c+CjRvMoEQrnmXcdIyxFXHjY7
	OZfPaepJljgTUb0VNX/IL+b7mLi5bw5vUhXY+9fi+xa7BI5gYf7ZYkmvp6cT8+pfrXlRNGRJIom0R
	ogMaP5lm5A86oNAEw+mu9c97+JYNIerAb/EH1LxgtRXPGyE3T/issf1QQysfBkBS9FHQ0MpJYUGeM
	pGcjnVUbeSySaFveDfPwnPdDwG6h74oN3uYQt4JVN4VUbf3SHiCCT+zHw1D+89ZWkVKbI800EPgDf
	YIk8BJLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZju-0000000AIJp-2wJs;
	Tue, 02 Apr 2024 08:43:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZjr-0000000AIJ8-06fQ
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 08:43:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1rrZjo-0007Fo-Bo; Tue, 02 Apr 2024 10:43:24 +0200
Message-ID: <f72418fa68eb9f944c2cea7ba5e8380417fec790.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Steffen Trumtrar
	 <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 02 Apr 2024 10:43:24 +0200
In-Reply-To: <ZgvCyRqmMUwfMbl2@pengutronix.de>
References: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
	 <20240326-worktree-barebox-bosch-be-ppm4-v1-2-7ea75c487348@pengutronix.de>
	 <ZgLA6SyzyB8aBGJE@pengutronix.de> <ZgvCyRqmMUwfMbl2@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_014327_086663_CB455B2D 
X-CRM114-Status: GOOD (  20.80  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] mci: arasan: fix build for non-ZynqMP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Dienstag, dem 02.04.2024 um 10:33 +0200 schrieb Sascha Hauer:
> On Tue, Mar 26, 2024 at 01:34:49PM +0100, Sascha Hauer wrote:
> > On Tue, Mar 26, 2024 at 12:50:42PM +0100, Steffen Trumtrar wrote:
> > > Registering sdclk only makes sense on the ZynqMP architecture. Guard
> > > calling the function with a IS_ENABLED()
> > >=20
> > > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > > ---
> > >  drivers/mci/arasan-sdhci.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> > > index f01396d7ee..b7dd98049f 100644
> > > --- a/drivers/mci/arasan-sdhci.c
> > > +++ b/drivers/mci/arasan-sdhci.c
> > > @@ -772,7 +772,8 @@ static int arasan_sdhci_probe(struct device *dev)
> > > =20
> > >  	mci->f_min =3D 50000000 / 256;
> > > =20
> > > -	arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);
> > > +	if (IS_ENABLED(CONFIG_ARCH_ZYNQMP))
> > > +		arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev)=
;
> >=20
> > CONFIG_ARCH_ZYNQMP being enabled doesn't necessarily mean the code
> > actually runs on Zynqmp. Does this need a runtime check for other
> > architectures?
>=20
> The arasan MMC driver is currently only used on ZynqMP, so it's OK for
> now.
>=20
That's not true. The driver is also used on the Zynq7000.

Regards,
Lucas

> In Linux the driver the ZynqMP specifics are only used with the "xlnx,zyn=
qmp-8.9a"
> compatible whereas our driver binds to the "arasan,sdhci-8.9a"
> compatible. This makes it more clear that this is really a ZynqMP
> specific path that is taken here.
>=20
> Sascha
>=20



