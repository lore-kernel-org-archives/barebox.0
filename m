Delivery-date: Tue, 21 Oct 2025 17:03:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDtt-00AHpD-35
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 17:03:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDts-0003bL-Mc
	for lore@pengutronix.de; Tue, 21 Oct 2025 17:03:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e7THGrdHhtwi9sKTWD0tcP7KpiRYI+SvbpsGqJ1gcjQ=; b=ndSfeKBuiztGV2X2/phuRLnZb0
	1Ju5GuSrtbP8sjP43+NO+iuRP2JT3iMUlCrQCkUNVdVFgEfIGQqA+2M1BW4ttV8EILhlwUfj+hZqL
	9asaqRzb04NX5gR60J8aiZ8h4xhOEUh/70A02k9F7cMwXW0UdIeXPcLSusGtLpBshN870H54uVg1C
	x8WHIt0n+eAgvVecmbzwYcCAz6RLtsDWroB0FjgieH+N7DN89KsAYF7lieI7rBu/2uhn00Q0PAmHl
	7yYMs/dvv+6bMp2aECO1F4PQTBNtgSf01gcOaADT5FDtoB1d64xu3JaVJLHU+4hj2O80bXywJG9nN
	i7kUoZow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDtE-0000000HQeU-3TAE;
	Tue, 21 Oct 2025 15:03:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDtC-0000000HQdG-23cc
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 15:03:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBDtA-0003Tl-LB; Tue, 21 Oct 2025 17:03:04 +0200
Message-ID: <47ee287a-d309-4ba6-a3ed-025af6f7e1df@pengutronix.de>
Date: Tue, 21 Oct 2025 17:03:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pfitzner <f.pfitzner@pengutronix.de>, barebox@lists.infradead.org
References: <20251021144243.1231871-2-f.pfitzner@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251021144243.1231871-2-f.pfitzner@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_080306_536724_68FF08F7 
X-CRM114-Status: GOOD (  20.21  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] dts: arm: imx6: remove mmc1 alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Fabian,

On 10/21/25 4:42 PM, Fabian Pfitzner wrote:
> Setting the mmc1 alias to usdhc4 in the dts overwrites the mmc1 alias set in
> the included imx6dl.dtsi file. This causes mmc1 and mmc3 pointing to the same address.
> 
> This creates the device name as /dev/mmc1* instead of the expected /dev/mmc3* name.
> As the barebox update handler is configured for mmc3, updating is not
> possible anymore.
> 
> This patch solves this by removing the mmc1 alias from the dts.

I suspect this may be specific to your out-of-tree patches as there is
no imx6s-btx53lb000.dts in upstream barebox.

> 
> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
> ---
>  dts/src/arm/nxp/imx/imx6s-btx53lb000.dts | 4 ----

In any case, we don't accept patches against dts/. Patches against dts/
need to be submitted through Linux and are then imported into barebox
along with the regular device tree syncs as described in the barebox
documentation.

What's possible to patch in barebox is adding overrides in arch/arm/dts.

Cheers,
Ahmad

>  1 file changed, 4 deletions(-)
> 
> diff --git a/dts/src/arm/nxp/imx/imx6s-btx53lb000.dts b/dts/src/arm/nxp/imx/imx6s-btx53lb000.dts
> index f8141832cd..c395bffe06 100644
> --- a/dts/src/arm/nxp/imx/imx6s-btx53lb000.dts
> +++ b/dts/src/arm/nxp/imx/imx6s-btx53lb000.dts
> @@ -9,10 +9,6 @@ / {
>  	model = "Waygate BTX53LB000v2";
>  	compatible = "karo,imx6dl-tx6dl", "fsl,imx6dl";
>  
> -	aliases {
> -		mmc1 = &usdhc4;
> -	};
> -
>  	backlight: backlight {
>  		compatible = "pwm-backlight";
>  		pinctrl-0 = <&pinctrl_backlight>;

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



