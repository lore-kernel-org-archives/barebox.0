Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSJpE-0001LY-Sx
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 05:55:17 +0000
Date: Fri, 12 Sep 2014 07:54:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140912055454.GT4992@pengutronix.de>
References: <1410434401-17649-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410434401-17649-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] net: dm9k: fix reset routine
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 11, 2014 at 03:20:01PM +0400, Antony Pavlov wrote:
> Based on Linux's commit:
> 
>     commit 09ee9f87d02e779e4fc3f5c29212c733d6d6e349
>     Author: Michael Abbott <michael.abbott@diamond.ac.uk>
>     Date:   Wed Oct 16 11:41:33 2013 +0300
> 
>         dm9000: Implement full reset of DM9000 network device
> 
>         A Davicom application note for the DM9000 network device recommends
>         performing software reset twice to correctly initialise the device.
>         Without this reset some devices fail to initialise correctly on
>         system startup.
> 
>  # define NCR_FDX	(1 << 3)
>  # define NCR_LBK	(3 << 1)
> +# define NCR_MAC_LBK	(1 << 1)
>  # define NCR_RST	(1 << 0)
>  
>  #define DM9K_NSR	0x01
> @@ -471,8 +472,28 @@ static void dm9k_reset(struct dm9k *priv)
>  	struct device_d *dev = priv->miibus.parent;
>  
>  	dev_dbg(dev, "%s\n", __func__);
> -	dm9k_iow(priv, DM9K_NCR, NCR_RST);
> -	udelay(1000);		/* delay 1ms */
> +
> +	/* Reset DM9000, see DM9000 Application Notes V1.22 Jun 11, 2004 page 29
> +	 * The essential point is that we have to do a double reset, and the
> +	 * instruction is to set LBK into MAC internal loopback mode.
> +	 */
> +
> +	/* Make all GPIO pins outputs */
> +	dm9k_iow(priv, DM9K_GPCR, 0x0F);
> +	/* Power internal PHY by writing 0 to GPIO0 pin */
> +	dm9k_iow(priv, DM9K_GPR, 0);
> +
> +	dm9k_iow(priv, DM9K_NCR, NCR_RST | NCR_MAC_LBK);
> +	udelay(100); /* Application note says at least 20 us */
> +	if (dm9k_ior(priv, DM9K_NCR) & NCR_RST)
> +		dev_err(dev, "dm9000 did not respond to first reset\n");
> +
> +	dm9k_iow(priv, DM9K_NCR, 0);
> +	dm9k_iow(priv, DM9K_NCR, NCR_RST | NCR_MAC_LBK);
> +	udelay(100);
> +
> +	if (dm9k_ior(priv, DM9K_NCR) & NCR_RST)
> +		dev_err(dev, "dm9000 did not respond to second reset\n");

How about using a loop to save a few bytes? Otherwise fine with me.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
