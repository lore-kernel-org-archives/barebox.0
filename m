Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6ZVl-0000UJ-Vw
 for barebox@lists.infradead.org; Fri, 14 Aug 2020 13:12:46 +0000
Date: Fri, 14 Aug 2020 15:12:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200814131244.GI13023@pengutronix.de>
References: <20200811151637.17705-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200811151637.17705-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH v4 00/13] usb: dwc2: Add host and gadget driver
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Aug 11, 2020 at 05:16:24PM +0200, Jules Maselbas wrote:
> This patchset add USB host and gadget support for the DWC2 controller.
> 
> The host driver is ported from the U-Boot driver (v2018.09-rc3), the
> memory map structure from U-Boot has been replaced with read/write
> functions and the hardware parameters structure are taken from Linux.
> 
> The gadget driver is ported from Linux (5.1-rc6) and only support direct
> dma (not descriptor based) and does not support direct buffer although
> this could be nice to have.
> 
> changes since v3:
>  - drop ulpi phy patch
>  - add dev->detect callback, will call usb_host_detect in host mode
>  - use '%pad' when printing dma_addr_t
>  - update commit messages to include version information of original driver
> changes since v2:
>  - rework timeout handling for networking
>  - use usb_register_otg_device
>  - rework gadget fifo allocation
>  - modified makefile/kconfig for host or gadget only

Applied, thanks

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
