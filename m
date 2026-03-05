Delivery-date: Thu, 05 Mar 2026 08:36:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3Fd-008G1o-3C
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 08:36:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3Fe-0001Ty-B5
	for lore@pengutronix.de; Thu, 05 Mar 2026 08:36:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YCrsxaRasNgg2XTVpP7DfFMUrZNvkGRvX5OEIfb/kXE=; b=xSiBB4rRca8jMia2shfyLlm4R5
	cuanT+tA+KvUqRhQTKZDGxhDJRTX1X/mU+jnAxiZXTy36cJ38I0FurOa2d0vMKHff3oJqrguKZ06+
	c+Xs3yfq1FRu7RvVUHej+urjqYYu0NXp7T3aPNYsawxewx7e+czAeuwYwJygOfBTmYTvfY1UjEjM8
	pNNwC/MT9z3xzzQuupzkSfuSvKdlXf7z/bcSTjiShg0VMMHs9wnqha2aG5jGI8vhgXAXUYwDEVQoB
	0etc1Us5J+VYavM1+3R9jHwRkltdzcuIFOaCw0YE5q40C+pkXrwQiWjM5ygw8OiG57YG4Xx4mpSzg
	bdVk1gVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3F6-000000015ue-1tqF;
	Thu, 05 Mar 2026 07:35:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3F4-000000015uE-0nVi
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 07:35:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vy3F2-0001Nc-5r; Thu, 05 Mar 2026 08:35:28 +0100
Message-ID: <2bcf7ef8-6d97-46c7-a8d2-3db70365e32a@pengutronix.de>
Date: Thu, 5 Mar 2026 08:35:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260305065352.3417011-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260305065352.3417011-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_233530_241231_6189BC8F 
X-CRM114-Status: GOOD (  17.59  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] aiodev: Enable saradc for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/5/26 07:53, Sascha Hauer wrote:
> The RK3588 also has a saradc, add the SoC to the dependency list.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/aiodev/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
> index 1c7bf16546..5c925109fb 100644
> --- a/drivers/aiodev/Kconfig
> +++ b/drivers/aiodev/Kconfig
> @@ -60,7 +60,7 @@ config STM32_ADC
>  
>  config ROCKCHIP_SARADC
>  	tristate "Rockchip SARADC driver"
> -	depends on ARCH_RK3568 || ARCH_RK3576 || COMPILE_TEST
> +	depends on ARCH_RK3568 || ARCH_RK3576 || ARCH_RK3588 || COMPILE_TEST

Given that there are so many RK35xx variants, let's just turn this into ARCH_ROCKCHIP?

Cheers,
Ahmad

>  	depends on OFDEVICE
>  	help
>  	  Support for Successive Approximation Register (SAR) ADC in Rockchip


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


