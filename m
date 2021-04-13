Delivery-date: Tue, 13 Apr 2021 12:15:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWG4y-0007M0-40
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 12:15:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWG4x-0006DC-As
	for lore@pengutronix.de; Tue, 13 Apr 2021 12:15:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Eg5itjeaKhlmy8tqPZJqsSEyzk09WRY3L7KCwyoOMs0=; b=IQ+MJF7FaXs6l+sUj1z2VaYlP
	sL55Wwqk3KUxt+F/fvF1jshzRR7+tQKrBuEUZzTdDRIGhRJ+a98NsczChUk95M52QXGLXfvwqSeha
	Vf701dzBfC+32UAwm1hsZHHKLa76WhUPz6kxi7OCilDL4uGN9oTfWYxFNsMi28eFVbKLRKmZqF02s
	etqXJLPKxsXgZZi2l9naqX2bvUQUfQ4NhTnXRBiq1mOVZSYHz2PucwBZIrkx4qqPG5Ty5GKFaWjzl
	6B/15uxSmx6Fhvb/kQCVeO7bAqS5n602ZgeB4atvBX6XbJfcs0Ahs4MBJVv/4iUN2wXslnLekGk3Q
	AgKhu3wSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWG3g-008qoU-KW; Tue, 13 Apr 2021 10:14:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWG3U-008qnZ-53
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 10:14:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=EBmv6uo6k6iqLwpCH0N9hkOBSE+L3ceK72miAKmBhfE=; b=EaT0Ti9XLcymtkjjr5mLbNDA0W
 jQr93rZ4OGTlswcl0vFcczYa3zO6+TtvNgo2Zc+CMpLfYrbk8F80aG6xvVEJZQnznWK160V0agInO
 nJz700ONKM/VApIFdKypw5lV5qMMxwX+oHK8AgsewsrDKXBFc8yF3oQm7OQB822g9OTa827LQzOX/
 sPfECvgc6TD1KlTO3kZW2m4JI1n1wAJvNksIHBeZgthPEgS3pv3BY5RdVStmV9Yt6CyyHl6zTAzPI
 zUuX60kk9G+4+CTmLX4ji1i89J2okLwURAzBuMARiSuwn5372r7gL80pNLYumAXR4VK+EdsYnTFnB
 SMHIlDIg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWG3R-006v3Z-FY
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 10:13:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWG3Q-00065A-2m; Tue, 13 Apr 2021 12:13:56 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210413100753.15094-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4195408f-c530-68a1-c636-cf10f975d16f@pengutronix.de>
Date: Tue, 13 Apr 2021 12:13:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210413100753.15094-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_031357_553879_6F06C82A 
X-CRM114-Status: GOOD (  18.70  )
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
Subject: Re: [PATCH] ARM: i.MX: convert early gpio value accessors to static
 inline functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 13.04.21 12:07, Sascha Hauer wrote:
> imx1_gpio_val() and imx31_gpio_val() lack various braces. Instead of
> adding all these convert them to static inline functions.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/imx-gpio.h | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
> index 0cfd16f4fa..c7b8ccffcb 100644
> --- a/arch/arm/mach-imx/include/mach/imx-gpio.h
> +++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
> @@ -72,11 +72,18 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
>  #define imx6_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
>  #define imx8m_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
>  
> -#define imx1_gpio_val(base, gpio) readl(base + 0x1c) & (1 << gpio) ? 1 : 0
> +static inline int imx1_gpio_val(void *base, int gpio)

void __iomem *

> +{
> +	return readl(base + 0x1c) & (1 << gpio) ? 1 : 0;
> +}
> +
> +static inline int imx31_gpio_val(void *base, int gpio)

Same

> +{
> +	return readl(base) & (1 << gpio) ? 1 : 0;
> +}
> +

With this addressed, Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  #define imx21_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
>  #define imx27_gpio_val(base, gpio) imx1_gpio_val(base, gpio)
> -
> -#define imx31_gpio_val(base, gpio) readl(base) & (1 << gpio) ? 1 : 0
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

