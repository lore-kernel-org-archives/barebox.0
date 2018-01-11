Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZYRa-0004ox-Sn
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:42:40 +0000
Date: Thu, 11 Jan 2018 09:42:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180111084226.yjfenmavsjw7mlat@pengutronix.de>
References: <20180110122136.8037-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180110122136.8037-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Kconfig: drop unused HAS_POWEROFF
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 10, 2018 at 03:21:36PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/efi/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
> index d6beeb07ce..cca1a2e1d6 100644
> --- a/drivers/efi/Kconfig
> +++ b/drivers/efi/Kconfig
> @@ -1,5 +1,4 @@
>  config EFI_BOOTUP
>  	bool
> -	select HAS_POWEROFF
>  	select BLOCK
>  	select PARTITION_DISK
> -- 
> 2.15.1
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
