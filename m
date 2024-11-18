Delivery-date: Mon, 18 Nov 2024 18:56:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tD5zf-003WEx-33
	for lore@lore.pengutronix.de;
	Mon, 18 Nov 2024 18:56:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tD5zf-0000KL-AY
	for lore@pengutronix.de; Mon, 18 Nov 2024 18:56:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mr5n7RlOfRvKPdA/Fh6Zt335OZHQ+wKJQLHjSBPTPCQ=; b=sK1DN63qkYTDreHK+oNc6molPu
	3v9p/vpZ8MMl5X0lAGX6w/jQYIuNgmRTsoUGpKYCspayO9ozvGS3k0m99qtFaXhuBMZhjgvd1WN9L
	OlGNIizlDemvqeHQMQzFuuOhGrlQL45Z7PYagpaWduJztBw6f1Wnr/8PCaGET9Zt3ydiikNMrV2eB
	COlPmkRUF/XIKr8s24PS3IehtZEKd4u4FVh9HpfQNNc9mLw2nkyMJlTVC1klsoQqOwQCDwsrDm3FG
	/bpwUBxoVmRHk3A1PL4QSCSpaV+atMgeOKa6YAp2g5OB3rpAWANMVqP6OJVgNZTsyTeB4BYQeAZPs
	dUw3V6jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tD5zA-0000000AGWY-0Q8k;
	Mon, 18 Nov 2024 17:56:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tD5z7-0000000AGVs-0Aug
	for barebox@lists.infradead.org;
	Mon, 18 Nov 2024 17:56:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tD5z4-00009C-F6; Mon, 18 Nov 2024 18:56:22 +0100
Message-ID: <f282c2bc-f629-4433-a1dd-7a3a79aa3432@pengutronix.de>
Date: Mon, 18 Nov 2024 18:56:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>,
 barebox@lists.infradead.org
References: <20241118164344.48806-1-s.pueschel@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241118164344.48806-1-s.pueschel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_095625_079161_C54894C6 
X-CRM114-Status: GOOD (  14.88  )
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
Subject: Re: [PATCH] ARM: dts: i.MX8MP: imx8mp-skov: skip sd/sdio detection on
 the eMMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.11.24 17:43, Sven Püschel wrote:
> Skip sd/sdio detection on the eMMC to reduce the detection time by
> about 270ms. This change is already part of the kernel dtsi file
> (see  dts/src/arm64/freescale/imx8mp-skov-reva.dtsi).
> 
> Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Next up HS200? ;-)

Cheers,
Ahmad

> ---
>  arch/arm/dts/imx8mp-skov.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
> index 0c0ada1a5c..5271c9deab 100644
> --- a/arch/arm/dts/imx8mp-skov.dts
> +++ b/arch/arm/dts/imx8mp-skov.dts
> @@ -425,6 +425,8 @@ &usdhc3 {
>  	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
>  	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
>  	bus-width = <8>;
> +	no-sd;
> +	no-sdio;
>  	non-removable;
>  	status = "okay";
>  };


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


