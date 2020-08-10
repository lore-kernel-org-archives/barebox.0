Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5EKe-0008D8-Vb
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 20:23:45 +0000
Date: Mon, 10 Aug 2020 22:23:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810202342.GB9475@pengutronix.de>
References: <20200721120600.15114-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200721120600.15114-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH v3 00/14] usb: dwc2: Add host and gadget driver
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Jules,

On Tue, Jul 21, 2020 at 02:05:46PM +0200, Jules Maselbas wrote:
> This patchset add USB host and gadget support for the DWC2 controller
> The host driver is ported from the U-Boot driver, some part are taken
> taken from Linux.
> 
> The gadget driver is ported from Linux and only support direct dma (not
> descriptor based) and does not support direct buffer although this could
> be nice to have.
> 
> changes since v2:
>  - rework timeout handling for networking
>  - use usb_register_otg_device
>  - rework gadget fifo allocation
>  - modified makefile/kconfig for host or gadget only

Most important thing first: I tested this on a rpi3b and it works \o/

There's one thing missing though which you removed along with the old
driver. in probe() you need to set dev->detect to a function which calls
usb_host_detect(), see dwc2_detect() in the old driver. This is
necessary to let barebox detect the usb devices automatically when
needed, i.e. detect -a should result in USB devices being detected.

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
