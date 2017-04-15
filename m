Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1czJG5-00013e-Lo
 for barebox@lists.infradead.org; Sat, 15 Apr 2017 08:40:43 +0000
Date: Sat, 15 Apr 2017 10:40:17 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170415084017.GC20400@ravnborg.org>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
 <20170331070346.26878-12-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170331070346.26878-12-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 11/42] state: backend_circular: Read whole PEB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Mar 31, 2017 at 09:03:15AM +0200, Sascha Hauer wrote:
> When the circular backend searches for the last page written in the
> eraseblock, it iterates backwards pagewise from the end of the block.
> This is ok for NAND flash, but on NOR flash, which does not have pages,
> the code ends up iterating bytewise backwards, calling into mtd each
> time. This is very time consuming, so optimize this by reading the whole
> eraseblock once and just iterate over the buffer in memory.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/state/backend_bucket_circular.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
> index 0bce900d0d..53c2aae803 100644
> --- a/common/state/backend_bucket_circular.c
> +++ b/common/state/backend_bucket_circular.c
> @@ -379,26 +379,24 @@ static int state_backend_bucket_circular_init(
>  	int sub_offset;
>  	uint32_t written_length = 0;
>  	uint8_t *buf;
> +	int ret;
>  
> -	buf = xmalloc(circ->writesize);
> +	buf = xmalloc(circ->max_size);
>  	if (!buf)
>  		return -ENOMEM;
>  
> +	ret = state_mtd_peb_read(circ, buf, 0, circ->max_size);
> +	if (ret && ret != -EUCLEAN)
> +		return ret;

We leak buf here.
But ownership of buf is vague.

In one implementation of state_mtd_peb_read() we free buf
in case of errors, but not in all paths.

This is the version of state_mtd_peb_read() outside the

   #ifdef __BAREBOX__

block.

The version of state_mtd_peb_read() inside the

   #ifdef __BAREBOX__

will not free buf, so there ownership is more clear.
But in both cases we may leak buf.

This is as such unrelated to this patch - but noticed while browsing these
patches.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
