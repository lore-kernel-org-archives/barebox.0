Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXZ1c-0007uK-Jf
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 18:14:17 +0000
Date: Thu, 3 Sep 2015 20:13:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150903181352.GK18700@pengutronix.de>
References: <20150903172455.586b781f0bab0f50bbe58585@gmail.com>
 <1441296258-4610-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441296258-4610-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH] ata: intf_platform_ide: add OF bindings
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 03, 2015 at 07:04:18PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/ata/intf_platform_ide.c | 30 ++++++++++++++++++++++++++++--
>  1 file changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
> index 0d392d8..ba28f17 100644
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
> @@ -87,8 +88,24 @@ static int platform_ide_probe(struct device_d *dev)
>  	int mmio = 0;
>  
>  	if (pdata == NULL) {
> -		dev_err(dev, "No platform data. Cannot continue\n");
> -		return -EINVAL;
> +		/* try to get platform data from the device tree */
> +		struct device_node *dn = dev->device_node;
> +		u32 tmp32;
> +
> +		if (dn == NULL) {
> +			dev_err(dev, "No platform data. Cannot continue\n");
> +			return -EINVAL;
> +		}
> +
> +		pdata = xzalloc(sizeof(struct ide_port_info));
> +
> +		if (of_property_read_bool(dn, "dataif-be"))
> +			pdata->dataif_be = 1;
> +
> +		if (of_property_read_u32(dn, "reg-shift", &tmp32) == 0)
> +			pdata->ioport_shift = (unsigned)tmp32;

No need to allocate extra memory for platform_data which is solely used
in this function. Please just use two local variables dataif_be and
ioport_shift which you either fill in from platform_data or from device
tree.

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
