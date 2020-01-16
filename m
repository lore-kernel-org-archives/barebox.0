Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryzE-0007Q0-34
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 06:50:40 +0000
Date: Thu, 16 Jan 2020 07:50:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200116065027.psohiqog4awxye4h@pengutronix.de>
References: <20191220143232.28354-10-s.hauer@pengutronix.de>
 <20200114132112.4119-1-jmaselbas@kalray.eu>
 <20200114142704.3t7vra5wlrzivi3n@pengutronix.de>
 <20200114171226.evt4nvuxe7gdc5bb@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114171226.evt4nvuxe7gdc5bb@tellis.lin.mbt.kalray.eu>
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
Subject: Re: [RFC PATCH 0/7] usb: dwc2 host driver
To: Matthias Mann <m.mann@arkona-technologies.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jan 14, 2020 at 06:12:26PM +0100, Jules Maselbas wrote:
> On Tue, Jan 14, 2020 at 03:27:04PM +0100, Sascha Hauer wrote:
> > Hi Jules,
> > 
> > On Tue, Jan 14, 2020 at 02:21:05PM +0100, Jules Maselbas wrote:
> > > Hi Sascha,
> > > 
> > > I've been working on a driver for the dwc2 otg controller, for both host
> > > and device mode.  Like you I've started from U-Boot driver and I mixed
> > > it with some part from Linux.  For instance I've removed the register
> > > structs and I've been using the same defines for register bit-fields as
> > > in Linux.
> > > 
> > > I would like to share my version of the host driver, as the gadget driver
> > > one still requires some cleanup.  This series is not to be applied on the
> > > driver you proposed. However I am willing to propose a new series that can
> > > be applied on the driver you proposed.  What do you think?
> > 
> > The dwc2 driver was a quick shot, I am all in for improvements. Removing
> > the register structs is very nice and I would be interested in gadget
> > support as well.
> The gadget support is almost ready, I got the dfu gadget working. :)

Well, USB gadget support would be a strong argument for your version ;)

>  
> > What SoC are you using the driver on?
> I am using this driver on our custom SoC, the Kalray Coolidge MPPA (k1c).
> I didn't tried on other SoC.
> 
> > I am not sure if it makes sense to rebase your patches on my driver. If
> > you can convince me that yours is better then we could just remove mine
> > and merge yours instead.
> I don't have a strong argument in favor of my version. Except that I have
> already made some changes over the original U-Boot version: 
> 
> I've tried to improve the roothub interface making it easier to decode
> new requests.
> 
> I have removed the memcpy done in transfer_chunk between the usb data
> buffer and the dma buffer :/
> However this mean that all buffer used for usb tranfert must be dma
> capable.  Not all usb transfers use dma_alloc for it's buffers but
> sometime they are allocated on the stack, this can be problematic if
> the stack cannot be used by DMA.

We do this on other controllers as well, so this shouldn't be a problem.
The day will come we either have to fix the callers or create some
bounce buffer implementation for non DMA capable memory.

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
