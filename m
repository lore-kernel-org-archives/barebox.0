Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT8Un-00025w-2M
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 16:19:42 +0000
Date: Wed, 13 Jun 2018 18:19:29 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180613161929.numlxerifgi5cfj4@pengutronix.de>
References: <20180613152644.12998-1-u.kleine-koenig@pengutronix.de>
 <20180613154316.GA5463@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180613154316.GA5463@ravnborg.org>
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
Subject: Re: [PATCH] scripts: gitignore += omap3-usb-loader
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On Wed, Jun 13, 2018 at 05:43:16PM +0200, Sam Ravnborg wrote:
> On Wed, Jun 13, 2018 at 05:26:44PM +0200, Uwe Kleine-K=F6nig wrote:
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  scripts/.gitignore | 1 +
> >  1 file changed, 1 insertion(+)
> > =

> > diff --git a/scripts/.gitignore b/scripts/.gitignore
> > index 2a9ae6bdcf36..adcb4fe16b73 100644
> > --- a/scripts/.gitignore
> > +++ b/scripts/.gitignore
> > @@ -25,4 +25,5 @@ mk-am35xx-spi-image
> >  mxsimage
> >  mxsboot
> >  mxs-usb-loader
> > +/omap3-usb-loader
> =

> Was it on purpose that a "/" was added?

Yes, the effect is that the pattern is only applied to the current
directory but not subdirs.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
