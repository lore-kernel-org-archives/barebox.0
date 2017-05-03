Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5ss5-0003MM-DD
 for barebox@lists.infradead.org; Wed, 03 May 2017 11:55:07 +0000
Date: Wed, 3 May 2017 13:54:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170503115443.vu2t5f5ewd3wrprd@pengutronix.de>
References: <20170503112659.7506-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170503112659.7506-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: rtl8139: drop unused rtl8139_intr_mask constant
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 03, 2017 at 02:26:59PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/rtl8139.c | 4 ----
>  1 file changed, 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
> index a9eb865358..cfa34a2f2a 100644
> --- a/drivers/net/rtl8139.c
> +++ b/drivers/net/rtl8139.c
> @@ -492,10 +492,6 @@ static int rtl8139_eth_send(struct eth_device *edev, void *packet,
>  	return 0;
>  }
>  
> -static const u16 rtl8139_intr_mask =
> -		PCIErr | PCSTimeout | RxUnderrun | RxOverflow | RxFIFOOver |
> -		TxErr | TxOK | RxErr | RxOK;
> -
>  static int rtl8139_eth_rx(struct eth_device *edev)
>  {
>  	struct rtl8139_priv *priv = edev->priv;
> -- 
> 2.11.0
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
