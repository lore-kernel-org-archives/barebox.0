Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIEoI-0000RW-Rn
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 11:04:55 +0000
Date: Mon, 2 Feb 2015 12:04:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150202110432.GA12209@pengutronix.de>
References: <1422366061-26735-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <20150202104957.GA10842@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150202104957.GA10842@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] watchdog: imx: error out on negative timeouts
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 02, 2015 at 11:49:57AM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> On Tue, Jan 27, 2015 at 02:41:01PM +0100, Uwe Kleine-K=F6nig wrote:
> > I'm not sure where a negative timeout could come from but making the
> > code more robust for no additional runtime cost is good nevertheless.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/watchdog/imxwd.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> > index 31c3d0d85353..66e9f6848f74 100644
> > --- a/drivers/watchdog/imxwd.c
> > +++ b/drivers/watchdog/imxwd.c
> > @@ -87,7 +87,7 @@ static int imx21_watchdog_set_timeout(struct imx_wd *=
priv, int timeout)
> >  =

> >  	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
> >  =

> > -	if (!timeout || timeout > 128)
> > +	if (timeout <=3D 0 || timeout > 128)
> >  		return -EINVAL;
> This patch is broken because reset_cpu (in the same source file) calls
> set_timeout with timeout=3D-1 to reset the cpu immediatly. The wd command
> only parses non-negative values, so from there nothing strange should be
> expected.
> =

> Returning -EINVAL on timeout=3D0 (which means "disable watchdog") is OK
> because the imx21 watchdog cannot be stopped.
> =

> So in short: please drop this patch from next.

Did that.

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
