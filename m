Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THeVJ-0005S3-Q9
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 17:37:35 +0000
Date: Fri, 28 Sep 2012 19:37:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120928173728.GJ1322@pengutronix.de>
References: <1348840692-1913-1-git-send-email-maxime.ripard@free-electrons.com>
 <20120928143207.GF1322@pengutronix.de>
 <5065B686.3060503@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5065B686.3060503@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm: cfa10036: Add proper resource length
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, brian@crystalfontz.com

On Fri, Sep 28, 2012 at 04:39:02PM +0200, Maxime Ripard wrote:
> Hi Sascha,
> =

> Le 28/09/2012 16:32, Sascha Hauer a =E9crit :
> > On Fri, Sep 28, 2012 at 03:58:12PM +0200, Maxime Ripard wrote:
> >> The cfa10036 board file were missing the length parameter when adding
> >> devices. This made barebox crash early in the boot, in the mxs-mci
> >> driver.
> >>
> >> Provide the resources lengths in a consistent format.
> > =

> > Applied, thanks
> =

> Will this be applied to the next stable release (2012.10)? Since 2012.09
> was already broken (my bad), it would be nice if 2012.10 wasn't.

Yes, I applied this to master.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
