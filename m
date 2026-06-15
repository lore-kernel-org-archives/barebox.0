Delivery-date: Mon, 15 Jun 2026 09:27:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ1iu-0063bX-0n
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 09:27:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ1it-0008L7-GR
	for lore@pengutronix.de; Mon, 15 Jun 2026 09:27:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=lv/4qZHa4GLmI7/Gi0vMCDPJfDvRjpboRro3qaQ37Ss=; b=IhIE4BvcOtk8LF8YjYcm1jGyH6
	AVQHe84NJhpd7/t/AGtlCuINLta9Oy5Z63KULxAZsYG8ZjX+ulKZY8Krt+dTT4BEYYCf+1TLdMQWi
	GuGtHkGHQWNKMNxLtLFo4qa1AjQJHVzNyswhgWkFBvqe72w4MZ0tLoqLjznlhn31PuFHNU92kGson
	Sd9UGPolo3CAWdzL5euyFGlDy/C3uE5DcycqmAKWgOGepUZOfm/9bZa2pFxsukA/HsrN/EmU6DUvo
	s3+Lr4715atf/0b1BY05MPvqDPbN3bIwyXT2wTFIuU7oG0YRqgLf9bpFnx/exuQmskOzKIg0m0Npw
	abTPsP0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1hl-0000000Dmj5-04Oe;
	Mon, 15 Jun 2026 07:25:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1hh-0000000Dmid-2PnN
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 07:25:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1hf-0007za-WE; Mon, 15 Jun 2026 09:25:52 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1hf-002p9z-34;
	Mon, 15 Jun 2026 09:25:51 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1hf-00000006FOJ-3b9a;
	Mon, 15 Jun 2026 09:25:51 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Oleksij Rempel" <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, "Oleksij Rempel" <o.rempel@pengutronix.de>
In-Reply-To: <20260612055930.635833-6-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 07:25:51 +0000
Message-Id: <E1wZ1hf-00000006FOJ-3b9a@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_002554_116019_A5E7CD7E 
X-CRM114-Status: GOOD (  22.43  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 06/10] mci: atmel-sdhci: add Microchip LAN9691 /
 LAN969X SDHCI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-12 07:59, Oleksij Rempel wrote:
> Match the "microchip,lan9691-sdhci" compatible and allow building on
> ARCH_MICROCHIP (and COMPILE_TEST). LAN969X uses a different GCK rate
> (100 MHz) than the AT91 SAMA5D2 (240 MHz), so plumb the per-compatible
> rate through device_get_match_data() and fall back to the SAMA5D2 rate
> when no match data is supplied.
>=20
> The LAN969X SDHCI binding doesn't expose the PMC base clock that
> sama5d2/sam9x60 carry as "baseclk" (the GCK driver handles the upstream
> source internally), so make that lookup optional.
>=20
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/mci/Kconfig       |  6 +++---
>  drivers/mci/atmel-sdhci.c | 22 ++++++++++++++++++----
>  2 files changed, 21 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index b38f7a3bdf8b..8108c7b14848 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -197,12 +197,12 @@ config MCI_ATMEL
>  	  Atmel AT91.
> =20
>  config MCI_ATMEL_SDHCI
> -	bool "ATMEL SDHCI (sama5d2)"
> +	bool "ATMEL SDHCI (sama5d2, lan9691)"
>  	select MCI_SDHCI
> -	depends on ARCH_AT91
> +	depends on ARCH_AT91 || ARCH_MICROCHIP || COMPILE_TEST
>  	help
>  	  Enable this entry to add support to read and write SD cards on an
> -	  Atmel sama5d2
> +	  Atmel sama5d2 or Microchip LAN969X.
> =20
>  config MCI_MMCI
>  	bool "ARM PL180 MMCI"
> diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
> index 462cf21bc25f..458d022fa3fa 100644
> --- a/drivers/mci/atmel-sdhci.c
> +++ b/drivers/mci/atmel-sdhci.c
> @@ -18,6 +18,7 @@
> =20
>  #define ATMEL_SDHC_MIN_FREQ	400000
>  #define ATMEL_SDHC_GCK_RATE	240000000
> +#define LAN969X_GCK_RATE	100000000
> =20
>  struct at91_sdhci_priv {
>  	struct at91_sdhci host;
> @@ -55,7 +56,8 @@ static int at91_sdhci_mci_init(struct mci_host *mci, st=
ruct device *dev)
>  			       priv->mci.non_removable, priv->cal_always_on);
>  }
> =20
> -static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv)
> +static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv,
> +				unsigned long gck_rate)
>  {
>  	unsigned long real_gck_rate;
>  	int ret;
> @@ -66,7 +68,7 @@ static int at91_sdhci_conf_clks(struct at91_sdhci_priv =
*priv)
>  	 * base clock rate and the clock mult from capabilities.
>  	 */
>  	clk_enable(priv->hclock);
> -	ret =3D clk_set_rate(priv->gck, ATMEL_SDHC_GCK_RATE);
> +	ret =3D clk_set_rate(priv->gck, gck_rate);

Do we need this clk_set_rate() call at all?
dts/src/arm/microchip/sama5d2.dtsi sets this clock via
assigned-clock-rates, so we shouldn't have to repeat that here. Only
thing is that it's set to 480MHz in the dtsi and 240MHz in the driver.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


