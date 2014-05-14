Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkTKd-0007Yl-69
 for barebox@lists.infradead.org; Wed, 14 May 2014 07:10:28 +0000
Date: Wed, 14 May 2014 09:10:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140514071005.GX5858@pengutronix.de>
References: <1400006306-5540-1-git-send-email-franck.jullien@gmail.com>
 <1400006306-5540-3-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400006306-5540-3-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 3/3] drivers/net/ethoc: add mdio bus support
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 13, 2014 at 08:38:26PM +0200, Franck Jullien wrote:
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/net/Kconfig |    1 +
>  drivers/net/ethoc.c |   57 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 057abd2..7a0d5e1 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -80,6 +80,7 @@ config DRIVER_NET_EP93XX
>  
>  config DRIVER_NET_ETHOC
>  	bool "OpenCores ethernet MAC driver"
> +	select PHYLIB
>  	help
>  	  This option enables support for the OpenCores 10/100 Mbps
>  	  Ethernet MAC core.
> diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
> index b000875..42780be 100644
> --- a/drivers/net/ethoc.c
> +++ b/drivers/net/ethoc.c
> @@ -178,6 +178,8 @@ struct ethoc {
>  
>  	u32 num_rx;
>  	u32 cur_rx;
> +
> +	struct mii_bus *miibus;
>  };
>  
>  /**
> @@ -481,18 +483,71 @@ static int ethoc_send_packet(struct eth_device *edev, void *packet, int length)
>  	return 0;
>  }
>  
> +static int ethoc_mdio_read(struct mii_bus *bus, int phy, int reg)
> +{
> +	struct ethoc *priv = bus->priv;
> +	int i;
> +
> +	ethoc_write(priv, MIIADDRESS, MIIADDRESS_ADDR(phy, reg));
> +	ethoc_write(priv, MIICOMMAND, MIICOMMAND_READ);
> +
> +	for (i = 0; i < 5; i++) {
> +		u32 status = ethoc_read(priv, MIISTATUS);
> +		if (!(status & MIISTATUS_BUSY)) {
> +			u32 data = ethoc_read(priv, MIIRX_DATA);
> +			/* reset MII command register */
> +			ethoc_write(priv, MIICOMMAND, 0);
> +			return data;
> +		}
> +		mdelay(1);
> +	}

We are polling in barebox anyway. Doing it like above means you have a
1ms window in which you do not return even if your hardware is ready.
Please use a timeout loop:

	uint64_t start = get_time_ns();

	while (!is_timeout(start, 5 * MSECOND)) {
		u32 status = ethoc_read(priv, MIISTATUS);
		if (!(status & MIISTATUS_BUSY)) {
			u32 data = ethoc_read(priv, MIIRX_DATA);
			/* reset MII command register */
			ethoc_write(priv, MIICOMMAND, 0);
			return data;
		}
	}

	return -EBUSY;

>  
>  	edev = xzalloc(sizeof(struct eth_device) +
>  		       sizeof(struct ethoc));
>  	edev->priv = (struct ethoc *)(edev + 1);
> +	miibus = xzalloc(sizeof(struct mii_bus));

No need for a separate allocation. Just embed this into struct ethoc.

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
