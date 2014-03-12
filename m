Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNpm2-00031y-1u
 for barebox@lists.infradead.org; Wed, 12 Mar 2014 20:29:11 +0000
Date: Wed, 12 Mar 2014 21:28:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140312202848.GL17250@pengutronix.de>
References: <1394451593-3090-1-git-send-email-d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394451593-3090-1-git-send-email-d.lavnikevich@sam-solutions.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/5] mtd: Update internal API to support 64-bit device size
To: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Cc: Grigory Milev <g.milev@sam-solutions.com>, barebox@lists.infradead.org

On Mon, Mar 10, 2014 at 02:39:49PM +0300, Dmitry Lavnikevich wrote:
> MTD internal API presently uses 32-bit values to represent device
> size. This patch updates them to 64-bits but leaves the external API
> unchanged.
> =

> In general, changing from 32-bit to 64-bit values cause little
> or no changes to the majority of the code with the following
> exceptions:
>   - printk message formats;
>   - division and modulus of 64-bit values (mtd_div_by_wb,
>     mtd_div_by_eb may be used in some of such cases).
> =

> Was tested on phyFLEX i.MX6.
>

changed master_offset to 64bit aswell and applied this series.

Thanks
 Sascha
 =

> Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
> Signed-off-by: Grigory Milev <g.milev@sam-solutions.com>
> ---
>  commands/nandtest.c                 |  2 +-
>  commands/partition.c                | 11 ++++++-----
>  drivers/mtd/core.c                  |  2 +-
>  drivers/mtd/devices/m25p80.c        |  5 +++--
>  drivers/mtd/devices/mtd_dataflash.c |  2 +-
>  drivers/mtd/mtdoob.c                |  2 +-
>  drivers/mtd/mtdraw.c                |  2 +-
>  include/linux/mtd/mtd-abi.h         | 12 +++++++++++-
>  include/linux/mtd/mtd.h             |  9 ++++++++-
>  lib/libmtd.c                        | 10 +++++-----
>  10 files changed, 38 insertions(+), 19 deletions(-)
> =

> diff --git a/commands/nandtest.c b/commands/nandtest.c
> index 0da5444..c64f244 100644
> --- a/commands/nandtest.c
> +++ b/commands/nandtest.c
> @@ -277,7 +277,7 @@ static int do_nandtest(int argc, char *argv[])
>  	}
>  	if (length + flash_offset > meminfo.size) {
>  		printf("Length 0x%08llx + offset 0x%08llx exceeds "
> -				"device size 0x%08x\n", length,
> +				"device size 0x%08llx\n", length,
>  				flash_offset, meminfo.size);
>  		goto err;
>  	}
> diff --git a/commands/partition.c b/commands/partition.c
> index 6d37471..f825722 100644
> --- a/commands/partition.c
> +++ b/commands/partition.c
> @@ -42,10 +42,11 @@
>  #define PART_ADD_DEVNAME (1 << 0)
>  =

