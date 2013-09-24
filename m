Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOKDo-0002bz-Mu
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 04:27:38 +0000
Received: by mail-lb0-f176.google.com with SMTP id y6so3355313lbh.35
 for <barebox@lists.infradead.org>; Mon, 23 Sep 2013 21:27:13 -0700 (PDT)
Date: Tue, 24 Sep 2013 08:24:35 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20130924082435.5b8fb244b576b34586279a1c@gmail.com>
In-Reply-To: <CAO-21LNqyD5-wMWC+Xy9grkxzb9bVRqw+pE7gnJJ_f0jog=izw@mail.gmail.com>
References: <CAO-21LNqyD5-wMWC+Xy9grkxzb9bVRqw+pE7gnJJ_f0jog=izw@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: Porting to a new board
To: "Allen Kennedy Jr." <allen@kennedystuff.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 23 Sep 2013 16:47:19 -0500
"Allen Kennedy Jr." <allen@kennedystuff.com> wrote:

> > What's the output of some network command, like for example 'dhcp'?
> =

> This hangs the chip.
> =

> >
> > What's the output of 'md -w -s /dev/phy0'?
> =

> Barebox:/ md -w -s /dev/phy0
> open: No such file or directory

N.B. we have the 'miitool' command.

> Indeed there is no phy0 device in the /dev directory.  It would appear
> this is where the trouble is.  Why would this be missing?

The /dev/phy0 device appears just after the first network usage (e.g. 'dhcp=
' command execution).

> > static struct fec_platform_data fec_info =3D {
> >         .xcv_type =3D PHY_INTERFACE_MODE_MII,
> >         .phy_addr =3D -1,
> > };
> =

> It looks exactly like that.
> =

> > When 'md -w -s /dev/phy0' doesn't show any sensible register output then
> > your pinmux may be wrong or you haven't brought your phy out of reset
> > with some gpio.
> =

> I have verified that that the GPIO for the reset is outputting a high,
> as it should be for the chip to not be in reset.
> =

> My pinmodes are set up thusly:
>    /* FEC */
>     PD0_AIN_FEC_TXD0 | GPIO_PUEN,
>     PD1_AIN_FEC_TXD1 | GPIO_PUEN,
>     PD2_AIN_FEC_TXD2 | GPIO_PUEN,
>     PD3_AIN_FEC_TXD3 | GPIO_PUEN,
>     PD4_AOUT_FEC_RX_ER | GPIO_PUEN,
>     PD5_AOUT_FEC_RXD1,
>     PD6_AOUT_FEC_RXD2 | GPIO_PUEN,
>     PD7_AOUT_FEC_RXD3 | GPIO_PUEN,
>     PD8_AF_FEC_MDIO | GPIO_PUEN,
>     PD9_AIN_FEC_MDC | GPIO_PUEN,
>     PD10_AOUT_FEC_CRS | GPIO_PUEN,
>     PD11_AOUT_FEC_TX_CLK | GPIO_PUEN,
>     PD12_AOUT_FEC_RXD0 | GPIO_PUEN,
>     PD13_AOUT_FEC_RX_DV | GPIO_PUEN,
>     PD14_AOUT_FEC_RX_CLK | GPIO_PUEN,
>     PD15_AOUT_FEC_COL | GPIO_PUEN,
>     PD16_AIN_FEC_TX_ER,
>     PF23_AIN_FEC_TX_EN,
> =

> And a double check shows that this matches the schematic.
> I probed the reset line with a scope, and indeed it is goes to the
> correct state before the attempt to register the FEC device.
> =

> thanks,
> -Allen
> =

> =

> On Sat, Sep 21, 2013 at 2:50 AM, Sascha Hauer <s.hauer@pengutronix.de> wr=
ote:
> > On Fri, Sep 20, 2013 at 04:02:44PM -0500, Allen Kennedy Jr. wrote:
> >> Thanks for the great idea to start with a loaded image in ram.
> >>
> >> I was able to get it to run, but I can't get the Ethernet to work.
> >> I'm not entirely sure where to begin looking.
> >>
> >> I hit devinfo and get:
> >> <snip>
> >>      `---- imx27-fec
> >>           `---- miibus0
> >>           `---- eth0
> >> <...>
> >> drivers:
> >> <...>
> >> SMSC LAN83C185
> >> SMSC LAN8187
> >> SMSC LAN8700
> >> SMSC LAN911x Internal PHY
> >> SMSC LAN8710/LAN8720
> >> fec_imx
> >> Generic PHY
> >> </snip>
> >>
> >> This would seem to indicate to me that the drivers are loading. And
> >> that the register happened.
> >> But I'm not sure where to go from here.
> >
> > What's the output of some network command, like for example 'dhcp'?
> >
> > What's the output of 'md -w -s /dev/phy0'?
> >
> > Problems with networking usually go down to problems with the phy.
> > What's the content of the platform data for the FEC? It should look
> > like:
> >
> > static struct fec_platform_data fec_info =3D {
> >         .xcv_type =3D PHY_INTERFACE_MODE_MII,
> >         .phy_addr =3D -1,
> > };
> >
> >
> > With xcv_type being MII (I think it's the only possibility on i.MX27)
> > and phy_addr to either -1 for autodetecting the address or the correct
> > address. Use -1 to be on the safe side.
> >
> > When 'md -w -s /dev/phy0' doesn't show any sensible register output then
> > your pinmux may be wrong or you haven't brought your phy out of reset
> > with some gpio.
> >
> >>
> >> In another thread... the advice was given to check the MII address,
> >> although I'm not sure how to interpret the data sheet.
> >> It looks as though the address is 31.  But I could be wrong.  When I
> >> try 31, and do a DHCP the processor hangs.
> >> So I tried 0, and the processor hangs.
> >>
> >> Is there a "scan the bus mode" I can use in the fec driver?  I don't
> >> see one, but I may be looking in the wrong spot.
> >
> > It's not in the FEC driver but in the generic MII support. As said, use
> > -1 as phy id.
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
