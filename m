Delivery-date: Fri, 03 Feb 2023 10:09:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNs47-00CUO1-Gb
	for lore@lore.pengutronix.de; Fri, 03 Feb 2023 10:09:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNs44-0003p0-Rt
	for lore@pengutronix.de; Fri, 03 Feb 2023 10:09:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iHkJ2xAykKNZkP+otzV1UP3ePIMWBy8EqkBwQ0cDGu4=; b=ChMx3Pgnoa5hzC7LO1rTQssPpH
	shmv+tPAFkBYM74CKlp++Kcgsw+itYXp6Vx9RdemTZf8V5Yv7866Dk5SktoX2deaPhfiJteUi0RZM
	l13kHWn7HQqpbu6At+xXnZOVZS/Olr31mVtg0B3BpEP7qvObiMNReaBqrA+xWTVXMYKX8ILIuafY+
	/yZP9TtipFjW3jQ1kP0iM3v9sawcN20TOJ7KoEl364c0fQs+3bXNKHRP2fcFKaZZhGamq2UE6GDAj
	eskoiUUHPavIJX7c9oDWSjC0RGN5PzUiQYf2UkPQmfaUroYCNNtZGX8rvuBWi+E6JVXI97rJTkkja
	T60oyH7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNs2f-0016bc-2y; Fri, 03 Feb 2023 09:07:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNs2a-0016aL-Lt
	for barebox@lists.infradead.org; Fri, 03 Feb 2023 09:07:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1pNs2V-0003gx-IL; Fri, 03 Feb 2023 10:07:23 +0100
Message-ID: <e7c1e8c764dea60df8ebfe116ceb0c172fc4e64c.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Fri, 03 Feb 2023 10:07:22 +0100
In-Reply-To: <20230203075558.GN13319@pengutronix.de>
References: <20230202120524.469258-1-l.stach@pengutronix.de>
	 <20230203075558.GN13319@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_010728_730632_D2F8A3D8 
X-CRM114-Status: GOOD (  18.74  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: imx8mp: add USB suspend clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Freitag, dem 03.02.2023 um 08:55 +0100 schrieb Sascha Hauer:
> On Thu, Feb 02, 2023 at 01:05:24PM +0100, Lucas Stach wrote:
> > Linux added another USB clock to properly describe the controller root
> > and suspend clocks. As new DTs are using this clock to keep the shared
> > gate enabled, access to the USB controller will hang Barebox without
> > support for this clock.
> >=20
> > Fixes: 0d682a2997a8 ("dts: update to v6.2-rc5")
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/clk/imx/clk-imx8mp.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.=
c
> > index a1611be1833e..40578c2a4bd6 100644
> > --- a/drivers/clk/imx/clk-imx8mp.c
> > +++ b/drivers/clk/imx/clk-imx8mp.c
> > @@ -665,7 +665,8 @@ static int imx8mp_clocks_init(struct device_node *c=
cm_np)
> >  	hws[IMX8MP_CLK_UART2_ROOT] =3D imx_clk_hw_gate4("uart2_root_clk", "ua=
rt2", ccm_base + 0x44a0, 0);
> >  	hws[IMX8MP_CLK_UART3_ROOT] =3D imx_clk_hw_gate4("uart3_root_clk", "ua=
rt3", ccm_base + 0x44b0, 0);
> >  	hws[IMX8MP_CLK_UART4_ROOT] =3D imx_clk_hw_gate4("uart4_root_clk", "ua=
rt4", ccm_base + 0x44c0, 0);
> > -	hws[IMX8MP_CLK_USB_ROOT] =3D imx_clk_hw_gate4("usb_root_clk", "osc_32=
k", ccm_base + 0x44d0, 0);
> > +	hws[IMX8MP_CLK_USB_ROOT] =3D imx_clk_hw_gate2_shared2("usb_root_clk",=
 "hsio_axi", ccm_base + 0x44d0, 0);
> > +	hws[IMX8MP_CLK_USB_SUSP] =3D imx_clk_hw_gate2_shared2("usb_suspend_cl=
k", "osc_32k", ccm_base + 0x44d0, 0);
>=20
> Do old dts files work with this change? In other words, can I apply this
> directly to master or do I have to squash this change into the commit
> that changes imx8mp.dtsi to use this clock?
>=20
As the old clock ID is still supported from the clock driver after this
change and operates the same gate, it should be fine to apply this
patch to master.

Regards,
Lucas


