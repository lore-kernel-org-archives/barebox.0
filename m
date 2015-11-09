Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zvfmk-0000bj-HS
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 06:18:35 +0000
Date: Mon, 9 Nov 2015 07:18:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151109061808.GN8526@pengutronix.de>
References: <1447028473-20462-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447028473-20462-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] fs: smhfs: Fix return value of truncate()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 08, 2015 at 04:21:13PM -0800, Andrey Smirnov wrote:
> Returning -ENOSYS as a result of truncate() breaks ability to write to
> semihosting host's filesystem, so change the return value to 0. This
> shouldn't cause any problems since all of the funcionlaity of
> truncate() should is already handled by 'open' (via O_TRUNC) and
> 'write' (will automatically grow the file size when writing)
> automatically
> 
> Unfortunately this was missed in original commit that introduced
> semihosting
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Applied, thanks

Sascha

> ---
>  fs/smhfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/smhfs.c b/fs/smhfs.c
> index a0df06c..f1b6d6b 100644
> --- a/fs/smhfs.c
> +++ b/fs/smhfs.c
> @@ -58,7 +58,7 @@ static int smhfs_truncate(struct device_d __always_unused *dev,
>  			  FILE __always_unused *f,
>  			  ulong __always_unused size)
>  {
> -	return -ENOSYS;
> +	return 0;
>  }
> 
>  static int smhfs_open(struct device_d __always_unused *dev,
> --
> 2.1.4
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
