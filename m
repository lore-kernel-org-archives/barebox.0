Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xniuy-0005bG-Fu
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 06:57:41 +0000
Date: Mon, 10 Nov 2014 07:57:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141110065717.GE30369@pengutronix.de>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1415544978-22392-4-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415544978-22392-4-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH v3 3/4] net: phy: Support Marvell 88EE1543 PHY
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Hi Ezequiel,

On Sun, Nov 09, 2014 at 11:56:17AM -0300, Ezequiel Garcia wrote:
> This commit adds support for Marvell's 88E1543 PHY chip. This chip is
> almost identical to the 88EE1545, except the 88E1545 supports QSGMII
> and the 88EE1543 supports SGMII.
> 
> Therefore, the same configuration function is used for both PHYs. For now,
> the only initialization provided for the 88EE1543 is the LED setup.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> ---
>  drivers/net/phy/marvell.c   | 9 +++++++++
>  include/linux/marvell_phy.h | 1 +
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
> index 3ea72e2..3248b48 100644
> --- a/drivers/net/phy/marvell.c
> +++ b/drivers/net/phy/marvell.c
> @@ -233,6 +233,15 @@ static struct phy_driver marvell_phys[] = {
>  	.config_aneg	= genphy_config_aneg,
>  	.read_status	= marvell_read_status,
>  },
> +{
> +	.phy_id		= MARVELL_PHY_ID_88E1543,
> +	.phy_id_mask	= MARVELL_PHY_ID_MASK,
> +	.drv.name	= "Marvell 88E1543",
> +	.features	= PHY_GBIT_FEATURES,
> +	.config_init	= m88e1540_config_init,
> +	.config_aneg	= genphy_config_aneg,
> +	.read_status	= marvell_read_status,
> +},
>  };

Could you fix the indentation before adding more elements to this array?
It should be

static struct phy_driver marvell_phys[] = {
	{
		...
	},
};

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
