Delivery-date: Wed, 16 Apr 2025 14:27:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u51ry-001SN4-0g
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 14:27:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u51rx-0001vy-Ip
	for lore@pengutronix.de; Wed, 16 Apr 2025 14:27:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iHPi8mdPe+21qcMJh3PgHfghWZuUwx6sDlkOAkTgy78=; b=YxwqA4DeiZpCVzZEBr6VV8qOTn
	0O0VbAck7c3jhy+mZ+kXVSfuX3oJ4ckDnyBZLUPzCYkG5O9oeHGlvWgqsraKxe52jzY47BRn0v/uU
	6jzIu/ahpcXs0i0+kKjy2DQxBLtE8wPu+yEHn6K4s9PzbZaBBXoU8mXuwJH8b/5Lzd4DjM/2HEK79
	yMsOEr6MCd4b7oHktRHYPlaKEKfC340qurStht8HhS6mO1FdAzrr72PhlN6fhxY03ks6ad11t/iuI
	KO69KSmFxNyRayDTa01MO8nRx69+KHJAUPOXc+SjU1eKoIBU6mik2jVQbmeEJ6zN8nIEcd+Q/CEXT
	k9C69DSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51rL-00000009Vco-38kJ;
	Wed, 16 Apr 2025 12:27:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51fY-00000009TWV-3V44
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 12:15:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u51fW-0005Jr-Uz
	for barebox@lists.infradead.org; Wed, 16 Apr 2025 14:15:07 +0200
Message-ID: <1ff0f545-effa-4b87-81b7-524919333777@pengutronix.de>
Date: Wed, 16 Apr 2025 14:15:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20250416103144.2069587-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250416103144.2069587-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_051508_879089_A0A2A61D 
X-CRM114-Status: GOOD (  21.89  )
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
Subject: Re: [PATCH] ARM: riotboard: drop static barebox-environment handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 4/16/25 12:31, Marco Felsch wrote:
> Since commit 9f868f78bc54 ("environment: use barebox environment from
> GPT partitions") barebox can try to find the barebox-environment based
> on a GPT partition GUID.
> 
> Make use of this mechanism and drop the barebox local of-partition for
> the eMMC device and let the user-space provide the correct
> barebox-environment location if any.
> 
> This also fixes environment handling if booted from a SD card since SD
> card boots make use of eMMC barebox environment at the moment.

I agree that we want to nudge users towards making use of a GPT
partition with the correct type GUID, but breaking them and expecting
them to repartition leaves a sour taste.

How about we change barebox,environment to barebox,environment-fallback
as compatible and then make use of it only if no other environment has
been found (including any on a GPT-partitioned bootsource).

If a barebox,environment-fallback is used, a NOTICE level message should
alert the user to this fact. They can then either:

  - Repartition to avoid the message
  - Switch to barebox,environment if they explicitly want to hardcode
    the location (e.g. in deployed systems or when it's on raw flash)

I think with these semantics, we could switch over EVKs in-tree
to the new compatible.

Cheers,
Ahmad

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
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
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



