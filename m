Delivery-date: Wed, 25 Jan 2023 10:14:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbri-001Jyq-03
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 10:14:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbrf-0005Ma-2l
	for lore@pengutronix.de; Wed, 25 Jan 2023 10:14:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jQAiG+LEoFLbXPQHf/lBQ26/aRNOIVSCEoviJU7TMjw=; b=Ab2wu7uP6Xlki349tujNmXtHGQ
	vjwgDF2LdeTP2EILR4cY5y1TaKDXrm6hbw+E6IvfEGIS5p+EFzYaJkJcuMYjl6bv71tDXN4djd2pN
	z6TJk3+vQfn1gvhLnzb1jfyqAKYNi5f5yPI4Ztpx+Izhd32ltatKpmTEC+t/twZ4ym7ol9PyEAZ6L
	apnOtzWSLbDQi35zseoAGdpT92bb0aX6RMJwEDLQuqcnByjxRRi02EgwfAJXIm2Ab/FfAV2sZktUZ
	b8DtYIx1ghMMh2S/UtgF1fbZ1N4C/Bn7V5xyKdN/gXFPUTrc5Y8Bpz/V7u3PVjCLV9us/YhVc3+ww
	1iNxJT0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbqO-006ZPq-Dp; Wed, 25 Jan 2023 09:13:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbqJ-006ZOV-OW
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:13:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKbqG-0005HQ-07; Wed, 25 Jan 2023 10:13:16 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKbqF-0006MN-PA; Wed, 25 Jan 2023 10:13:15 +0100
Date: Wed, 25 Jan 2023 10:13:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230125091315.ora7driiwms6qwds@pengutronix.de>
References: <20230125080946.1999359-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125080946.1999359-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_011319_813445_0693DA28 
X-CRM114-Status: GOOD (  16.56  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpio: Fix unused variable warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-01-25, Sascha Hauer wrote:
> gpio_suffixes is only used inside #ifdef CONFIG_OFDEVICE, so put
> it into this ifdef as well.
> 
> Fixes: 9fb2fa240d58 ("gpiolib: implement dev_gpiod_get_index")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/gpio/gpiolib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 4e8244b25f..2e7a39b475 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -537,12 +537,12 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_OFDEVICE
>  static const char *gpio_suffixes[] = {
>  	"gpios",
>  	"gpio",
>  };
>  
> -#ifdef CONFIG_OFDEVICE
>  /* Linux compatibility helper: Get a GPIO descriptor from device tree */
>  int dev_gpiod_get_index(struct device *dev,
>  			struct device_node *np,
> -- 
> 2.30.2
> 
> 
> 


