Delivery-date: Tue, 13 Jun 2023 09:47:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yk9-004tHk-DV
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:47:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yk6-0003hU-VE
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:47:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=giWXKFmaAFKMWXOtW0Aue26R8z+iSC5Z59LEqR0f0Ts=; b=n7+uOEMrNzQbYnhRbm83FU4bSk
	Gry4TH/9LdhDyI+sjsiDIx1+LQPHtmrIkc+ZPrMr3Pfeltlg18XhLZxRr4rsww/VoARPLoyI0lW8U
	xezISi6amGbUjr4/d3/LvBqpNAmroyx7NzAaKDl3nHZOdk72mtqHtvzgYYTZb5WTXCdwI2JrttSY2
	d94CYh8MRJPPeElWP7gz8ttgeWn9B/oo1IPBuc2ll3SzKLak0gnWDIsRxDN1r2GUUVUAvMTyBqLTR
	hgDnTKzl8vK3W/jL1uH4DGIy8LdIBlL79TKfSBG14tIq1MBG1cY5dS3lnVlgJwMxDAk18zHoyFwuG
	ZdIR6kFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yj8-007GML-2I;
	Tue, 13 Jun 2023 07:46:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yj4-007GLV-2L
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:46:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8yj3-0003Vw-FA; Tue, 13 Jun 2023 09:46:01 +0200
Message-ID: <eda93805-e638-8c77-9fd6-3cdd3167b861@pengutronix.de>
Date: Tue, 13 Jun 2023 09:46:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-8-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230602074921.2687669-8-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_004602_757945_EC11985E 
X-CRM114-Status: GOOD (  22.41  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 07/10] gpiolib: introduce of_gpiochip_add to bundle all of
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.06.23 09:49, Marco Felsch wrote:
> Introduce a common OF related function which does all the OF related
> part. This allow us to drop the santity checks and harmonizes the code
> with the linux kernel.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/gpio/gpiolib.c | 32 ++++++++++++++++++--------------
>  1 file changed, 18 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 127cc60abd..d1087aa583 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -517,9 +517,6 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>  	struct device_node *np;
>  	int ret, i;
>  
> -	if (!IS_ENABLED(CONFIG_OFDEVICE) || !chip->dev->of_node)
> -		return 0;
> -
>  	for_each_available_child_of_node(chip->dev->of_node, np) {
>  		if (!of_property_read_bool(np, "gpio-hog"))
>  			continue;
> @@ -550,15 +547,11 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>   */
>  static int of_gpiochip_set_names(struct gpio_chip *chip)
>  {
> +	struct device_node *np = dev_of_node(chip->dev);
>  	struct device *dev = chip->dev;
> -	struct device_node *np;
>  	const char **names;
>  	int ret, i, count;
>  
> -	np = dev_of_node(dev);
> -	if (!np)
> -		return 0;
> -
>  	count = of_property_count_strings(np, "gpio-line-names");
>  	if (count < 0)
>  		return 0;
> @@ -599,6 +592,22 @@ static int of_gpiochip_set_names(struct gpio_chip *chip)
>  	return 0;
>  }
>  
> +static int of_gpiochip_add(struct gpio_chip *chip)
> +{
> +	struct device_node *np;
> +	int ret;
> +
> +	np = dev_of_node(chip->dev);
> +	if (!np)
> +		return 0;
> +
> +	ret = of_gpiochip_set_names(chip);
> +	if (ret)
> +		return ret;
> +
> +	return of_gpiochip_scan_hogs(chip);
> +}
> +
>  #ifdef CONFIG_OFDEVICE
>  static const char *gpio_suffixes[] = {
>  	"gpios",
> @@ -660,7 +669,6 @@ int dev_gpiod_get_index(struct device *dev,
>  
>  int gpiochip_add(struct gpio_chip *chip)
>  {
> -	int ret;
>  	int i;
>  
>  	if (chip->base >= 0) {
> @@ -680,11 +688,7 @@ int gpiochip_add(struct gpio_chip *chip)
>  	for (i = chip->base; i < chip->base + chip->ngpio; i++)
>  		gpio_desc[i].chip = chip;
>  
> -	ret = of_gpiochip_set_names(chip);
> -	if (ret)
> -		return ret;
> -
> -	return of_gpiochip_scan_hogs(chip);
> +	return of_gpiochip_add(chip);
>  }
>  
>  void gpiochip_remove(struct gpio_chip *chip)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



