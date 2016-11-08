Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c41Gb-0005ms-0w
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 07:56:25 +0000
Date: Tue, 8 Nov 2016 08:56:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161108075603.7o42xbpmspomojwh@pengutronix.de>
References: <1478531456-11232-1-git-send-email-s.lengfeld@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1478531456-11232-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: Re: [PATCH] commands: spi: fix chip select validation
To: Stefan Lengfeld <s.lengfeld@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 07, 2016 at 04:10:56PM +0100, Stefan Lengfeld wrote:
> The chip selects are numbered 0..(max chip selects - 1). Chip select
> with number <max chip selects> is invalid. Fix the check for that. Using
> the out of bound chip select may hang your board.
> 
> Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
> ---
>  commands/spi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/spi.c b/commands/spi.c
> index 21db9ae..6603b34 100644
> --- a/commands/spi.c
> +++ b/commands/spi.c
> @@ -68,8 +68,8 @@ static int do_spi(int argc, char *argv[])
>  		return -ENODEV;
>  	}
>  
> -	if (spi.chip_select > spi.master->num_chipselect) {
> -		printf("spi chip select (%d)> master num chipselect (%d)\n",
> +	if (spi.chip_select >= spi.master->num_chipselect) {
> +		printf("spi chip select (%d) >= master num chipselect (%d)\n",
>  			spi.chip_select, spi.master->num_chipselect);
>  		return -EINVAL;
>  	}
> -- 
> 1.9.1
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
