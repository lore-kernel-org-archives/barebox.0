Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0kYR-000208-Jy
 for barebox@lists.infradead.org; Tue, 27 Mar 2018 09:06:08 +0000
Received: by mail-lf0-x231.google.com with SMTP id g203-v6so32162117lfg.11
 for <barebox@lists.infradead.org>; Tue, 27 Mar 2018 02:05:56 -0700 (PDT)
Date: Tue, 27 Mar 2018 12:21:38 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180327122138.f276a11592e3fc167218af00@gmail.com>
In-Reply-To: <73in9it77y.fsf@pengutronix.de>
References: <20180326102037.57959f6175c61967d9e9c5b4@gmail.com>
 <73in9it77y.fsf@pengutronix.de>
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
Subject: Re: socfpga: ethernet problem
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 27 Mar 2018 07:31:29 +0200
Steffen Trumtrar <s.trumtrar@pengutronix.de> wrote:

> =

> Hi,
> =

> Antony Pavlov <antonynpavlov@gmail.com> writes:
> =

> > Hi!
> >
> > Barebox for DE0-Nano-SoC succesfully starts on Terasic DE10-Nano board
> > but there is an ethernet issue.
> >
> > After `make ARCH=3Darm socfpga_defconfig` I see that the CONFIG_DRIVER_=
NET_DESIGNWARE_SOCFPGA
> > option is disabled.
> >
> >   #
> >   # Network drivers
> >   #
> >   ...
> >   CONFIG_DRIVER_NET_DESIGNWARE=3Dy
> >   # CONFIG_DRIVER_NET_DESIGNWARE_GENERIC is not set
> >   # CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA is not set
> >
> > after enabling CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA I see 'Could not ge=
t sysmgr-syscon node'
> > error message:
> >
> >
> =

> Patch opportunity:
> =

> DRIVER_NET_DESIGNWARE_SOCFPGA is missing a
>     select MFD_SYSCON
> =

> and the defconfig should be regenerated with the socfpga driver instead.
> =


I made changes you suggest. Now ethernet works!

Many thanks!

Now I still have some minor issues with DE10-Nano:

  * socfpga-xload-2_defconfig does not work but socfpga-xload_defconfig doe=
s;
  * 'sleep 1' longs for 5 seconds.

I suppose that DE10-Nano is somewhat differ with DE0-Nano-SoC.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
