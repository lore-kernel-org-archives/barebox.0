Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpSm9-0007eu-H4
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 06:58:11 +0000
Date: Fri, 1 Feb 2019 07:58:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190201065807.j4oroxhoelncp4q5@pengutronix.de>
References: <20190131171905.20634-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190131171905.20634-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] net: designware: fix TX descriptor length corruption
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Thu, Jan 31, 2019 at 05:19:05PM +0000, Ian Abbott wrote:
> dwc_ether_send() sets the SIZE1 field of the TX descriptor incorrectly.
> It sets the SIZE1 field to a bit-wise OR of the old value and the new
> value.  If the old value differs from the new value, the transmitted
> Ethernet frame will be longer than it should be and is likely to have an
> incorrect frame check sequence.  As more and more Ethernet frames of
> different lengths are sent, more and more of the TX descriptors are
> affected (up to a maximum number of CONFIG_TX_DESCR_NUM, defined as 16
> in "designware.h").  Fix it by setting the SIZE1 field of the TX
> descriptor to just the new value.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  drivers/net/designware.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index ad70967e8..3c9bca981 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -291,12 +291,14 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
>  
>  	if (priv->enh_desc) {
>  		desc_p->txrx_status |= DESC_ENH_TXSTS_TXFIRST | DESC_ENH_TXSTS_TXLAST;
> +		desc_p->dmamac_cntl &= ~(DESC_ENH_TXCTRL_SIZE1MASK);
>  		desc_p->dmamac_cntl |= (length << DESC_ENH_TXCTRL_SIZE1SHFT) &
>  				       DESC_ENH_TXCTRL_SIZE1MASK;
>  
>  		desc_p->txrx_status &= ~(DESC_ENH_TXSTS_MSK);
>  		desc_p->txrx_status |= DESC_ENH_TXSTS_OWNBYDMA;
>  	} else {
> +		desc_p->dmamac_cntl &= ~(DESC_TXCTRL_SIZE1MASK);
>  		desc_p->dmamac_cntl |= ((length << DESC_TXCTRL_SIZE1SHFT) &
>  				       DESC_TXCTRL_SIZE1MASK) | DESC_TXCTRL_TXLAST |
>  				       DESC_TXCTRL_TXFIRST;
> -- 
> 2.20.1
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
