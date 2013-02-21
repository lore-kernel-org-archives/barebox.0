Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8WAz-0007Dg-3E
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 13:27:05 +0000
Date: Thu, 21 Feb 2013 14:27:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130221132703.GO1906@pengutronix.de>
References: <1361438474-28008-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361438474-28008-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH 1/2] net: fec_imx: ensure constant timeout in fec_halt
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 21, 2013 at 10:21:13AM +0100, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/net/fec_imx.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 2378a19..6dfb093 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -425,15 +425,20 @@ static int fec_open(struct eth_device *edev)
>  static void fec_halt(struct eth_device *dev)
>  {
>  	struct fec_priv *fec = (struct fec_priv *)dev->priv;
> -	int counter = 0xffff;
> +	uint64_t tmo;
>  
>  	/* issue graceful stop command to the FEC transmitter if necessary */
>  	writel(readl(fec->regs + FEC_X_CNTRL) | FEC_ECNTRL_RESET,
>  			fec->regs + FEC_X_CNTRL);
>  
>  	/* wait for graceful stop to register */
> -	while ((counter--) && (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_GRA)))
> -		;	/* FIXME ensure time */
> +	tmo = get_time_ns();
> +	while (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_GRA)) {
> +		if (is_timeout(tmo, 1 * SECOND)) {
> +			printf("graceful stop timeout\n");

dev_err please.

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
