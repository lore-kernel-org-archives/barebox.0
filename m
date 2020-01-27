Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw81c-0001lG-TG
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 17:18:22 +0000
Date: Mon, 27 Jan 2020 18:18:04 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200127171804.ixzvbautqezylzp5@tellis.lin.mbt.kalray.eu>
References: <20200122154950.22746-1-jmaselbas@kalray.eu>
 <20200122154950.22746-10-jmaselbas@kalray.eu>
 <20200127134034.nnlluowtpbel5kmp@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127134034.nnlluowtpbel5kmp@pengutronix.de>
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
Subject: Re: [RFC PATCH 9/9] usb: dwc2: Add gadget driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Mon, Jan 27, 2020 at 02:40:34PM +0100, Sascha Hauer wrote:
> Hi Jules,
> > +int dwc2_gadget_init(struct dwc2 *dwc2)
> > +{
> > +	u32 dctl;
> > +	int epnum;
> > +	int ret;
> > +
> > +	dwc2_core_init(dwc2);
> 
> This is called once during probe here and once during host init, it
> should probably only be called once.
Yes this is called in both gadget and host init, the only difference is
that in host mode the mode is forced before. I still need see if the
force mode has to be set before the core_init.

The force mode is also kinda of a hack and I want to find a better way
of handling the case where the controller is otg but the connector is
not otg but host only.

For now I think it is okay to do the core_init in each mode, since otg mode is
not supported, you should either use the `usb` or the `usbgadget` command.

> 
> I would expect both host and gadget support to be optional, but instead
> both is unconditionally compiled in. Does this link when USB host or gadget
> support is disabled?
Good point, I forgot to do this. I've made the change locally this will be
included in the next version.

> How does the driver select between host and gadget mode? Normally we do
> not have any real OTG support in barebox. With dr_mode = "otg" in the
> device tree we usually register some device which the user can use to
> specify the mode during runtime. How is this solved here?
The selection is done with `usb` and `usbgadget` commands. The first will
call host_init which will "select" the host mode (by forcing the controller
mode to host). The later command will setup the controller in peripheral mode.

> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
