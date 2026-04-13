Delivery-date: Mon, 13 Apr 2026 15:50:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHgo-00BjfS-2u
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 15:50:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHgo-0002TR-Az
	for lore@pengutronix.de; Mon, 13 Apr 2026 15:50:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=78aIJ4D6nAbaippw9Mw+pIpPcAyHI+cc9M1uBOxVZX8=; b=JlfOGNj+BeAhrlFvnOKh/bIaah
	epBno421hXB1dKCtq3+NHOxWMoGYTK6HHQXVX17ocDQzk2mZC7nR9Ta16zKbSY5KpDwFx1JFINt81
	XeB9jfyUHTk/ey4SldWNWlioXZ9WD2979j2RjAoYEKnMQSw+Mm8LhXG3pXpZoFwrzY6YpoEiBb5+2
	Xnep4UJGgeRRJfsMBeKTncMft776MjFL/2gQ/C5F9DaVlASis0p0zaI0Y6wGScsKh6V7N7nrG3PIr
	zzSmGV3yGchzPjtcdaelIyoMDgC1Y/fLrnGJKs+qK7QP6sANZ6FDHaf0j+6qpXQYvJYTWL88jaLFC
	F9G0t5fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHgO-0000000FmUa-3VVM;
	Mon, 13 Apr 2026 13:50:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHgL-0000000FmU8-3oI3
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 13:50:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHgK-0002PF-8k; Mon, 13 Apr 2026 15:50:28 +0200
Message-ID: <a7593c0f-07ae-476b-846e-3dbaf2ab75d7@pengutronix.de>
Date: Mon, 13 Apr 2026 15:50:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20260331031723.195128-1-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260331031723.195128-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_065029_974214_F9503B46 
X-CRM114-Status: GOOD (  18.80  )
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
Subject: Re: [PATCH 1/2] usb: dwc2: core: add no-csftrst-wait DT property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Anis,

On 3/31/26 5:17 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Some platforms (e.g. RPi4/bcm2711) do not deassert GRSTCTL_CSFTRST within
> the expected window but continue to operate correctly, causing probe to
> fail with ETIMEDOUT.
> 
> Per the datasheet, GRSTCTL_CSFTRST is self-clearing but requires at least
> 3 PHY clocks after reset before any PHY domain access. Add a 1us delay to
> satisfy this requirement.
> 
> Additionally introduce the 'no-csftrst-wait' devicetree property to skip
> polling for the bit to clear on platforms where the reset completes but the
> status bit is unreliable.

I still wonder why there are no workarounds for this particular issue in
Linux or U-Boot. We seem to do something different when we run into this
reliably, but others don't?

I originally thought, it may be related to the version of the IP,
because both Linux and U-Boot have special handling for >= 4.20, but I
checked on my Rpi4 and DWC2 has v2.80 there (Synopsis ID 4f54280a)

> -	ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
> -	if (ret) {
> -		dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
> +	/* Wait for at least 3 PHY Clocks */
> +	udelay(1);
> +
> +	if (!of_property_read_bool(np, "no-csftrst-wait")) {

barebox-specific Device Tree properties should be documented in
Documentation/devicetree/bindings/.

Alternatively, you can check of_machine_is_compatible("brcm,bcm2711")

Cheers,
Ahmad

> +		ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
> +		if (ret) {
> +			dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
>  				__func__);
> -		return ret;
> +			return ret;
> +		}
>  	}
>  
>  	if (wait_for_host_mode)
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



