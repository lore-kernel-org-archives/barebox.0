Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gteT7-00054G-Kq
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 20:15:51 +0000
Date: Tue, 12 Feb 2019 21:15:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212201546.7a7htuw3bm2nceqp@pengutronix.de>
References: <20190212145110.13119-1-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190212145110.13119-1-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH] ARM: rpi: avoid NULL dereference on unknown rev.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Tue, Feb 12, 2019 at 03:51:10PM +0100, Tomaz Solc wrote:
> "model" pointer is NULL if current board revision isn't in the list of known
> boards.
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 650b26ce7..b2febec99 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -180,7 +180,7 @@ const struct rpi_model rpi_models_new_scheme[] = {
>  };
>  
>  static int rpi_board_rev = 0;
> -const struct rpi_model *model;
> +const struct rpi_model *model = NULL;
>  
>  static void rpi_get_board_rev(void)
>  {
> @@ -251,6 +251,9 @@ unknown_rev:
>  
>  static void rpi_model_init(void)
>  {
> +	if (!model)
> +		return;
> +
>  	if (!model->init)
>  		return;
>  
> -- 
> 2.11.0
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
