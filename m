Delivery-date: Fri, 20 Dec 2024 12:12:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOavr-00AQTT-1I
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 12:12:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOavr-0006vk-8s
	for lore@pengutronix.de; Fri, 20 Dec 2024 12:12:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IADRAQJq4Ac5BSLVb8hVRjZNn5YvAbc5TTuXTCgh2Aw=; b=seG7MFvFvOJp57B0DJembTlC+E
	rm+G0+Gdae0tcrWeEnz+r1rkWbsT8DO5JSpmovOj+CVqGH6hrEnbf3idInAFW4DSKW/WwZnFVZucN
	1zsfLgh2x+JHQx+2uxKZdgvcqvDLBQm5i0gy/l+sQFR6zMIvvafUfgekCa0sc/KyD0w9mL0nYzlRt
	hfcuR8XLtgOJfd4llcnQTJg+XmQRtD8erx4zjRMdX5bZHFGzv4uPbBmbTvSjtaJI/99TGttzU8Kut
	EcEJPPyEXN4HApLb4oLDF+bdXL1wr66n3fH0Doj/n+kvcjk5ch69sOspy79ZP5wgihmpdznFV7I9w
	dvsj9OnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOavZ-00000004g2r-1ZIW;
	Fri, 20 Dec 2024 11:12:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOZfH-00000004TnJ-2dUX
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 09:51:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tOZfG-0008Nf-9g; Fri, 20 Dec 2024 10:51:22 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tOZfF-004M0F-16;
	Fri, 20 Dec 2024 10:51:22 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tOZfG-00APCq-05;
	Fri, 20 Dec 2024 10:51:22 +0100
Date: Fri, 20 Dec 2024 10:51:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z2U-GS_4Yc_CxuwK@pengutronix.de>
References: <20241216130324.1592755-1-m.felsch@pengutronix.de>
 <20241216130324.1592755-6-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216130324.1592755-6-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_015123_669615_DE8792D2 
X-CRM114-Status: GOOD (  28.52  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 06/12] spi: add support to handle cs-gpios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 16, 2024 at 02:03:18PM +0100, Marco Felsch wrote:
> At the moment all drivers have to parse the cs-gpios on their own and
> have to implement the mapping. By this commit we add the support to
> handle this within the core and if there is valid CS GPIO for a device
> we assign it accordingly.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
> v2:
>  - add missing 'use_gpio_descriptor' member documentation
> 
>  drivers/spi/spi.c | 66 +++++++++++++++++++++++++++++++++++++++++++++++
>  include/spi/spi.h | 12 +++++++++
>  2 files changed, 78 insertions(+)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 36d0653a191c..c239de9d8549 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -8,6 +8,8 @@
>   */
>  
>  #include <common.h>
> +#include <linux/device.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/spi/spi-mem.h>
>  #include <spi/spi.h>
>  #include <xfuncs.h>
> @@ -64,6 +66,8 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
>  	proxy = xzalloc(sizeof *proxy);
>  	proxy->master = ctrl;
>  	proxy->chip_select = chip->chip_select;
> +	if (ctrl->cs_gpiods)
> +		proxy->cs_gpiod = ctrl->cs_gpiods[chip->chip_select];
>  	proxy->max_speed_hz = chip->max_speed_hz;
>  	proxy->mode = chip->mode;
>  	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
> @@ -215,6 +219,62 @@ static void scan_boardinfo(struct spi_controller *ctrl)
>  	}
>  }
>  
> +/**
> + * spi_get_gpio_descs() - grab chip select GPIOs for the master
> + * @ctlr: The SPI master to grab GPIO descriptors for
> + */
> +static int spi_get_gpio_descs(struct spi_controller *ctlr)
> +{
> +	int nb, i;
> +	struct gpio_desc **cs;
> +	struct device *dev = ctlr->dev;
> +
> +	nb = gpiod_count(dev, "cs");
> +	if (nb < 0) {
> +		/* No GPIOs at all is fine, else return the error */
> +		if (nb == -ENOENT)
> +			return 0;
> +		return nb;
> +	}

This breaks a number of non device tree defconfigs:

drivers/spi/spi.o: in function `spi_get_gpio_descs':
/__w/barebox/barebox/drivers/spi/spi.c:277:(.text.spi_register_controller+0x15c): undefined reference to `gpiod_count'

I haven't looked into it yet what we can best do about it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


