Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtAJU-0000Ft-Mw
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 08:18:01 +0000
Date: Mon, 2 Nov 2015 09:17:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151102081738.GA17132@pengutronix.de>
References: <1446297909-2001-1-git-send-email-anton.bondarenko.sama@gmail.com>
 <1446297909-2001-3-git-send-email-anton.bondarenko.sama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446297909-2001-3-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: Re: [PATCH 2/3] embedsky-e9: enable barebox_update command for
 booter update
To: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 31, 2015 at 02:25:08PM +0100, Anton Bondarenko wrote:
> Simplify booter update with barebox_update command.
> NOTE: current MBR partition table will be overwritten.
> 
> Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
> ---
>  arch/arm/boards/embedsky-e9/board.c    | 6 ++++++
>  arch/arm/configs/embedsky-e9_defconfig | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
> index e8aac0c..3730985 100644
> --- a/arch/arm/boards/embedsky-e9/board.c
> +++ b/arch/arm/boards/embedsky-e9/board.c
> @@ -41,6 +41,7 @@
>  #include <mach/usb.h>
>  #include <envfs.h>
>  #include <bootsource.h>
> +#include <bbu.h>
>  
>  #define PHY_ID_RTL8211E	0x001cc915
>  #define PHY_ID_MASK	0xffffffff
> @@ -81,6 +82,11 @@ static int e9_devices_init(void)
>  
>  	defaultenv_append_directory(defaultenv_e9);
>  
> +	bbu_register_std_file_update("sdcard.barebox", 0, "/dev/mmc1.barebox",
> +				     filetype_arm_barebox);
> +	bbu_register_std_file_update("emmc.barebox", 0, "/dev/mmc3.barebox",
> +				     filetype_arm_barebox);

Please use imx6_bbu_internal_mmc_register_handler(). This will not
overwrite the partition table.

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
