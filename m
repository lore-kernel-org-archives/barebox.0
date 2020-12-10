Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knIox-0003HD-LP
 for barebox@lists.infradead.org; Thu, 10 Dec 2020 10:05:12 +0000
Date: Thu, 10 Dec 2020 11:05:09 +0100
Message-ID: <20201210100509.GV3977@pengutronix.de>
References: <20201209145547.22655-1-jmaselbas@kalray.eu>
 <20201209145547.22655-2-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209145547.22655-2-jmaselbas@kalray.eu>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 2/4] usb: dwc2: Move static function prototypes into core.c
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org

Hi Jules,

On Wed, Dec 09, 2020 at 03:55:45PM +0100, Jules Maselbas wrote:
> Theses functions were only used in dwc2/core.c and where defined as
> static.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/dwc2/core.c | 5 +++++
>  drivers/usb/dwc2/dwc2.h | 6 +-----
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index c4a3cc789..a61acf553 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -1,6 +1,11 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  #include "dwc2.h"
>  
> +static void dwc2_set_param_otg_cap(struct dwc2 *dwc2);
> +static void dwc2_set_param_phy_type(struct dwc2 *dwc2);
> +static void dwc2_set_param_speed(struct dwc2 *dwc2);
> +static void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2);
> +

There should be a forward declaration necessary for static functions.
You are changing the declarations to static here, but not the
implementations further down in this file, so this shouldn't compile.

>  /* Returns the controller's GHWCFG2.OTG_MODE. */
>  static unsigned int dwc2_op_mode(struct dwc2 *dwc2)
>  {
> diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
> index 196f4a07f..70a747302 100644
> --- a/drivers/usb/dwc2/dwc2.h
> +++ b/drivers/usb/dwc2/dwc2.h
> @@ -8,13 +8,9 @@
>  #include "core.h"
>  
>  /* Core functions */
> -void dwc2_set_param_otg_cap(struct dwc2 *dwc2);
> -void dwc2_set_param_phy_type(struct dwc2 *dwc2);
> -void dwc2_set_param_speed(struct dwc2 *dwc2);
> -void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2);
> -void dwc2_set_default_params(struct dwc2 *dwc2);
>  int dwc2_core_snpsid(struct dwc2 *dwc2);
>  void dwc2_get_hwparams(struct dwc2 *dwc2);
> +void dwc2_set_default_params(struct dwc2 *dwc2);

No need to move this declaration.

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
