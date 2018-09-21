Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3Mdx-0004HY-S9
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 14:42:55 +0000
Date: Fri, 21 Sep 2018 16:42:40 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180921144240.GB14258@ravnborg.org>
References: <20180921111820.29742-1-s.hauer@pengutronix.de>
 <20180921111820.29742-6-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180921111820.29742-6-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 5/8] mtd: mtdraw: add raw page size to private data
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

On Fri, Sep 21, 2018 at 01:18:17PM +0200, Sascha Hauer wrote:
> The raw page size is used many times in the driver, so add a variable
> to the private data instead of calculating it each time again.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/mtdraw.c | 40 ++++++++++++++++++++--------------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> index 089dc54eb4..6518ae34d5 100644
> --- a/drivers/mtd/mtdraw.c
> +++ b/drivers/mtd/mtdraw.c
> @@ -48,6 +48,7 @@
>   * @write_fill: number of bytes in writebuf
>   * @write_ofs: offset in character device (mtdraw) where last write(s) stored
>   * bytes because of unaligned writes (ie. remain of writesize+oobsize write)
> + * @rps: raw page size (data + oob)
From the code I would say that a (writesize + oobsize) was more correct.
Like we use in the line above too.

> @@ -131,12 +132,11 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
>  	int skip;
>  
>  	numblock = mtdraw_offset_to_block(mtdraw, offset);
> -	skip = offset - numblock * (mtd->writesize + mtd->oobsize);
> +	skip = offset - numblock * (mtdraw->rps);

Here the () can be dropped.


	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
