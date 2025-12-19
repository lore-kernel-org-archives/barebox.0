Delivery-date: Fri, 19 Dec 2025 10:35:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWtX-00D9WC-2h
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 10:35:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWtX-00067W-9V
	for lore@pengutronix.de; Fri, 19 Dec 2025 10:35:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FrBijA3gXoALbN7Oe2y6vwLHQHTMFmZ0jeeOUC8iojY=; b=q0MbNw2YfTWO0OxJFQ7vY/gZ/F
	Ff2qUfCzpdLarYUT6J6CAEOEqpz/5Qtsug9MaeESaaPMQAC3TJFPZmPUqyCdAxCp1TWlG3NPedK8R
	lAX+d1K9tc5d4QkQigLgZO5VwfByNzyRokJ6h+g5eCKoeukJxlQHfiG87214oY497F458ebM+XjHR
	g6QNrZYoUiSm2j0XYByRMDJ/4XHAeqPt3ytZA/piuLNQHLRCvCieAkysvlZKIH4Bdr7bM//HTjEQ9
	NVnB2TrWrBvg6p5WXgbedeA/krza4SS/1xSIGEi3Tzt7qFScZsRhdcGWWl9qP3qsUFWGuwKkfrtyl
	piQJb6QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWt3-00000009y0q-0nXI;
	Fri, 19 Dec 2025 09:35:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWt1-00000009xzA-08ei
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:35:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWWsz-0005y5-9s; Fri, 19 Dec 2025 10:34:57 +0100
Message-ID: <84b8c4da-2156-41f6-a8f1-a2eb83f3ace7@pengutronix.de>
Date: Fri, 19 Dec 2025 10:34:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20251219-imx93-clk-v1-1-087f491c7f89@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251219-imx93-clk-v1-1-087f491c7f89@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_013459_082696_8EA72140 
X-CRM114-Status: GOOD (  17.04  )
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
Subject: Re: [PATCH] ARM: imx93: dtsi: set assigned-clocks for usdhc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 12/19/25 10:29 AM, Michael Grzeschik wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Configure the usdhc1 clock for imx93 devices.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

Can you please explain why this is necessary? I suspect it's to support
HS200 speeds, but this info should go into commit message body instead
of rephrasing the title.

Thanks,
Ahmad


> ---
>  arch/arm/dts/imx93.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/dts/imx93.dtsi b/arch/arm/dts/imx93.dtsi
> index e1328de672438ffc8a3b785a3fb76168ced8dbdb..3bb9e24c781632dd390e483f059cabb600a4f6a6 100644
> --- a/arch/arm/dts/imx93.dtsi
> +++ b/arch/arm/dts/imx93.dtsi
> @@ -47,3 +47,9 @@ ddrc: memory-controller@4e300000 {
>  		};
>  	};
>  };
> +
> +&usdhc1 {
> +	assigned-clocks = <&clk IMX93_CLK_USDHC1>;
> +	assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>;
> +	assigned-clock-rates = <400000000>;
> +};
> 
> ---
> base-commit: e2d7e032281158b54541392b4d8108de204137a1
> change-id: 20251219-imx93-clk-cf19103fcd76
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



