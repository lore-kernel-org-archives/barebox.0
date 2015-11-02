Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zt94h-0002AD-8w
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 06:58:40 +0000
Date: Mon, 2 Nov 2015 07:58:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151102065814.GC25308@pengutronix.de>
References: <1446199245-15646-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446199245-15646-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH] ata: disk_ata_drive: remove obsolete check for ID validity
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, jbe@pengutronix.de

On Fri, Oct 30, 2015 at 01:00:45PM +0300, Peter Mamonov wrote:
> Acked-by: Juergen Borleis <jbe@pengutronix.de>
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/ata/disk_ata_drive.c | 17 -----------------
>  1 file changed, 17 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
> index ee1709e..d30d0ad 100644
> --- a/drivers/ata/disk_ata_drive.c
> +++ b/drivers/ata/disk_ata_drive.c
> @@ -26,16 +26,6 @@
>  #include <disks.h>
>  #include <dma.h>
>  
> -static int ata_id_is_valid(const uint16_t *id)
> -{
> -	if ((id[ATA_ID_FIELD_VALID] & 1) == 0) {
> -		pr_debug("Drive's ID seems invalid\n");
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
>  static uint64_t ata_id_n_sectors(uint16_t *id)
>  {
>  	if (ata_id_has_lba(id)) {
> @@ -244,13 +234,6 @@ static int ata_port_init(struct ata_port *port)
>  
>  	ata_fix_endianess(port->id, SECTOR_SIZE / sizeof(uint16_t));
>  
> -	rc = ata_id_is_valid(port->id);
> -	if (rc) {
> -		dev_err(dev, "ata id invalid\n");
> -		free(port->id);
> -		return rc;
> -	}
> -
>  #ifdef DEBUG
>  	ata_dump_id(port->id);
>  #endif
> -- 
> 2.1.4
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
