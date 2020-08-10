Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5DV2-0003ew-07
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 19:30:24 +0000
Date: Mon, 10 Aug 2020 21:30:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810193022.GC31536@pengutronix.de>
References: <20200721061523.27105-1-a.fatoum@pengutronix.de>
 <20200803212133.GM31536@pengutronix.de>
 <CAK7LNAT_00x3qCRiU8J_K=MHD-=cFZUmHGxxoTXx2md+=0gO-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAT_00x3qCRiU8J_K=MHD-=cFZUmHGxxoTXx2md+=0gO-g@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] treewide: remove stale instances of struct device
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Aug 04, 2020 at 02:02:16PM +0900, Masahiro Yamada wrote:
> On Tue, Aug 4, 2020 at 6:22 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Tue, Jul 21, 2020 at 08:15:23AM +0200, Ahmad Fatoum wrote:
> > > We call it struct device_d, any instances of struct device are likely
> > > left-over code after porting from Linux.
> > >
> > > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > > ---
> > >  drivers/crypto/caam/intern.h   | 5 -----
> > >  drivers/crypto/caam/jr.h       | 2 --
> > >  drivers/gpio/gpio-sx150x.c     | 1 -
> > >  drivers/usb/musb/musb_gadget.c | 9 ---------
> > >  4 files changed, 17 deletions(-)
> >
> > Applied, thanks
> >
> > Sascha
> 
> 
> Why doesn't barebox use (struct device)?

For historical reasons. When creating barebox I thought that it's better
to not use the same struct name when they are not exactly compatible. We
have struct driver_d for the same reason.

I am not sure I would do the same again. If we find good reasons to name
them struct device and struct driver we can change that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
