Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S5CW9-00018U-6T
 for barebox@lists.infradead.org; Wed, 07 Mar 2012 08:46:42 +0000
Date: Wed, 7 Mar 2012 09:46:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120307084632.GM3852@pengutronix.de>
References: <1331058986-9169-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331058986-9169-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH] fs: flush device on close
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 06, 2012 at 07:36:26PM +0100, Enrico Scholz wrote:
> When working with DMA backed devices (e.g. framebuffers), writes are
> delayed so that 'mw -d /dev/fb0' might not have an immediate effect.
> 
> Behavior after this patch resembles POSIX close(2) functionality which
> flushes (blocking) streams on close.
> 
> Drivers which provide 'memmap()' can/should implement a 'flush()' method
> which works similarly msync(2) so that buffers can be synchronized on
> demand (without low level dma_*_range() operations). Closing such
> devices (e.g. when 'mw' or 'bmp' exits) will flush modified memory
> content automatically without the need to touch the 'mw', 'bmp' or ...
> code.

I don't think that's the right way to do it. Framebuffer drivers
should use dma_alloc_coherent instead (I know some don't do it atm)

Sascha

> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  fs/fs.c         |    5 +++++
>  include/fcntl.h |    1 +
>  2 files changed, 6 insertions(+), 0 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 13df71c..6ba1da6 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -714,6 +714,11 @@ int close(int fd)
>  	dev = f->dev;
>  
>  	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
> +
> +	if (!(f->flags & O_NONBLOCK) && fsdrv->flush)
> +		/* no way to deal with errors here... */
> +		fsdrv->flush(dev, f);
> +
>  	errno = fsdrv->close(dev, f);
>  
>  	put_file(f);
> diff --git a/include/fcntl.h b/include/fcntl.h
> index aed741e..ffe2f5f 100644
> --- a/include/fcntl.h
> +++ b/include/fcntl.h
> @@ -13,6 +13,7 @@
>  #define O_EXCL		00000200	/* not fcntl */
>  #define O_TRUNC		00001000	/* not fcntl */
>  #define O_APPEND	00002000
> +#define O_NONBLOCK	00004000
>  #define O_DIRECTORY	00200000	/* must be a directory */
>  #define O_NOFOLLOW	00400000	/* don't follow links */
>  
> -- 
> 1.7.7.6
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
