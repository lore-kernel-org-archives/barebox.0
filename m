Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrKmp-0003QX-Me
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 04:23:25 +0000
Date: Tue, 25 Jun 2013 06:22:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130625042258.GF14308@pengutronix.de>
References: <1371808410.3949.13.camel@mars>
 <1371808521.3949.14.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371808521.3949.14.camel@mars>
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
Subject: Re: [PATCH 1/2] ARM OMAP: MLO: add support for loading Barebox from
 UBI
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

Hi Christoph,

On Fri, Jun 21, 2013 at 11:55:21AM +0200, Christoph Fritz wrote:
> This patch adds support to OMAP MLO to load a secound
> stage bootloader from a static UBI volume.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  arch/arm/mach-omap/Kconfig |   44 +++++++++++++++++++++++++
>  arch/arm/mach-omap/xload.c |   76 ++++++++++++++++++++++++++++++++++++++++++--
>  2 files changed, 118 insertions(+), 2 deletions(-)
> 
> +static void *omap_xload_boot_ubi_nand(void)
> +{
> +	void *to = NULL;
> +#ifdef CONFIG_BB_IN_UBI

You shouldn't need this ifdef

> +	void *header;
> +	int ret;
> +	struct cdev *cdev;
> +	struct mtd_info_user user;
> +	int size;
> +
> +	devfs_add_partition("nand0", CONFIG_BB_IN_UBI_PARTITION_START,
> +		CONFIG_BB_IN_UBI_PARTITION_SIZE, DEVFS_PARTITION_FIXED, "u");

I don't like putting these in kconfig. Ideally these should be passed by
the board code.

> +
> +	cdev = cdev_open(CONFIG_BB_IN_UBI_VOLNAME, O_RDONLY);
> +	if (!cdev) {
> +		printf("cdev_open failed\n");

Such error messages should always print the return value if possible.

> +		return NULL;
> +	}
> +
> +	if (cdev_read(cdev, to, size, 0, 0) < 0) {
> +		printf("cdev_read failed\n");

ditto.

> +		cdev_close(cdev);
> +		return NULL;
> +        }
> +
> +	cdev_close(cdev);
> +
> +#endif
> +	return to;
> +}
> +
>  static void *omap_xload_boot_mmc(void)
>  {
>  	int ret;
> @@ -180,8 +247,13 @@ static __noreturn int omap_xload(void)
>  			printf("booting from USB not enabled\n");
>  		}
>  	case BOOTSOURCE_NAND:
> -		printf("booting from NAND\n");
> -		func = omap_xload_boot_nand(SZ_128K);
> +		if (IS_ENABLED(CONFIG_BB_IN_UBI)) {
> +			printf("booting from UBI static volume\n");
> +			func = omap_xload_boot_ubi_nand();

You could check for filetype_ubi here instead of making this a
compiletime decision.

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
