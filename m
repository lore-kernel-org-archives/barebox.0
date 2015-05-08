Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YqaL0-0002nq-1N
 for barebox@lists.infradead.org; Fri, 08 May 2015 04:56:38 +0000
Received: by lbbzk7 with SMTP id zk7so45648190lbb.0
 for <barebox@lists.infradead.org>; Thu, 07 May 2015 21:56:16 -0700 (PDT)
Date: Fri, 8 May 2015 08:01:33 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150508080133.0b514daf8524484a70fd09e6@gmail.com>
In-Reply-To: <CAOMZO5AfOS8jsCPcS_LGCLoTLAC=gAGN9tAKBCOmUohMeGfZEw@mail.gmail.com>
References: <20150508015933.1e00066aab99376b174ddfcb@gmail.com>
 <CAOMZO5AfOS8jsCPcS_LGCLoTLAC=gAGN9tAKBCOmUohMeGfZEw@mail.gmail.com>
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
Subject: Re: barebox on i.MX 6SoloX
To: Fabio Estevam <festevam@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, 7 May 2015 20:02:51 -0300
Fabio Estevam <festevam@gmail.com> wrote:

> On Thu, May 7, 2015 at 7:59 PM, Antony Pavlov <antonynpavlov@gmail.com> w=
rote:
> > Hi!
> >
> > I have just readed about new RaspberyPi-like board: UDOO Neo.
> > See https://www.kickstarter.com/projects/udoo/udoo-neo-raspberry-pi-ard=
uino-wi-fi-bt-40-sensors
> > for details.
> >
> > The board's main chip is Freescale i.MX 6SoloX.
> >
> > I see the arch/arm/mach-imx/imx6.c file in barebox source tree.
> >
> > I have no knowledge on i.MX family, so my question is:
> > does barebox already support i.MX 6SoloX?
> =

> Yes, it does. Please check:
> arch/arm/boards/freescale-mx6sx-sabresdb/board.c

Thanks!

Now I see that "6sx" is an abbriviation for 6SoloX.

-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
