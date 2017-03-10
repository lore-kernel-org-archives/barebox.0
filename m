Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmGgn-0007zL-BH
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 09:18:26 +0000
Date: Fri, 10 Mar 2017 10:17:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170310091759.p2jogd3u7wvf7sh3@pengutronix.de>
References: <20170308092402.21245-1-o.rempel@pengutronix.de>
 <20170308092402.21245-2-o.rempel@pengutronix.de>
 <20170310073258.nahg4i2wmcrni5s2@pengutronix.de>
 <3f45900f-b45b-a6d0-86c2-919056b25137@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f45900f-b45b-a6d0-86c2-919056b25137@pengutronix.de>
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
Subject: Re: [PATCH 2/2] usb: fastboot: umount device before writing to it
To: Oleksij Rempel <ore@pengutronix.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

On Fri, Mar 10, 2017 at 10:14:46AM +0100, Oleksij Rempel wrote:
> 
> 
> On 03/10/2017 08:32 AM, Sascha Hauer wrote:
> > On Wed, Mar 08, 2017 at 10:24:02AM +0100, Oleksij Rempel wrote:
> > > From: Sascha Hauer <s.hauer@pengutronix.de>
> > > 
> > > When a fastboot target refers to a device and we are going to write
> > > to it, umount it beforehand, so that we do not end up with corrupt
> > > data after writing.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/usb/gadget/f_fastboot.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
> > > index a6192b9eb..8d69aea8b 100644
> > > --- a/drivers/usb/gadget/f_fastboot.c
> > > +++ b/drivers/usb/gadget/f_fastboot.c
> > > @@ -754,6 +754,7 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
> > >  		goto out;
> > >  	}
> > > 
> > > +	umount(filename);
> > 
> > I'm not sure about this one. We should probably rather bail out with an
> > error when it's mounted. When it's mounted then the result is undesired,
> > even when we unmount it before flashing.
> 
> hm... for this case we will probably need some function to check if device
> is mounted. something like: is_mounted(path). Or, is there some other way to
> do this?

Yeah, you'll need a function for this. Right now there is no way to
determine if a device is mounted.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
