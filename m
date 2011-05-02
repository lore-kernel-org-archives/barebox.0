Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QGpPm-0004gA-UA
	for barebox@lists.infradead.org; Mon, 02 May 2011 09:27:40 +0000
Date: Mon, 2 May 2011 11:27:34 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20110502092734.GB31131@pengutronix.de>
References: <BANLkTimBTzBWeLg5qGg+riW2VYruF5W8Mg@mail.gmail.com>
	<20110429082536.GD13104@game.jcrosoft.org>
	<BANLkTi=3jajUaQ=iBsS-iiWipaH5Wy-WJQ@mail.gmail.com>
	<20110429093019.GH13104@game.jcrosoft.org>
	<BANLkTin_1GZCPjmKMAOdMH-jH85PEa-7Rg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTin_1GZCPjmKMAOdMH-jH85PEa-7Rg@mail.gmail.com>
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
Subject: Re: MAKEALL problem
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

On Fri, Apr 29, 2011 at 08:38:33PM +0200, Belisko Marek wrote:
> On Fri, Apr 29, 2011 at 11:30 AM, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> > On 10:47 Fri 29 Apr =A0 =A0 , Belisko Marek wrote:
> >> HI,
> >>
> >> On Fri, Apr 29, 2011 at 10:25 AM, Jean-Christophe PLAGNIOL-VILLARD
> >> <plagnioj@jcrosoft.com> wrote:
> >> > On 09:06 Fri 29 Apr =A0 =A0 , Belisko Marek wrote:
> >> >> Hi,
> >> >>
> >> >> current HEAD: 165a1e91f9178f160bc34c00e1d5b356cf022a00 make this pr=
oblem:
> >> >>
> >> >> CROSS_COMPILE=3Darm-none-linux-gnueabi- ARCH=3Darm ./MAKEALL
> >> >> Building arm a9m2410_defconfig
> >> >> Configure: ./MAKEALL: 266: Bad substitution
> >> >>
> >> >> --------------------- SUMMARY ----------------------------
> >> >> defconfigs compiled: 0
> >> >> compiled in =A0 10s
> >> >> ----------------------------------------------------------
> >> >>
> >> >> Am I missing something or it's really broken?
> >> > no I use it evreyday on barebox or linux
> >> >
> >> > which shell are you using
> >> GNOME Terminal 2.32.1
> > it's your terminal
> >
> > which shell sh/bash/dash/others?
> After some googling and check MAKEALL with checkbashism script this
> patch fix my problem (work fine on Ubuntu):
> =

> 1. PIPESTATUS is bashism but hard to replace with something valuable in d=
ash
> s ojust remove bash array handling
> =

> 2. source is also bashism. fix it with . replacement.
> =

> diff --git a/MAKEALL b/MAKEALL
> index e987de2..6c0d017 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -77,7 +77,7 @@ stats() {
>  }
> =

>  check_pipe_status() {
> -       for i in "${PIPESTATUS[@]}"
> +       for i in ${PIPESTATUS}
>         do
>                 [ $i -gt 0 ] && return 1
>         done
> @@ -234,7 +234,7 @@ then
>                 CONFIG=3D"./${CONFIG}"
>         fi
> =

> -       source "${CONFIG}"
> +       . "${CONFIG}"
>  fi
> =

>  [ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1

Maybe instead use

-#!/bin/sh
+#!/bin/bash

? (I'd fix s/source/./ anyhow.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
