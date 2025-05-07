Delivery-date: Wed, 07 May 2025 11:19:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw6-0035NY-1h
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:19:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw5-00044H-Pp
	for lore@pengutronix.de; Wed, 07 May 2025 11:19:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M8OZPpjXc9UgAW6vuIXTShV7iipCL3gtcjCpHIC9Q4s=; b=lfd5j6beDiKjH9nFDGEX8EtGJ6
	H7d8BeAICpwm9rILgbq4EKFgph5aqcBuBE4my+3d7K0fCPRnvDiCNHx6gAwcUTik+aU3TbQbVa78O
	JysMqz1xMn3MNKyxlDUYq4Y6mO/5U9GZnOG8U/z6WiiIqKn186Mg89nm8aIuXkYzpZgbUwP/xdIBa
	0YcRGsLVRO1nvdqiZ6pO+hK4AKHr1cAWMMavfl3CryUYhJvM0jDdw59S3J0UgdRzzRZf5d2/fxW8w
	a3CLy8M0LsafEnC6xzIoJgLg3aRJLrSz1aL9HgCyjCahxRS9lS3lX9gvdEo38Ov7yWpcRNsPokTRD
	TCXuQyoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCava-0000000EuFV-1K5n;
	Wed, 07 May 2025 09:18:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCa3P-0000000EiqD-1vPt
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:23:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uCa3M-0001si-Sv; Wed, 07 May 2025 10:22:56 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uCa3M-001Wod-2H;
	Wed, 07 May 2025 10:22:56 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uCa3M-00037O-23;
	Wed, 07 May 2025 10:22:56 +0200
Message-ID: <67fefe7d5352473523d3d799fe5805ca0d31d1f5.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sascha Hauer
	 <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, pza@pengutronix.de
Date: Wed, 07 May 2025 10:22:56 +0200
In-Reply-To: <8e63db4d-b75e-4185-a867-7b846b69c41b@pengutronix.de>
References: <20250427134453.637482-1-a.fatoum@pengutronix.de>
	 <aBm_gAU4ITMANfwK@pengutronix.de>
	 <8e63db4d-b75e-4185-a867-7b846b69c41b@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_012259_496916_7E43C92C 
X-CRM114-Status: GOOD (  15.32  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] video: IPUv3-LDB: fix LVDS serial clock
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mi, 2025-05-07 at 09:25 +0200, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 5/6/25 09:51, Sascha Hauer wrote:
> > On Sun, Apr 27, 2025 at 03:44:53PM +0200, Ahmad Fatoum wrote:
>=20
> > > @@ -189,10 +200,10 @@ static int imx6q_ldb_prepare(struct imx_ldb_cha=
nnel *imx_ldb_ch, int di,
> > >  		pixclk *=3D 2;
>=20
> This multiplication by 2 is only done for the single channel mode.

TBH, I don't quite understand this. In the kernel, di_clk is calculated
as drm_display_mode->clock * 1000 in either mode.

Does this mean that the pixclk parameter passed to imx6q_ldb_prepare
was 3.5 MHz here, resulting in the 7 MHz rate that ldb_di0_podf is set
to after this multiplication?

> > > =20
> > >  	if (dual) {
> > > -		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk);
> > > -		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk);
> > > +		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk * 7, pixclk);
> > > +		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk * 7, pixclk);

The di_clk:serial_clk ratio is 1:7 here, regardless of what happened to
pixclk before.

> > I think in dual channel mode we have to maintain a 1:3.5 setting instea=
d
> > of 1:7.
>=20
> That means pixclk for dual channel mode here is already half the value
> it would be for single channel, i,e. 1:3.5.

In dual mode, the ipu_di clock has to run at double the serial_clk/7
rate because one IPU DI feeds two LDB channels. That's why the ratio
between ldb_di0/1_sel and ipu1_di0_sel must be set to 1:3.5, and so
that's what the ratio between imx6q_set_clock()'s serial_clk and di_clk
parameters should be as well.

regards
Philipp


