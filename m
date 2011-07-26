Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlbRt-0000rm-Sv
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 06:49:03 +0000
Date: Tue, 26 Jul 2011 08:48:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110726064858.GC20587@pengutronix.de>
References: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
	<1311623420-30234-3-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311623420-30234-3-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 2/4] nios2/altera_tse.c: switch to ressources
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

Hi Franck,

On Mon, Jul 25, 2011 at 09:50:18PM +0200, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/net/altera_tse.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
> index ac8cd2d..4298739 100644
> --- a/drivers/net/altera_tse.c
> +++ b/drivers/net/altera_tse.c
> @@ -510,7 +510,7 @@ static int tse_probe(struct device_d *dev)
>  	dev->type_data = edev;
>  	edev->priv = (struct altera_tse_priv *)(edev + 1);
>  
> -	edev->iobase = dev->map_base;
> +	edev->iobase = (int)dev_request_mem_region(dev, 0);

Damned. I wasn't aware that struct eth_device has an int iobase.
Can you please move your iobase to edev->priv (as a void __iomem *)?

Then we can remove this otherwise unused field from eth_device.

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
