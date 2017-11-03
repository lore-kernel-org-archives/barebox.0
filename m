Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eAXdX-0006Cg-Ex
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 08:47:37 +0000
Date: Fri, 3 Nov 2017 09:47:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171103084713.xhmeukxxqqrt5jje@pengutronix.de>
References: <1509640782-8765-1-git-send-email-d.schultz@phytec.de>
 <1509640782-8765-2-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1509640782-8765-2-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v2 2/3] common: oftree: Add autoenable functionality
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 02, 2017 at 05:39:41PM +0100, Daniel Schultz wrote:
> This patch adds an API to automatically enable either hardware components
> with existing device drivers or i2c clients. All functions take a device
> tree path to find the hardware and will fix up the node status in the
> kernel device tree, if it's accessible.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
> Changes:
> 	v2: Moved from standalone file to oftree.c
> 	    Added of_device_is_available, if a driver is disabled
> 	    Added of_property_read_u32
> 	    Removed Kconfig
> 	    Added of_ prefix to function names
> 	    Renamed of_autoenable_i2c_by_path to of_autoenable_i2c_by_component
> 
>  common/oftree.c | 92 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/of.h    | 14 +++++++++
>  2 files changed, 106 insertions(+)
> 
> diff --git a/common/oftree.c b/common/oftree.c
> index 09a4455..3b77a7e 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -11,6 +11,7 @@
>  #include <getopt.h>
>  #include <init.h>
>  #include <boot.h>
> +#include <i2c/i2c.h>
>  
>  #define MAX_LEVEL	32		/* how deeply nested we will go */
>  
> @@ -260,3 +261,94 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node)
>  
>  	return fdt;
>  }
> +
> +/**
> + * of_autoenable_device_by_path() - Autoenable a device by a device tree path
> + * @param path Device tree path up from the root to the device
> + * @return 0 on success, -enodev on failure. If no device found in the device
> + * tree.
> + *
> + * This function will search for a device and will enable it in the kernel
> + * device tree, if it exists and is loaded.
> + */
> +int of_autoenable_device_by_path(char *path)
> +{
> +	struct device_d *device;
> +	struct device_node *node;
> +	int ret;
> +
> +	node = of_find_node_by_name(NULL, path);
> +	if (!node)
> +		node = of_find_node_by_path(path);
> +
> +	if (!node)
> +		return -ENODEV;
> +
> +	device = of_find_device_by_node(node);
> +	if (!device)
> +		if (!of_device_is_available(node))
> +			return -ENODEV;

Is the of_find_device_by_node(node) test still necessary? In which case?

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
