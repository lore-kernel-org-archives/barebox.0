Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crIWr-0005UK-Q2
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 06:16:55 +0000
Date: Fri, 24 Mar 2017 07:16:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170324061632.6dvdjbny3dmriqjq@pengutronix.de>
References: <20170320075517.16627-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170320075517.16627-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2] ata: ide-sff: add LBA48 support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 20, 2017 at 10:55:17AM +0300, Antony Pavlov wrote:
> See http://wiki.osdev.org/ATA_PIO_Mode#48_bit_PIO for details.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> 
> Changes since v1:
> 
>   * fix typo in the commit message;
>   * trivial change: put "port->lba48 = ata_id_has_lba48(port->id);"
>     just after debug stuff (ata_dump_id(port->id)).

Applied, thanks

Sascha

> 
> ---
>  drivers/ata/disk_ata_drive.c |  3 +++
>  drivers/ata/ide-sff.c        | 54 +++++++++++++++++++++++++++++++++++---------
>  include/ata_drive.h          |  3 +++
>  3 files changed, 49 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
> index 1aa1bb145..5ebddbdec 100644
> --- a/drivers/ata/disk_ata_drive.c
> +++ b/drivers/ata/disk_ata_drive.c
> @@ -237,6 +237,9 @@ static int ata_port_init(struct ata_port *port)
>  #ifdef DEBUG
>  	ata_dump_id(port->id);
>  #endif
> +
> +	port->lba48 = ata_id_has_lba48(port->id);
> +
>  	if (port->devname) {
>  		port->blk.cdev.name = xstrdup(port->devname);
>  	} else {
> diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
> index 6dc89d79a..b7c884726 100644
> --- a/drivers/ata/ide-sff.c
> +++ b/drivers/ata/ide-sff.c
> @@ -136,17 +136,33 @@ static int ata_wait_ready(struct ide_port *ide, unsigned timeout)
>   * @param io Register file
>   * @param drive 0 master drive, 1 slave drive
>   * @param num Sector number
> - *
> - * @todo LBA48 support
>   */
> -static int ata_set_lba_sector(struct ide_port *ide, unsigned drive, uint64_t num)
> +static int ata_set_lba_sector(struct ata_port *port, unsigned drive,
> +				uint64_t num)
>  {
> -	if (num > 0x0FFFFFFF || drive > 1)
> +	struct ide_port *ide = to_ata_drive_access(port);
> +
> +	if (drive > 1)
>  		return -EINVAL;
>  
> -	ata_wr_byte(ide, 0xA0 | LBA_FLAG | drive << 4 | num >> 24,
> -		    ide->io.device_addr);
> -	ata_wr_byte(ide, 0x00, ide->io.error_addr);
> +	if (port->lba48) {
> +		if (num > (1ULL << 48) - 1)
> +			return -EINVAL;
> +
> +		ata_wr_byte(ide, LBA_FLAG | drive << 4, ide->io.device_addr);
> +
> +		ata_wr_byte(ide, 0x00, ide->io.nsect_addr);
> +		ata_wr_byte(ide, num >> 24, ide->io.lbal_addr);
> +		ata_wr_byte(ide, num >> 32, ide->io.lbam_addr);
> +		ata_wr_byte(ide, num >> 40, ide->io.lbah_addr);
> +	} else {
> +		if (num > (1ULL << 28) - 1)
> +			return -EINVAL;
> +
> +		ata_wr_byte(ide, 0xA0 | LBA_FLAG | drive << 4 | num >> 24,
> +			    ide->io.device_addr);
> +	}
> +
>  	ata_wr_byte(ide, 0x01, ide->io.nsect_addr);
>  	ata_wr_byte(ide, num, ide->io.lbal_addr);	/* 0 ... 7 */
>  	ata_wr_byte(ide, num >> 8, ide->io.lbam_addr); /* 8 ... 15 */
> @@ -316,10 +332,18 @@ static int ide_read(struct ata_port *port, void *buffer, unsigned int block,
>  	struct ide_port *ide = to_ata_drive_access(port);
>  
>  	while (num_blocks) {
> -		rc = ata_set_lba_sector(ide, DISK_MASTER, sector);
> +		uint8_t cmd;
> +
> +		rc = ata_set_lba_sector(port, DISK_MASTER, sector);
>  		if (rc != 0)
>  			return rc;
> -		rc = ata_wr_cmd(ide, ATA_CMD_READ);
> +
> +		if (port->lba48)
> +			cmd = ATA_CMD_PIO_READ_EXT;
> +		else
> +			cmd = ATA_CMD_READ;
> +
> +		rc = ata_wr_cmd(ide, cmd);
>  		if (rc != 0)
>  			return rc;
>  		rc = ata_wait_ready(ide, MAX_TIMEOUT);
> @@ -355,10 +379,18 @@ static int __maybe_unused ide_write(struct ata_port *port,
>  	struct ide_port *ide = to_ata_drive_access(port);
>  
>  	while (num_blocks) {
> -		rc = ata_set_lba_sector(ide, DISK_MASTER, sector);
> +		uint8_t cmd;
> +
> +		rc = ata_set_lba_sector(port, DISK_MASTER, sector);
>  		if (rc != 0)
>  			return rc;
> -		rc = ata_wr_cmd(ide, ATA_CMD_WRITE);
> +
> +		if (port->lba48)
> +			cmd = ATA_CMD_PIO_WRITE_EXT;
> +		else
> +			cmd = ATA_CMD_WRITE;
> +
> +		rc = ata_wr_cmd(ide, cmd);
>  		if (rc != 0)
>  			return rc;
>  		rc = ata_wait_ready(ide, MAX_TIMEOUT);
> diff --git a/include/ata_drive.h b/include/ata_drive.h
> index 44073cb1b..11685eef1 100644
> --- a/include/ata_drive.h
> +++ b/include/ata_drive.h
> @@ -37,8 +37,10 @@
>  
>  #define ATA_CMD_ID_ATA		0xEC
>  #define ATA_CMD_READ		0x20
> +#define ATA_CMD_PIO_READ_EXT	0x24
>  #define ATA_CMD_READ_EXT	0x25
>  #define ATA_CMD_WRITE		0x30
> +#define ATA_CMD_PIO_WRITE_EXT	0x34
>  #define ATA_CMD_WRITE_EXT	0x35
>  
>  /* drive's status flags */
> @@ -140,6 +142,7 @@ struct ata_port {
>  	void *drvdata;
>  	struct block_device blk;
>  	uint16_t *id;
> +	int lba48;
>  	int initialized;
>  	int probe;
>  };
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
