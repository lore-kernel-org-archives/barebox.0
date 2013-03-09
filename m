Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEN3H-0006VW-2C
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 16:55:20 +0000
Received: by mail-we0-f182.google.com with SMTP id t57so2166790wey.41
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 08:55:11 -0800 (PST)
Date: Sat, 9 Mar 2013 17:56:26 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130309165625.GA3158@x61s>
References: <1362827007-28522-1-git-send-email-s.hauer@pengutronix.de>
 <1362827007-28522-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362827007-28522-2-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] net: fec: drop sevenwire support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

some nitpick...

On Sat, Mar 09, 2013 at 12:03:26PM +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/fec_imx.c     | 75 ++++++++++++++++++++-----------------------
>  drivers/net/fec_mpc5200.c | 82 +++++++++++++++++++----------------------------
>  include/fec.h             |  1 -
>  3 files changed, 67 insertions(+), 91 deletions(-)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 578000a..d18c062 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -298,15 +298,14 @@ static int fec_init(struct eth_device *dev)
>  	 * Set FEC-Lite receive control register(R_CNTRL):
>  	 */
>  	rcntl = FEC_R_CNTRL_MAX_FL(1518);
> -	if (fec->xcv_type != SEVENWIRE) {
> -		rcntl |= FEC_R_CNTRL_MII_MODE;
> -		/*
> -		 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
> -		 * and do not drop the Preamble.
> -		 */
> -		writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
> -				fec->regs + FEC_MII_SPEED);
> -	}
> +
> +	rcntl |= FEC_R_CNTRL_MII_MODE;
> +	/*
> +	 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
> +	 * and do not drop the Preamble.
> +	 */
> +	writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
> +			fec->regs + FEC_MII_SPEED);
>  
>  	if (fec->xcv_type == RMII) {
>  		if (fec_is_imx28(fec) || fec_is_imx6(fec)) {
> @@ -385,16 +384,14 @@ static int fec_open(struct eth_device *edev)
>  	int ret;
>  	u32 ecr;
>  
> -	if (fec->xcv_type != SEVENWIRE) {
> -		ret = phy_device_connect(edev, &fec->miibus, fec->phy_addr,
> -					 fec_update_linkspeed, fec->phy_flags,
> -					 fec->interface);
> -		if (ret)
> -			return ret;
> +	ret = phy_device_connect(edev, &fec->miibus, fec->phy_addr,
> +				 fec_update_linkspeed, fec->phy_flags,
> +				 fec->interface);
> +	if (ret)
> +		return ret;
>  
> -		if (fec->phy_init)
> -			fec->phy_init(edev->phydev);
> -	}
> +	if (fec->phy_init)
> +		fec->phy_init(edev->phydev);
>  
>  	/*
>  	 * Initialize RxBD/TxBD rings
> @@ -699,31 +696,27 @@ static int fec_probe(struct device_d *dev)
>  
>  	fec_init(edev);
>  
> -	if (fec->xcv_type != SEVENWIRE) {
> -		fec->miibus.read = fec_miibus_read;
> -		fec->miibus.write = fec_miibus_write;
> -		switch (fec->xcv_type) {
> -		case RMII:
> -			fec->interface = PHY_INTERFACE_MODE_RMII;
> -			break;
> -		case RGMII:
> -			fec->interface = PHY_INTERFACE_MODE_RGMII;
> -			break;
> -		case MII10:
> -			fec->phy_flags = PHYLIB_FORCE_10;
> -		case MII100:
> -			fec->interface = PHY_INTERFACE_MODE_MII;
> -			break;
> -		case SEVENWIRE:
> -			fec->interface = PHY_INTERFACE_MODE_NA;
> -			break;
> -		}
> -		fec->miibus.priv = fec;
> -		fec->miibus.parent = dev;
> -
> -		mdiobus_register(&fec->miibus);
> +	fec->miibus.read = fec_miibus_read;
> +	fec->miibus.write = fec_miibus_write;
> +	switch (fec->xcv_type) {
> +	case RMII:
> +		fec->interface = PHY_INTERFACE_MODE_RMII;
> +		break;
> +	case RGMII:
> +		fec->interface = PHY_INTERFACE_MODE_RGMII;
> +		break;
> +	case MII10:
> +		fec->phy_flags = PHYLIB_FORCE_10;
> +	case MII100:
> +		fec->interface = PHY_INTERFACE_MODE_MII;
> +		break;
>  	}
>  
> +	fec->miibus.priv = fec;
> +	fec->miibus.parent = dev;
> +
> +	mdiobus_register(&fec->miibus);
> +
>  	eth_register(edev);
>  	return 0;
>  
> diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
> index 9ef5350..bdb4e8b 100644
> --- a/drivers/net/fec_mpc5200.c
> +++ b/drivers/net/fec_mpc5200.c
> @@ -294,25 +294,17 @@ static int mpc5xxx_fec_init(struct eth_device *dev)
>  	/*
>  	 * Set FEC-Lite receive control register(R_CNTRL):
>  	 */
> -	if (fec->xcv_type == SEVENWIRE) {
> -		/*
> -		 * Frame length=1518; 7-wire mode
> -		 */
> -		fec->eth->r_cntrl = 0x05ee0020;	/*0x05ee0000;FIXME */
> -	} else {
> -		/*
> -		 * Frame length=1518; MII mode;
> -		 */
> -		fec->eth->r_cntrl = 0x05ee0024;	/*0x05ee0004;FIXME */
> -	}
>  
> -	if (fec->xcv_type != SEVENWIRE) {
> -		/*
> -		 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
> -		 * and do not drop the Preamble.
> -		 */
> -		fec->eth->mii_speed = (((get_ipb_clock() >> 20) / 5) << 1);	/* No MII for 7-wire mode */
> -	}
> +	/*
> +	 * Frame length=1518; MII mode;
> +	 */
> +	fec->eth->r_cntrl = 0x05ee0024;	/*0x05ee0004;FIXME */
> +
> +	/*
> +	 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
> +	 * and do not drop the Preamble.
> +	 */
> +	fec->eth->mii_speed = (((get_ipb_clock() >> 20) / 5) << 1);	/* No MII for 7-wire mode */
>  
>  	/*
>  	 * Set Opcode/Pause Duration Register
> @@ -406,10 +398,8 @@ static int mpc5xxx_fec_open(struct eth_device *edev)
>  	 */
>  	SDMA_TASK_ENABLE(FEC_RECV_TASK_NO);
>  
> -	if (fec->xcv_type != SEVENWIRE) {
> -		return phy_device_connect(edev, &fec->miibus, CONFIG_PHY_ADDR,
> -				 NULL, fec->phy_flags, fec->interface);
> -	}
> +	return phy_device_connect(edev, &fec->miibus, CONFIG_PHY_ADDR,
> +			 NULL, fec->phy_flags, fec->interface);
>  
>  	return 0;

This return will never use in this function.

Alex

>  }
> @@ -511,6 +501,7 @@ static int mpc5xxx_fec_send(struct eth_device *dev, void *eth_data,
>  	 */
>  	mpc5xxx_fec_priv *fec = (mpc5xxx_fec_priv *)dev->priv;
>  	volatile FEC_TBD *pTbd;
> +	uint16_t phyStatus;
>  
>  #ifdef DEBUG_FIFO
>  	debug_fifo("tbd status: 0x%04x\n", fec->tbdBase[0].status);
> @@ -548,10 +539,7 @@ static int mpc5xxx_fec_send(struct eth_device *dev, void *eth_data,
>  	/*
>  	 * Kick the MII i/f
>  	 */
> -	if (fec->xcv_type != SEVENWIRE) {
> -		uint16_t phyStatus;
> -		phyStatus = fec5xxx_miibus_read(&fec->miibus, 0, 0x1);
> -	}
> +	phyStatus = fec5xxx_miibus_read(&fec->miibus, 0, 0x1);
>  
>  	/*
>  	 * Enable SmartDMA transmit task
> @@ -676,31 +664,27 @@ int mpc5xxx_fec_probe(struct device_d *dev)
>  
>  	loadtask(0, 2);
>  
> -	if (fec->xcv_type != SEVENWIRE) {
> -		fec->miibus.read = fec5xxx_miibus_read;
> -		fec->miibus.write = fec5xxx_miibus_write;
> -		switch (pdata->xcv_type) {
> -		case RMII:
> -			fec->interface = PHY_INTERFACE_MODE_RMII;
> -			break;
> -		case RGMII:
> -			fec->interface = PHY_INTERFACE_MODE_RGMII;
> -			break;
> -		case MII10:
> -			fec->phy_flags = PHYLIB_FORCE_10;
> -		case MII100:
> -			fec->interface = PHY_INTERFACE_MODE_MII;
> -			break;
> -		case SEVENWIRE:
> -			fec->interface = PHY_INTERFACE_MODE_NA;
> -			break;
> -		}
> -		fec->miibus.priv = fec;
> -		fec->miibus.parent = dev;
> -
> -		mdiobus_register(&fec->miibus);
> +	fec->miibus.read = fec5xxx_miibus_read;
> +	fec->miibus.write = fec5xxx_miibus_write;
> +	switch (pdata->xcv_type) {
> +	case RMII:
> +		fec->interface = PHY_INTERFACE_MODE_RMII;
> +		break;
> +	case RGMII:
> +		fec->interface = PHY_INTERFACE_MODE_RGMII;
> +		break;
> +	case MII10:
> +		fec->phy_flags = PHYLIB_FORCE_10;
> +	case MII100:
> +		fec->interface = PHY_INTERFACE_MODE_MII;
> +		break;
>  	}
>  
> +	fec->miibus.priv = fec;
> +	fec->miibus.parent = dev;
> +
> +	mdiobus_register(&fec->miibus);
> +
>  	eth_register(edev);
>  	return 0;
>  }
> diff --git a/include/fec.h b/include/fec.h
> index 94cb6ed..80904dc 100644
> --- a/include/fec.h
> +++ b/include/fec.h
> @@ -27,7 +27,6 @@
>   * Supported phy types on this platform
>   */
>  typedef enum {
> -	SEVENWIRE,
>  	MII10,
>  	MII100,
>  	RMII,
> -- 
> 1.8.2.rc2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
