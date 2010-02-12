Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nfpit-0001ev-GJ
	for barebox@lists.infradead.org; Fri, 12 Feb 2010 07:13:56 +0000
Date: Fri, 12 Feb 2010 08:13:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100212071348.GQ17643@pengutronix.de>
References: <6e744dd32db7d0d09bf0e429c0dd67768e61e118.1265831572.git.matthias@kaehlcke.net>
	<20100210195723.GG374@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100210195723.GG374@darwin>
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
Subject: Re: [PATCH] edb93xx: Fix comment in edb93xx_console_init()
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Wed, Feb 10, 2010 at 08:57:23PM +0100, Matthias Kaehlcke wrote:
> edb93xx: Fix comment in edb93xx_console_init()
> 
> Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
> ---
>  board/edb93xx/edb93xx.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/board/edb93xx/edb93xx.c b/board/edb93xx/edb93xx.c
> index 6316988..b0078a5 100644
> --- a/board/edb93xx/edb93xx.c
> +++ b/board/edb93xx/edb93xx.c
> @@ -166,7 +166,7 @@ static int edb93xx_console_init(void)
>  	value |= SYSCON_PWRCNT_UART_BAUD;
>  	writel(value, &syscon->pwrcnt);
>  
> -	/* Enable the UART 1 */
> +	/* Enable UART1 */
>  	value = readl(&syscon->devicecfg);
>  	value |= DEVCFG_U1EN;
>  	writel(0xAA, &syscon->sysswlock);

This typo was never in the tree. Do you have to rebase your patches?

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
