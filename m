Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG0LY-0002wL-Jl
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 11:32:10 +0000
Date: Fri, 26 Oct 2018 13:31:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181026113156.ldj7twmzwd2deaxi@pengutronix.de>
References: <20181025223718.GA24844@lenoch>
 <20181026101911.kevwudaie33atekk@pengutronix.de>
 <20181026111047.GA4216@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181026111047.GA4216@lenoch>
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
Subject: Re: [PATCH] usbgadget: autostart: add DFU support
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 01:10:47PM +0200, Ladislav Michl wrote:
> On Fri, Oct 26, 2018 at 12:19:11PM +0200, Sascha Hauer wrote:
> > Hi Ladis,
> > 
> > On Fri, Oct 26, 2018 at 12:37:19AM +0200, Ladislav Michl wrote:
> > > Use global variable dfu_function to autostart DFU. As similar code
> > > is used to start multifunction gadget using command, move common
> > > code to common/usbgadget.c and consolidate it.
> > > 
> > > Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> > > ---
> > >  This is a draft, comments welcome. Getting 
> > >  Cannot set parameter otg.mode: No such device
> > 
> > I just sent a fix for this.
> 
> Thanks, tested, added.
> 
> > >  but that's same as before this patch. Documentation is probably
> > >  also worth updating...
> > 
> > Indeed.
> 
> Will add prepatch to document bbu then.
> 
> > > diff --git a/commands/usbgadget.c b/commands/usbgadget.c
> > > index a1744cbe1..416b2acfc 100644
> > > --- a/commands/usbgadget.c
> > > +++ b/commands/usbgadget.c
> > > @@ -30,14 +30,18 @@
> > >  #include <usb/dfu.h>
> > >  #include <usb/gadget-multi.h>
> > >  
> > > +int usbgadget_register(bool dfu_set, const char *dfu_opts,
> > > +		       bool fastboot_set, const char *fastboot_opts,
> > > +		       bool create_serial, bool is_acm, bool export_bbu);
> > > +
> > 
> > This should get a prototype somewhere in include/, but that's probably
> > due to the draft status of this patch.
> 
> Any idea where would it fit? Or just create new file (which seems overkill
> to me)?

include/usb/gadget-multi.h perhaps? Not a perfect match, but in the end
that's what the function does: create a USB multi device.

> 
> > Otherwise looks fine to me.
> 
> usbgadget takes -s switch to create serial gadget and -a to create acm.
> However I fail to see how is creating former done.

To be honest I always use acm and never found out how the generic serial
works. It may have bitrotted over time, but for me it never worked.

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
