Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5RgJ-00077n-DV
 for barebox@lists.infradead.org; Tue, 02 May 2017 06:53:09 +0000
Date: Tue, 2 May 2017 08:52:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170502065243.at6bsonkk3ya6odh@pengutronix.de>
References: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
 <1493383568-27798-3-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1493383568-27798-3-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 3/7] arm: mach-omap: Change mountpoint of boot partitions
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Daniel,

On Fri, Apr 28, 2017 at 02:46:04PM +0200, Daniel Schultz wrote:
> If using EMMC and SD as bootsources, mounting the boot partition of both
> devices to /boot makes trouble. Either the correct device is mounted to
> /boot or a remount of /boot has to be performed.
> 
> To ensure this problem each MMCn bootsource will be mounted to his own
> path in /mnt/{mmc,emmc}.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/mach-omap/omap_generic.c | 24 +++++++++++++++++++-----
>  1 file changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
> index 1d03eac..7c50806 100644
> --- a/arch/arm/mach-omap/omap_generic.c
> +++ b/arch/arm/mach-omap/omap_generic.c
> @@ -113,10 +113,15 @@ const char *omap_get_bootmmc_devname(void)
>  }
>  
>  #if defined(CONFIG_ENV_HANDLING)
> -#define ENV_PATH "/boot/barebox.env"
> +#define MMC_PATH "/mnt/mmc/"
> +#define MMC_ENV_PATH MMC_PATH "barebox.env"
> +#define EMMC_PATH "/mnt/emmc/"
> +#define EMMC_ENV_PATH EMMC_PATH "barebox.env"
>  static int omap_env_init(void)
>  {
>  	char *partname;
> +	char *mntpath;
> +	char *envpath;
>  	const char *diskdev;
>  	int ret;
>  
> @@ -132,15 +137,24 @@ static int omap_env_init(void)
>  
>  	partname = basprintf("/dev/%s.0", diskdev);
>  
> -	mkdir("/boot", 0666);
> -	ret = mount(partname, "fat", "/boot", NULL);
> +	if (bootsource_get_instance() == 1) {
> +		mntpath = EMMC_PATH;
> +		envpath = EMMC_ENV_PATH;
> +	} else {
> +		mntpath = MMC_PATH;
> +		envpath = MMC_ENV_PATH;
> +	}

Hardcoding that one instance is eMMC while the other is a SD card slot
is not so nice.

> +	mkdir("/mnt", 0666);
> +	mkdir(MMC_PATH, 0666);
> +	mkdir(EMMC_PATH, 0666);
> +	ret = mount(partname, "fat", mntpath, NULL);

You could use cdev_mount_default() instead of mount directly. This
function only mounts when it's not mounted already and returns the
path the device is mounted to.

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
