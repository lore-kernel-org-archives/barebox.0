Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YQXaO-0001ky-HS
 for barebox@lists.infradead.org; Wed, 25 Feb 2015 08:44:53 +0000
Date: Wed, 25 Feb 2015 09:44:29 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20150225084429.GR7994@pengutronix.de>
References: <1424682905-12451-1-git-send-email-s.trumtrar@pengutronix.de>
 <1424682905-12451-4-git-send-email-s.trumtrar@pengutronix.de>
 <1424683689.29479.3.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424683689.29479.3.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/3] ARM: socfpga: add Altera SoCFPGA Development Kit
 support
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 23, 2015 at 10:28:09AM +0100, Jan L=FCbbe wrote:
> On Mo, 2015-02-23 at 10:15 +0100, Steffen Trumtrar wrote:
> > --- /dev/null
> > +++ b/arch/arm/boards/altera-socdk/board.c
> > @@ -0,0 +1,38 @@
> =

> > +static int ksz9021rn_phy_fixup(struct phy_device *dev)
> > +{
> > +	phy_write(dev, 0x09, 0x0f00);
> > +
> > +	/* rx skew */
> > +	phy_write(dev, 0x0b, 0x8105);
> > +	phy_write(dev, 0x0c, 0x0000);
> > +
> > +	/* clk/ctrl skew */
> > +	phy_write(dev, 0x0b, 0x8104);
> > +	phy_write(dev, 0x0c, 0xa0d0);
> > +
> > +	return 0;
> > +}
> > +
> > +static int socfpga_console_init(void)
> > +{
> > +	if (!of_machine_is_compatible("altr,socdk"))
> > +		return 0;
> > +
> > +	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> > +					   ksz9021rn_phy_fixup);
> > +
> > +	return 0;
> > +}
> > +console_initcall(socfpga_console_init);
> =

> > --- /dev/null
> > +++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts
> =

> > +&gmac1 {
> > +	status =3D "okay";
> > +	phy-mode =3D "rgmii";
> > +
> > +	rxd0-skew-ps =3D <0>;
> > +	rxd1-skew-ps =3D <0>;
> > +	rxd2-skew-ps =3D <0>;
> > +	rxd3-skew-ps =3D <0>;
> > +	txen-skew-ps =3D <0>;
> > +	txc-skew-ps =3D <2600>;
> > +	rxdv-skew-ps =3D <0>;
> > +	rxc-skew-ps =3D <2000>;
> > +};
> =

> It seems that with the DT-based configuration of the skew values, the
> phy_fixup in board.c is not necessary.

Yes, one would expect that. But it didn't work, so I decided to not
debug this right now.
The socfpga-DT section needs an overhaul anyway; gpio and clkmgr bindings
are not correct anymore.

Regards,
Steffen

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
