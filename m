Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCpjr-0000Qm-Nl
	for barebox@lists.infradead.org; Sun, 09 Oct 2011 09:32:08 +0000
Date: Sun, 9 Oct 2011 11:32:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111009093202.GL31404@pengutronix.de>
References: <20111008125009.GK31404@pengutronix.de>
	<1318152592-4463-1-git-send-email-fvanderwerf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318152592-4463-1-git-send-email-fvanderwerf@gmail.com>
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
Subject: Re: [PATCH] Fixed unaligned access
To: Fabian van der Werf <fvanderwerf@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 09, 2011 at 11:29:52AM +0200, Fabian van der Werf wrote:
> ---
>  drivers/ata/disk_drive.c |   15 ++++++++++-----
>  1 files changed, 10 insertions(+), 5 deletions(-)

Applied to master.

Sascha

> 
> diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
> index 14b5e66..6a5dc87 100644
> --- a/drivers/ata/disk_drive.c
> +++ b/drivers/ata/disk_drive.c
> @@ -38,6 +38,7 @@
>  #include <malloc.h>
>  #include <common.h>
>  #include <block.h>
> +#include <asm/unaligned.h>
>  
>  /**
>   * Description of one partition table entry (D*S type)
> @@ -97,25 +98,29 @@ static int disk_register_partitions(struct device_d *dev, struct partition_entry
>  	int part_order[4] = {0, 1, 2, 3};
>  	int i, rc;
>  	char drive_name[16], partition_name[19];
> +	u32 partition_start, partition_size;
>  
>  	/* TODO order the partitions */
>  
>  	for (i = 0; i < 4; i++) {
> +		partition_start = get_unaligned(&table[part_order[i]].partition_start);
> +		partition_size  = get_unaligned(&table[part_order[i]].partition_size);
> +
>  		sprintf(drive_name, "%s%d", dev->name, dev->id);
>  		sprintf(partition_name, "%s%d.%d", dev->name, dev->id, i);
> -		if (table[part_order[i]].partition_start != 0) {
> +		if (partition_start != 0) {
>  #if 1
>  /* ignore partitions we can't handle due to 32 bit limits */
> -			if (table[part_order[i]].partition_start > 0x7fffff)
> +			if (partition_start > 0x7fffff)
>  				continue;
> -			if (table[part_order[i]].partition_size > 0x7fffff)
> +			if (partition_size > 0x7fffff)
>  				continue;
>  #endif
>  			dev_dbg(dev, "Registering partition %s to drive %s\n",
>  				partition_name, drive_name);
>  			rc = devfs_add_partition(drive_name,
> -				table[part_order[i]].partition_start * SECTOR_SIZE,
> -				table[part_order[i]].partition_size * SECTOR_SIZE,
> +				partition_start * SECTOR_SIZE,
> +				partition_size * SECTOR_SIZE,
>  				DEVFS_PARTITION_FIXED, partition_name);
>  			if (rc != 0)
>  				dev_err(dev, "Failed to register partition %s (%d)\n", partition_name, rc);
> -- 
> 1.7.0.4
> 
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
