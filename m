Delivery-date: Thu, 26 Sep 2024 08:09:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthh3-002tDK-29
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 08:09:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthh4-0002cI-2c
	for lore@pengutronix.de; Thu, 26 Sep 2024 08:09:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dv5SfQLmqqLzUe7kD9nplHMw14vzpPCibRcb/hidaWI=; b=teRE0SHEaQL7aNAYsBbXlFNhWA
	JmtFdfRSvgaSKzmA+1NH0U64zuSEWA4RCarFEbDETXL84MdQXgcVCQciXryf0J47i/tzmcmriUH1O
	Ye11MKxg7Q+K+YUgq93fYPCjsoe6msEUzPZBicmgHw6fbAdjuew5e6Z1Vjh9KNgRAXmoYpNREVG8X
	AdQPYWNgW5g8fWJl0SgP/8eH5TjGOVCILqWVM6a3C4Ysaf1YEOWgHUjSr4f8RA6gbqMCn8R7zqTJa
	B4tdpTcE+GqImd2MNvnLGlXCuFEZSXZ4i6+gI+evYLfKPhC0i9bpbAukc82E7f1l42iUUZVO9fVYk
	R3Dlb1bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sthgX-00000007IOv-09V4;
	Thu, 26 Sep 2024 06:09:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sthfL-00000007ICV-1GkU
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 06:07:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sthfJ-0001ck-Ub; Thu, 26 Sep 2024 08:07:50 +0200
Message-ID: <008a1d90-2bb7-4135-9546-ba7b21bc56dc@pengutronix.de>
Date: Thu, 26 Sep 2024 08:07:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
 <20240925-spi-gpio-v1-2-47f6285b3bf1@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-spi-gpio-v1-2-47f6285b3bf1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_230751_374889_8FEAA7C9 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] spi: spi-gpio: support different word widths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 16:06, Sascha Hauer wrote:
> The spi-gpio driver only supports 8bit word width. Add support for
> arbitrary word widths up to 32bit.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With below issue addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  static int gpio_spi_setup(struct spi_device *spi)
>  {
> -	if (spi->bits_per_word != 8) {
> -		dev_err(spi->master->dev, "master does not support %d bits per word\n",
> -			spi->bits_per_word);
> -		return -EINVAL;
> -	}
> -
> +	gpio_spi_set_cs(spi, 0);

Chipselect is already asserted/deasserted in gpio_spi_transfer, why deassert it here?

>  	return 0;
>  }
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


