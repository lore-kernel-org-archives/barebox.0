Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XRxbs-0005Pa-RY
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 06:12:01 +0000
Date: Thu, 11 Sep 2014 08:11:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140911061138.GF4992@pengutronix.de>
References: <1410335472-13122-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410335472-13122-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: dm9k: show only one phy on miibus
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 10, 2014 at 11:51:12AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/dm9k.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
> index 3a4c6aa..950bdb3 100644
> --- a/drivers/net/dm9k.c
> +++ b/drivers/net/dm9k.c
> @@ -359,6 +359,11 @@ static int dm9k_phy_read(struct mii_bus *bus, int addr, int reg)
>  	struct dm9k *priv = bus->priv;
>  	struct device_d *dev = &bus->dev;
>  
> +	/* Show only one phy on miibus */
> +	if (addr != 0) {
> +		return 0xffff;
> +	}

In the datasheet I can see that the dm9000 has an internal phy but also
supports an external phy. The above seems true for the internal, but
what about the external? Is support for this missing anyway since I
can't find any references in the code?

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
