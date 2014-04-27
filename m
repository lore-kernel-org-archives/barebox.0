Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeInm-0003a2-AL
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 06:43:03 +0000
Date: Sun, 27 Apr 2014 08:42:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140427064240.GG5858@pengutronix.de>
References: <1398508810-19974-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398508810-19974-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] commands/mount: Return real error code if "mount" fail
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Apr 26, 2014 at 02:40:09PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  commands/mount.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/commands/mount.c b/commands/mount.c
> index 691bc29..8629bac 100644
> --- a/commands/mount.c
> +++ b/commands/mount.c
> @@ -31,8 +31,7 @@
>  
>  static int do_mount(int argc, char *argv[])
>  {
> -	int opt;
> -	int ret = 0, verbose = 0;
> +	int opt, verbose = 0;
>  	struct driver_d *drv;
>  	const char *type = NULL;
>  	const char *mountpoint, *dev;
> @@ -113,11 +112,7 @@ static int do_mount(int argc, char *argv[])
>  		mountpoint = argv[optind + 1];
>  	}
>  
> -	if ((ret = mount(dev, type, mountpoint, fsoptions))) {
> -		perror("mount");
> -		return 1;
> -	}
> -	return 0;
> +	return mount(dev, type, mountpoint, fsoptions);
>  }
>  
>  BAREBOX_CMD_HELP_START(mount)
> -- 
> 1.8.3.2
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
