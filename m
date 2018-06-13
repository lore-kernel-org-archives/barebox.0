Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT1Ba-0001kl-0c
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 08:31:23 +0000
Date: Wed, 13 Jun 2018 10:31:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180613083110.zgmknbdkzepldj5b@pengutronix.de>
References: <20180524104745.3yk6uunekrjtl2cm@pengutronix.de>
 <20180524140133.6124-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180524140133.6124-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH v4] fs: fix memory access via /dev/mem for MIPS64
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Thu, May 24, 2018 at 05:01:33PM +0300, Peter Mamonov wrote:
> lseek checks for non-negative in-memory offsets (addresses), failing otherwise.
> However negative address 0xffffffffXXXXXXXX is a valid MIPS64 virtual address.
> ---
>  fs/fs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

The patch looks good now, but lacks a Signed-off-by: Could you resend
it?

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index b66cc9b17..8a49e32b5 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -962,7 +962,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
>  	case SEEK_SET:
>  		if (f->size != FILE_SIZE_STREAM && offset > f->size)
>  			goto out;
> -		if (offset < 0)
> +		if (IS_ERR_VALUE(offset))
>  			goto out;
>  		pos = offset;
>  		break;
> @@ -981,7 +981,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
>  	}
>  
>  	pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
> -	if (pos < 0) {
> +	if (IS_ERR_VALUE(pos)) {
>  		errno = -pos;
>  		return -1;
>  	}
> -- 
> 2.17.0
> 
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
