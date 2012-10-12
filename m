Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMaIS-00088v-QS
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 08:08:41 +0000
Date: Fri, 12 Oct 2012 10:08:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012080839.GL27665@pengutronix.de>
References: <1349988321-13160-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349988321-13160-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 2/2 v2] common/partitions.c: make use of is_fat_or_mbr
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 11, 2012 at 10:45:21PM +0200, Franck Jullien wrote:
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  common/partitions.c |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/partitions.c b/common/partitions.c
> index 0e42937..24310a3 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -28,6 +28,7 @@
>  #include <asm/unaligned.h>
>  #include <disks.h>
>  #include <dma.h>
> +#include <filetype.h>
>  
>  struct partition {
>  	uint64_t first_sec;
> @@ -85,7 +86,7 @@ static void __maybe_unused try_dos_partition(struct block_device *blk,
>  		goto on_error;
>  	}
>  
> -	if ((buffer[510] != 0x55) || (buffer[511] != 0xAA)) {
> +	if (is_fat_or_mbr(buffer, NULL) != filetype_mbr) {
>  		dev_info(blk->dev, "No partition table found\n");
>  		goto on_error;
>  	}
> -- 
> 1.7.1
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
