Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3MWy-0008AI-Fq
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 14:35:42 +0000
Date: Fri, 21 Sep 2018 16:33:19 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180921143319.GA14258@ravnborg.org>
References: <20180921111820.29742-1-s.hauer@pengutronix.de>
 <20180921111820.29742-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180921111820.29742-3-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/8] mtd: mtdraw: use dev_* for printing
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

My OCD triggered here...

On Fri, Sep 21, 2018 at 01:18:14PM +0200, Sascha Hauer wrote:
> We have a struct device_d *, so use dev_* for printing instead of
> printf.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/mtdraw.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> index d0dde0dee2..3ad9de80a2 100644
> --- a/drivers/mtd/mtdraw.c
> +++ b/drivers/mtd/mtdraw.c
> @@ -252,7 +252,8 @@ static int mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
>  	erase.len = mtd->erasesize;
>  
>  	while (count > 0) {
> -		debug("erase 0x%08llx len: 0x%08llx\n", erase.addr, erase.len);
> +		dev_dbg(&mtd->class_dev, "erase 0x%08llx len: 0x%08llx\n",
> +			erase.addr, erase.len);
"erase" with lower case "e"

>  
>  		if (!mtd->allow_erasebad)
>  			ret = mtd_block_isbad(mtd, erase.addr);
> @@ -260,7 +261,8 @@ static int mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
>  			ret = 0;
>  
>  		if (ret > 0) {
> -			printf("Skipping bad block at 0x%08llx\n", erase.addr);
> +			dev_info(&mtd->class_dev, "Skipping bad block at 0x%08llx\n",
> +				 erase.addr);
Skipping with upper case "S".

Feel free to ignore.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
