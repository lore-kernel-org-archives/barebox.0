Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gezI7-00044Q-7W
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 09:27:52 +0000
Date: Thu, 3 Jan 2019 10:27:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103092749.oc6q7wrg4emhgogi@pengutronix.de>
References: <20181224101642.21722-1-user@vserver64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181224101642.21722-1-user@vserver64>
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
Subject: Re: [PATCH] fs/fat: fix FAT32 detection
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 24, 2018 at 10:16:42AM +0000, Alexander Kurz wrote:
> From: Alexander Kurz <akurz@blala.de>
> 
> Limits for the number of clusters were used to determine the FAT fs type.
> This fails e.g. for FAT32 fs with low cluster number that can be found
> in certain Android images.
> Sync the FAT fs type detection to the method used in linux by checking
> the sectors/FAT entries at offset 0x16 (must be zero for FAT32) and offset
> 0x24 (must be non-zero for FAT32).
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  fs/fat/ff.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/fat/ff.c b/fs/fat/ff.c
> index 33f8b6195..ba4adfc13 100644
> --- a/fs/fat/ff.c
> +++ b/fs/fat/ff.c
> @@ -1591,9 +1591,14 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
>  		return -EINVAL;
>  
>  	/* Number of sectors per FAT */
> +	fmt = FS_FAT12;
>  	fasize = LD_WORD(fs->win+BPB_FATSz16);
> -	if (!fasize)
> +	if (!fasize) {
>  		fasize = LD_DWORD(fs->win+BPB_FATSz32);
> +		if (fasize)
> +			/* Must be FAT32 */
> +			fmt = FS_FAT32;
> +	}
>  	fs->fsize = fasize;
>  
>  	/* Number of FAT copies */
> @@ -1633,11 +1638,8 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
>  	nclst = (tsect - sysect) / fs->csize;
>  	if (!nclst)
>  		return -EINVAL;	/* (Invalid volume size) */
> -	fmt = FS_FAT12;
> -	if (nclst >= MIN_FAT16)
> +	if (fmt == FS_FAT12 && nclst >= MIN_FAT16)
>  		fmt = FS_FAT16;
> -	if (nclst >= MIN_FAT32)
> -		fmt = FS_FAT32;
>  
>  	/* Boundaries and Limits */
>  	/* Number of FAT entries */
> -- 
> 2.11.0
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
