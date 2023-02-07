Delivery-date: Tue, 07 Feb 2023 20:58:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPU7I-00HLv1-7c
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 20:58:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPU7F-0004JY-J2
	for lore@pengutronix.de; Tue, 07 Feb 2023 20:58:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ecVyvn/41xfQeICrD3i3xr9YgIxiKw1Z+MGXhkpnlcU=; b=gnqFFCFdsPAJkr/9iRbH5Y2uW2
	RCrlLMLUsRAaIud9ZO8g40asWe7m1M9bsp3PttLK8vOHvPNUt9uI0Eb5evsKUF2vruJnHYIRgpElL
	l452OGxxeDGDhI9493gsEvKaCxAiCGURqBtCl0/x2LhJ6aGQ139Gs7KAvUDJN2+epieOhBj88Z2/5
	ahytms3eKmOokXL6SbxrAtaswf4I4ENpbneC+BK7HbsipfmY+iS/RPtIS1ZWyr8Iw0UTqYWw3mT8l
	buQUxjxDQSjKtgJAVfzwaaZ4F5tnODpjWhm6vATrhCkoqN+X9wc8pfx+rU7mwU5pBD9CcgYDMorNw
	GRsnYL2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPU5k-00DGHC-OM; Tue, 07 Feb 2023 19:57:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPU5g-00DGGO-2R
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 19:57:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1pPU5d-0004DJ-Vy; Tue, 07 Feb 2023 20:57:18 +0100
Message-ID: <cd57394f0e39a1fefdf301dfb8bc9b4ea0fe9789.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 07 Feb 2023 20:57:17 +0100
In-Reply-To: <5cfc32b4-21d1-35fd-eb33-037471dd1960@pengutronix.de>
References: <20230206205928.627270-1-l.stach@pengutronix.de>
	 <5cfc32b4-21d1-35fd-eb33-037471dd1960@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_115720_128597_0F150DD4 
X-CRM114-Status: GOOD (  21.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP-EVK: increase VDD_ARM to OD voltage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Dienstag, dem 07.02.2023 um 10:54 +0100 schrieb Ahmad Fatoum:
> Hello Lucas,
>=20
> On 06.02.23 21:59, Lucas Stach wrote:
> > The Linux kernel or whatever is started from Barebox might switch the
> > ARM frequency to OD level, without first reprogramming the PMIC as
> > required. This might lead to system instability. To avoid this,
> > increase VDD_ARM to OD level. When the kernel handles the PMIC properly
> > it will drop the voltage back to ND level when appropriate.
> >=20
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >=20
> > diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/board=
s/nxp-imx8mp-evk/lowlevel.c
> > index 3cb24df1ca3f..d6fc32e65b61 100644
> > --- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> > +++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> > @@ -61,6 +61,12 @@ static struct pmic_config pca9450_cfg[] =3D {
> >  	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
> >  	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
> >  	{ PCA9450_BUCK1CTRL, 0x59 },
> > +	/*
> > +	 * Increase VDD_ARM to 0.95V to avoid issues in case software after
> > +	 * Barebox switches to the OD ARM frequency without reprogramming the
> > +	 * PMIC first.
> > +	 */
> > +	{ PCA9450_BUCK2OUT_DVS0, 0x1C },
>=20
> We use the same PMIC on nxp-imx8mn-evk and newer nxp-imx8mm-evk
> as well. Should we do this there too? Do we need to change something
> for the i.MX8M boards using Rohm PMICs?
>=20
Yep, I just checked: both 8MM and 8MN use the same 0.95V ARM voltage
for the OD mode. While I think it's not much a problem in practice as
the kernel does handle the PMIC before trying to switch ARM frequency
in all usual setups, better safe than sorry and put the ARM voltage
into OD on all system.

I'll send separate patches for that.

Regards,
Lucas


