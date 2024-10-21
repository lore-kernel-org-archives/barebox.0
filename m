Delivery-date: Mon, 21 Oct 2024 10:05:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nQ8-006zgf-3C
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:05:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nQ8-0003PV-Ee
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:05:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LD2eFHZ92YbFFzmiwu7Fwv0eOiv7EuQtmIIIcNjDi60=; b=luAlvwa3Tahney2TtyK2LZg1XQ
	Vjg8TDMXM7CFr59+/9a6oOW/0GAvZ8+Xr8hNQanJ5P5E1d5DSFQQNHM+ChqHUeuQpGRHZGTyvyPoP
	k5SjXhqu7rlRCaM5jyOsw+OV783dncMidIK37oUO4sSPCghU2BVOtOiaKXg83kB6CVWXIpADuKyDr
	+OMjj3GctEvnxTkEsmsQ56oa9LGEYxGFvfFuuGoR+nNvMm2RXHV5sQGFXYitfraUD5WS9fWBrjjuM
	+/KoEA64mHEA2ETQPPTw8QQvXt2/5VE8xd22EulJPJdNlEgtuZ+Blh/AdQOyehUcR6D9DjkRBEuxB
	yWO1AU4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nPf-00000006U4n-0VW4;
	Mon, 21 Oct 2024 08:05:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nNl-00000006Tp7-2zhH
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 08:03:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2nNk-00030u-Ff; Mon, 21 Oct 2024 10:03:16 +0200
Message-ID: <d56f1791-205e-4d24-9279-1ac882a97e87@pengutronix.de>
Date: Mon, 21 Oct 2024 10:03:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-9-0980697b6f66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-9-0980697b6f66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_010317_792042_66674C11 
X-CRM114-Status: GOOD (  15.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] ARM: Layerscape: LS1046a: add PSCI node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 21.10.24 09:21, Sascha Hauer wrote:
> Unlike other SoCs the LS1046a upstream dtsi files do not have a PSCI
> node. Add one for barebox and Linux to find the PSCI support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/dts/fsl-ls1046a.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/dts/fsl-ls1046a.dtsi b/arch/arm/dts/fsl-ls1046a.dtsi
> index a661cb0c89..2dc24ba8c7 100644
> --- a/arch/arm/dts/fsl-ls1046a.dtsi
> +++ b/arch/arm/dts/fsl-ls1046a.dtsi
> @@ -4,4 +4,9 @@ / {
>  	aliases {
>  		mmc0 = &esdhc;
>  	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
>  };
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


