Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUcHK-0003P8-U3
 for barebox@lists.infradead.org; Wed, 16 May 2012 11:20:28 +0000
Date: Wed, 16 May 2012 13:20:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120516112025.GR30400@pengutronix.de>
References: <20120515192934.GM30400@pengutronix.de>
 <1337148616-13639-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337148616-13639-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] ramfs: rember last accessed chunk
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, May 16, 2012 at 08:10:16AM +0200, Jan Weitzel wrote:
> Writing big files takes longer and longer because of the chunk list
> By storing a pointer of the recent used chunk in the inode, access times are
> improved.
> Testet on with tftp 10M:
> OMAP4 chunk size 4096: 12244ms 8192: 4239ms
> 	patched        2647ms        2785ms
> i.MX35 chunk size 8192: 7225ms
> 	patched		2691ms
> 
> No impact on much smaller files seen
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
> v2: I will use checkpatch
> 
>  fs/ramfs.c |   47 +++++++++++++++++++++++++++++++++++++----------
>  1 files changed, 37 insertions(+), 10 deletions(-)
> 
> diff --git a/fs/ramfs.c b/fs/ramfs.c
> index 83ab6df..cec5e76 100644
> --- a/fs/ramfs.c
> +++ b/fs/ramfs.c
> @@ -48,6 +48,10 @@ struct ramfs_inode {
>  
>  	ulong size;
>  	struct ramfs_chunk *data;
> +
> +	/* Points to recently used chunk */
> +	int recent_chunk;
> +	struct ramfs_chunk *recent_chunkp;
>  };
>  
>  struct ramfs_priv {
> @@ -297,6 +301,35 @@ static int ramfs_close(struct device_d *dev, FILE *f)
>  	return 0;
>  }
>  
> +static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node, int chunk)
> +{
> +	struct ramfs_chunk *data;
> +	int left = chunk;
> +
> +	if (chunk == 0)
> +		return node->data;
> +
> +	if (node->recent_chunk == chunk)
> +		return node->recent_chunkp;
> +
> +	if (node->recent_chunk < chunk && node->recent_chunk != 0) {
> +		/* Start at last known chunk */
> +		data = node->recent_chunkp;
> +		left -= node->recent_chunk;
> +	} else {
> +		/* Start at first chunk */
> +		data = node->data;
> +	}
> +
> +	while (left--)
> +		data = data->next;
> +
> +	node->recent_chunkp = data;
> +	node->recent_chunk = chunk;
> +
> +	return data;
> +}
> +
>  static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
>  {
>  	struct ramfs_inode *node = (struct ramfs_inode *)f->inode;
> @@ -311,11 +344,7 @@ static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
>  	debug("%s: reading from chunk %d\n", __FUNCTION__, chunk);
>  
>  	/* Position ourself in stream */
> -	data = node->data;
> -	while (chunk) {
> -		data = data->next;
> -		chunk--;
> -	}
> +	data = ramfs_find_chunk(node, chunk);
>  	ofs = f->pos % CHUNK_SIZE;
>  
>  	/* Read till end of current chunk */
> @@ -364,11 +393,7 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
>  	debug("%s: writing to chunk %d\n", __FUNCTION__, chunk);
>  
>  	/* Position ourself in stream */
> -	data = node->data;
> -	while (chunk) {
> -		data = data->next;
> -		chunk--;
> -	}
> +	data = ramfs_find_chunk(node, chunk);
>  	ofs = f->pos % CHUNK_SIZE;
>  
>  	/* Write till end of current chunk */
> @@ -429,6 +454,8 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
>  			ramfs_put_chunk(data);
>  			data = tmp;
>  		}
> +		if (node->recent_chunk > newchunks)
> +			node->recent_chunk = 0;
>  	}
>  
>  	if (newchunks > oldchunks) {
> -- 
> 1.7.0.4
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
