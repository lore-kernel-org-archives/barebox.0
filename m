Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edWUl-0005Ba-4p
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 07:26:21 +0000
Date: Mon, 22 Jan 2018 08:26:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180122072601.jpgwryttdmqbcavd@pengutronix.de>
References: <20180117154941.32175-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180117154941.32175-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] partitions: dos: Treat all extended partition types
 equally
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 17, 2018 at 07:49:41AM -0800, Andrey Smirnov wrote:
> Creating logical DOS partitions with fdisk (Fedora 27, fdisk from
> util-linux 2.30.2) results in extended partition of type 0x05 being
> created on the device. Partitioned like this, device is succesfully
> recognized by Linux, but, due to algorithm in dos_partition(), not
> Barebox.
> 
> Looking closer at the actual contents of MBR shows that while marked
> as "Extended partition with CHS addressing" that partition still have
> all of the LBA adressed fields filled correctly.
> 
> Given the above and the fact that similar code in Linux
> kernel (block/partitions/msdos.c) does not make a distinction between
> types 0x0f and 0x05, port Linux's is_extended_partition() and convert
> the code to treat types 0x05, 0x0f and 0x85 the same way.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/partitions/dos.c | 25 ++++++++++++++++++-------
>  1 file changed, 18 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 91b539907..488c2936f 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -21,6 +21,22 @@
>  
>  #include "parser.h"
>  
> +
> +enum {
> +/* These three have identical behaviour; use the second one if DOS FDISK gets
> +   confused about extended/logical partitions starting past cylinder 1023. */
> +	DOS_EXTENDED_PARTITION = 5,
> +	LINUX_EXTENDED_PARTITION = 0x85,
> +	WIN98_EXTENDED_PARTITION = 0x0f,
> +};
> +
> +static inline int is_extended_partition(struct partition *p)
> +{
> +	return (p->dos_partition_type == DOS_EXTENDED_PARTITION ||
> +	        p->dos_partition_type == WIN98_EXTENDED_PARTITION ||
> +		p->dos_partition_type == LINUX_EXTENDED_PARTITION);
> +}
> +
>  /**
>   * Guess the size of the disk, based on the partition table entries
>   * @param dev device to create partitions for
> @@ -212,13 +228,8 @@ static void dos_partition(void *buf, struct block_device *blk,
>  				sprintf(pd->parts[n].partuuid, "%08x-%02d",
>  						signature, i + 1);
>  			pd->used_entries++;
> -			/*
> -			 * Partitions of type 0x05 and 0x0f (and some more)
> -			 * contain extended partitions. Only check for type 0x0f
> -			 * here as this is the easiest to parse and common
> -			 * enough.
> -			 */
> -			if (pentry.dos_partition_type == 0x0f) {
> +
> +			if (is_extended_partition(&pentry)) {
>  				if (!extended_partition)
>  					extended_partition = &pd->parts[n];
>  				else
> -- 
> 2.14.3
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
