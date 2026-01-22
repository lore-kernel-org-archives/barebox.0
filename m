Delivery-date: Thu, 22 Jan 2026 12:06:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1visVs-0046Kv-2e
	for lore@lore.pengutronix.de;
	Thu, 22 Jan 2026 12:06:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1visVr-0007oF-N9
	for lore@pengutronix.de; Thu, 22 Jan 2026 12:06:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mYwPyi+rgQPK2eVVUChAtDynszMv0/nzEqCDwwLtItk=; b=JOTYciFVV3KXt0G588F06WxQKp
	87xeJTNDdU3Iv3rmUruPiZ3+QtVo7qirjX+AwIl8gA7t5KnW/cPT4VScYh5K05Zk9aPvvDqHf+W//
	OsFh88mVJ/ge33Vpa9qR0TnKMnhD5Cw+wCeI0Ao+ymEj4t+o5TZXiozFjI057+xM5CkDMumxPS+rY
	aWYsbMowTY5odnEJVGCNhq2E0Sojxj2xsT3DdzuDEOSNY3zMeec9XUdj2qmoXu7lVor0ChbPBGRMr
	YHoW8k6te2Vjq9FzN462Ll8OEDqNMcd4S/ohNalwK+aa3aBZGmH7MWNuDxkRVHdQfHZusaqmLa6DO
	6T+tIgbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1visV9-00000006voI-29gF;
	Thu, 22 Jan 2026 11:05:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1visV6-00000006vnY-20uX
	for barebox@lists.infradead.org;
	Thu, 22 Jan 2026 11:05:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1visV2-0007e8-G5; Thu, 22 Jan 2026 12:05:16 +0100
Message-ID: <d0db893a-1a0c-40ca-b429-c1f8a32b6baf@pengutronix.de>
Date: Thu, 22 Jan 2026 12:05:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>,
 =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>
References: <20260120131728.785913-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260120131728.785913-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_030520_522773_A309A8EB 
X-CRM114-Status: GOOD (  15.64  )
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
Subject: Re: [PATCH RFT] ARM: stm32mp: lxa: reuse USB nodes from upstream DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/20/26 2:17 PM, Ahmad Fatoum wrote:
> Disabling EHCI in favor of OHCI has been part of the TAC DT since a few
> years back. Let's reuse the same DT description the kernel uses and see
> what the fallout is.
> 
> Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>
> Cc: Leonard Göhrs <l.goehrs@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Leonard reported off-list that this worked for him on the LXA TAC, so I
think this is ok to merge.

Cheers,
Ahmad

> ---
>  arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi | 8 --------
>  arch/arm/dts/stm32mp15xc-lxa-tac.dtsi       | 8 --------
>  2 files changed, 16 deletions(-)
> 
> diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
> index 2312dd08280e..701981358c68 100644
> --- a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
> +++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
> @@ -83,14 +83,6 @@ last_chosen@10 {
>  	};
>  };
>  
> -&usbh_ehci {
> -	status = "disabled";
> -};
> -
> -&usbh_ohci {
> -	status = "okay";
> -};
> -
>  &baseboard_eeprom {
>  	partitions {
>  		compatible = "fixed-partitions";
> diff --git a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
> index 0cb66500db47..6bd119a799e0 100644
> --- a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
> +++ b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
> @@ -128,11 +128,3 @@ backend_state_emmc: partition@c0000 {
>  		};
>  	};
>  };
> -
> -&usbh_ehci {
> -	status = "disabled";
> -};
> -
> -&usbh_ohci {
> -	status = "okay";
> -};

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



