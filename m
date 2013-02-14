Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U65m7-000192-Ti
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 20:51:24 +0000
Date: Thu, 14 Feb 2013 21:51:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214205122.GE1906@pengutronix.de>
References: <20130214154759.GT19322@game.jcrosoft.org>
 <1360857147-489-1-git-send-email-plagnioj@jcrosoft.com>
 <1360857147-489-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360857147-489-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 4/5] disk: introduce partition name
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On Thu, Feb 14, 2013 at 04:52:26PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can register partion with name as present in EFI GPT
> 
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/partitions.c        |   51 ++++++++++++++++++++++++++++++++++----------
>  common/partitions/parser.h |    2 ++
>  2 files changed, 42 insertions(+), 11 deletions(-)
> 
> diff --git a/common/partitions.c b/common/partitions.c
> index 7cb8399..51a0fc2 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -44,15 +44,42 @@ LIST_HEAD(partition_parser_list);
>  static int register_one_partition(struct block_device *blk,
>  					struct partition *part, int no)
>  {
> -	char partition_name[19];
> +	char *partition_name;
> +	int ret;
> +	uint64_t start = part->first_sec * SECTOR_SIZE;
> +	uint64_t size = part->size * SECTOR_SIZE;
> +
> +	partition_name = asprintf("%s.%d", blk->cdev.name, no);
> +	if (!partition_name)
> +		return -ENOMEM;
> +	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
> +				partition_name, blk->cdev.name);
> +	ret = devfs_add_partition(blk->cdev.name,
> +				start, size, 0, partition_name);
> +	if (ret)
> +		goto out;
> +
> +	free(partition_name);
> +	partition_name = asprintf("%s.%s", blk->cdev.name, part->name);
> +	if (!partition_name) {
> +		dev_warn(blk->dev, "Registering partition %s on drive %s failled\n",
> +				part->name, blk->cdev.name);

You are in -ENOMEM here, not in partitiion register fai*l*ed.

> +		return 0;
> +	}
>  
> -	sprintf(partition_name, "%s.%d", blk->cdev.name, no);
>  	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
>  				partition_name, blk->cdev.name);
> -	return devfs_add_partition(blk->cdev.name,
> -				part->first_sec * SECTOR_SIZE,
> -				part->size * SECTOR_SIZE,
> -				0, partition_name);
> +	ret = devfs_add_partition(blk->cdev.name,
> +				start, size, 0, partition_name);
> +
> +	if (ret)
> +		dev_warn(blk->dev, "Registering partition %s on drive %s failled\n",
> +				partition_name, blk->cdev.name);
> +
> +	ret = 0;
> +out:
> +	free(partition_name);
> +	return 0;
>  }
>  
>  static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
> @@ -79,12 +106,13 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
>   */
>  int parse_partition_table(struct block_device *blk)

The changes to this function seem unrelated to the topic of this patch.

>  {
> -	struct partition_desc pdesc = { .used_entries = 0, };
> +	struct partition_desc *pdesc;
>  	int i;
>  	int rc = 0;
>  	struct partition_parser *parser;
>  	uint8_t *buf;
>  
> +	pdesc = xzalloc(sizeof(*pdesc));
>  	buf = dma_alloc(SECTOR_SIZE * 2);
>  
>  	rc = blk->ops->read(blk, buf, 0, 2);
> @@ -97,14 +125,14 @@ int parse_partition_table(struct block_device *blk)
>  	if (!parser)
>  		goto on_error;
>  
> -	parser->parse(buf, blk, &pdesc);
> +	parser->parse(buf, blk, pdesc);
>  
> -	if (!pdesc.used_entries)
> +	if (!pdesc->used_entries)
>  		return 0;

You lose memory here.

>  
>  	/* at least one partition description found */
> -	for (i = 0; i < pdesc.used_entries; i++) {
> -		rc = register_one_partition(blk, &pdesc.parts[i], i);
> +	for (i = 0; i < pdesc->used_entries; i++) {
> +		rc = register_one_partition(blk, &pdesc->parts[i], i);
>  		if (rc != 0)
>  			dev_err(blk->dev,
>  				"Failed to register partition %d on %s (%d)\n",
> @@ -115,6 +143,7 @@ int parse_partition_table(struct block_device *blk)
>  
>  on_error:
>  	dma_free(buf);
> +	free(pdesc);
>  	return rc;
>  }
>  
> diff --git a/common/partitions/parser.h b/common/partitions/parser.h
> index 61b1cf5..083c143 100644
> --- a/common/partitions/parser.h
> +++ b/common/partitions/parser.h
> @@ -12,8 +12,10 @@
>  #include <linux/list.h>
>  
>  #define MAX_PARTITION		8
> +#define MAX_PARTITION_NAME	38
>  
>  struct partition {
> +	char name[MAX_PARTITION_NAME];

is this used?

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
