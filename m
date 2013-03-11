Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFANV-000708-Vn
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:35:30 +0000
Date: Mon, 11 Mar 2013 22:35:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311213527.GN1906@pengutronix.de>
References: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
 <1362958567-6110-3-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362958567-6110-3-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 2/4] twl6030: add power button as an input key
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 12:36:05AM +0100, Vicente Bergas wrote:
> 
> +
> +static int __init twl6030_pwrbtn_probe(struct device_d *dev)
> +{
> +	struct twl6030_pwrbtn_platform_data *pdata;
> +	struct console_device *cdev;
> +
> +	pdata = dev->platform_data;
> +
> +	if (!pdata) {
> +		pr_err("missing platform_data\n");

use dev_err and friends for driver messages.

> +		return -ENODEV;
> +	}
> +
> +	pdata->twl6030 = twl6030_get();
> +	if (!pdata->fifo_size)
> +		pdata->fifo_size = 4;
> +
> +	pdata->recv_fifo = kfifo_alloc(pdata->fifo_size);
> +
> +	pdata->poller.func = ic2_key_poller;
> +
> +	cdev = &pdata->cdev;
> +	dev->type_data = cdev;
> +	cdev->dev = dev;
> +	cdev->f_caps = CONSOLE_STDIN;
> +	cdev->tstc = twl6030_pwrbtn_tstc;
> +	cdev->getc = twl6030_pwrbtn_getc;
> +
> +	console_register(&pdata->cdev);
> +
> +	return poller_register(&pdata->poller);
> +}
> +
> +static struct driver_d twl6030_pwrbtn_driver = {
> +	.name	= "twl6030_pwrbtn",
> +	.probe	= twl6030_pwrbtn_probe,
> +};
> +device_platform_driver(twl6030_pwrbtn_driver);
> diff --git a/include/twl6030_pwrbtn.h b/include/twl6030_pwrbtn.h
> new file mode 100644
> index 0000000..e7e8383
> --- /dev/null
> +++ b/include/twl6030_pwrbtn.h
> @@ -0,0 +1,23 @@
> +#ifndef _TWL6030_PWRBTN_H
> +#define _TWL6030_PWRBTN_H
> +
> +#include <poller.h>
> +#include <kfifo.h>
> +#include <mfd/twl6030.h>
> +
> +struct twl6030_pwrbtn_platform_data {
> +	/* Configuration parameters */
> +	int code;
> +	/* optional */
> +	int fifo_size;

Since this driver handles a single key only, must the fifo size
be configurable?

> +
> +	/* internal */
> +	u8 previous_state;
> +
> +	struct twl6030 *twl6030;
> +	struct kfifo *recv_fifo;
> +	struct poller_struct poller;
> +	struct console_device cdev;
> +};

Please do not abuse platform_data for private driver data use. Allocate
a separate struct for it.

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
