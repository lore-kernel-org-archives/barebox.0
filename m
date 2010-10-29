Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PBlIB-0001kA-Ln
	for barebox@lists.infradead.org; Fri, 29 Oct 2010 09:30:36 +0000
Date: Fri, 29 Oct 2010 11:30:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20101029093032.GJ31158@pengutronix.de>
References: <AANLkTikBmg33g-Uh=_fEtvkN6n6GZAi71Lc5tFm51yjJ@mail.gmail.com>
	<201010291904.16717.marc@cpdesign.com.au>
	<AANLkTikYV-vFVU-QF09yC-wzF5nSDmcy1rG0xz2WJLpj@mail.gmail.com>
	<20101029083451.GB21232@tarshish>
	<AANLkTim_NDWXcHj7oPuaTMymHKVtMZCnmCKwVkKuLFBJ@mail.gmail.com>
	<4CCA8ADF.2020209@pengutronix.de>
	<AANLkTi==CwV+WZZ5Mb=1+usVAheaEi11F+=KDf=drXQp@mail.gmail.com>
	<4CCA8FE0.3080006@pengutronix.de>
	<AANLkTi=69fM38iyvP3VbwvYYqif7FfvTHCnyuzHuwpho@mail.gmail.com>
	<4CCA9336.8030807@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4CCA9336.8030807@pengutronix.de>
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
Subject: Re: command bootu to start kernel
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 29, 2010 at 11:26:14AM +0200, Marc Kleine-Budde wrote:
> On 10/29/2010 11:21 AM, Belisko Marek wrote:
> >>>> do you have a "MEM=3D32" on your command line?
> >>> Well I add it but same result:
> >>
> >> BTW: It must be "mem=3D", in lowercase, but you did this.
> >>
> >> What I was meant to ask was, if you forget to add the "M" to "32".
> >> Because with mem=3D32 you tell Linux just to use 32 bytes of memory. M=
aybe
> >> your ATAGs are broken, Linux might not see the whole RAM or any if it.
> =

> > yes it was typo I forgot put M after 32. Kernel now properly boot :).
> =

> How much RAM you you have? Adjust mem=3D accordingly.
> =

> > U-boot somehow
> > add kernel this parameter? Because for u-boot I don't need to set this
> > parameter.
> =

> Nope - u-boot and barebox set up this information in the ATAG list.
> Seems something is broken with your ATAG list.
It's setup in setup_memory_tags (arch/arm/lib/armlinux.c).  So you
probably need to call armlinux_add_dram.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
