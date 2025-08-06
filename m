Delivery-date: Wed, 06 Aug 2025 16:29:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujf8g-007fTM-2z
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 16:29:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujf8g-0006mI-9K
	for lore@pengutronix.de; Wed, 06 Aug 2025 16:29:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gx4tBxVHpoHg7zKg0iZHzcrlEcb46QAwcEsWkBh9hbA=; b=HpLO8idCk0QXdAx/H0PcVoyYt3
	Mck6xrLEbjcbbdiZf+xOJl2mD25sJ//jIlSSn6QmLHt6JpVs5LWwvPAcx6ENQDnEMgwpoXN4mFwp/
	ndTGWbUjq7WDf3R5629ivlz2Fk4qmrB4g9WKf6iEQZ0+dAf7MIaobLSzCSiaqVNvtXFbKxB8kCE4k
	f7Hjdbqvm9msi5RuGF4kbGMNHhGHb0aaiPotgdDKfD+bM0pAjZVRLwl2eiuh8tEqck9kbOv1qM+sI
	DUSHnBET15z9F2W2s3+yn//bfqzq4pOPtQshckDBZaQj483HGbjAmj3dgmSBW+sjudm2Nx35csHhl
	jhoieghA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujf84-0000000FRfT-3kTy;
	Wed, 06 Aug 2025 14:28:32 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujf3v-0000000FRIK-47M5
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 14:24:18 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 576EO6P5026364
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Wed, 6 Aug 2025 16:24:12 +0200
Message-ID: <00640807-26e7-4470-9613-d488831611b9@clermont.in2p3.fr>
Date: Wed, 6 Aug 2025 16:24:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20250806101559.3869005-1-a.fatoum@pengutronix.de>
 <20250806101559.3869005-2-a.fatoum@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <20250806101559.3869005-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_072416_289497_B2CCE8CB 
X-CRM114-Status: GOOD (  21.39  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFT v2 2/2] gpio: dw: make deep probe compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by:David Picard <david.picard@clermont.in2p3.fr>



Le 06/08/2025 à 12:15, Ahmad Fatoum a écrit :
> When deep probing GPIO controller, we expect struct gpio_chip::dev to be
> bound to a driver.
>
> This is currently not the case as the driver for the parent nodes
> creates devices for the child nodes and never binds a driver to them.
>
> As the child nodes have compatibles themselves too, let's match against
> proper drivers.
>
> Reported-by: David Picard <david.picard@clermont.in2p3.fr>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>    - unchanged
> ---
>   drivers/gpio/gpio-dw.c | 44 ++++++++++++++++++++++++------------------
>   1 file changed, 25 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
> index 98668c0a2d54..688b2536be2b 100644
> --- a/drivers/gpio/gpio-dw.c
> +++ b/drivers/gpio/gpio-dw.c
> @@ -6,6 +6,7 @@
>    */
>   
>   #include <common.h>
> +#include <linux/device.h>
>   #include <errno.h>
>   #include <io.h>
>   #include <gpio.h>
> @@ -104,9 +105,9 @@ static struct gpio_ops dw_gpio_ops = {
>   	.set = dw_gpio_set,
>   };
>   
> -static int dw_gpio_add_port(struct device *dev, struct device_node *node,
> -			    struct dw_gpio *parent)
> +static int dw_gpio_add_port(struct device *dev)
>   {
> +	struct dw_gpio *parent = dev_get_drvdata(dev->parent);
>   	struct dw_gpio_instance *chip;
>   	uint32_t config1, config2;
>   	int ngpio, ret;
> @@ -130,17 +131,7 @@ static int dw_gpio_add_port(struct device *dev, struct device_node *node,
>   
>   	chip->parent = parent;
>   	chip->chip.ngpio = ngpio;
> -	chip->chip.dev = add_generic_device("dw-port", DEVICE_ID_DYNAMIC, NULL,
> -					    dev->resource[0].start,
> -					    resource_size(&dev->resource[0]),
> -					    IORESOURCE_MEM, NULL);
> -
> -	if (!chip->chip.dev) {
> -		dev_err(dev, "unable to add device\n");
> -		return -ENODEV;
> -	}
> -
> -	chip->chip.dev->of_node = node;
> +	chip->chip.dev = dev;
>   
>   	ret = gpiochip_add(&chip->chip);
>   	if (ret)
> @@ -152,11 +143,22 @@ static int dw_gpio_add_port(struct device *dev, struct device_node *node,
>   	return 0;
>   }
>   
> +static struct of_device_id dwgpio_port_match[] = {
> +	{ .compatible = "snps,dw-apb-gpio-port" },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, dwgpio_port_match);
> +
> +static struct driver dwgpio_port_driver = {
> +	.name = "dw-apb-gpio-port",
> +	.probe = dw_gpio_add_port,
> +	.of_compatible = dwgpio_port_match,
> +};
> +
>   static int dw_gpio_probe(struct device *dev)
>   {
>   	struct resource *iores;
>   	struct dw_gpio *gpio;
> -	struct device_node *node;
>   
>   	gpio = xzalloc(sizeof(*gpio));
>   
> @@ -165,13 +167,12 @@ static int dw_gpio_probe(struct device *dev)
>   		return PTR_ERR(iores);
>   	gpio->regs = IOMEM(iores->start);
>   
> -	for_each_child_of_node(dev->of_node, node)
> -		dw_gpio_add_port(dev, node, gpio);
> +	dev_set_drvdata(dev, gpio);
>   
> -	return 0;
> +	return of_platform_populate(dev->of_node, NULL, dev);
>   }
>   
> -static __maybe_unused struct of_device_id dwgpio_match[] = {
> +static struct of_device_id dwgpio_match[] = {
>   	{
>   		.compatible = "snps,dw-apb-gpio",
>   	}, {
> @@ -186,4 +187,9 @@ static struct driver dwgpio_driver = {
>   	.of_compatible = dwgpio_match,
>   };
>   
> -postcore_platform_driver(dwgpio_driver);
> +static int __init dwgpio_driver_register(void)
> +{
> +	platform_driver_register(&dwgpio_port_driver);
> +	return platform_driver_register(&dwgpio_driver);
> +}
> +postcore_initcall(dwgpio_driver_register);



