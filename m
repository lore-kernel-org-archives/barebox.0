Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUNRA-000256-LW
 for barebox@lists.infradead.org; Tue, 15 May 2012 19:29:38 +0000
Date: Tue, 15 May 2012 21:29:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120515192934.GM30400@pengutronix.de>
References: <1337073346-4256-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337073346-4256-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [RFC] ramfs: rember last accessed chunk
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Tue, May 15, 2012 at 11:15:46AM +0200, Jan Weitzel wrote:
> Writing big files takes longer and longer because of the chunk list
> By storing a pointer of the recent used chunk in the inode, access times are
> improved.
> Testet on with tftp 10M:
> OMAP4 chunk size 4096: 12244ms 8192: 4239ms
> 	patched        2647ms        2785ms
> i.MX35 chunk size 8192: 7225ms
> 	patched		2691ms
> 

The numbers look good and the code looks sane. We can give it a try. Two
nitpicks below.

> No impact on much smaller files seen
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  fs/ramfs.c |   46 ++++++++++++++++++++++++++++++++++++----------
>  1 files changed, 36 insertions(+), 10 deletions(-)
> 
> diff --git a/fs/ramfs.c b/fs/ramfs.c
> index 83ab6df..5c7410b 100644
> --- a/fs/ramfs.c
> +++ b/fs/ramfs.c
> @@ -48,6 +48,10 @@ struct ramfs_inode {
>  
>  	ulong size;
>  	struct ramfs_chunk *data;
> +	

Trailing whitespace here.

> +	/* Points to recently used chunk */
> +	int recent_chunk;
> +	struct ramfs_chunk *recent_chunkp;
>  };
>  
>  struct ramfs_priv {
> @@ -297,6 +301,34 @@ static int ramfs_close(struct device_d *dev, FILE *f)
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
> +	} else
> +		/* Start at first chunk */
> +		data = node->data;

if you have brackets in the if path you should add them in the else path
aswell.

>  		}
> +		if (node->recent_chunk > newchunks) 

Also trailing whitespace

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
