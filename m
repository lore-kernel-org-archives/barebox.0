Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QGpcp-0004ic-UW
	for barebox@lists.infradead.org; Mon, 02 May 2011 09:41:09 +0000
Date: Mon, 2 May 2011 11:41:01 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20110502094101.GC31131@pengutronix.de>
References: <BANLkTimBTzBWeLg5qGg+riW2VYruF5W8Mg@mail.gmail.com>
	<20110429082536.GD13104@game.jcrosoft.org>
	<BANLkTi=3jajUaQ=iBsS-iiWipaH5Wy-WJQ@mail.gmail.com>
	<20110429093019.GH13104@game.jcrosoft.org>
	<BANLkTin_1GZCPjmKMAOdMH-jH85PEa-7Rg@mail.gmail.com>
	<20110502092734.GB31131@pengutronix.de>
	<BANLkTinr-veuyxksGrtbk3o49-Pcc1uY-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTinr-veuyxksGrtbk3o49-Pcc1uY-g@mail.gmail.com>
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

On Mon, May 02, 2011 at 11:33:37AM +0200, Belisko Marek wrote:
> 2011/5/2 Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>:
> >
> > Maybe instead use
> >
> > -#!/bin/sh
> > +#!/bin/bash
> IMO this is not generic solution.
> Because debian based distros has dash by default
> in /bin/sh this users must always change MAKEALL script?
Even Debian users should have a bash in /bin/bash though. At least I
have :-) Either you or me has a misunderstanding.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
