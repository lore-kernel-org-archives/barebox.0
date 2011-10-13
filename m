Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REHiK-0007W0-0u
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 09:36:32 +0000
Date: Thu, 13 Oct 2011 11:36:27 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20111013093627.GU577@pengutronix.de>
References: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
	<CAJeSw6BJqdBON18UDRsBJgPov5iqXKmYRROnEyoH6SkNhOJg3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJeSw6BJqdBON18UDRsBJgPov5iqXKmYRROnEyoH6SkNhOJg3w@mail.gmail.com>
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
Subject: Re: Booting Pandaboard from SD card
To: Fabian van der Werf <fvanderwerf@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

On Thu, Oct 13, 2011 at 11:14:17AM +0200, Fabian van der Werf wrote:
> On Thu, Oct 13, 2011 at 10:49 AM, Samuel Stirtzel
> <s.stirtzel@googlemail.com> wrote:
> >
> > Starting kernel ...
> >
> > commandline: <NULL>
> > arch_number: 2791
> > Uncompressing Linux... done, booting the kernel.
> >
> > -
> > The screen just stays blank after the last message.
> > This looks to me like it is (obviously) caused by an incorrect
> > environment loaded.
> >
> >
> > Help would be appreciated.
> =

> Hi
> =

> I am also trying to get things up and running using barebox. I am at
> about the same stage where you are. Though I am loading the kernel
> over TFTP instead from SD. Like you, I get "Uncompressing Linux...
> done, booting the kernel" and then nothing.
> =

> Note that this last line is not printed by barebox but by the kernel.
> There is a separate=A0kernel build option to enable a console on the
> omap serial port. Then you still need to add console=3DttyOx,115200n8 to
> your boot arguments. I think it needs to be ttyO2, though I am not
> sure. I haven't had the time yet to try these options (it's just for a
> hobby project).
You might want to enable DEBUG_LL and EARLY_PRINTK in your kernel and
pass "earlyprintk" on the commandline. This is usually enough to provide
some output after Uncompressing Linux...

Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
