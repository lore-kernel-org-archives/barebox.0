Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zyccu-0007YX-G7
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 09:32:37 +0000
Date: Tue, 17 Nov 2015 10:32:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151117093213.GO8526@pengutronix.de>
References: <1447664445-19282-1-git-send-email-s.christ@phytec.de>
 <1447664445-19282-2-git-send-email-s.christ@phytec.de>
 <CAOpc7mGnHmYOVvOWygYUs+1dqdsZYtW-T=8ruNwDt-U1bQNvMg@mail.gmail.com>
 <20151116101705.GA19657@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151116101705.GA19657@lws-christ>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] net: fec: implement dtb property phy-reset-duration
To: Stefan Christ <s.christ@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Nov 16, 2015 at 11:17:05AM +0100, Stefan Christ wrote:
> Hi,
>   =

> > shouldn't this be msec =3D 1000.
> > =

> > Here you set it to 1ms if it used to be over 1s.
> =

> Yeah, that would be the obvious and plausible thing to do, but the driver=
 in
> the linux kernel does it this way and it's documented in the device tree
> bindings.  So I'm not sure if we can change the default behavior here.

Yes, we can ;)

The rationale behind this code may be: The reset duration is
unreasonably high (>1s), so that it to a sane default (1ms).

I suggest to drop the check completely. If someone ever starts barebox
with an insanely high value (maybe he thought the value is in us) then
he won't notice the mistake if barebox silently falls back to 1ms as
duration. If instead barebox waits for multiple seconds then he will
notice and it the device tree which is what we want.

Sascha


> =

> Mit freundlichen Gr=FC=DFen / Kind regards,
> 	Stefan Christ
> =

> On Mon, Nov 16, 2015 at 11:03:32AM +0100, Holger Schurig wrote:
> > 2015-11-16 10:00 GMT+01:00 Stefan Christ <s.christ@phytec.de>:
> > =

> > > +               /* A sane reset duration should not be longer than 1s=
 */
> > > +               if (msec > 1000)
> > > +                       msec =3D 1;
> > >
> > =

> > Hi Stefan,
> > =

> > shouldn't this be msec =3D 1000.
> > =

> > Here you set it to 1ms if it used to be over 1s.
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
