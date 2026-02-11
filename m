Delivery-date: Wed, 11 Feb 2026 08:54:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq53T-000SX8-1p
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 08:54:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq53T-00005U-MZ
	for lore@pengutronix.de; Wed, 11 Feb 2026 08:54:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8LVpxfW9iF4bC3+GLcXtpup/Zebzo0XvFj8+2VbZoxU=; b=fkAWIkzzqfGU0Xe0nu/o/q+lVP
	L5TH4xhmWpDNTCZMOKk1o6CMBa5af940+m10yQfj4twR7tgvwAxKuJb+H/0vtKfgvCyRMPpzzqzzn
	SEz/t40zKz6u51VxqwCELF2JI4v9Vb+76t7gklzhHkpnH6DbuMAstsdAZv4uLzTKiCG2P+BLe58re
	45e+mjcYAjlEsCnhAnX+bb1iDfQIYuYodXTKdxo2ytrNr8nStPBJyxpgUGgItE5ZZNw5xyUfk+2j/
	sY22wuvlBEBa3q2ssUQkilxtozFuEJgv12LqH+TAOHDs5LqbHGiZghTScDj/Ujs+lOnUm+g48WHFB
	LdRSd/vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq52v-00000000MZ2-0x3W;
	Wed, 11 Feb 2026 07:54:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq52s-00000000MYQ-1fAm
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 07:54:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vq52o-0008SP-V2; Wed, 11 Feb 2026 08:53:54 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vq52n-000D3M-1S;
	Wed, 11 Feb 2026 08:53:54 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vq52o-00Bowv-20;
	Wed, 11 Feb 2026 08:53:54 +0100
Date: Wed, 11 Feb 2026 08:53:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aYw1kgLBfDsrVpx_@pengutronix.de>
References: <20260210221343.3431882-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210221343.3431882-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_235358_438193_A5BBDA52 
X-CRM114-Status: GOOD (  28.97  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] ARM: dts: i.MX8MP: remove barebox environment
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Feb 10, 2026 at 11:13:40PM +0100, Marco Felsch wrote:
> While specifying the barebox environment within the barebox dts is very
> helpful for standalone barebox development it's difficult for BSPs which
> use this development platform and want to use the GPT mechanism.
> As a result BSPs had to manually delete the nodes via a external
> provided dts, because we wanted to keep the comfort for the standalone
> development flow.
> 
> Lucky commit 86531d4bf7aa ("commands: create createnv command")
> introduced a convenient helper to create a barebox environemnt on
> demand exactly for this purpose:
> 
> | "We want to move away from describing the barebox environment explicitly
> | in the device tree and instead motivate usage of GPT partitions.."
> 
> So start with the i.MX8MP-EVK to encourage the use of GPT partitions and
> to make the BSP integration for these development platforms easier.

Generally I like this idea, but it breaks the existing users
environment and doing this sharp cut might be annoying for the phase
where you switch between different barebox versions which could be quite
common for development boards.

Would be great to have a grace period in which we prefer the UUID
environment over the device tree environment (we might do this already)
and warn in case we still use the latter. We could stick the warning to
a device tree property like "warn-deprecated-env" and remove the
environment once they carry this property for a year or so.

Just the ideas from the top of my head. Thoughts?

Sascha

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-evk.dts | 43 -------------------------------------
>  1 file changed, 43 deletions(-)
> 
> diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
> index e6f8c2d1b482..37798fa99efa 100644
> --- a/arch/arm/dts/imx8mp-evk.dts
> +++ b/arch/arm/dts/imx8mp-evk.dts
> @@ -12,19 +12,6 @@
>  / {
>  	barebox,deep-probe;
>  
> -	chosen {
> -		environment-sd {
> -			compatible = "barebox,environment";
> -			device-path = &env_sd2;
> -			status = "disabled";
> -		};
> -		environment-emmc {
> -			compatible = "barebox,environment";
> -			device-path = &env_sd3;
> -			status = "disabled";
> -		};
> -	};
> -
>  	gpio-leds {
>  		status {
>  			barebox,default-trigger = "heartbeat";
> @@ -78,33 +65,3 @@ &usb_dwc3_0 {
>  	usb-role-switch;
>  	status = "okay";
>  };
> -
> -&usdhc2 {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -
> -	partition@0 {
> -		label = "barebox";
> -		reg = <0x0 0xe0000>;
> -	};
> -
> -	env_sd2: partition@e0000 {
> -		label = "barebox-environment";
> -		reg = <0xe0000 0x20000>;
> -	};
> -};
> -
> -&usdhc3 {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -
> -	partition@0 {
> -		label = "barebox";
> -		reg = <0x0 0xe0000>;
> -	};
> -
> -	env_sd3: partition@e0000 {
> -		label = "barebox-environment";
> -		reg = <0xe0000 0x20000>;
> -	};
> -};
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


