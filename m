Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoC2N-00020X-Kk
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:03:16 +0000
Date: Tue, 11 Nov 2014 15:02:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141111140253.GV30369@pengutronix.de>
References: <1415641440-19318-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415641440-19318-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] partitions/efi: Fix off-by-one error in 'last_lba'
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 10, 2014 at 09:44:00AM -0800, Andrey Smirnov wrote:
> LBAs are numbered starting from zero so the last LBA # would be equal
> to total number of blocks minus one.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Applied, thanks.


> ---
>  common/partitions/efi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index dcb9541..80dc3f3 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -51,11 +51,11 @@ efi_crc32(const void *buf, unsigned long len)
>   *  the part[0] entry for this disk, and is the number of
>   *  physical sectors available on the disk.
>   */
> -static u64 last_lba(struct block_device *bdev)
> +static u64  last_lba(struct block_device *bdev)

Dropped this hunk while applying.

Sascha

>  {
>  	if (!bdev)
>  		return 0;
> -	return bdev->num_blocks;
> +	return bdev->num_blocks - 1;
>  }
>  
>  /**
> -- 
> 1.9.3
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
