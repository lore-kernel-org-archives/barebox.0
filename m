Delivery-date: Mon, 29 Jun 2026 12:58:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we9gk-00B5hr-1m
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 12:58:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we9gj-0005iE-R7
	for lore@pengutronix.de; Mon, 29 Jun 2026 12:58:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=H5JHiCw2kqs/PEW4sKs4j/DM3Ha/CqE5BEeyhQg3mK4=; b=Xucf0D61fWHv2qLvQ4C5K3YJqi
	CSS99De1d3XCzS7IpVoT5+h4u1j/01m/VlHoGAVZKt29pmg7NVpOv/GP5ZDfs9fVdNLFLJuufPRCY
	Oon09dpSsb1TpjcJXcVj/JNVPBQIrrL0dUik2xVP+itMwg3PvlalP18YJ6YuABdr6vIeM/VJyG9ND
	fpUafixgAMjC4sDG9H3tix6MorHboEhysFcB+EzQcmKhHSNASAMeFcisOa2VSTgcvQp3GI5egQM2L
	65+LQ0VWsCMl2BK+F8mnHUdovHld21lE45Pwy8KED8PwLgFLdez9OejcbaJdG3xlpPsYtY5+HBV8V
	kLMSKEFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9fb-0000000ENoz-3JNy;
	Mon, 29 Jun 2026 10:56:55 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9fZ-0000000ENoa-0EoU
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 10:56:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1AF6C2002FE;
	Mon, 29 Jun 2026 12:56:51 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1we9fX-005EK1-06;
	Mon, 29 Jun 2026 12:56:51 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1we9fW-00000005ggu-3u1v;
	Mon, 29 Jun 2026 12:56:50 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
In-Reply-To: <20260623142330.79621-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 10:56:50 +0000
Message-Id: <E1we9fW-00000005ggu-3u1v@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_035653_265536_0F01079D 
X-CRM114-Status: GOOD (  19.57  )
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
Cc: Chali Anis <chalianis1@gmail.com>, barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: skip polling for the soft reset clear bit
 and add  after reset delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-23 10:23, chalianis1 wrote:
> From: Chali Anis <chalianis1@gmail.com>
>=20
> The RPi4 SoC do not deassert GRSTCTL_CSFTRST within the expected
> window but continue to operate correctly, causing probe to fail
> with ETIMEDOUT.

Does "within the expected window" imply that there is a bigger window in
which it is de-asserted?

>=20
> Per the datasheet, GRSTCTL_CSFTRST is self-clearing but requires at least
> 3 PHY clocks after reset before any PHY domain access. Add a 1us delay to
> satisfy this requirement.

Which datasheet, the SoC datasheet or a DWC2 datasheet?

I'm just asking if there is a chance to not need a SoC check here.

Sascha

>=20
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  drivers/usb/dwc2/core.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index 60cc690fdbc0..6d4b7930da9e 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -809,11 +809,16 @@ int dwc2_core_reset(struct dwc2 *dwc2)
>  	greset |=3D GRSTCTL_CSFTRST;
>  	dwc2_writel(dwc2, greset, GRSTCTL);
> =20
> -	ret =3D dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
> -	if (ret) {
> -		dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
> +	/* Wait for at least 3 PHY Clocks */
> +	udelay(1);
> +
> +	if (!of_machine_is_compatible("brcm,bcm2711")) {
> +		ret =3D dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
> +		if (ret) {
> +			dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
>  				__func__);
> -		return ret;
> +			return ret;
> +		}
>  	}
> =20
>  	if (wait_for_host_mode)
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


