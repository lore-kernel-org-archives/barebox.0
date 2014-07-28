Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBroN-0001PK-6T
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 20:46:23 +0000
Received: by mail-wi0-f171.google.com with SMTP id hi2so5075062wib.16
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 13:45:59 -0700 (PDT)
Message-ID: <53D6B685.9000806@gmail.com>
Date: Mon, 28 Jul 2014 22:45:57 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406578981-3761-1-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1406578981-3761-1-git-send-email-mpa@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] usb: chipidea: Add DT vbus-supply parsing
To: Markus Pargmann <mpa@pengutronix.de>, barebox@lists.infradead.org

On 07/28/2014 10:23 PM, Markus Pargmann wrote:
> Add some code to parse and enable vbus supply when probing.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  drivers/usb/imx/chipidea-imx.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
> index 9b6829b8f59f..a4cf4a1a5f3d 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -15,6 +15,7 @@
>  #include <common.h>
>  #include <init.h>
>  #include <io.h>
> +#include <linux/err.h>
>  #include <of.h>
>  #include <errno.h>
>  #include <driver.h>
> @@ -23,6 +24,7 @@
>  #include <usb/chipidea-imx.h>
>  #include <usb/ulpi.h>
>  #include <usb/fsl_usb2.h>
> +#include <regulator.h>
>  
>  #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
>  
> @@ -187,6 +189,16 @@ static int imx_chipidea_probe(struct device_d *dev)
>  		ret = -ENODEV;
>  	}
>  
> +	if (ci->mode == IMX_USB_MODE_HOST) {
> +		struct regulator *vbus = regulator_get(dev, "vbus");
> +		if (!IS_ERR(vbus)) {
> +			regulator_enable(vbus);
> +		} else {
> +			dev_err(dev, "Failed to get vbus regulator %ld\n", PTR_ERR(vbus));
> +			ret = PTR_ERR(vbus);
> +		}

regulator_get should return a NULL pointer if there is no regulator for
"vbus". The NULL regulator is a valid (dummy) regulator that can be used
as if there was a real one.

That basically means, you should check for an error and always use
regulator_enable otherwise:

struct regulator *vbus = regulator_get(dev, "vbus");
if (IS_ERR(vbus)) {
	dev_err(dev, "Failed to get vbus regulator %ld\n", PTR_ERR(vbus));
	return PTR_ERR(vbus);
}

regulator_enable(vbus);

But even more important: You should also check for a regulator on
peripheral/otg mode. That's the cases where you can actually break
things when you don't disable the regulator.

Sebastian

> +	}
> +
>  	return ret;
>  };
>  
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
