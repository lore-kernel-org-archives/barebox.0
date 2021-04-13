Delivery-date: Tue, 13 Apr 2021 11:58:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWFoD-0007Jr-P6
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 11:58:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWFoC-0003u3-QX
	for lore@pengutronix.de; Tue, 13 Apr 2021 11:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sZVdyxy4vl68pHWe3mHf0DH+2BpoxMxWUBn9a7hC0Kw=; b=Ry3Ndhc5VqN/yGC5h1En5tyNx
	MUNUiHmF1R/sl/Rsnwf/l0pvMIbHRejznfj9kzBukIvZvC2Le0d5Shiw60lYwja0mH4dAwQfD1Mpd
	E3kx3GxJHphDfkgvK8rJoocosqnD/QIvxRVBItXrpcTvJL13zLyRsY5L3daPmO4HEhzgvpDoEhCcS
	Jn3YEcY5sbzvIvqNkKZjvUttdpk4bh7aNYEmEoROc9lruD2LnEQFhEbFF9l+EYPwYN7mdRd3c3YPo
	5dmEga6lky2PFWjjALDT0FTVqT+8/Q9S1VnKNAHI2/LR4W1vDdGAByKz729H62N5w1w3V6d8nEIy5
	ul5tm9eZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWFmP-008oCA-LD; Tue, 13 Apr 2021 09:56:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFmK-008oBO-LO
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 09:56:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=hib5/lBaXdz69o2mLaoKQA3/GOtZ5YcgZ932/oPuF2A=; b=qyd347aDbB9v/I1HpU1QcHZBJ8
 buUdKPEXD7FEBmCwOF28FfKNiEjn90+z9DmRZVNyc2d0TX4ykmEjI3aqPetHuEsvg1zQOjIDJ2lOj
 KSyiK7iaFmTV6jo6B0MZIB+pp5vM40+EOq/6teL6B0tILaCX8NBJz4Uqwm6WbmhTdCDjlWFAN3hj8
 z6n1+BnLyR/jWogDQ1L/LM5DkLljvLPz2Es5EvsL/S5Iw7NxU1H2agIUu/sTNHnMN1wsrmmrDRDIb
 4BzsIk62a0/Dei3yTEhSMkEKqOOEfdE40XCgzH613voUg+L85jdUoPPawqxIuUx+QfqrugJaz852K
 /MWPXj6g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFmI-006uHj-1m
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 09:56:15 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWFmE-0003Yq-NX; Tue, 13 Apr 2021 11:56:10 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210413090318.14105-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6835e212-133c-e2f8-6e05-336e6877543c@pengutronix.de>
Date: Tue, 13 Apr 2021 11:56:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210413090318.14105-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_025614_121802_46CE6B30 
X-CRM114-Status: GOOD (  17.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Add missing braces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 13.04.21 11:03, Sascha Hauer wrote:
> Add braces around the definition of imx1_gpio_val and imx31_gpio_val
> to make sure it's evaluated correctly.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/imx-gpio.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
> index 0cfd16f4fa..b9a6acc013 100644
> --- a/arch/arm/mach-imx/include/mach/imx-gpio.h
> +++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
> @@ -72,11 +72,11 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
>  #define imx6_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
>  #define imx8m_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
>  
> -#define imx1_gpio_val(base, gpio) readl(base + 0x1c) & (1 << gpio) ? 1 : 0
> +#define imx1_gpio_val(base, gpio) (readl(base + 0x1c) & (1 << gpio) ? 1 : 0)

Braces around base and especially gpio might be a good idea as well.
You never know..

>  #define imx21_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
>  #define imx27_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
>  
> -#define imx31_gpio_val(base, gpio) readl(base) & (1 << gpio) ? 1 : 0
> +#define imx31_gpio_val(base, gpio) (readl(base) & (1 << gpio) ? 1 : 0)
>  #define imx25_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
>  #define imx35_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
>  #define imx51_gpio_val(base, gpio) imx31_gpio_val(base, gpio)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

