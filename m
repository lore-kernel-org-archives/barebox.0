Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1V6j-0000J0-SS
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 06:30:30 +0000
Date: Mon, 30 Jun 2014 08:30:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140630063006.GD14257@pengutronix.de>
References: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1403705328-9924-2-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403705328-9924-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH RFC 1/4] usb: add Marvell MVEBU USB support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>

Hi Sebastian,


> +	if (usb->mode == USB_DR_MODE_HOST &&
> +	    IS_ENABLED(CONFIG_USB_MVEBU_HOST)) {
> +		ret = regulator_enable(usb->vbus);
> +		if (ret)
> +			return ret;
> +		ret = ehci_register(dev, &usb->ehci);
> +		if (ret)
> +			regulator_disable(usb->vbus);
> +	} else if (usb->mode == USB_DR_MODE_PERIPHERAL &&
> +		   IS_ENABLED(CONFIG_USB_MVEBU_DEVICE)) {
> +		ret = regulator_disable(usb->vbus);
> +		if (ret)
> +			return ret;
> +		ret = ci_udc_register(dev, usb->base);
> +	} else {
> +		dev_err(dev, "Unsupported USB role\n");
> +		ret = -ENODEV;
> +	}

This should probably be shared between i.MX and mvebu. I have a patch
somewhere which implements a device parameter to switch between host and
device mode. It could be used for both i.MX and mvebu.

Otherwise the series looks fine to me.

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
