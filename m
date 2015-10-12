Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlWKe-0003nN-VV
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 06:11:38 +0000
Date: Mon, 12 Oct 2015 08:11:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151012061112.GJ7858@pengutronix.de>
References: <1444339185-17508-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444339185-17508-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH] fs: Fix memcpy_sz for remaining count/rwsize
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 08, 2015 at 11:19:45PM +0200, Sebastian Hesselbarth wrote:
> When using memcpy_sz with rwsize != 1 integer division of
> count/rwsize may leave some bytes of the request uncopied if
> count is not a multiple of rwsize.
> 
> Fix this behavior by decrementing count by rwsize instead of
> integer division and use plain memcpy for the remaining bytes.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: barebox@lists.infradead.org
> ---
>  fs/fs.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index c041e41bb51b..ccbda22d2692 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1580,9 +1580,7 @@ static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
>  
>  	rwsize = rwsize >> O_RWSIZE_SHIFT;
>  
> -	count /= rwsize;
> -
> -	while (count-- > 0) {
> +	while (count > 0) {
>  		switch (rwsize) {
>  		case 1:
>  			*((u8 *)dst) = *((u8 *)src);
> @@ -1599,7 +1597,12 @@ static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
>  		}
>  		dst += rwsize;
>  		src += rwsize;
> +		count -= rwsize;
>  	}

This doesn't look correct. When count > 0 you are inside the loop, so

> +
> +	/* copy remaining bytes with plain memcpy */
> +	if (count)
> +		memcpy(dst, src, count);

here count <= 0 which is no meaningful argument for the copy size.

Should the loop start with while (count >= rwsize) instead?

I wonder if the behaviour shouldn't rather be:
- let memcpy_sz return the number of bytes copied and not copy the
  remaining partial word.
- return error from memcpy_sz when input count < rwsize

This would allow us to catch wrongly aligned sizes.

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
