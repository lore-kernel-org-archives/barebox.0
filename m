Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDEtz-0003h0-0X
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 13:28:48 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 28666FF95CC
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 15:34:28 +0200 (CEST)
Date: Sun, 16 Sep 2012 15:26:11 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120916132611.GL25990@game.jcrosoft.org>
References: <1347798733-22342-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347798733-22342-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 1/2] filetype: Improve FAT detection
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On 14:32 Sun 16 Sep     , Franck Jullien wrote:
> We may have some disk with MBR as a first sector. In this case, the
> current FAT check returns an error. However, the FAT sector exist and
> the MBR can tell us where it is.
> 
> This patch make the FAT fs try to find the FAT boot sector on the first
> sector of the first partition in case it is not on sector 0.
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  common/filetype.c  |   55 +++++++++++++++++++++++++++++++++++++++++----------
>  include/filetype.h |    1 +
>  2 files changed, 45 insertions(+), 11 deletions(-)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index e736d43..d07505b 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -26,6 +26,8 @@
>  #include <fcntl.h>
>  #include <fs.h>
>  #include <malloc.h>
> +#include <fat.h>
> +#include <errno.h>
>  
>  static const char *filetype_str[] = {
>  	[filetype_unknown] = "unknown",
> @@ -52,26 +54,45 @@ const char *file_type_to_string(enum filetype f)
>  	return NULL;
>  }
>  
> -static int is_fat(u8 *buf)
> +int fd;
> +
> +#define MBR_StartSector		8	/* MBR: Offset of Starting Sector in Partition Table Entry */
> +#define BS_55AA			510	/* Boot sector signature (2) */
> +#define MBR_Table		446	/* MBR: Partition table offset (2) */
> +#define BS_FilSysType32		82	/* File system type (1) */
> +#define BS_FilSysType		54	/* File system type (1) */
> +
> +int is_fat_boot_sector(unsigned char *sector, unsigned long *bootsec)
>  {
> -	if (get_unaligned_le16(&buf[510]) != 0xAA55)
> +	if(bootsec)
> +		*bootsec = 0;
> +
> +	/* Check record signature (always placed at offset 510 even if the sector size is>512) */
> +	if (get_unaligned_le16(&sector[BS_55AA]) != 0xAA55)
> +		return -ENODEV;
> +
> +	/* Check "FAT" string */
> +	if ((get_unaligned_le32(&sector[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
>  		return 0;
>  
> -	/* FAT */
> -	if ((get_unaligned_le32(&buf[54]) & 0xFFFFFF) == 0x544146)
> -		return 1;
> +	if ((get_unaligned_le32(&sector[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
> +		return 0;
>  
> -	/* FAT32 */
> -	if ((get_unaligned_le32(&buf[82]) & 0xFFFFFF) == 0x544146)
> -		return 1;
> +	if(bootsec)
> +		/* This must be an MBR, so return the starting sector of the
> +		 * first partition so we could check if there is a FAT boot
> +		 * sector there */
> +		*bootsec = get_unaligned_le16(&sector[MBR_Table + MBR_StartSector]);
>  
> -	return 0;
> +	return -ENODEV;
>  }
>  
>  enum filetype file_detect_type(void *_buf)
you work on buf already read you do not knwon where or how

so you can not use fd

this is broken

Best Regards,
J.
>  {

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
