Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9sUy-0007hX-TE
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 06:57:06 +0000
Date: Fri, 7 Sep 2012 08:57:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120907065703.GM26594@pengutronix.de>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346960371-4129-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] fec: restart autoneg at open instead of init
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Thu, Sep 06, 2012 at 09:39:29PM +0200, Eric B=E9nard wrote:
> this saves some time during boot when ethernet is not needed in barebox

Is this really significant on your hardware? I made a measurement here
and the miidev_restart_aneg() takes 130us on an i.MX27 board.

The original intention of doing it at init time was that autonegotation
is already completed when we actually use the network. And this time
really is significant:

without the patch:

barebox@Phytec phyCORE-i.MX27:/ time ping 192.168.23.4
warning: No MAC address set. Using random address 62:FE:FE:0B:09:A8
phy0: Link is up - 100/Full
host 192.168.23.4 is alive
time: 10ms

with the patch:

barebox@Phytec phyCORE-i.MX27:/ time ping 192.168.23.4
warning: No MAC address set. Using random address A6:1B:AB:80:FA:E7
phy0: Link is up - 100/Full
host 192.168.23.4 is alive
time: 2040ms


Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/net/fec_imx.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 599a9b4..2bc06a9 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -347,9 +347,6 @@ static int fec_init(struct eth_device *dev)
>  	/* size of each buffer */
>  	writel(FEC_MAX_PKT_SIZE, fec->regs + FEC_EMRBR);
>  =

> -	if (fec->xcv_type !=3D SEVENWIRE)
> -		miidev_restart_aneg(&fec->miidev);
> -
>  	return 0;
>  }
>  =

> @@ -363,6 +360,9 @@ static int fec_open(struct eth_device *edev)
>  	int ret;
>  	u32 ecr;
>  =

> +	if (fec->xcv_type !=3D SEVENWIRE)
> +		miidev_restart_aneg(&fec->miidev);
> +
>  	/*
>  	 * Initialize RxBD/TxBD rings
>  	 */
> -- =

> 1.7.7.6
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
