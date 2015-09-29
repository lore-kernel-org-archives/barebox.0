Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zgoyv-00080X-FN
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 07:05:46 +0000
Date: Tue, 29 Sep 2015 09:05:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150929070523.GP7858@pengutronix.de>
References: <1443362931-1881-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443362931-1881-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH] xload: be more flexible when searching for second stage
 bootloader.
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 27, 2015 at 03:08:51PM +0100, Vicente Bergas wrote:
> A first stage bootloader can read fat and ext4 filesystems, and
> even both can be compiled-in at the same time.
> But then xload has a hardcoded fat filesystem mount option which
> renders ext4 unusable.
> This patch tries to mount it as ext4 if the fat attempt fails.
> 
> Then, a typical use case of an ext4 formatted filesystem
> is it to be a standard linux filesystem, which contains
> boot-related files in /boot. So, when searching for the second stage
> bootloader, try /boot/barebox.bin after not finding it in /barebox.bin
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/mach-omap/xload.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index ebcbcbc..c5e29f8 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -118,6 +118,8 @@ static void *omap_xload_boot_mmc(void)
>  	partname = asprintf("%s.0", diskdev);
>  
>  	ret = mount(partname, "fat", "/", NULL);
> +	if (ret)
> +		ret = mount(partname, "ext4", "/", NULL);

It should also be possible to pass NULL as fs type in which case we
automatically detect the fs type. Could you check that?

Where does the MLO come from when you don't have a FAT on your MMC/SD
device? Don't we need FAT on the first partition to let the boot ROM
load the MLO?

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
