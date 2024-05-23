Delivery-date: Thu, 23 May 2024 16:50:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9lj-00FHcd-35
	for lore@lore.pengutronix.de;
	Thu, 23 May 2024 16:50:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9lj-0000BH-AW
	for lore@pengutronix.de; Thu, 23 May 2024 16:50:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PT430WVdoteWl5gmYVvjRC5Xnhrb/RU9SBgxB/vjq74=; b=LgthSx/xCXGy9H8dceqEWuHdLf
	NeOFtciQsGf6XBCXwZ+RI0KoNnEgntCxbruglSWikYxt0mew8NFpkoLrbrlvJeTHjTlbG9z07nC5D
	KEIHRIrN4CW4yJeTnMCMlRSAbozQjpeJtywhwXJOZ3JUXHXoMJnhW7IxA8yk7s2LCd5XQivKIWWtS
	NRSdjjgd1AK2eS0EiJec87yYK/DVECsMXCmY/xYqhnHG4CGqY1uQOmO27cGRDlVuJu3P22kj7oY0j
	rjL2XH5Yr6iA73VcNNj4pgE4QvgStPQoypXUHX2ODxulSrsXSRy/uRrXg2spg78f06hAt3rMRJGPZ
	9AWqIurw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9lM-00000006XXO-2XbG;
	Thu, 23 May 2024 14:49:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9lJ-00000006XX2-1Uu6
	for barebox@lists.infradead.org;
	Thu, 23 May 2024 14:49:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sA9lH-0008Ud-Ot; Thu, 23 May 2024 16:49:43 +0200
Message-ID: <71b844c5-3205-4f5e-be71-eab0d36984d9@pengutronix.de>
Date: Thu, 23 May 2024 16:49:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
 <20240523-feature-dp83867-soft-reset-v1-3-428d15168dfe@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240523-feature-dp83867-soft-reset-v1-3-428d15168dfe@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_074945_434953_7BACBB69 
X-CRM114-Status: GOOD (  23.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] net: phy: dp83867: sync dp83867_phy_rest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23.05.24 16:40, Stefan Kerkmann wrote:
> This is a port of the `dp83867_phy_reset` function at the state of linux
> commit a129b41fe0a8b4da828c46b10f5244ca07a3fec3 ("Revert "net: phy:
> dp83867: perform soft reset and retain established link"). Which
> performs a reset before starting the initial configuration.
> 
> It is a refactoring of commit 095cd32961aab64cfe72941ce43d99876852e12b
> ("net: phy: dp83867: reset PHY on probe") which already ported parts of
> the function, but diverted from the upstream implementation.

Even if it doesn't matter for your original issue, the DP83867_DSP_FFE_CFG
configuration you import looks like a good thing to have.

> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/net/phy/dp83867.c | 28 ++++++++++++++++++++++------
>  1 file changed, 22 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
> index aefc651489..3c9a8e6355 100644
> --- a/drivers/net/phy/dp83867.c
> +++ b/drivers/net/phy/dp83867.c
> @@ -362,8 +362,6 @@ static int dp83867_of_init(struct phy_device *phydev)
>  	return 0;
>  }
>  
> -static int dp83867_phy_reset(struct phy_device *phydev); /* see below */
> -
>  static int dp83867_probe(struct phy_device *phydev)
>  {
>  	struct dp83867_private *dp83867;
> @@ -372,8 +370,6 @@ static int dp83867_probe(struct phy_device *phydev)
>  
>  	phydev->priv = dp83867;
>  
> -	dp83867_phy_reset(phydev);
> -
>  	return dp83867_of_init(phydev);
>  }
>  
> @@ -571,14 +567,33 @@ static int dp83867_phy_reset(struct phy_device *phydev)
>  {
>  	int err;
>  
> +	err = phy_write(phydev, DP83867_CTRL, DP83867_SW_RESET);
> +	if (err < 0)
> +		return err;
> +
> +	udelay(20);
> +
> +	err = phy_modify(phydev, MII_DP83867_PHYCTRL,
> +			 DP83867_PHYCR_FORCE_LINK_GOOD, 0);
> +	if (err < 0)
> +		return err;
> +
> +	/* Configure the DSP Feedforward Equalizer Configuration register to
> +	 * improve short cable (< 1 meter) performance. This will not affect
> +	 * long cable performance.
> +	 */
> +	err = phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_DSP_FFE_CFG,
> +			    0x0e81);
> +	if (err < 0)
> +		return err;
> +
>  	err = phy_write(phydev, DP83867_CTRL, DP83867_SW_RESTART);
>  	if (err < 0)
>  		return err;
>  
>  	udelay(20);
>  
> -	return phy_modify(phydev, MII_DP83867_PHYCTRL,
> -			 DP83867_PHYCR_FORCE_LINK_GOOD, 0);
> +	return 0;
>  }
>  
>  static struct phy_driver dp83867_driver[] = {
> @@ -590,6 +605,7 @@ static struct phy_driver dp83867_driver[] = {
>  
>  		.probe          = dp83867_probe,
>  		.config_init	= dp83867_config_init,
> +		.soft_reset	= dp83867_phy_reset,
>  
>  		.read_status	= dp83867_read_status,
>  	},
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



