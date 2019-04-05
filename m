Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hCMFp-0008KF-AR
 for barebox@lists.infradead.org; Fri, 05 Apr 2019 10:39:26 +0000
Date: Fri, 5 Apr 2019 12:39:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190405103923.ingk2iup3dvw2umy@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
 <20190404145320.11465-7-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190404145320.11465-7-m.tretter@pengutronix.de>
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
Subject: Re: [RFC PATCH 6/7] firmware: add support for fpga-regions
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 04, 2019 at 04:53:19PM +0200, Michael Tretter wrote:
> The Barebox fpga-region driver is merely glue code between the
> devicetree overlay support and the various firmware handlers.
> 
> The driver registers notifiers for each fpga-region in the devicetree.
> If an overlay is registered for a fpga-region, it uses the referenced
> firmware handler to load the specified firmware image.
> 
> +#include <common.h>
> +#include <globalvar.h>
> +#include <firmware.h>
> +#include <init.h>
> +#include <magicvar.h>
> +#include <of.h>
> +
> +char *firmware_path;

static?

> +
> +struct fpga_region {
> +	struct device_d *dev;
> +	struct notifier_block nb;
> +	struct firmware_mgr *mgr;
> +};
> +
> +	if (action != OF_OVERLAY_PRE_APPLY) {
> +		dev_dbg(region->dev, "only interested in pre-apply hook\n");
> +		return 0;
> +	}
> +
> +	if (nd->target != region->dev->device_node) {
> +		dev_dbg(region->dev, "%s is not overlay target %s\n",
> +			nd->target->name, region->dev->device_node->name);
> +		return 0;
> +	}
> +
> +	err = of_property_read_string(nd->target,
> +				      "firmware-name", &firmware_name);
> +	if (err != -EINVAL) {

of_property_read_string could also return other error codes. I think you
should test for err == 0 here, maybe bail out with an error on other,
unexpected error codes.

> +		dev_dbg(region->dev,
> +			"%s has already been programmed with firmware %s\n",
> +			nd->target->name, firmware_name);
> +		return 0;
> +	}
> +
> +static int of_fpga_region_probe(struct device_d *dev)
> +{
> +	struct device_node *np = dev->device_node;
> +	struct fpga_region *region;
> +	struct firmware_mgr *mgr;
> +	int err;
> +
> +	mgr = of_fpga_region_get_mgr(np);
> +	if (!mgr) {
> +		pr_err("cannot find firmware loader for %s\n", np->name);

dev_err

> +		return -EINVAL;
> +	}
> +
> +	region = kzalloc(sizeof(*region), GFP_KERNEL);
> +	if (!region)
> +		return -ENOMEM;

You can use xzalloc here.

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
