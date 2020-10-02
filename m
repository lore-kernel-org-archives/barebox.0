Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOCIi-0008EG-21
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 04:04:09 +0000
Date: Fri, 2 Oct 2020 06:04:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002040401.GM11648@pengutronix.de>
References: <20200930072005.1407-5-a.fatoum@pengutronix.de>
 <20200930072456.28198-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930072456.28198-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] fixup! net: usb: asix: propagate errors from MDIO
 accessors
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 30, 2020 at 09:24:57AM +0200, Ahmad Fatoum wrote:
> usb_control_msg doesn't (always) return 0 on success.
> Adjust the error checks to explicitly check for negative return values
> instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Should probably be tested before applying. Sascha, can you easily do
> this?

I tested this and can confirm this patch fixes the breakage from the
last patch ;)

Sascha

> ---
>  drivers/net/usb/asix.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
> index fc7063095b6c..1140be9d1601 100644
> --- a/drivers/net/usb/asix.c
> +++ b/drivers/net/usb/asix.c
> @@ -255,15 +255,15 @@ static int asix_mdio_read(struct mii_bus *bus, int phy_id, int loc)
>  	int ret;
>  
>  	ret = asix_set_sw_mii(dev);
> -	if (ret)
> +	if (ret < 0)
>  		return ret;
>  
>  	ret = asix_read_cmd(dev, AX_CMD_READ_MII_REG, phy_id, (__u16)loc, 2, &res);
> -	if (ret)
> +	if (ret < 0)
>  		return ret;
>  
>  	ret = asix_set_hw_mii(dev);
> -	if (ret)
> +	if (ret < 0)
>  		return ret;
>  
>  	dev_dbg(&dev->edev.dev, "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
> @@ -282,14 +282,18 @@ static int asix_mdio_write(struct mii_bus *bus, int phy_id, int loc, u16 val)
>  			phy_id, loc, val);
>  
>  	ret = asix_set_sw_mii(dev);
> -	if (ret)
> +	if (ret < 0)
>  		return ret;
>  
>  	ret = asix_write_cmd(dev, AX_CMD_WRITE_MII_REG, phy_id, (__u16)loc, 2, &res);
> -	if (ret)
> +	if (ret < 0)
>  		return ret;
>  
> -	return asix_set_hw_mii(dev);
> +	ret = asix_set_hw_mii(dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
>  }
>  
>  static inline int asix_get_phy_addr(struct usbnet *dev)
> -- 
> 2.28.0
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
