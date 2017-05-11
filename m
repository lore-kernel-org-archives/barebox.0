Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8kBg-0005Nu-Db
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:15:10 +0000
Date: Thu, 11 May 2017 11:14:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170511091446.evilkhroas4jmck5@pengutronix.de>
References: <1493995618-7289-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1493995618-7289-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v2 1/5] arm: mach-omap: Change mountpoint of boot
 partitions
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Daniel,

Your series wasn't forgotten. It's only that it took me some time to try
and implement links to directories. With this series I just sent and
"fs: Create automount entries for the default mount pathes" you should
be able to make this series a bit nicer. What I think of is that /boot
becomes a link to /mnt/mmcx.y or whatever provided /boot previously.

Could you give it a try?

Sascha

> If using EMMC and SD as bootsources, mounting the boot partition of both
> devices to /boot makes trouble. Either the correct device is mounted to
> /boot or a remount of /boot has to be performed.
> 
> To ensure this problem each MMCn bootsource will be mounted to his own
> path in /mnt/mmcN.0
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/mach-omap/omap_generic.c | 31 ++++++++++++++++++++-----------
>  1 file changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
> index 1d03eac..aa7424d 100644
> --- a/arch/arm/mach-omap/omap_generic.c
> +++ b/arch/arm/mach-omap/omap_generic.c
> @@ -113,12 +113,15 @@ const char *omap_get_bootmmc_devname(void)
>  }
>  
>  #if defined(CONFIG_ENV_HANDLING)
> -#define ENV_PATH "/boot/barebox.env"
> +static char *envpath = "/mnt/mmc0.0/barebox.env";
> +
>  static int omap_env_init(void)
>  {
> -	char *partname;
> -	const char *diskdev;
>  	int ret;
> +	const char *diskdev;
> +	char *partname;
> +	struct cdev *cdev;
> +	const char *rootpath;
>  
>  	if (bootsource_get() != BOOTSOURCE_MMC)
>  		return 0;
> @@ -129,18 +132,24 @@ static int omap_env_init(void)
>  		diskdev = "disk0";
>  
>  	device_detect_by_name(diskdev);
> +	partname = basprintf("%s.0", diskdev);
> +	cdev = cdev_by_name(partname);
> +	if (cdev == NULL) {
> +		pr_err("Failed to get device %s\n", partname);
> +		goto out;
> +	}
>  
> -	partname = basprintf("/dev/%s.0", diskdev);
> -
> -	mkdir("/boot", 0666);
> -	ret = mount(partname, "fat", "/boot", NULL);
> -	if (ret) {
> -		pr_err("Failed to load environment: mount %s failed (%d)\n", partname, ret);
> +	rootpath = cdev_mount_default(cdev, NULL);
> +	if (IS_ERR(rootpath)) {
> +		pr_err("Failed to load environment: mount %s failed (%d)\n",
> +						cdev->name, IS_ERR(rootpath));
>  		goto out;
>  	}
> +	envpath = basprintf("%s/barebox.env", rootpath);
>  
> -	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, partname);
> -	default_environment_path_set(ENV_PATH);
> +	pr_debug("Loading default env from %s on device %s\n", envpath,
> +								partname);
> +	default_environment_path_set(envpath);
>  
>  out:
>  	free(partname);
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
