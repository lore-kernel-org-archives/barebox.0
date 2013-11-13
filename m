Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgXnJ-0004GR-QP
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 10:35:35 +0000
Date: Wed, 13 Nov 2013 11:35:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131113103510.GS24559@pengutronix.de>
References: <1384296396-18841-1-git-send-email-lisovy@gmail.com>
 <1384296396-18841-3-git-send-email-lisovy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384296396-18841-3-git-send-email-lisovy@gmail.com>
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
Subject: Re: [PATCH 2/3] ARM: i.mx53: Parse Reset GPIO pin in FEC driver from
 Devicetree
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

On Tue, Nov 12, 2013 at 11:46:35PM +0100, Rostislav Lisovy wrote:
> Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 2f31352..9855e8c 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -27,6 +27,8 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <of_net.h>
> +#include <of_gpio.h>
> +#include <gpio.h>
>  
>  #include <asm/mmu.h>
>  
> @@ -643,6 +645,7 @@ static int fec_probe(struct device_d *dev)
>  	void *base;
>  	int ret;
>  	enum fec_type type;
> +	int phy_reset;
>  
>  	ret = dev_get_drvdata(dev, (unsigned long *)&type);
>  	if (ret)
> @@ -671,6 +674,36 @@ static int fec_probe(struct device_d *dev)
>  
>  	fec->regs = dev_request_mem_region(dev, 0);
>  
> +	if (IS_ENABLED(CONFIG_OFDEVICE)) {

This check shouldn't be needed. of_get_named_gpio() epxands to a static
inline function returning -ENOSYS if we are compiling without devicetree
support.

> +		phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
> +		if (phy_reset < 0) {

Use gpio_is_valid(phy_reset) directly here...

> +			pr_info("%s: 'phy-reset-gpios' not used. Skipping hardware PHY reset.\n", __func__);
> +		} else {
> +			if (!gpio_is_valid(phy_reset)) {

...and drop this check.

> +				pr_err("%s: 'phy-reset' gpio is not valid:\n",
> +					__func__);

Driver messages should be done with dev_* functions, but in this case
most of the messages should be dropped as they all add to the binary
size of the image. Even without messages barebox will print an error
message if probing of a device fails. This message is a good enough hint
for the developer to find out where the problem is.

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
