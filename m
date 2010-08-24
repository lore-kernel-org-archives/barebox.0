Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Onxmg-0005Pb-MM
	for barebox@lists.infradead.org; Tue, 24 Aug 2010 17:59:44 +0000
Date: Tue, 24 Aug 2010 19:59:39 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100824175939.GA27985@pengutronix.de>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100818151536.GF454@game.jcrosoft.org>
	<20100821102734.GN27749@pengutronix.de>
	<20100821113550.GA25293@merkur.ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100821113550.GA25293@merkur.ravnborg.org>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hi Sam,

On Sat, Aug 21, 2010 at 01:35:50PM +0200, Sam Ravnborg wrote:
> On Sat, Aug 21, 2010 at 12:27:34PM +0200, Sascha Hauer wrote:
> > On Wed, Aug 18, 2010 at 05:15:36PM +0200, Jean-Christophe PLAGNIOL-VILL=
ARD wrote:
> > > On 06:17 Sun 08 Aug     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > this will add also the support of the new ncurse interface nconfig
> > > > =

> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.=
com>
> > > is it ok to apply it?
> > =

> > Generally ok, yes. I just thought we should wait a little for a later
> > version, or have I misunderstood Sam?
> =

> Current state of kconfig in v2.6.36-rc1 (which is a later version than
> the one Jean-Christophe references) is the following:
> - savedefconfig bugs fixed
> - reading a minimal config (created by savedefconfig) fixed
> =

> The nconfig issues I mentioned regarding search are
> not yet ready.
> And I am not sure if they go in until next merge window.
> =

> Likewise there are patches in the works that will ease
> the integration with external projects.
> The patches does the following:
> - Allows the prefix to be configured (CONFIG_ =3D> BR2_)
> - No more hardcoded "kernel" strings
> - mainmenu in the config file is used as headline
> =

> These patches will go in during next merge window if they
> are finished in due time.
Just in case you run out of ideas, one thing that I would really like to
have is a "Go there" button in the search results.  I often want to
change one symbol.  The easiest way to do this (apart from editing
.config directly) would be:

	make menuorwhateverconfig
	/CONFIG_FOO
	"Go there"
	enable it
	quit+save

Or better:

	make menuorwhateverconfig
	/CONFIG_FOO
	"enable"

OK, it's not that easy as FOO might have dependencies that even might
not be fulfillable, but still, I'd like it.

And there is IMHO a bug in Kconfig.  If I search for "CONFIG_LL" I get a
long list starting with:

	CPU_LLSERIAL_S3C2440_ONLY
	S3C_GPIO_PULL_UP
	S3C2440_PLL_16934400
	USB_GADGET_LANGWELL
	MACH_ARMADILLO5X0

If I had to guess what the problem is, I'd say that kconfig strips
"CONFIG_" before searching.  It should better search for ^LL instead of
LL, no?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
