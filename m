Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVmH7-0005d3-1I
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 14:36:14 +0000
Date: Thu, 23 Dec 2010 15:36:08 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20101223143608.GV14221@pengutronix.de>
References: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
	<AANLkTik0aw9XY6Lqcmwhihwgk0CW86cGEmC+Q3=Kf-mS@mail.gmail.com>
	<201012231250.08304.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201012231250.08304.jbe@pengutronix.de>
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
Subject: Re: [PATCH] Add gpio command support to STM/i.MX arch
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 23, 2010 at 12:50:07PM +0100, Juergen Beisert wrote:
> Gregory CLEMENT wrote:
> > [...]
> > > are available in the git repository at:
> > > =A0http://git.pengutronix.de/git/jbe/for_barebox_next/ next_stm_gpio_=
v3
> >
> > I didn't manage to get your git tree:
> > $ git remote add -f jbe http://git.pengutronix.de/git/jbe/for_barebox_n=
ext
> > Updating jbe
> > fatal: http://git.pengutronix.de/git/jbe/for_barebox_next/info/refs
> > not found: did you run git update-server-info on the server?
                           ^^^^^^^^^^^^^^^^^^^^^^
you only need to believe this :-)

> > error: Could not fetch jbe
> >
> > Indeed http://git.pengutronix.de/git/jbe/for_barebox_next/info/refs
> > does not exist.
> > Maybe I did something wrong or maybe be you have to run git
> > update-server-info on the server ;)
> =

> Sorry, I'm not a git expert. But this will show the content:
> =

> http://git.pengutronix.de/?p=3Djbe/for_barebox_next;a=3Dsummary
> =

> Don't know, what's wrong.
> =

> @Uwe: ?
You need to do

	cd /path/to/your/for_barebox_next-repo
	git update-server-info

(to fix this for now and )

	mv hooks/post-update.sample hooks/post-update

(to assert it stays fixed when you push the next time.)

But in general git:// is preferable because it only transfers the needed
objects (in contrast to the complete history when the repository is
perfectly packed even you only miss a single object).

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
