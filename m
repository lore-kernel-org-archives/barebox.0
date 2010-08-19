Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlygN-0004Ka-Vs
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 06:33:00 +0000
Date: Thu, 19 Aug 2010 08:32:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100819063258.GC27749@pengutronix.de>
References: <20100819024811.GG454@game.jcrosoft.org>
	<1282186110-32738-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1282186110-32738-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/6] dm9000: allow to specify that no srom is present
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Thu, Aug 19, 2010 at 04:48:25AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/scb9328/scb9328.c |    1 +
>  drivers/net/dm9000.c              |    6 ++++--
>  include/dm9000.h                  |    1 +
>  3 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
> index e781393..3c04996 100644
> --- a/arch/arm/boards/scb9328/scb9328.c
> +++ b/arch/arm/boards/scb9328/scb9328.c
> @@ -55,6 +55,7 @@ static struct dm9000_platform_data dm9000_data = {
>  	.iobase   = 0x16000000,
>  	.iodata   = 0x16000004,
>  	.buswidth = DM9000_WIDTH_16,
> +	.srom     = 1;
>  };
>  
>  static struct device_d dm9000_dev = {
> diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
> index 2062c66..5f61ddc 100644
> --- a/drivers/net/dm9000.c
> +++ b/drivers/net/dm9000.c
> @@ -498,8 +498,10 @@ static int dm9000_probe(struct device_d *dev)
>  	edev->send = dm9000_eth_send;
>  	edev->recv = dm9000_eth_rx;
>  	edev->halt = dm9000_eth_halt;
> -	edev->get_ethaddr = dm9000_get_ethaddr;
> -	edev->set_ethaddr = dm9000_set_ethaddr;
> +	if (pdata->srom) {
> +		edev->get_ethaddr = dm9000_get_ethaddr;
> +		edev->set_ethaddr = dm9000_set_ethaddr;
> +	}

edev->set_ethaddr is not an optional call. Without it the driver won't
work.

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
