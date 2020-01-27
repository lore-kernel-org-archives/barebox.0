Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4d4-00073J-3H
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 13:40:39 +0000
Date: Mon, 27 Jan 2020 14:40:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200127134034.nnlluowtpbel5kmp@pengutronix.de>
References: <20200122154950.22746-1-jmaselbas@kalray.eu>
 <20200122154950.22746-10-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122154950.22746-10-jmaselbas@kalray.eu>
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
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Jules,

On Wed, Jan 22, 2020 at 04:49:50PM +0100, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/dwc2/Makefile |    2 +-
>  drivers/usb/dwc2/core.h   |    8 +-
>  drivers/usb/dwc2/dwc2.c   |    2 +
>  drivers/usb/dwc2/dwc2.h   |    2 +
>  drivers/usb/dwc2/gadget.c | 2668 +++++++++++++++++++++++++++++++++++++
>  drivers/usb/dwc2/regs.h   |    1 +
>  6 files changed, 2681 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/usb/dwc2/gadget.c
> 
 +
> +int dwc2_gadget_init(struct dwc2 *dwc2)
> +{
> +	u32 dctl;
> +	int epnum;
> +	int ret;
> +
> +	dwc2_core_init(dwc2);

This is called once during probe here and once during host init, it
should probably only be called once.

I would expect both host and gadget support to be optional, but instead
both is unconditionally compiled in. Does this link when USB host or gadget
support is disabled?

How does the driver select between host and gadget mode? Normally we do
not have any real OTG support in barebox. With dr_mode = "otg" in the
device tree we usually register some device which the user can use to
specify the mode during runtime. How is this solved here?

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
