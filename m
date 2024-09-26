Delivery-date: Thu, 26 Sep 2024 07:56:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthTx-002t2g-1c
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 07:56:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthTy-0003ys-0S
	for lore@pengutronix.de; Thu, 26 Sep 2024 07:56:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hhQAKjnKelB901SIpMtoYSGggrFAfVAh1Vh3S2WpHx8=; b=Go96KbtoyJIxT2+T4rzUy0l0Op
	wdRj25aaUffnpkdrc1b8rvN2ulwv4Hf4Y3C18fp3s//eYZ7hmnnKKJ7nmHN19V/tjfKF+AxHKEfWv
	cFI8s6294zqnmmtPejc0V6KVxy/MHLJSgvmgOvNU7EJ9h7r4b8vTpnw+XaUbnoUe6ajInoPje1uB7
	xMR4zlyu0XJdgQvNq3Q5Ey5fcncrLf+HJZN1YjgxFkj1haZ87zlRaX2RSKCdNv4svEcH+FUfJBq5s
	85o6XyAE0nQzsb+i+bcNspWZy+7IlhCDWNyxuhXUW5TIFawJn0tLqGvmkbW+nmmLGzRdjxJCSzVkD
	DQV8wNxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sthTX-00000007Gm1-2DXp;
	Thu, 26 Sep 2024 05:55:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sthTV-00000007Glb-07Hb
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 05:55:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sthTT-0003kf-LN; Thu, 26 Sep 2024 07:55:35 +0200
Message-ID: <334cf766-bf60-494a-8ba2-71006286ff3c@pengutronix.de>
Date: Thu, 26 Sep 2024 07:55:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
 <20240925-spi-gpio-v1-1-47f6285b3bf1@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-spi-gpio-v1-1-47f6285b3bf1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_225537_113484_1411012D 
X-CRM114-Status: GOOD (  16.35  )
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
Subject: Re: [PATCH 1/3] spi: spi-gpio: actually delay in spidelay()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 16:06, Sascha Hauer wrote:
> spidelay() currently only is a no-op dummy function. Actually delay in
> this function to avoid spi-gpio being faster than specified.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/spi/gpio_spi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
> index e5664df3fe..a71b4eddab 100644
> --- a/drivers/spi/gpio_spi.c
> +++ b/drivers/spi/gpio_spi.c
> @@ -48,7 +48,10 @@ static inline int getmiso(const struct spi_device *spi)
>  	return !!gpio_get_value(priv->data->miso);
>  }
>  
> -#define spidelay(nsecs) do { } while (0)
> +static inline void spidelay(unsigned int nsecs)
> +{
> +	udelay(max(1U, nsecs / 1000));

Why delay 1us at least? Why not use ndelay?

> +}
>  
>  #include "spi-bitbang-txrx.h"
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


