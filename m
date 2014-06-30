Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1WTe-0004nS-IH
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 07:58:15 +0000
Received: by mail-we0-f170.google.com with SMTP id w61so7634334wes.15
 for <barebox@lists.infradead.org>; Mon, 30 Jun 2014 00:57:52 -0700 (PDT)
Message-ID: <53B1187C.3030401@gmail.com>
Date: Mon, 30 Jun 2014 09:57:48 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1404114746-7020-1-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1404114746-7020-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] usb: chipidea: imx: add vbus regulator support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org

On 06/30/2014 09:52 AM, Steffen Trumtrar wrote:
> The chipidea binding describes the optional property of a regulator
> for vbus named "vbus-supply".
> 
> Add support for this property to the driver so it can be used on boards
> with a gpio-controlled regulator.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/usb/imx/chipidea-imx.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
> index 9b6829b..84522dc 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -18,6 +18,7 @@
>  #include <of.h>
>  #include <errno.h>
>  #include <driver.h>
> +#include <regulator.h>
>  #include <usb/usb.h>
>  #include <usb/ehci.h>
>  #include <usb/chipidea-imx.h>
> @@ -32,6 +33,7 @@ struct imx_chipidea {
>  	struct ehci_data data;
>  	unsigned long flags;
>  	enum imx_usb_mode mode;
> +	struct regulator *reg_vbus;
>  	int portno;
>  	enum usb_phy_interface phymode;
>  };
> @@ -41,6 +43,12 @@ static int imx_chipidea_port_init(void *drvdata)
>  	struct imx_chipidea *ci = drvdata;
>  	int ret;
>  
> +	if (ci->reg_vbus) {
> +		ret = regulator_enable(ci->reg_vbus);
> +		if (ret < 0)
> +			return ret;
> +	}

Isn't barebox's regulator support using the dummy regulator, too?
A NULL regulator is interpreted as dummy regulator and can be used
with regulator API without checking each time.

>  	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
>  		dev_dbg(ci->dev, "using ULPI phy\n");
>  		if (IS_ENABLED(CONFIG_USB_ULPI)) {
> @@ -54,8 +62,11 @@ static int imx_chipidea_port_init(void *drvdata)
>  			ret = -ENODEV;
>  		}
>  
> -		if (ret)
> +		if (ret) {
> +			if (ci->reg_vbus)
> +				regulator_disable(ci->reg_vbus);
>  			return ret;
> +		}
>  	}
>  
>  	ret = imx_usbmisc_port_init(ci->portno, ci->flags);
> @@ -126,6 +137,8 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
>  				"disable-over-current", NULL))
>  		ci->flags |= MXC_EHCI_DISABLE_OVERCURRENT;
>  
> +	ci->reg_vbus = regulator_get(ci->dev, "vbus");
> +

Here, you should check for IS_ERR(ci->reg_vbus) and bail out if there is
an error. No property found should return NULL and therefore the dummy
regulator.

Sebastian

>  	return 0;
>  }
>  
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
