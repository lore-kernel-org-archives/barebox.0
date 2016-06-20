Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEsvn-0008WP-Pe
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 06:43:36 +0000
Date: Mon, 20 Jun 2016 08:43:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160620064313.GQ9677@pengutronix.de>
References: <1466365785-5702-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466365785-5702-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 17/17] common: Kconfig: Remove orphaned dependency
 LOAD_PBL_SRAM
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Jun 19, 2016 at 10:49:45PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  common/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 928db0a..fc83c49 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -234,8 +234,8 @@ config BAREBOX_MAX_PBL_SIZE
>  config BAREBOX_MAX_BARE_INIT_SIZE
>  	prompt "Maximum bare_init size"
>  	hex
> -	range 0x0 BAREBOX_MAX_PBL_SIZE if LOAD_PBL_SRAM
> -	default BAREBOX_MAX_PBL_SIZE if LOAD_PBL_SRAM
> +	range 0x0 BAREBOX_MAX_PBL_SIZE
> +	default BAREBOX_MAX_PBL_SIZE
>  	default 0xffffffff
>  	help
>  	  Define the maximum size of bare_init
> -- 
> 2.4.9
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
