Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZZHA-0004tU-DJ
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 06:54:37 +0000
Date: Wed, 9 Sep 2015 08:54:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150909065414.GH18700@pengutronix.de>
References: <1441641223.28391.11.camel@pengutronix.de>
 <1441644233-26311-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441644233-26311-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCHv3] ata: intf_platform_ide: add OF bindings
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Mon, Sep 07, 2015 at 07:43:53PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/ata/intf_platform_ide.c | 34 +++++++++++++++++++++++++++++-----
>  1 file changed, 29 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
> index 0d392d8..ab633c0 100644
> --- a/drivers/ata/intf_platform_ide.c
> +++ b/drivers/ata/intf_platform_ide.c
> @@ -29,6 +29,7 @@
>  #include <ata_drive.h>
>  #include <platform_ide.h>
>  #include <linux/err.h>
> +#include <of.h>
>  
>  /**
>   * Setup the register specific addresses for an ATA like divice
> @@ -85,8 +86,22 @@ static int platform_ide_probe(struct device_d *dev)
>  	void *reg_base, *alt_base = NULL;
>  	struct resource *reg, *alt;
>  	int mmio = 0;
> -
> -	if (pdata == NULL) {
> +	struct device_node *dn = dev->device_node;
> +	unsigned ioport_shift = 0;
> +	int dataif_be = 0;
> +	void (*reset)(int) = NULL;
> +
> +	if (pdata) {
> +		ioport_shift = pdata->ioport_shift;
> +		dataif_be = pdata->dataif_be;
> +		reset = pdata->reset;
> +	} else if (dn) {
> +		/* try to get platform data from the device tree */
> +		u32 tmp32;
> +
> +		if (of_property_read_u32(dn, "reg-shift", &tmp32) == 0)
> +			ioport_shift = (unsigned)tmp32;

Applied with one little change. We can simplify this by doing passing
&ioport_shift directly to of_property_read_u32. We do not have to check
the return value then.

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
