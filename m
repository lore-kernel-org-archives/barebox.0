Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f179.google.com ([209.85.212.179])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1WIf-00009D-Uc
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 07:46:55 +0000
Received: by mail-wi0-f179.google.com with SMTP id cc10so5466371wib.6
 for <barebox@lists.infradead.org>; Mon, 30 Jun 2014 00:46:27 -0700 (PDT)
Message-ID: <53B115CE.1080801@gmail.com>
Date: Mon, 30 Jun 2014 09:46:22 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1403705328-9924-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140630063006.GD14257@pengutronix.de>
In-Reply-To: <20140630063006.GD14257@pengutronix.de>
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
Subject: Re: [PATCH RFC 1/4] usb: add Marvell MVEBU USB support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>

On 06/30/2014 08:30 AM, Sascha Hauer wrote:
>> +	if (usb->mode == USB_DR_MODE_HOST &&
>> +	    IS_ENABLED(CONFIG_USB_MVEBU_HOST)) {
>> +		ret = regulator_enable(usb->vbus);
>> +		if (ret)
>> +			return ret;
>> +		ret = ehci_register(dev, &usb->ehci);
>> +		if (ret)
>> +			regulator_disable(usb->vbus);
>> +	} else if (usb->mode == USB_DR_MODE_PERIPHERAL &&
>> +		   IS_ENABLED(CONFIG_USB_MVEBU_DEVICE)) {
>> +		ret = regulator_disable(usb->vbus);
>> +		if (ret)
>> +			return ret;
>> +		ret = ci_udc_register(dev, usb->base);
>> +	} else {
>> +		dev_err(dev, "Unsupported USB role\n");
>> +		ret = -ENODEV;
>> +	}
> 
> This should probably be shared between i.MX and mvebu. I have a patch
> somewhere which implements a device parameter to switch between host and
> device mode. It could be used for both i.MX and mvebu.

Yes. As Jason already mentioned we probably should have a pure ChipIdea
probe() without any vendor-specific stuff.

For Marvell SoCs there is a set of registers that has to be configured
for DMA accesses, but I think we can move them into the bus driver
instead. We could have a list of compatibles and register offsets in
bus/mvebu.c that takes care of the registers on MVEBU for fooHCI IP.
I'll have to double-check if the register content is retained during
clk gating.

Having a ChipIdea probe() will also allow i.MX to reuse the same
function after it has set up the Freescale specific stuff.

> Otherwise the series looks fine to me.

Ok. BTW, I have a similar patch set for SDHCI that I'll send as RFC
in a day or two.

Sebastian



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
