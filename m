Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3zOF-00076X-O7
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 08:37:32 +0000
Date: Wed, 13 Mar 2019 09:37:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190313083716.ijjqxrespr7uwib3@pengutronix.de>
References: <20190312072150.19092-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190312072150.19092-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] fs: ramfs: Drop unused 'handle' filed from struct
 ramfs_inode
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 12, 2019 at 12:21:48AM -0700, Andrey Smirnov wrote:
> There are no users of this field in the code. Drop it.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  fs/ramfs.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/ramfs.c b/fs/ramfs.c
> index 3046afef3..94ecb0597 100644
> --- a/fs/ramfs.c
> +++ b/fs/ramfs.c
> @@ -43,8 +43,6 @@ struct ramfs_inode {
>  	char *symlink;
>  	ulong mode;
>  
> -	struct handle_d *handle;
> -
>  	ulong size;
>  	struct ramfs_chunk *data;
>  
> -- 
> 2.20.1
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
