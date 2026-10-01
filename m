Delivery-date: Thu, 01 Oct 2026 22:29:43 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNPT-008ZrL-0p
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:29:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9CF3C201EAF
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:29:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iXBLgp8R;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=fyADAEut;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886579; a=rsa-sha256;
	cv=fail;
	b=It7Zd5/CGsCeHgieaIEKsebdFdNJ5t5axDWmJMApTpI/mRmfh+1+wPzgEoAfW44L4CluDl
	GhWGgKvIFm5DaSoYns8HTa0LJqB6ScoUXn7e0yEC7L5TfCEmjljKDU4lXzwQXRRzcmZwrE
	B1O3ldMXThku+1An2zw7KBtFId96mQbvNx5ntFCUCnR7EVPzB82B9mSV8bwjRsf65uhu+z
	w6STyIyLpTetDUr64q6Dc9akrDGirh1c41qGfCtgEUllbJEZ/6fKMAQUqYiw2MomdPDwbV
	CB+jrInWt7UPW5T3kJ94dBmE+ZGZTxOKnodkycGLX+hMPHquJI5MbOvR35Wjlw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iXBLgp8R;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=fyADAEut;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886578;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=pHl8mtwCwVT+ypf3TbHZXKGF+LzJ9ahOnETlDxodqDY=;
	b=e+E3nbSmepJJWbGAFfONi5MvlKT8kT2qvSxRgGw1GG2oRrYyme8uPXdzFjsyR22Pj78VWd
	s/oduqCbfmenhyY76foVKxl+g8lvgnqS0EQC8DecP1O4B8wKONUruE4REipRc2uHcpSgT/
	gG/7UXMMC64X4jJwpXk7hFpDitk6JsKDu86C7QF9eHAVy4b3quVoXaTpGDi9a8dqUfZjgf
	Lji+Cs4tqCq8MASQTMVMZGbYF245lx2/0rjBof9ZF0sDNFHYBLagczj5FdePI57JjkU/bO
	r7NvIN2HgZ8RKiTaPvaNP527g8Uy6HGA7NOj1dhyStwPBgbihW2BD4Rpk+r9XQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pHl8mtwCwVT+ypf3TbHZXKGF+LzJ9ahOnETlDxodqDY=; b=iXBLgp8RoMIgFCTVAmNnH/UQpq
	75iVMi0+TXz00KdvvP5qKFUKL+XT/H2RdlxzWRv4UgMbe1Xyu23dJJmQ/91rY87g6cCUfx4B7W6Eg
	ho8tNw48/MqmCJMv2/jzuP/PgzXS6iiZCa4JFb4C3IH6tfI37o3WV8AnhDw+xyPvL0qV7WHo4P6ap
	MzUuXDIPUL8vb81Ulgtk3uMFVOxDC7ljtGJStG2TwYcH9KvLprL4x7GL+45FPWh02jnxVaSbL9myp
	LKn0UQ1CmgDvHKhCvrzzC1AH9ELWDiu9defxEYG7aIEAIhz98wUpcssNKoWVnC7We3/u7vPiQflZg
	1Y5iphwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNNl-0000000A9mw-0H7I;
	Thu, 01 Oct 2026 20:27:57 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNNP-0000000A9dK-1Y8O
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:27:55 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6B8942022EC;
	Thu, 01 Oct 2026 22:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pHl8mtwCwVT+ypf3TbHZXKGF+LzJ9ahOnETlDxodqDY=;
	b=fyADAEutaGUKRM9vBZDSmZjUAs/p3U4qDm9Opzt+167HqDUraxiI63TLFjvfdvQukZRuxk
	oYeMthdtEiacRocim1M5v8VMn3G9LY6wXNmaWzhV0z1EZUO6+HPiYXj9mc6tZL6OsA665D
	2+tQwpPYicuHBhj8tTasGTg6jYADXHKBSx/YcA9uKfsfXy2N54FysHqSnj28YzyFOp+t4c
	kMlc3ib+p70Ro5Rz83VAK7p71bVeYxYyqutBW0PANWQ0daBhfpyimIzSrT5aKFk38s3dA1
	dHqFEhg2LcCkS/bKzRMhr+9H4KJT+hGr4oirGNyxbTQc5EBx8Y04rPZlwj+9Fg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790886449; a=rsa-sha256;
	cv=none;
	b=VEu/y1WsfAECRgZdsXi6LpMaGqrrQ5ub9JSip7H8uKMA5f0m9+dqbMvagyH5zcMj7VeGtX
	QCW9KnzmUirZOTTLxM2ScbsPsKjbN9Kcr9avFiAek2tZMUHheWODEcethHxJETflDw3C+f
	VVramU5eGab9i3KW7Ss1F3GbIwuoI+X+cfIMFSEYoNmmMj8MsiH1Eu4f2E1R/HbH0xOd1H
	HOyK7rEa271cyPiM6jdYQNNpgNFaNKh7rC8ISsekY0bUKcN83JSWMrCk8lpA+MCIe8X7xP
	ZenvC/yHfQBAIog5oLu+jU4DXb9mI2B2dmp+9zma5kp1UwSZgBTWZhKxyliPFQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pHl8mtwCwVT+ypf3TbHZXKGF+LzJ9ahOnETlDxodqDY=;
	b=bNtENhQjK5GSLvQXbhBwuiPqVnrqqYLh7OEiqeLgpTF+RIQHXWcKqwKANNg0sS+1dQi1Tq
	9bS+ReisVc4NstU2SPGriJ4khIGr34ucwrxNiIzQVqOJ7Iqm6Y0w9cDeOKqucEiBfHQPEg
	KvJCT7FjhYkXbHLwBXHFe9x3FHD1ZlwFN/RC7x7LPLyL0DXr9RfKpHVgC83Hvr8Onk93bH
	MCSI9ywzNVQbX4+s38NURiW//mf994LUjCk2DfP/2GjxqVu3jm0un24sSAMYlFpfl2n160
	hEtbX2QlvxHKqhrNu7F7BPNRYABMFTPJr35JsGHkdCBFiLb0loQmLtRYonA2ew==
