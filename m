Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f43.google.com ([209.85.213.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShpH1-0001n3-IG
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 21:50:44 +0000
Received: by yhkk6 with SMTP id k6so1169121yhk.16
 for <barebox@lists.infradead.org>; Thu, 21 Jun 2012 14:50:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201206212101.42996.jbe@pengutronix.de>
References: <1340270178-2615-1-git-send-email-jbe@pengutronix.de>
 <1340270178-2615-3-git-send-email-jbe@pengutronix.de>
 <20120621182757.GF28394@pengutronix.de>
 <201206212101.42996.jbe@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Thu, 21 Jun 2012 23:50:21 +0200
Message-ID: <CAONxwYPA1xhS8X0VrzJzSrYratGKdsnV3F=Ks8kB56L+vfvk=A@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] Add two architectures which can detect the reset
 source
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi

> Sascha Hauer wrote:
> > On Thu, Jun 21, 2012 at 11:16:18AM +0200, Juergen Beisert wrote:
> > > These are examples how to provide the reset source. Not really tested=
 on
> > > the corresponding hardware yet.
> >
> > I did. On i.MX1 it does not work. The reset source register is not
> > inside the watchdog module, but at 0x0021b800 (Reset source register,
> > RSR)
>
> Hmm, in my old MC9328MX1 manual the watchdog register at 0x201008 (=3DWat=
chdog
> Status Register) reports in bit 0 (=3DTOUT) if the watchdog timed out.
>
> But the RSR seems a more reliable source to read the status.
>
> > On i.MX27 it correctly detects a watchdog reset but not a power on
> > reset. On i.MX27 it must be:
> >
> > # =A0define WDOG_WRSR_EXT (1 << 3)
> > # =A0define WDOG_WRSR_PWR (1 << 4)
>
> Ups, sure. "not really tested"...I told you so ;)
> Time for a #ifdef hell?


On i.MX258 it's=A00x53FDC000 + 0x0004 (WRSR) and bits 0 and 1, as follows:

Bit: 1 (TOUT)

Time-out. Indicates whether the reset is the result of a WDOG time-out.

=A0 =A0 0 Reset is not the result of a WDOG time-out.
=A0 =A0 1 Reset is the result of a WDOG time-out.

Bit: 0 (SFTW)

Software Reset. Indicates whether the reset is the result of a WDOG
software reset by asserting SRS bit

=A0 =A0 =A00 Reset is not the result of a software reset.
=A0 =A0 =A01 Reset is the result of a software reset.


Cheers
Roberto

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
