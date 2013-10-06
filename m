Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VSmdi-00061j-Kn
 for barebox@lists.infradead.org; Sun, 06 Oct 2013 11:36:47 +0000
Date: Sun, 6 Oct 2013 13:36:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131006113625.GQ30088@pengutronix.de>
References: <1380793529-6141-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380793529-6141-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] macb: add support to read the mac address from
 register
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 03, 2013 at 11:45:29AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> check the 4 mac address register and return at the first valid
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/net/macb.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index b1f544b..d8523ce 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -458,9 +458,31 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
>  static int macb_get_ethaddr(struct eth_device *edev, unsigned char *adr)
>  {
>  	struct macb_device *macb = edev->priv;
> +	u32 bottom;
> +	u16 top;
> +	u8 addr[6];
> +	int i;
>  
>  	dev_dbg(macb->dev, "%s\n", __func__);
>  
> +	/* Check all 4 address register for vaild address */
> +	for (i = 0; i < 4; i++) {
> +		bottom = macb_or_gem_readl(macb, SA1B + i * 8);
> +		top = macb_or_gem_readl(macb, SA1T + i * 8);
> +
> +		addr[0] = bottom & 0xff;
> +		addr[1] = (bottom >> 8) & 0xff;
> +		addr[2] = (bottom >> 16) & 0xff;
> +		addr[3] = (bottom >> 24) & 0xff;
> +		addr[4] = top & 0xff;
> +		addr[5] = (top >> 8) & 0xff;
> +
> +		if (is_valid_ether_addr(addr)) {
> +			memcpy(adr, addr, sizeof(addr));
> +			return 0;
> +		}
> +	}
> +
>  	return -1;
>  }
>  
> -- 
> 1.8.4.rc3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
