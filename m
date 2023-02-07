Delivery-date: Tue, 07 Feb 2023 11:33:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPLHi-00GvV7-Mj
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 11:33:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPLHf-0002bu-JT
	for lore@pengutronix.de; Tue, 07 Feb 2023 11:33:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6iLFyjsNqxIcKkQhoerTgW3ELkxxOpGrwbO/ScjwivU=; b=zfRhOCV744PJz9lBpDraWhithA
	s1TPkWBlmjUlT6gFU4bfyvV8b3+iS3aHvvB3m+t+zensmttc9D+h6Dmw79yHUV3choi7GXjw4Sq4v
	cuE33G6FWm6/RwoRNoBt38nOM5KfcIo2i170CExNZajjl2rK5ZhlTDwbAmNC0VAZF6n7ykTM8V/mr
	9hYC1uq8oqUYcBDG+wEoWp1h/FDf6H7YPETkPoZeyMckEL08W2XXMm//nhOyyOjHPg6iNr588dhPz
	MKLLv9xwgW11I2b2HSgP90hBWU/6FJl/HwSsCFLuwIPRouQOzE3TLpFAwWi1ErdADTTYu4kycm0mK
	4hfEcB0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPLGV-00BinN-7h; Tue, 07 Feb 2023 10:31:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPLGQ-00Bilq-0x
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 10:31:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1pPLGO-0002MA-G2; Tue, 07 Feb 2023 11:31:48 +0100
Message-ID: <8264238d15b1831f6ed325db751e3ca8e37912a3.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 07 Feb 2023 11:31:47 +0100
In-Reply-To: <20230207102433.xihwow72fcxb6vzk@pengutronix.de>
References: <20230206210004.627338-1-l.stach@pengutronix.de>
	 <20230206210004.627338-2-l.stach@pengutronix.de>
	 <20230207102433.xihwow72fcxb6vzk@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_023150_103939_F573D166 
X-CRM114-Status: GOOD (  15.49  )
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
Subject: Re: [PATCH 2/3] ARM: i.MX8M: esdctl: use common compatible to
 detect i.MX8M* DDRC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Dienstag, dem 07.02.2023 um 11:24 +0100 schrieb Marco Felsch:
> Hi Lucas,
>=20
> On 23-02-06, Lucas Stach wrote:
> > All i.MX8M* DDRC nodes are compatible to "fsl,imx8m-ddrc". As the memor=
y
> > size detection works the same on all of them, there is no need to match
> > the more specific compatible.
> >=20
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/esdctl.c | 8 +-------
> >  1 file changed, 1 insertion(+), 7 deletions(-)
> >=20
> > diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> > index 043de477a77d..2a2bc5205301 100644
> > --- a/arch/arm/mach-imx/esdctl.c
> > +++ b/arch/arm/mach-imx/esdctl.c
> > @@ -732,13 +732,7 @@ static __maybe_unused struct of_device_id imx_esdc=
tl_dt_ids[] =3D {
> >  		.compatible =3D "fsl,vf610-ddrmc",
> >  		.data =3D &vf610_data
> >  	}, {
> > -		.compatible =3D "fsl,imx8mm-ddrc",
> > -		.data =3D &imx8mq_data
> > -	}, {
> > -		.compatible =3D "fsl,imx8mn-ddrc",
> > -		.data =3D &imx8mn_data
>=20
> The i.MX8M Nano uses a 16bit bus width according the data. I don't have
> the datasheet right now to check this. But this commit will change it to
> 32 bit, is this allowed?

Argh, thanks for catching that! This change was a bit overzealous.

Regards,
Lucas
>=20
> Regards,
>   Marco
>=20
> > -	}, {
> > -		.compatible =3D "fsl,imx8mq-ddrc",
> > +		.compatible =3D "fsl,imx8m-ddrc",
> >  		.data =3D &imx8mq_data
> >  	}, {
> >  		.compatible =3D "fsl,imx7d-ddrc",
> > --=20
> > 2.39.1
> >=20
> >=20
> >=20



