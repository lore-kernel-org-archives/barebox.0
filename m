Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtzX-0002XI-44
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:58:04 +0000
Received: by mail-ea0-f182.google.com with SMTP id r15so5038704ead.27
 for <barebox@lists.infradead.org>; Thu, 13 Feb 2014 02:57:39 -0800 (PST)
Date: Thu, 13 Feb 2014 12:08:58 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140213110856.GA8468@x61s.campuswlan.hs-rm.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/8] mtd: Simplify partitions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

only some small nitpicks.

On Thu, Feb 13, 2014 at 11:25:28AM +0100, Sascha Hauer wrote:
> Embed the partition information in struct mtd_info. This makes the
> mtd partition code simpler.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/partition.c | 75 ++++++++++++++++++++-----------------------------
>  include/linux/mtd/mtd.h |  5 +++-
>  2 files changed, 34 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
> index 85f486d..7431fc1 100644
> --- a/drivers/mtd/partition.c
> +++ b/drivers/mtd/partition.c
> @@ -4,29 +4,19 @@
>  #include <linux/err.h>
>  #include <linux/mtd/mtd.h>
>  
...
> +	struct mtd_info *part;
>  	int start = 0, end = 0, i;
>  
> -	slave = xzalloc(sizeof(*slave));
> -	slave_mtd = &slave->mtd;
> +	part = xzalloc(sizeof(*part));
>  
> -	memcpy(slave_mtd, mtd, sizeof(*slave));
> +	memcpy(part, mtd, sizeof(*part));

Maybe we should fixup this commit with patch:

[PATCH 6/8] mtd: partition: only copy selected fields to partition
>  
>  	/*
>  	 * find the number of eraseregions the partition includes.
> @@ -118,26 +101,28 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t si
>  			end = i;
>  	}
>  
> -	slave_mtd->numeraseregions = end - start;
> +	part->numeraseregions = end - start;
>  
> -	slave_mtd->read = mtd_part_read;
> -	slave_mtd->write = mtd_part_write;
> -	slave_mtd->erase = mtd_part_erase;
> -	slave_mtd->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
> -	slave_mtd->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
> -	slave_mtd->size = size;
> -	slave_mtd->name = strdup(name);
> +	part->read = mtd_part_read;
> +	part->write = mtd_part_write;
> +	part->erase = mtd_part_erase;
> +	part->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
> +	part->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
> +	part->size = size;
> +	part->name = strdup(name);
>  
> -	slave->offset = offset;
> -	slave->master = mtd;
> +	part->master_offset = offset;
> +	part->master = mtd;
>  
> -	return slave_mtd;
> +	return part;
>  }
>  
> -void mtd_del_partition(struct mtd_info *mtd)
> +int mtd_del_partition(struct mtd_info *part)
>  {
> -	struct mtd_part *part = PART(mtd);
> +	if (!part->master)
> +		return -EINVAL;
>  
> -	free(mtd->name);
I think this should be free(part->name);

...
Yea I know it's only a bootloader but I can't stop to say something to
this. :-(

>  	free(part);
> +
> +	return 0;
>  }
> diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
> index 402e497..347443b 100644
> --- a/include/linux/mtd/mtd.h
> +++ b/include/linux/mtd/mtd.h
> @@ -217,6 +217,9 @@ struct mtd_info {
>  	/* If true erasing bad blocks is allowed, this is set via a device parameter */
>  	bool allow_erasebad;
>  	int p_allow_erasebad;
> +
> +	struct mtd_info *master;
> +	uint64_t master_offset;
Currently we have only u_int32_t like for total mtd size. Do you
plan a support for mtd devices which a greater than 4GB? :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
