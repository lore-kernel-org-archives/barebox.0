Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TB6To-00010n-W4
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 16:04:57 +0000
Date: Mon, 10 Sep 2012 18:04:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120910160455.GZ18243@pengutronix.de>
References: <1347267347-9739-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347267347-9739-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 1/2] drivers/nor/m25p80: add MTD support
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 10, 2012 at 10:55:46AM +0200, Jan Luebbe wrote:
> This has been tested by using UBI with a N25Q128 connected to
> a TI McSPI controller.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/nor/m25p80.c |   71 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/nor/m25p80.h |    2 +-
>  2 files changed, 72 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
> index 61f2195..8775fa9 100644
> --- a/drivers/nor/m25p80.c
> +++ b/drivers/nor/m25p80.c
> @@ -697,6 +697,74 @@ static struct file_operations m25p80_ops = {
>  	.lseek  = dev_lseek_default,
>  };
>  
> +static int m25p_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
> +		size_t *retlen, u_char *buf)
> +{
> +	struct m25p *flash = container_of(mtd, struct m25p, mtd);
> +	ssize_t ret;
> +
> +	ret = flash->cdev.ops->read(&flash->cdev, buf, len, from, 0);
> +	if (ret < 0) {
> +		*retlen = 0;
> +		return ret;
> +	}
> +
> +	*retlen = ret;
> +	return 0;
> +}
> +
> +static int m25p_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
> +		size_t *retlen, const u_char *buf)
> +{
> +	struct m25p *flash = container_of(mtd, struct m25p, mtd);
> +	ssize_t ret;
> +
> +	ret = flash->cdev.ops->write(&flash->cdev, buf, len, to, 0);
> +	if (ret < 0) {
> +		*retlen = 0;
> +		return ret;
> +	}
> +
> +	*retlen = ret;
> +	return 0;
> +}
> +
> +static int m25p_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
> +{
> +	struct m25p *flash = container_of(mtd, struct m25p, mtd);
> +	ssize_t ret;
> +
> +	ret = flash->cdev.ops->erase(&flash->cdev, instr->len, instr->addr);
> +
> +	if (ret) {
> +		instr->state = MTD_ERASE_FAILED;
> +		return -EIO;
> +	}
> +
> +	instr->state = MTD_ERASE_DONE;
> +	mtd_erase_callback(instr);
> +
> +	return 0;
> +}
> +
> +static void m25p_init_mtd(struct m25p *flash)
> +{
> +	struct mtd_info *mtd = &flash->mtd;
> +
> +	mtd->read = m25p_mtd_read;
> +	mtd->write = m25p_mtd_write;
> +	mtd->erase = m25p_mtd_erase;
> +	mtd->size = flash->size;
> +	mtd->name = flash->cdev.name;
> +	mtd->erasesize = flash->erasesize;
> +	mtd->writesize = 1;
> +	mtd->subpage_sft = 0;
> +	mtd->eraseregions = NULL;
> +	mtd->numeraseregions = 0;
> +	mtd->flags = MTD_CAP_NORFLASH;
> +	flash->cdev.mtd = mtd;
> +}
> +
>  /*
>   * board specific setup should have ensured the SPI clock used here
>   * matches what the READ command supports, at least until this driver
> @@ -828,6 +896,9 @@ static int m25p_probe(struct device_d *dev)
>  
>  	dev_info(dev, "%s (%lld Kbytes)\n", id->name, (long long)flash->size >> 10);
>  
> +	if (IS_ENABLED(CONFIG_PARTITION_NEED_MTD))
> +		m25p_init_mtd(flash);
> +
>  	devfs_create(&flash->cdev);
>  
>  	return 0;
> diff --git a/drivers/nor/m25p80.h b/drivers/nor/m25p80.h
> index 34bf2e2..957900e 100644
> --- a/drivers/nor/m25p80.h
> +++ b/drivers/nor/m25p80.h
> @@ -46,7 +46,7 @@ struct spi_device_id {
>  struct m25p {
>  	struct spi_device	*spi;
>  	struct flash_info	*info;
> -	struct mtd_info	mtd;
> +	struct mtd_info		mtd;
>  	struct cdev		cdev;
>  	char			*name;
>  	u32			erasesize;
> -- 
> 1.7.10.4
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
