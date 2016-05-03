Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axTb8-00050H-Jt
 for barebox@lists.infradead.org; Tue, 03 May 2016 06:14:19 +0000
Date: Tue, 3 May 2016 08:13:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160503061356.GH19714@pengutronix.de>
References: <1461950646-15037-1-git-send-email-andrew.smirnov@gmail.com>
 <1461950646-15037-4-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461950646-15037-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/6] drivers: Introduce AIODEV subsystem
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Andrey Smirnov <andrew.smrinov@gmail.com>

On Fri, Apr 29, 2016 at 10:24:03AM -0700, Andrey Smirnov wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> AIODEV/Aiodevice is a analog I/O framework that can be thought of as a
> simplified hybrid between 'hwmon' and 'IIO' subsystems of Linux kernel
> 
> This commit is very heavily based on 'iodevice' framework proposal
> written by Sascha Hauer.
> 
> Signed-off-by: Andrey Smirnov <andrew.smrinov@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/Kconfig         |   1 +
>  drivers/Makefile        |   1 +
>  drivers/aiodev/Kconfig  |   8 +++
>  drivers/aiodev/Makefile |   2 +
>  drivers/aiodev/core.c   | 135 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/aiodev.h        |  39 ++++++++++++++
>  6 files changed, 186 insertions(+)
>  create mode 100644 drivers/aiodev/Kconfig
>  create mode 100644 drivers/aiodev/Makefile
>  create mode 100644 drivers/aiodev/core.c
>  create mode 100644 include/aiodev.h
> 
> diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
> new file mode 100644
> index 0000000..806464e
> --- /dev/null
> +++ b/drivers/aiodev/Makefile
> @@ -0,0 +1,2 @@
> +
> +obj-$(CONFIG_AIODEV) += core.o
> diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
> new file mode 100644
> index 0000000..6dcb917
> --- /dev/null
> +++ b/drivers/aiodev/core.c
> @@ -0,0 +1,135 @@
> +#include <common.h>
> +#include <aiodev.h>
> +#include <linux/list.h>
> +#include <malloc.h>

GPL Header missing.

> +
> +LIST_HEAD(aiodevices);
> +EXPORT_SYMBOL(aiodevices);
> +
> +struct aiochannel *aiochannel_get_by_name(const char *name)
> +{
> +	struct aiodevice *aiodev;
> +	int i;
> +
> +	list_for_each_entry(aiodev, &aiodevices, list) {
> +		for (i = 0; i < aiodev->num_channels; i++)
> +			if (!strcmp(name, aiodev->channels[i]->name))
> +				return aiodev->channels[i];
> +	}
> +
> +	return ERR_PTR(-ENOENT);
> +}
> +EXPORT_SYMBOL(aiochannel_get_by_name);
> +
> +struct aiochannel *aiochannel_get(struct device_d *dev, int index)
> +{
> +	struct of_phandle_args spec;
> +	struct aiodevice *aiodev;
> +	int ret, chnum = 0;
> +
> +	if (!dev->device_node)
> +		return ERR_PTR(-EINVAL);
> +
> +	ret = of_parse_phandle_with_args(dev->device_node,
> +					 "aio-channels",
> +					 "#aio-channel-cells",
> +					 index, &spec);

#io-channel-cells is part of the official binding in
/dts/Bindings/iio/iio-bindings.txt. We should work with this existing
binding.

> +        if (ret)
> +                return ERR_PTR(ret);
> +
> +	list_for_each_entry(aiodev, &aiodevices, list) {
> +		if (aiodev->hwdev->device_node == spec.np)
> +			goto found;
> +	}
> +
> +	return ERR_PTR(-EPROBE_DEFER);
> +
> +found:
> +	if (spec.args_count)
> +		chnum = spec.args[0];
> +
> +	if (chnum >= aiodev->num_channels)
> +		return ERR_PTR(-EINVAL);
> +
> +	return aiodev->channels[chnum];
> +}
> +EXPORT_SYMBOL(aiochannel_get);
> +
> +int aiochannel_get_value(struct aiochannel *aiochan, int *value)
> +{
> +	struct aiodevice *aiodev = aiochan->aiodev;
> +
> +	return aiodev->read(aiochan, value);
> +}
> +EXPORT_SYMBOL(aiochannel_get_value);
> +
> +int aiochannel_get_index(struct aiochannel *aiochan)
> +{
> +	int i;
> +	struct aiodevice *aiodev = aiochan->aiodev;
> +
> +	for (i = 0; i < aiodev->num_channels; i++)
> +		if (aiodev->channels[i] == aiochan)
> +			return i;

This function is unused in your patches. If the information this
function provides is needed, maybe better add a index member to struct
aiochannel to get rid of this loop?

> +
> +	return -ENOENT;
> +}
> +EXPORT_SYMBOL(aiochannel_get_index);
> +
> +static int aiochannel_param_get_value(struct param_d *p, void *priv)
> +{
> +	struct aiochannel *aiochan = priv;
> +
> +	return aiochannel_get_value(aiochan, &aiochan->value);
> +}
> +
> +int aiodevice_register(struct aiodevice *aiodev)
> +{
> +	int i, ret;
> +
> +	if (!aiodev->name) {
> +		if (aiodev->hwdev &&
> +		    aiodev->hwdev->device_node) {

	if (!aiodev->name && aiodev->hwdev &&
	    aiodev->hwdev->device_node)

?

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
