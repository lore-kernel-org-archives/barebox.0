Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJMSP-0002TM-EC
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 08:36:37 +0000
Date: Fri, 19 Nov 2010 09:36:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101119083621.GC6017@pengutronix.de>
References: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
	<1290086971-5467-3-git-send-email-marek.belisko@open-nandra.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1290086971-5467-3-git-send-email-marek.belisko@open-nandra.com>
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
Subject: Re: [PATCH 2/5] fs: Fix sparse warning.
To: Marek Belisko <marek.belisko@open-nandra.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 18, 2010 at 02:29:28PM +0100, Marek Belisko wrote:
> Patch fix following sparse warning:
> fs/fs.c:757:28: warning: dubious: !x & y

Don't be shy. You actually found a real bug. I changed the commit log a
bit to reflect that. I added this one to master and the others to next.

Sascha

> 
> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> ---
>  fs/fs.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 3b5f284..7d8dea7 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -754,7 +754,7 @@ int mount(const char *device, const char *fsname, const char *_path)
>  	}
>  
>  	fsdev = xzalloc(sizeof(struct fs_device_d));
> -	if (!fs_drv->flags & FS_DRIVER_NO_DEV) {
> +	if (!(fs_drv->flags & FS_DRIVER_NO_DEV)) {
>  		fsdev->backingstore = strdup(device);
>  		if (!device) {
>  			printf("need a device for driver %s\n", fsname);
> -- 
> 1.7.1
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
