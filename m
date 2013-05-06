Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZMSd-0005ib-DU
 for barebox@lists.infradead.org; Mon, 06 May 2013 14:32:15 +0000
Date: Mon, 6 May 2013 16:31:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506143152.GG32299@pengutronix.de>
References: <1366966527.864498237@f391.i.mail.ru>
 <1367833931.133443941@f394.i.mail.ru>
 <20130506100349.GE32299@pengutronix.de>
 <1367846636.53670006@f347.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367846636.53670006@f347.mail.ru>
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
Subject: Re: OTG Device mode on i.MX51
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, May 06, 2013 at 05:23:56PM +0400, Alexander Shiyan wrote:
> > On Mon, May 06, 2013 at 01:52:11PM +0400, Alexander Shiyan wrote:
> > > > Hello.
> > > > 
> > > > Is anyone have successful works OTG in device mode on iMX51?
> > > > Thanks!.
> > 
> > I have the driver working in devicemode on several boards, but not on an
> > i.MX51 I think. I have no indication though that the UDC core itself is
> > in any way different to the ones on other i.MXs.
> 
> I have tested usage device mode on i.MX27. It works (Patch for PCM-038
> will be sent), but driver(?) does not work for me on i.MX51...
> Executing is freeze at dr_controller_setup (drivers/usb/gadget/fsl_udc.c).
> Now I trying to check for missing clocks, but not sure about this since we
> enable all clocks at start...
> So, if anyone can test this feature on i.MX51 it will be helpful.

If there's a problem it's more likely that the usbmisc registers are not
correctly initialized, so it probably won't help to test on another
board

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
