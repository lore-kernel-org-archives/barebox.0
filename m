Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvomN-0002Ev-Ax
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 11:36:40 +0000
Date: Fri, 10 Feb 2012 12:36:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120210113632.GG3852@pengutronix.de>
References: <1328812298-1737-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1328812298-1737-1-git-send-email-premi@ti.com>
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
Subject: Re: [PATCH] omap: xload: Make error more specific
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 10, 2012 at 12:01:38AM +0530, Sanjeev Premi wrote:
> Current message indicating that SD card isn't
> mounted is misleading if the card has only one
> partition.
> 
> Updated the message to indicate that mounting
> the specific partition failed.
> 
> Signed-off-by: Sanjeev Premi <premi@ti.com>
> ---
>  arch/arm/mach-omap/xload.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index a52a8ba..bf7fd06 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -40,7 +40,7 @@ void *omap_xload_boot_mmc(void)
>  
>  	ret = mount("disk0.0", "fat", "/");
>  	if (ret) {
> -		printf("mounting sd card failed with %d\n", ret);
> +		printf("Unable to mount disk0.0 (%d)\n", ret);

Small nitpick: Can we have a const char *diskdev = "disk0.0" and use
it for mount and error message? This makes sure we keep both in sync.

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
