Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UX3x7-0003Dp-7g
 for barebox@lists.infradead.org; Tue, 30 Apr 2013 06:22:14 +0000
Date: Tue, 30 Apr 2013 08:21:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130430062149.GJ32299@pengutronix.de>
References: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/4] ata: Remove wrong DISK_DRIVE symbol
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Apr 28, 2013 at 08:27:26AM +0400, Alexander Shiyan wrote:
> DISK_DRIVE is missing in Kconfig, so remove the "select" statement.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied all.

Thanks
 Sascha

> ---
>  drivers/ata/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> index 42f2065..9830cc0 100644
> --- a/drivers/ata/Kconfig
> +++ b/drivers/ata/Kconfig
> @@ -35,7 +35,6 @@ config DISK_ATA
>  config DISK_AHCI
>  	bool "AHCI support"
>  	select DISK_ATA
> -	select DISK_DRIVE
>  
>  config DISK_AHCI_IMX
>  	depends on ARCH_IMX
> -- 
> 1.8.1.5
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
