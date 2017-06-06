Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI7LR-0004Im-Ds
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 05:47:59 +0000
Date: Tue, 6 Jun 2017 07:47:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606054735.vvnraasb4n2i6do5@pengutronix.de>
References: <1496401896-38147-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1496401896-38147-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH] fs: Makefile: Add parseopt to all builds
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 02, 2017 at 01:11:36PM +0200, Daniel Schultz wrote:
> parseopt.h was included to fs.c with commit 9248b, but parseopt.o has a
> dependency to CONFIG_FS_NFS.
> 
> Moved parseopt.o to the default build to eliminate build failures.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  fs/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/Makefile b/fs/Makefile
> index f2bb702..b3f929f 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -4,11 +4,11 @@ obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
>  obj-y			+= devfs-core.o
>  obj-$(CONFIG_FS_DEVFS)	+= devfs.o
>  obj-$(CONFIG_FS_FAT)	+= fat/
> -obj-y	+= fs.o
> +obj-y	+= fs.o parseopt.o
>  obj-$(CONFIG_FS_UBIFS)	+= ubifs/
>  obj-$(CONFIG_FS_TFTP)	+= tftp.o
>  obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
> -obj-$(CONFIG_FS_NFS)	+= nfs.o parseopt.o
> +obj-$(CONFIG_FS_NFS)	+= nfs.o
>  obj-$(CONFIG_FS_BPKFS) += bpkfs.o
>  obj-$(CONFIG_FS_UIMAGEFS)	+= uimagefs.o
>  obj-$(CONFIG_FS_EFI)	 += efi.o
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
