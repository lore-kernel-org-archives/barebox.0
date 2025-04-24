Delivery-date: Thu, 24 Apr 2025 10:03:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7rY9-004pBE-0u
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 10:03:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7rY8-0004Yl-LG
	for lore@pengutronix.de; Thu, 24 Apr 2025 10:03:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UeeptUAtIl8br3FhoeE1Kg05XF5OtfN7A17mbObSwcQ=; b=R/2gbdXerXd+HwVTtZwA80JIgp
	1Ti3Cb99D/D7wh5Qkef7CaOAXQLLkU2MbxKfGXoowMEX2zGCo7fCE1OD5Rh1UJS59E7YNmyTXzuOh
	bNwj6gKtRHButseca8din9zYHbLGMmhuQB65pOCOIC9jd7w1U0Us6UkYDuYeLR13jDL9mBqqKK/7M
	5JlGnab8P4OIf2VSpV4Qysm7pUukdmpAY/L+IxW2GV04fI+79CL8BCvKu/skoEuhA1jvu98gdqy9Y
	H5gFQcstxLDUhxyvqUsO4jmnJ61jdQ1saYCdy/MHSFiMRM/QSI6jThAj7iJ3C+sqLreCKXXGIlhXK
	Hluzoq5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7rXQ-0000000DH0N-2rA7;
	Thu, 24 Apr 2025 08:02:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7rXL-0000000DH00-28xz
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 08:02:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7rXJ-00047e-DN; Thu, 24 Apr 2025 10:02:21 +0200
Message-ID: <7b6f5626-6d7c-43f5-9faa-a19380237bfb@pengutronix.de>
Date: Thu, 24 Apr 2025 10:02:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
 <20250423140913.1530237-4-m.felsch@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250423140913.1530237-4-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_010223_555933_8D4EEE0D 
X-CRM114-Status: GOOD (  18.73  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/4] ARM: riotboard: drop static barebox-environment
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On 23.04.25 16:09, Marco Felsch wrote:
> Since commit 9f868f78bc54 ("environment: use barebox environment from
> GPT partitions") barebox can try to find the barebox-environment based
> on a GPT partition GUID.
> 
> Make use of this mechanism and drop the barebox local of-partition. This
> allows the BSP integrators to provide a proper GPT or if no GPT was
> provided we fallback to the autom. minimal GPT mechanism added recently.
> 
> This also fixes environment handling if booted from a SD card since SD
> card boots make use of eMMC barebox environment at the moment.

You didn't fully address my suggestion[1] on v1. Why not keep around the existing
environment as a fallback?

https://lore.barebox.org/barebox/1ff0f545-effa-4b87-81b7-524919333777@pengutronix.de/

Thanks,
Ahmad

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - Adapt commit message
> 
>  arch/arm/dts/imx6s-riotboard.dts | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
> index 57817c1197a7..cca34d6dba95 100644
> --- a/arch/arm/dts/imx6s-riotboard.dts
> +++ b/arch/arm/dts/imx6s-riotboard.dts
> @@ -11,11 +11,6 @@
>  / {
>  	chosen {
>  		stdout-path = &uart2;
> -
> -		environment {
> -			compatible = "barebox,environment";
> -			device-path = &environment_usdhc4;
> -		};
>  	};
>  };
>  
> @@ -31,11 +26,6 @@ partition@0 {
>  		label = "barebox";
>  		reg = <0x0 0xe0000>;
>  	};
> -
> -	environment_usdhc4: partition@e0000 {
> -		label = "barebox-environment";
> -		reg = <0xe0000 0x20000>;
> -	};
>  };
>  
>  &clks {


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


