Delivery-date: Mon, 04 Oct 2021 12:08:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXKtW-0003md-SL
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 12:08:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXKtV-00005h-TR
	for lore@pengutronix.de; Mon, 04 Oct 2021 12:08:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1GNi3e05UUqzSg8rDmhSWrck2qDEkLdWUBxMCAflFP0=; b=dn9ywCNaAWIRsOMdajoV5kYoLz
	6wQEbAlPbDgHuLa98ACQgFw9aR8kDUGbc0MKmG2gJUfFiVsUxAw73148dujvGJ3Z5O0RWbnYKJmR2
	sPG27Jh11y2pDM2ho/o0E+5ak30vPHueVL8rtS+PNDjG91+s/6bMgBLnqIlRnzJXm1A7xKpkKK2HH
	aH1zmovDPu+xJ+Hda7rOjZs0VgDu+We1HjHUVK+6j8nborDNhFjRjm9lpeELnOUExAchu2/IoQNr5
	mhWC9F6hMXXwm8t+QDWEMbnGmOjdoGTaKyEroqm/kNrDw4quOtwW/+7jMnK7QwvaaiwMws89Q4WYy
	5c/01C8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXKs9-005urU-Ci; Mon, 04 Oct 2021 10:07:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXKs3-005uqQ-Vu
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 10:06:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXKs2-0008Dm-Mp; Mon, 04 Oct 2021 12:06:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXKs2-0006Bb-2r; Mon, 04 Oct 2021 12:06:54 +0200
Date: Mon, 4 Oct 2021 12:06:54 +0200
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20211004100654.GO28453@pengutronix.de>
References: <20210908085019.GB8023@tellis.lin.mbt.kalray.eu>
 <20210908125853.3353-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908125853.3353-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:05:17 up 228 days, 13:29, 133 users,  load average: 0.32, 0.37,
 0.33
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_030656_063609_CD12BC5B 
X-CRM114-Status: GOOD (  30.16  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2 v2] usb: dwc2: Make having a phy optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Daniel,

On Wed, Sep 08, 2021 at 02:58:53PM +0200, Daniel Br=E1t wrote:
> Despite using 'phy_optional_get' to get a 'usb2-phy' inside its probe,
> the driver would fail if it didnt find it. Also, there is no Kconfig
> dependency on 'CONFIG_GENERIC_PHY', so without it defined the phy
> functions are unimplemented and always return -ENOSYS making dwc2 probe
> always fail too.
> The header stub of 'phy_optional_get' was changed to return NULL and
> the dwc2 driver was modified accordingly.
> =

> Signed-off-by: Daniel Br=E1t <danek.brat@gmail.com>
> ---
>  drivers/usb/dwc2/dwc2.c | 27 +++++++++++++++------------
>  include/linux/phy/phy.h |  2 +-
>  2 files changed, 16 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
> index 9893977b8..472a0b7d9 100644
> --- a/drivers/usb/dwc2/dwc2.c
> +++ b/drivers/usb/dwc2/dwc2.c
> @@ -73,19 +73,22 @@ static int dwc2_probe(struct device_d *dev)
>  		goto clk_disable;
>  =

>  	dwc2->phy =3D phy_optional_get(dev, "usb2-phy");
> -	if (IS_ERR(dwc2->phy)) {
> -		ret =3D PTR_ERR(dwc2->phy);
> -		goto clk_disable;
> +	if (dwc2->phy) {
> +		if (IS_ERR(dwc2->phy)) {
> +			dev_warn(dev, "Couldnt get 'usb2-phy': %s\n",
> +					strerror(PTR_ERR(dwc2->phy)));
> +			goto phy_bypass;
> +		}

You changed the return value of phy_optional_get() to NULL below, so
when phy_optional_get() returns an error we would still have to fail the
probe function here instead of ignoring the error, no?

Sascha

> +
> +		ret =3D phy_power_on(dwc2->phy);
> +		if (ret)
> +			goto clk_disable;
> +
> +		ret =3D phy_init(dwc2->phy);
> +		if (ret)
> +			goto phy_power_off;
>  	}
> -
> -	ret =3D phy_power_on(dwc2->phy);
> -	if (ret)
> -		goto clk_disable;
> -
> -	ret =3D phy_init(dwc2->phy);
> -	if (ret)
> -		goto phy_power_off;
> -
> +phy_bypass:
>  	ret =3D dwc2_check_core_version(dwc2);
>  	if (ret)
>  		goto error;
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 679ce6e42..321e546f9 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -195,7 +195,7 @@ static inline struct phy *phy_get(struct device_d *de=
v, const char *string)
>  static inline struct phy *phy_optional_get(struct device_d *dev,
>  					   const char *string)
>  {
> -	return ERR_PTR(-ENOSYS);
> +	return NULL;
>  }
>  =

>  static inline struct phy *of_phy_get_by_phandle(struct device_d *dev,
> -- =

> 2.17.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