Message-ID: <4fc3f542-824e-489d-a902-05e3949b7877@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM: boards: phytec-som-imx6: Add ADIN1300 PHY fixup
To: "Florijan Plohl" <florijan.plohl@norik.com>
In-Reply-To: <20261001104232.2616094-1-florijan.plohl@norik.com>
References: <20261001104232.2616094-1-florijan.plohl@norik.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 01 Oct 2026 20:27:28 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_132744_471343_1051BCAA 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-10-01 12:42, Florijan Plohl wrote: > From: Stefan
   Riedmueller <s.riedmueller@phytec.de> > > The i.MX 6 requires a ref clock
   from the PHY when running in RGMII mode. > Since the clock output fr [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: barebox@lists.infradead.org, upstream@lists.phytec.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_RECIPIENTS(0.00)[m:florijan.plohl@norik.com,m:barebox@lists.infradead.org,m:upstream@lists.phytec.de,s:lore@pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9CF3C201EAF
X-Stat-Signature: pqjybjewebz3tnmsze1945ki5iiyx9og

On 2026-10-01 12:42, Florijan Plohl wrote:
> From: Stefan Riedmueller <s.riedmueller@phytec.de>
>=20
> The i.MX 6 requires a ref clock from the PHY when running in RGMII mode.
> Since the clock output from the GP_CLK pin is disabled by default on the
> ADIN1300 PHY we need a fixup to enable it.
>=20
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
> ---
>  arch/arm/boards/phytec-som-imx6/board.c | 39 +++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>=20
> diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/ph=
ytec-som-imx6/board.c
> index 7e6f61bc36..22805ad99e 100644
> --- a/arch/arm/boards/phytec-som-imx6/board.c
> +++ b/arch/arm/boards/phytec-som-imx6/board.c
> @@ -45,6 +45,9 @@
>  #define DA9062_BUCK4_CFG		0x9f
>  #define DA9062_BUCKx_MODE_SYNCHRONOUS	(2 << 6)
> =20
> +#define PHY_ID_ADIN1300			0x0283bc30
> +#define ADIN_PHY_ID_MASK		0x0fffffff
> +
>  static void phyflex_err006282_workaround(void)
>  {
>  	/*
> @@ -99,6 +102,33 @@ static int ksz8081_phy_fixup(struct phy_device *phyde=
v)
>  	return 0;
>  }
> =20
> +static int adin1300_phy_fixup(struct phy_device *phydev)
> +{
> +	u16 val;
> +	/*
> +	 * Enable 125 MHz PHY clock at GP_CLK pin to the ENET_REF_CLK pin
> +	 * of the i.MX 6
> +	 */
> +
> +	phy_write(phydev, 0x1c, 0x2109);
> +	phy_write(phydev, 0x1b, 0x401);
> +	phy_write(phydev, 0x10, 0xff1f);
> +	phy_write(phydev, 0x11, 0x28);
> +	phy_write(phydev, 0x10, 0xff3c);
> +	phy_write(phydev, 0x11, 0x1);
> +
> +	/*
> +	 * Disable advertisement of 100BASE-TX and 1000BASE-T EEE capabilities
> +	 * by clearing EEE_100_ADV and EEE_1000_ADV bits in EEE_ADV (0x8001) re=
g.
> +	 */
> +	phy_write(phydev, 0x10, 0x8001);
> +	val =3D phy_read(phydev, 0x11);
> +	val &=3D ~(BIT(1) | BIT(2));
> +	phy_write(phydev, 0x11, 0x0);
> +
> +	return 0;
> +}
> +
>  static int phycore_da9062_setup_buck_mode(void)
>  {
>  	struct i2c_adapter *adapter =3D NULL;
> @@ -180,6 +210,9 @@ static int physom_imx6_probe(struct device *dev)
>  		default_environment_path =3D "/chosen/environment-spinor";
>  		default_envdev =3D "SPI NOR flash";
> =20
> +		phy_register_fixup_for_uid(PHY_ID_ADIN1300, ADIN_PHY_ID_MASK,
> +				adin1300_phy_fixup);
> +
>  		imx6_bbu_internal_mmc_register_handler("mmc2",
>  						"/dev/mmc2", 0);
> =20
> @@ -188,6 +221,9 @@ static int physom_imx6_probe(struct device *dev)
>  		default_environment_path =3D "/chosen/environment-nand";
>  		default_envdev =3D "NAND flash";
> =20
> +		phy_register_fixup_for_uid(PHY_ID_ADIN1300, ADIN_PHY_ID_MASK,
> +				adin1300_phy_fixup);
> +
>  		imx6_bbu_internal_mmc_register_handler("mmc2",
>  						"/dev/mmc2", 0);
>  	} else if (flags & IS_PHYCORE) {
> @@ -198,6 +234,9 @@ static int physom_imx6_probe(struct device *dev)
>  		default_environment_path =3D "/chosen/environment-spinor";
>  		default_envdev =3D "SPI NOR flash";
> =20
> +		phy_register_fixup_for_uid(PHY_ID_ADIN1300, ADIN_PHY_ID_MASK,
> +				adin1300_phy_fixup);
> +

I think you can move this out of the board specific if/else path and do
it once instead of repeating this. The phy_id/mask make sure it is only
executed on the ADIN1300 phy and not on the one board which has another
phy.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