>  static int mtd_part_do_parse_one(char *devname, const char *partstr,
> -				 char **endp, unsigned long *offset,
> -				 off_t devsize, size_t *retsize, unsigned int pflags)
> +				 char **endp, loff_t *offset,
> +				 loff_t devsize, size_t *retsize,
> +				 unsigned int pflags)
>  {
> -	ulong size;
> +	loff_t size;
>  	char *end;
>  	char buf[PATH_MAX] =3D {};
>  	unsigned long flags =3D 0;
> @@ -114,8 +115,8 @@ static int do_addpart(int argc, char *argv[])
>  {
>  	char *devname;
>  	char *endp;
> -	unsigned long offset =3D 0;
> -	off_t devsize;
> +	loff_t offset =3D 0;
> +	loff_t devsize;
>  	struct stat s;
>  	int opt;
>  	unsigned int flags =3D PART_ADD_DEVNAME;
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index 6db1c6d..7efb03c 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -397,7 +397,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devnam=
e, int device_id)
>  	mtd->cdev.mtd =3D mtd;
>  =

>  	if (IS_ENABLED(CONFIG_PARAMETER)) {
> -		dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%u");
> +		dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%llu");
>  		dev_add_param_int_ro(&mtd->class_dev, "erasesize", mtd->erasesize, "%u=
");
>  		dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->oobsize, "%u");
>  		dev_add_param_int_ro(&mtd->class_dev, "oobsize", mtd->oobsize, "%u");
> diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
> index 9594011..757a717 100644
> --- a/drivers/mtd/devices/m25p80.c
> +++ b/drivers/mtd/devices/m25p80.c
> @@ -273,8 +273,9 @@ static int erase_sector(struct m25p *flash, u32 offse=
t, u32 command)
>  static int m25p80_erase(struct mtd_info *mtd, struct erase_info *instr)
>  {
>  	struct m25p *flash =3D mtd_to_m25p(mtd);
> -	u32 addr, len;
> +	u32 addr;
>  	uint32_t rem;
> +	uint64_t len;
>  =

>  	dev_dbg(&flash->spi->dev, "%s at 0x%llx, len %lld\n",
>  			__func__, (long long)instr->addr,
> @@ -896,7 +897,7 @@ static int m25p_probe(struct device_d *dev)
>  	flash->mtd.type =3D MTD_NORFLASH;
>  	flash->mtd.writesize =3D 1;
>  	flash->mtd.flags =3D MTD_CAP_NORFLASH;
> -	flash->mtd.size =3D info->sector_size * info->n_sectors;
> +	flash->mtd.size =3D (uint64_t)info->sector_size * info->n_sectors;
>  	flash->mtd.erase =3D m25p80_erase;
>  	flash->mtd.read =3D m25p80_read;
>  =

> diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mt=
d_dataflash.c
> index cdc0120..fa31b61 100644
> --- a/drivers/mtd/devices/mtd_dataflash.c
> +++ b/drivers/mtd/devices/mtd_dataflash.c
> @@ -625,7 +625,7 @@ add_dataflash_otp(struct spi_device *spi, char *name,
>  =

>  	device =3D &priv->mtd;
>  	device->name =3D (pdata && pdata->name) ? pdata->name : "dataflash";
> -	device->size =3D nr_pages * pagesize;
> +	device->size =3D nr_pages * (uint64_t)pagesize;
>  	device->erasesize =3D pagesize;
>  	device->writesize =3D pagesize;
>  	device->type =3D MTD_DATAFLASH;
> diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
> index 1e88b53..54888cd 100644
> --- a/drivers/mtd/mtdoob.c
> +++ b/drivers/mtd/mtdoob.c
> @@ -78,7 +78,7 @@ static int add_mtdoob_device(struct mtd_info *mtd, char=
 *devname, void **priv)
>  =

>  	mtdoob =3D xzalloc(sizeof(*mtdoob));
>  	mtdoob->cdev.ops =3D &mtd_ops_oob;
> -	mtdoob->cdev.size =3D (mtd->size / mtd->writesize) * mtd->oobsize;
> +	mtdoob->cdev.size =3D mtd_div_by_wb(mtd->size, mtd) * mtd->oobsize;
>  	mtdoob->cdev.name =3D asprintf("%s_oob%d", devname, mtd->class_dev.id);
>  	mtdoob->cdev.priv =3D mtdoob;
>  	mtdoob->cdev.dev =3D &mtd->class_dev;
> diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> index be34723..33ca05d 100644
> --- a/drivers/mtd/mtdraw.c
> +++ b/drivers/mtd/mtdraw.c
> @@ -290,7 +290,7 @@ static int add_mtdraw_device(struct mtd_info *mtd, ch=
ar *devname, void **priv)
>  	mtdraw->mtd =3D mtd;
>  =

>  	mtdraw->cdev.ops =3D (struct file_operations *)&mtd_raw_fops;
> -	mtdraw->cdev.size =3D mtd->size / mtd->writesize *
> +	mtdraw->cdev.size =3D mtd_div_by_wb(mtd->size, mtd) *
>  		(mtd->writesize + mtd->oobsize);
>  	mtdraw->cdev.name =3D asprintf("%s.raw", mtd->cdev.name);
>  	mtdraw->cdev.priv =3D mtdraw;
> diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
> index 11d51e2..c1ba55b 100644
> --- a/include/linux/mtd/mtd-abi.h
> +++ b/include/linux/mtd/mtd-abi.h
> @@ -9,6 +9,8 @@
>  =

>  #ifndef DOXYGEN_SHOULD_SKIP_THIS
>  =

> +#include <asm-generic/div64.h>
> +
>  struct erase_info_user {
>  	uint32_t start;
>  	uint32_t length;
> @@ -73,7 +75,7 @@ enum {
>  struct mtd_info_user {
>  	uint8_t type;
>  	uint32_t flags;
> -	uint32_t size;	 // Total size of the MTD
> +	uint64_t size;	 /* Total size of the MTD */
>  	uint32_t erasesize;
>  	uint32_t writesize;
>  	uint32_t oobsize;   // Amount of OOB data per block (e.g. 16)
> @@ -173,6 +175,14 @@ enum mtd_file_modes {
>  	MTD_MODE_RAW,
>  };
>  =

> +
> +static inline uint32_t mtd_user_div_by_eb(uint64_t sz,
> +	struct mtd_info_user *mtd_user)
> +{
> +	do_div(sz, mtd_user->erasesize);
> +	return sz;
> +}
> +
>  #endif /* DOXYGEN_SHOULD_SKIP_THIS */
>  =

>  #endif /* __MTD_ABI_H__ */
> diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
> index 402e497..d337455 100644
> --- a/include/linux/mtd/mtd.h
> +++ b/include/linux/mtd/mtd.h
> @@ -86,7 +86,7 @@ struct mtd_oob_ops {
>  struct mtd_info {
>  	u_char type;
>  	u_int32_t flags;
> -	u_int32_t size;	 // Total size of the MTD
> +	u_int64_t size;	 /* Total size of the MTD */
>  =

>  	/* "Major" erase size for the device. Na=EFve users may take this
>  	 * to be the only erase size available, or may use the more detailed
> @@ -253,6 +253,13 @@ static inline uint32_t mtd_mod_by_eb(uint64_t sz, st=
ruct mtd_info *mtd)
>  {
>  	return do_div(sz, mtd->erasesize);
>  }
> +
> +static inline uint32_t mtd_div_by_wb(uint64_t sz, struct mtd_info *mtd)
> +{
> +	do_div(sz, mtd->writesize);
> +	return sz;
> +}
> +
>  	/* Kernel-side ioctl definitions */
>  =

>  extern int add_mtd_device(struct mtd_info *mtd, char *devname, int devic=
e_id);
> diff --git a/lib/libmtd.c b/lib/libmtd.c
> index 1606b87..56672bd 100644
> --- a/lib/libmtd.c
> +++ b/lib/libmtd.c
> @@ -195,7 +195,7 @@ int libmtd_read(const struct mtd_dev_info *mtd, int f=
d, int eb, int offs,
>  	     void *buf, int len)
>  {
>  	int ret, rd =3D 0;
> -	off_t seek;
> +	loff_t seek;
>  =

>  	ret =3D mtd_valid_erase_block(mtd, eb);
>  	if (ret)
> @@ -209,7 +209,7 @@ int libmtd_read(const struct mtd_dev_info *mtd, int f=
d, int eb, int offs,
>  	}
>  =

>  	/* Seek to the beginning of the eraseblock */
> -	seek =3D (off_t)eb * mtd->eb_size + offs;
> +	seek =3D (loff_t)eb * mtd->eb_size + offs;
>  	if (lseek(fd, seek, SEEK_SET) !=3D seek)
>  		return sys_errmsg("cannot seek %s to offset %llu",
>  				  mtd->node, (unsigned long long)seek);
> @@ -229,7 +229,7 @@ int libmtd_write(const struct mtd_dev_info *mtd, int =
fd, int eb, int offs,
>  	      void *buf, int len)
>  {
>  	int ret;
> -	off_t seek;
> +	loff_t seek;
>  =

>  	ret =3D mtd_valid_erase_block(mtd, eb);
>  	if (ret)
> @@ -255,7 +255,7 @@ int libmtd_write(const struct mtd_dev_info *mtd, int =
fd, int eb, int offs,
>  	}
>  =

>  	/* Seek to the beginning of the eraseblock */
> -	seek =3D (off_t)eb * mtd->eb_size + offs;
> +	seek =3D (loff_t)eb * mtd->eb_size + offs;
>  	if (lseek(fd, seek, SEEK_SET) !=3D seek)
>  		return sys_errmsg("cannot seek %s to offset %llu",
>  				  mtd->node, (unsigned long long)seek);
> @@ -326,7 +326,7 @@ int mtd_get_dev_info(const char *node, struct mtd_dev=
_info *mtd)
>  		goto out_close;
>  	}
>  =

> -	mtd->eb_cnt =3D ui.size / ui.erasesize;
> +	mtd->eb_cnt =3D mtd_user_div_by_eb(ui.size, &ui);
>  =

>  	switch(mtd->type) {
>  	case MTD_ABSENT:
> -- =

> 1.9.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
