Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmZod-0004IL-Mc
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 07:52:57 +0000
Date: Thu, 24 Jan 2019 08:52:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190124075245.wtyczicf5ziztwsh@pengutronix.de>
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
 <20190123011338.32517-6-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190123011338.32517-6-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 5/7] fs: Calculate new position before validtiy check in
 lseek()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 22, 2019 at 05:13:36PM -0800, Andrey Smirnov wrote:
> Calculate new position before validtiy check in lseek() to simplify
> code a bit as well as make following commit simpler. This should be
> harmless thing to do, since we don't actually use calculated value
> unless it passes the validity check.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  fs/fs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 6a62fb98b..9372b9981 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -421,21 +421,21 @@ loff_t lseek(int fildes, loff_t offset, int whence)
>  
>  	switch (whence) {
>  	case SEEK_SET:
> +		pos = offset;
>  		if (f->size != FILE_SIZE_STREAM && offset > f->size)
>  			goto out;
>  		if (IS_ERR_VALUE(offset))
>  			goto out;

This test looks quite unnecessary. Can we remove it? git blame points to
me of course, but I can't make any sense of it.

> -		pos = offset;
>  		break;
>  	case SEEK_CUR:
> -		if (f->size != FILE_SIZE_STREAM && offset + f->pos > f->size)
> -			goto out;
>  		pos = f->pos + offset;
> +		if (f->size != FILE_SIZE_STREAM && pos > f->size)
> +			goto out;
>  		break;
>  	case SEEK_END:
> +		pos = f->size + offset;
>  		if (offset > 0)
>  			goto out;
> -		pos = f->size + offset;

When starting to shift the validity checks around, can't we just do them
after the switch/case instead of in each branch?

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
