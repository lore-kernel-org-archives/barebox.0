Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxGH8-0002Fj-Iz
 for barebox@lists.infradead.org; Tue, 14 Feb 2012 11:10:24 +0000
Date: Tue, 14 Feb 2012 12:10:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120214111011.GV3852@pengutronix.de>
References: <1329127741-2672-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1329127741-2672-1-git-send-email-premi@ti.com>
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
Subject: Re: [PATCH v2] omap: xload: Make error more specific
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 13, 2012 at 03:39:01PM +0530, Sanjeev Premi wrote:
> Current message indicating that SD card isn't
> mounted is misleading if the card has only one
> partition.
> 
> Updated the message to indicate that mounting
> the specific partition failed.
> 
> Signed-off-by: Sanjeev Premi <premi@ti.com>
> ---
>  Changes since v1:
>    Use variable diskdev to ensure that name of device
>    used in the mount() and error message continue to
>    remain in sync.

Applied, thanks

Sascha

> 
> 
>  arch/arm/mach-omap/xload.c |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index a52a8ba..59f75e2 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -37,10 +37,11 @@ void *omap_xload_boot_mmc(void)
>  	int ret;
>  	void *buf;
>  	int len;
> +	const char *diskdev = "disk0.0";
>  
> -	ret = mount("disk0.0", "fat", "/");
> +	ret = mount(diskdev, "fat", "/");
>  	if (ret) {
> -		printf("mounting sd card failed with %d\n", ret);
> +		printf("Unable to mount %s (%d)\n", diskdev, ret);
>  		return NULL;
>  	}
>  
> -- 
> 1.7.0.4
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
