Delivery-date: Wed, 02 Jun 2021 08:42:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loKaf-0006pT-VI
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 08:42:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loKae-0007oR-Vd
	for lore@pengutronix.de; Wed, 02 Jun 2021 08:42:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/QOQTa8KwYXNIUam4P4Mvcr0AWnHNVsZvBfeBh2aXiQ=; b=yvGY7lDo/pwLzoTRPTGChs7L04
	0lJTmaw9EU7Jnm974WFJr4v9djA8iHh9O/RwxGcjstoWls61/AVSd0/FkNbIGB1bmwyK1YHQFT6T7
	xQ8dGBqF18aFOWtrox5QvLHYO3H2ktLZ+dSrbfC3J7CJsefUZHyrbr7EFYSfrb98g1yv0s60Nf0uK
	pSFSXpREEl0WebfL0BaTV90mlPEDw4MW7t/d0wwZSMkZHO2CdJiI+8F77DrVxvjgC6czI6MQ/RNdR
	7hq+2kx7Eq7hse/CA8sfQBTKQvubQsqdkxQ5AV0qqfCAQSfTZ5FRr8Qa2D0/au+Cl9ELL5wxBUNqj
	PaJtqy1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loKZQ-0023jp-Vy; Wed, 02 Jun 2021 06:41:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loKZM-0023io-Js
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 06:41:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loKZL-0007ft-1m; Wed, 02 Jun 2021 08:41:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loKZK-0008Dy-EY; Wed, 02 Jun 2021 08:41:34 +0200
Date: Wed, 2 Jun 2021 08:41:34 +0200
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210602064134.GW5211@pengutronix.de>
References: <20210531150045.1214037-1-tpiepho@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531150045.1214037-1-tpiepho@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:41:24 up 104 days, 10:05, 110 users,  load average: 0.21, 0.11,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_234136_677822_79A31625 
X-CRM114-Status: GOOD (  30.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: micrel: Add led-mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 08:00:45AM -0700, Trent Piepho wrote:
> Add code that will use the micrel,led-mode property to configure the
> led.
> 
> It seems nearly every Micrel PHY equipped board has a custom phy fixup
> to do this.  Maybe some of them won't be needed anymore.
> 
> Signed-off-by: Trent Piepho <tpiepho@gmail.com>
> ---
>  drivers/net/phy/micrel.c | 34 +++++++++++++++++++++++++++++-----
>  1 file changed, 29 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index 4e4637024..ea193c84a 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -28,13 +28,16 @@
>  #define KSZPHY_OMSO_MII_OVERRIDE		BIT(0)
>  
>  /* general PHY control reg in vendor specific block. */
> -#define	MII_KSZPHY_CTRL			0x1F
> +#define	MII_KSZPHY_CTRL				0x1F
>  /* bitmap of PHY register to set interrupt mode */
>  #define KSZPHY_CTRL_INT_ACTIVE_HIGH		BIT(9)
>  #define KSZ9021_CTRL_INT_ACTIVE_HIGH		BIT(14)
>  #define KS8737_CTRL_INT_ACTIVE_HIGH		BIT(14)
>  #define KSZ8051_RMII_50MHZ_CLK			BIT(7)
>  
> +/* PHY Control 1 */
> +#define MII_KSZPHY_CTRL_1			0x1e
> +
>  /* Write/read to/from extended registers */
>  #define MII_KSZPHY_EXTREG                       0x0b
>  #define KSZPHY_EXTREG_WRITE                     0x8000
> @@ -63,18 +66,35 @@ static int kszphy_extended_read(struct phy_device *phydev,
>  	return phy_read(phydev, MII_KSZPHY_EXTREG_READ);
>  }
>  
> +/* Handle LED mode, shift = position of first led mode bit, usually 4 or 14 */
> +static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
> +{
> +	const struct device_d *dev = &phydev->dev;
> +	const struct device_node *of_node = dev->device_node ? : dev->parent->device_node;
> +	u32 val;
> +
> +	if (!of_property_read_u32(of_node, "micrel,led-mode", &val)) {
> +		if (val > 0x03) {
> +			dev_err(dev, "led-mode 0x%02x out of range\n", val);
> +			return -1;
> +		}
> +		return phy_modify(phydev, reg, 0x03 << shift, val << shift);
> +	}
> +	return 0;
> +}
> +
>  static int kszphy_config_init(struct phy_device *phydev)
>  {
> +	kszphy_led_mode(phydev, MII_KSZPHY_CTRL_1, 14);
> +
>  	return 0;
>  }
>  
>  static int ksz8021_config_init(struct phy_device *phydev)
>  {
> -	u16 val;
> +	phy_set_bits(phydev, MII_KSZPHY_OMSO, KSZPHY_OMSO_B_CAST_OFF);
>  
> -	val = phy_read(phydev, MII_KSZPHY_OMSO);
> -	val |= KSZPHY_OMSO_B_CAST_OFF;
> -	phy_write(phydev, MII_KSZPHY_OMSO, val);
> +	kszphy_led_mode(phydev, MII_KSZPHY_CTRL, 4);
>  
>  	return 0;
>  }
> @@ -89,6 +109,8 @@ static int ks8051_config_init(struct phy_device *phydev)
>  		phy_write(phydev, MII_KSZPHY_CTRL, regval);
>  	}
>  
> +	kszphy_led_mode(phydev, MII_KSZPHY_CTRL, 4);
> +
>  	return 0;
>  }
>  
> @@ -143,6 +165,8 @@ static int ksz9021_config_init(struct phy_device *phydev)
>  		ksz9021_load_values_from_of(phydev, of_node,
>  				    MII_KSZPHY_TX_DATA_PAD_SKEW,
>  				    tx_pad_skew_names);
> +
> +		kszphy_led_mode(phydev, 0x11, 6);
>  	}
>  
>  	return 0;
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

