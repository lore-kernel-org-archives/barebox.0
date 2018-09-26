Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g53li-0004RW-Bv
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 06:57:58 +0000
Date: Wed, 26 Sep 2018 08:57:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180926065722.GQ4097@pengutronix.de>
References: <20180925105845.GA15416@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180925105845.GA15416@lenoch>
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
Subject: Re: [PATCH] state: backend_bucket_circular: fix for non power of 2
 writesize
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Tue, Sep 25, 2018 at 12:58:45PM +0200, Ladislav Michl wrote:
> backend_bucket_circular currently assumes writesize is power of 2,
> which makes it fail on dataflash devices, where this assumption
> is false.
> 
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  common/state/backend_bucket_circular.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
> index 933493e22..0529421a2 100644
> --- a/common/state/backend_bucket_circular.c
> +++ b/common/state/backend_bucket_circular.c
> @@ -248,7 +248,7 @@ static int state_backend_bucket_circular_read(struct state_backend_storage_bucke
>  		circ->write_area = 0;
>  		dev_info(circ->dev, "Detected old on-storage format\n");
>  	} else if (circ->last_written_length > circ->write_area
> -		   || !IS_ALIGNED(circ->last_written_length, circ->writesize)) {
> +		   || (circ->last_written_length % circ->writesize != 0)) {
>  		circ->write_area = 0;
>  		dev_err(circ->dev, "Error, invalid number of bytes written last time %d\n",
>  			circ->last_written_length);
> @@ -295,7 +295,7 @@ static int state_backend_bucket_circular_write(struct state_backend_storage_buck
>  	    get_bucket_circular(bucket);
>  	off_t offset;
>  	struct state_backend_storage_bucket_circular_meta *meta;
> -	uint32_t written_length = ALIGN(len + sizeof(*meta), circ->writesize);
> +	uint32_t written_length = roundup(len + sizeof(*meta), circ->writesize);
>  	int ret;
>  	void *write_buf;
>  
> -- 
> 2.19.0
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
