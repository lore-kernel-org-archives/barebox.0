Delivery-date: Wed, 11 Feb 2026 11:15:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq7Fi-000Uxn-2O
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 11:15:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq7Fi-0005fX-SY
	for lore@pengutronix.de; Wed, 11 Feb 2026 11:15:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ioifBPQDdlseQSpln23bWfIj2zMntSfGe+wO0+HLR14=; b=H2RBVXJ51g09btRNmAxT5m+JDw
	nsYfvByeMEdAFl5q1L2BcRGtIc1I4csiQE16Tl3naFjhS6NNKNXBtgZCB1SWoozZLKw5IGNhNg7AR
	Y5CGowZ8cyAEf8uMqqH47tzk4wCvT3oySZGhxpDjJ9G4FX17l+Mh4ZE9W1AfAb6oQVXnh+8PJvQs1
	MZtmSDnAWiuRJC4w7PrLzV51xgQNIxfFOAH/Pg8WgQLV2qtccn6/i6cN/CM+vemYz6d7xMgn8wqJv
	78eGyHqK1FhBpLEVMDhkdc0PEg06n/r9wQMBU49//gp2x9q4fKSVbZFgco7AOyJWhjyFMwddDMgho
	MwxuZYtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq7FI-00000000U9w-3vWB;
	Wed, 11 Feb 2026 10:14:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq7FH-00000000U9C-0mDX
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 10:14:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vq7FD-0005aU-Cw; Wed, 11 Feb 2026 11:14:51 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vq7FB-000EBm-2l;
	Wed, 11 Feb 2026 11:14:51 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vq7FD-00BqsX-0L;
	Wed, 11 Feb 2026 11:14:51 +0100
Date: Wed, 11 Feb 2026 11:14:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260211101451.lyhzyyzxmdydfldj@pengutronix.de>
References: <20260210221343.3431882-1-m.felsch@pengutronix.de>
 <aYw1kgLBfDsrVpx_@pengutronix.de>
 <1672b0e8-65ac-4f92-afb7-e5c9eb798537@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1672b0e8-65ac-4f92-afb7-e5c9eb798537@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_021455_229941_2494B487 
X-CRM114-Status: GOOD (  37.31  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: [RFC PATCH] ARM: dts: i.MX8MP: remove barebox environment
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha, Ahmad,

On 26-02-11, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/11/26 8:53 AM, Sascha Hauer wrote:
> > On Tue, Feb 10, 2026 at 11:13:40PM +0100, Marco Felsch wrote:
> >> While specifying the barebox environment within the barebox dts is very
> >> helpful for standalone barebox development it's difficult for BSPs which
> >> use this development platform and want to use the GPT mechanism.
> >> As a result BSPs had to manually delete the nodes via a external
> >> provided dts, because we wanted to keep the comfort for the standalone
> >> development flow.
> >>
> >> Lucky commit 86531d4bf7aa ("commands: create createnv command")
> >> introduced a convenient helper to create a barebox environemnt on
> >> demand exactly for this purpose:
> >>
> >> | "We want to move away from describing the barebox environment explicitly
> >> | in the device tree and instead motivate usage of GPT partitions.."
> >>
> >> So start with the i.MX8MP-EVK to encourage the use of GPT partitions and
> >> to make the BSP integration for these development platforms easier.
> > 
> > Generally I like this idea, but it breaks the existing users
> > environment and doing this sharp cut might be annoying for the phase
> > where you switch between different barebox versions which could be quite
> > common for development boards.

Good point, albeit commit 86531d4bf7aa is part of v2025.08.0, so it's
~6months old. I also don't know how often i.MX8MP-EVK barebox features
are implemented which require to jump between barebox versions.

> > Would be great to have a grace period in which we prefer the UUID
> > environment over the device tree environment (we might do this already)
> > and warn in case we still use the latter. We could stick the warning to
> > a device tree property like "warn-deprecated-env" and remove the
> > environment once they carry this property for a year or so.
> > 
> > Just the ideas from the top of my head. Thoughts?
> 
> Here's my opinion from a year back:
> https://lore.barebox.org/barebox/1ff0f545-effa-4b87-81b7-524919333777@pengutronix.de/

Thanks for the link, I fogot that I've send somthing similar already ^^

> I am interested to hear thoughts on it.
> Compared to our suggestion, there will be no eventual removal of the node.

Both your suggestions are very similar and provide a smother transistion
though. I would like to get rid of the old OF-env handling completely
and therefore prefer Sascha's approach a bit more. Having a fallback is
good, but fallbacks tend to crumble over time since they aren't tested.

Of course we could add tests to keep the barebox,environment-fallback
running, but is it worth it?

Regards,
  Marco



> 
> Cheers,
> Ahmad
> 
> > 
> > Sascha
> > 
> >>
> >> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >> ---
> >>  arch/arm/dts/imx8mp-evk.dts | 43 -------------------------------------
> >>  1 file changed, 43 deletions(-)
> >>
> >> diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
> >> index e6f8c2d1b482..37798fa99efa 100644
> >> --- a/arch/arm/dts/imx8mp-evk.dts
> >> +++ b/arch/arm/dts/imx8mp-evk.dts
> >> @@ -12,19 +12,6 @@
> >>  / {
> >>  	barebox,deep-probe;
> >>  
> >> -	chosen {
> >> -		environment-sd {
> >> -			compatible = "barebox,environment";
> >> -			device-path = &env_sd2;
> >> -			status = "disabled";
> >> -		};
> >> -		environment-emmc {
> >> -			compatible = "barebox,environment";
> >> -			device-path = &env_sd3;
> >> -			status = "disabled";
> >> -		};
> >> -	};
> >> -
> >>  	gpio-leds {
> >>  		status {
> >>  			barebox,default-trigger = "heartbeat";
> >> @@ -78,33 +65,3 @@ &usb_dwc3_0 {
> >>  	usb-role-switch;
> >>  	status = "okay";
> >>  };
> >> -
> >> -&usdhc2 {
> >> -	#address-cells = <1>;
> >> -	#size-cells = <1>;
> >> -
> >> -	partition@0 {
> >> -		label = "barebox";
> >> -		reg = <0x0 0xe0000>;
> >> -	};
> >> -
> >> -	env_sd2: partition@e0000 {
> >> -		label = "barebox-environment";
> >> -		reg = <0xe0000 0x20000>;
> >> -	};
> >> -};
> >> -
> >> -&usdhc3 {
> >> -	#address-cells = <1>;
> >> -	#size-cells = <1>;
> >> -
> >> -	partition@0 {
> >> -		label = "barebox";
> >> -		reg = <0x0 0xe0000>;
> >> -	};
> >> -
> >> -	env_sd3: partition@e0000 {
> >> -		label = "barebox-environment";
> >> -		reg = <0xe0000 0x20000>;
> >> -	};
> >> -};
> >> -- 
> >> 2.47.3
> >>
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


