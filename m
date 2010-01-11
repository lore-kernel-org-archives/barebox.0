Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate03.web.de ([217.72.192.234])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NUOXL-0003Ee-OA
	for barebox@lists.infradead.org; Mon, 11 Jan 2010 17:58:48 +0000
Date: Mon, 11 Jan 2010 18:58:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100111175835.GY6923@pengutronix.de>
References: <1263220335-26307-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1263220335-26307-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Fix a data abort with fec_imx
To: Eric Benard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 11, 2010 at 03:32:15PM +0100, Eric Benard wrote:
> From: Eric Benard <ebenard@1720eb.(none)>
> 
> edev was allocated using malloc. On one board (NOR boot), we met data abort
> in eth_register (at dev_add_param(dev, &edev->param_ip);).
> Allocating edev with xzalloc (as in several other drivers) fixed the problem.

Ok, applied.

Sascha

> 
> Signed-off-by: Eric Benard <eric@eukrea.com>
> ---
>  drivers/net/fec_imx.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 4893291..49140e7 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -542,7 +542,7 @@ static int fec_probe(struct device_d *dev)
>  #ifdef CONFIG_ARCH_IMX27
>  	PCCR0 |= PCCR0_FEC_EN;
>  #endif
> -        edev = (struct eth_device *)malloc(sizeof(struct eth_device));
> +        edev = (struct eth_device *)xzalloc(sizeof(struct eth_device));
>          dev->type_data = edev;
>  	fec = (struct fec_priv *)malloc(sizeof(*fec));
>          edev->priv = fec;
> -- 
> 1.6.3.3
> 
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
