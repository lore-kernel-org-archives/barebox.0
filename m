Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2gph-0003qD-F5
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 20:13:18 +0000
Date: Mon, 3 Aug 2020 22:13:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803201314.GI31536@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
 <20200723103326.23226-7-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723103326.23226-7-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 06/11] net: fec_imx: use of_get_mac_address() to get
 mac address out of DT
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

On Thu, Jul 23, 2020 at 12:33:21PM +0200, Oleksij Rempel wrote:
> A mac address can be provided by the DT over nvmem cell. Start to use
> of_get_mac_address() since it will be able to read nvmem cell for us.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/fec_imx.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 0c2d600d12..578a85c28b 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -628,6 +628,7 @@ static void fec_free_receive_packets(struct fec_priv *fec, int count, int size)
>  static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
>  {
>  	struct device_node *mdiobus;
> +	const char *mac_addr;
>  	int ret;
>  
>  	ret = of_get_phy_mode(dev->device_node);
> @@ -640,6 +641,14 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
>  	if (mdiobus)
>  		fec->miibus.dev.device_node = mdiobus;
>  
> +	mac_addr = of_get_mac_address(dev->device_node);
> +	if (IS_ERR(mac_addr))
> +		return PTR_ERR(mac_addr);

A MAC address *can* be provided by the DT, but it's not mandatory, no?
Shouldn't you return successfully here when no MAC adress is found?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
