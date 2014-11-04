Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlaC2-0008Cx-HP
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 09:14:27 +0000
Date: Tue, 4 Nov 2014 10:14:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141104091404.GB30369@pengutronix.de>
References: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 01/12] tegra: beaver: set hostname in board init
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 03, 2014 at 11:52:13PM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied all, thanks

Sascha

> ---
>  arch/arm/boards/nvidia-beaver/board.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/nvidia-beaver/board.c b/arch/arm/boards/nvidia-beaver/board.c
> index 20707d8..d270301 100644
> --- a/arch/arm/boards/nvidia-beaver/board.c
> +++ b/arch/arm/boards/nvidia-beaver/board.c
> @@ -20,7 +20,7 @@
>  #include <i2c/i2c.h>
>  #include <init.h>
>  
> -static int nvidia_beaver_devices_init(void)
> +static int nvidia_beaver_fs_init(void)
>  {
>  	struct i2c_client client;
>  	u8 data;
> @@ -44,4 +44,15 @@ static int nvidia_beaver_devices_init(void)
>  
>  	return 0;
>  }
> -fs_initcall(nvidia_beaver_devices_init);
> +fs_initcall(nvidia_beaver_fs_init);
> +
> +static int nvidia_beaver_device_init(void)
> +{
> +	if (!of_machine_is_compatible("nvidia,beaver"))
> +		return 0;
> +
> +	barebox_set_hostname("beaver");
> +
> +	return 0;
> +}
> +device_initcall(nvidia_beaver_device_init);
> -- 
> 1.9.3
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
