Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6PKJ-0001QZ-CG
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 17:44:00 +0000
Date: Fri, 15 Feb 2013 18:43:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130215174357.GZ1906@pengutronix.de>
References: <20130215125941.GB19322@game.jcrosoft.org>
 <1360935317-7386-1-git-send-email-plagnioj@jcrosoft.com>
 <1360935317-7386-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360935317-7386-4-git-send-email-plagnioj@jcrosoft.com>
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

On Fri, Feb 15, 2013 at 02:35:16PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can register partion with name as present in EFI GPT
> 
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/partitions.c        |   54 ++++++++++++++++++++++++++++++++++----------
>  common/partitions/parser.h |    2 ++
>  2 files changed, 44 insertions(+), 12 deletions(-)
> 
> diff --git a/common/partitions.c b/common/partitions.c
> index c1578c9..b0f48be 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -44,15 +44,43 @@ LIST_HEAD(partition_parser_list);
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
> +
> +	if (!part->name[0])
> +		return 0;

So when a name is not given then you also don't register the partition
with a number?

> +
> +	partition_name = asprintf("%s.%s", blk->cdev.name, part->name);
> +	if (!partition_name)
> +		return -ENOMEM;
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

s/failled/failed/

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
