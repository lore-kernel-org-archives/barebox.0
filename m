Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5QQ-0006uY-O9
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:15:23 +0000
Date: Sun, 5 Jul 2020 16:15:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705141521.GR15485@pengutronix.de>
References: <20200702142433.10914-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702142433.10914-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] fixup! fs: ramfs: Use dynamically sized chunks
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 02, 2020 at 04:24:33PM +0200, Ahmad Fatoum wrote:
> typeof(insize) is size_t and typeof(pos) is unsigned long.
> Use the appropriate format length modifiers.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/ramfs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/ramfs.c b/fs/ramfs.c
> index 84aa56f83ec6..14ba87766098 100644
> --- a/fs/ramfs.c
> +++ b/fs/ramfs.c
> @@ -230,14 +230,14 @@ static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
>  	unsigned long pos = f->pos;
>  	int size = insize;
>  
> -	debug("%s: %p %d @ %lld\n", __func__, node, insize, f->pos);
> +	debug("%s: %p %zu @ %lld\n", __func__, node, insize, f->pos);
>  
>  	while (size) {
>  		data = ramfs_find_chunk(node, pos, &ofs, &len);
>  		if (!data)
>  			return -EINVAL;
>  
> -		debug("%s: pos: %ld ofs: %d len: %d\n", __func__, pos, ofs, len);
> +		debug("%s: pos: %lu ofs: %d len: %d\n", __func__, pos, ofs, len);
>  
>  		now = min(size, len);
>  
> @@ -260,14 +260,14 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
>  	unsigned long pos = f->pos;
>  	int size = insize;
>  
> -	debug("%s: %p %d @ %lld\n", __func__, node, insize, f->pos);
> +	debug("%s: %p %zu @ %lld\n", __func__, node, insize, f->pos);
>  
>  	while (size) {
>  		data = ramfs_find_chunk(node, pos, &ofs, &len);
>  		if (!data)
>  			return -EINVAL;
>  
> -		debug("%s: pos: %ld ofs: %d len: %d\n", __func__, pos, ofs, len);
> +		debug("%s: pos: %lu ofs: %d len: %d\n", __func__, pos, ofs, len);
>  
>  		now = min(size, len);
>  
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
