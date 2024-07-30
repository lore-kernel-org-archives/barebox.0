Delivery-date: Tue, 30 Jul 2024 10:36:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYiL1-004PHW-2t
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:36:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYiL0-0007P3-34
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:36:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NaOO2+G6D74EXoP2sfOb9K/m9mheNBgvEsqfDa2+4zc=; b=sV/DsnOHk2inx5MRC2VSaVEP91
	I6qVl+w3ImJxK+XNTPFvN7VLSlKgtmWt61O6XXWwKO9ChLThPQDRwNKZRcS9RqhuEAvKuGu3mvEZz
	i0cqP1EeR253MsWmFIkYczJghQJH6FwrD0aVX4biX1l3xAJI4+D6u2TveUgZOKJ3zlk3XB63lFnoc
	HZjfwYUh0G1RQ3sIW1NVtpNYeddfFQ4EOm5tGuxWGiQFzcWqhm+vp1cRcySSnjz0L4kACCEJZkyX9
	T6CiaMCtIRWvu4zpZ54t2+NdR7Mln5BSfWaNyTxTQFeKFIj2GZVNrYZbe0zsINXEJn1ac3Xo+KVaX
	IgHCTgRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYiKV-0000000EJ3W-3izQ;
	Tue, 30 Jul 2024 08:35:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYiH3-0000000EHar-3jRu
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:32:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sYiH1-0006v0-VA; Tue, 30 Jul 2024 10:31:59 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sYiH1-003F5A-Hl; Tue, 30 Jul 2024 10:31:59 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sYiH1-0094uE-1Q;
	Tue, 30 Jul 2024 10:31:59 +0200
Date: Tue, 30 Jul 2024 10:31:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zqik_wu9O7wYMFzh@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730071929.2016537-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_013202_306980_396D5430 
X-CRM114-Status: GOOD (  40.44  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/10] fs: give erase() a new erase_type parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jul 30, 2024 at 09:19:20AM +0200, Ahmad Fatoum wrote:
> Many managed flashes provide an erase operation, which need not be used
> for regular writes, but is provided nonetheless for efficient clearing
> of large regions of storage to a fixed bit pattern. The erase type allows
> users to specify _why_ the erase operation is done, so the driver or
> the core code can choose the most optimal operation.
> 
> Existing code is annotated wither either ERASE_TO_WRITE for code that is

s/wither/with/

> immediately followed by a write and ERASE_TO_CLEAR for the standalone
> erase operations of the shell and fastboot erase command.
> 
> Use of an enum allows the future addition of more types, e.g.:
> 
>   ERASE_TO_ALL_ZERO: to efficiently implement android sparse all-ones
>                      (like util-linux blkdiscard --zeroout)
>   ERASE_TO_ALL_ONE: to efficiently implement android sparse all-zeroes

I suggest using ERASE_TO_ALL_ONE to implement sparse all-ones ;)

Will fix both of these while applying in case there's nothing else in
this series.

Sascha

>   ERASE_TO_DISCARD: as alternative to ERASE_TO_CLEAR, when unwritten
>                     regions are indeed allowed to have arbitrary content
>                      (like util-linux blkdiscard without argument)
>   ERASE_TO_SECURE: erase data in a manner appropriate for wiping secrets
>                      (like util-linux blkdiscard --secure)
> 
> We don't introduce any functional change here yet, as no device yet sets
> DEVFS_WRITE_AUTOERASE. This will follow in a separate commit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx-bbu-external-nand.c |  2 +-
>  arch/arm/mach-imx/imx-bbu-internal.c      |  4 ++--
>  arch/arm/mach-omap/am33xx_bbu_spi_mlo.c   |  2 +-
>  commands/flash.c                          |  2 +-
>  commands/nandtest.c                       |  2 +-
>  common/bbu.c                              |  2 +-
>  common/environment.c                      |  7 ++++--
>  common/fastboot.c                         |  2 +-
>  common/state/backend_bucket_circular.c    |  2 +-
>  drivers/misc/storage-by-uuid.c            |  3 +++
>  drivers/usb/gadget/function/dfu.c         |  4 ++--
>  fs/devfs-core.c                           |  7 +++++-
>  fs/devfs.c                                |  5 ++++-
>  fs/fs.c                                   |  4 ++--
>  include/driver.h                          | 13 ++++++++++++
>  include/fs.h                              | 26 +++++++++++++++++++++--
>  lib/libfile.c                             |  2 +-
>  17 files changed, 69 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
> index 7523008cdb5a..72c2271ff37a 100644
> --- a/arch/arm/mach-imx/imx-bbu-external-nand.c
> +++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
> @@ -153,7 +153,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
>  
>  		debug("writing %d bytes at 0x%08llx\n", now, nand_offset);
>  
> -		ret = erase(fd, blocksize, nand_offset);
> +		ret = erase(fd, blocksize, nand_offset, ERASE_TO_WRITE);
>  		if (ret)
>  			goto out;
>  
> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
> index 8cdaab5c1676..4190d60d18dd 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -108,7 +108,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
>  	if (imx_bbu_erase_required(imx_handler)) {
>  		pr_debug("%s: erasing %s from 0x%08x to 0x%08x\n", __func__,
>  				devicefile, offset, image_len);
> -		ret = erase(fd, image_len, offset);
> +		ret = erase(fd, image_len, offset, ERASE_TO_WRITE);
>  		if (ret) {
>  			pr_err("erasing %s failed with %s\n", devicefile,
>  					strerror(-ret));
> @@ -340,7 +340,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
>  
>  		pr_debug("writing %d bytes at 0x%08llx\n", now, offset);
>  
> -		ret = erase(fd, blocksize, offset);
> +		ret = erase(fd, blocksize, offset, ERASE_TO_WRITE);
>  		if (ret)
>  			goto out;
>  
> diff --git a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
> index 2c58c9ae690e..951c3f8ce099 100644
> --- a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
> +++ b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
> @@ -71,7 +71,7 @@ static int spi_nor_mlo_handler(struct bbu_handler *handler,
>  		goto out;
>  	}
>  
> -	ret = erase(dstfd, ERASE_SIZE_ALL, 0);
> +	ret = erase(dstfd, ERASE_SIZE_ALL, 0, ERASE_TO_WRITE);
>  	if (ret < 0) {
>  		printf("could not erase %s: %m", data->devicefile);
>  		goto out1;
> diff --git a/commands/flash.c b/commands/flash.c
> index 5b7060aeadfb..de3bf65e5059 100644
> --- a/commands/flash.c
> +++ b/commands/flash.c
> @@ -43,7 +43,7 @@ static int do_flerase(int argc, char *argv[])
>  		goto out;
>  	}
>  
> -	if (erase(fd, size, start)) {
> +	if (erase(fd, size, start, ERASE_TO_CLEAR)) {
>  		perror("erase");
>  		ret = 1;
>  	}
> diff --git a/commands/nandtest.c b/commands/nandtest.c
> index ba7c87a32eea..bc138646a460 100644
> --- a/commands/nandtest.c
> +++ b/commands/nandtest.c
> @@ -160,7 +160,7 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
>  	er.start = ofs;
>  	er.length = meminfo.erasesize;
>  
> -	ret = erase(fd, er.length, er.start);
> +	ret = erase(fd, er.length, er.start, ERASE_TO_WRITE);
>  	if (ret < 0) {
>  		perror("\nerase");
>  		printf("Could't not erase flash at 0x%08llx length 0x%08llx.\n",
> diff --git a/common/bbu.c b/common/bbu.c
> index f71747aa2f6d..9ea8a1a3f247 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -453,7 +453,7 @@ int bbu_std_file_handler(struct bbu_handler *handler,
>  		goto err_close;
>  	}
>  
> -	ret = erase(fd, data->len, 0);
> +	ret = erase(fd, data->len, 0, ERASE_TO_WRITE);
>  	if (ret && ret != -ENOSYS) {
>  		printf("erasing %s failed with %s\n", data->devicefile,
>  				strerror(-ret));
> diff --git a/common/environment.c b/common/environment.c
> index 39cad0c16a77..dbf4c2f52365 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -152,7 +152,10 @@ static inline int protect(int fd, size_t count, unsigned long offset, int prot)
>  	return 0;
>  }
>  
> -static inline int erase(int fd, size_t count, unsigned long offset)
> +enum erase_type {
> +	ERASE_TO_WRITE
> +};
> +static inline int erase(int fd, size_t count, unsigned long offset, enum erase_type type)
>  {
>  	return 0;
>  }
> @@ -380,7 +383,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
>  		goto out;
>  	}
>  
> -	ret = erase(envfd, ERASE_SIZE_ALL, 0);
> +	ret = erase(envfd, ERASE_SIZE_ALL, 0, ERASE_TO_WRITE);
>  
>  	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
>  	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
> diff --git a/common/fastboot.c b/common/fastboot.c
> index f8a01dea7a65..d283fc8fc098 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -789,7 +789,7 @@ static void cb_erase(struct fastboot *fb, const char *cmd)
>  	if (fd < 0)
>  		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, strerror(-fd));
>  
> -	ret = erase(fd, ERASE_SIZE_ALL, 0);
> +	ret = erase(fd, ERASE_SIZE_ALL, 0, ERASE_TO_CLEAR);
>  
>  	close(fd);
>  
> diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
> index 2ac5bf6a8218..6b5873aa9af1 100644
> --- a/common/state/backend_bucket_circular.c
> +++ b/common/state/backend_bucket_circular.c
> @@ -220,7 +220,7 @@ static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *cir
>  static int state_mtd_peb_erase(struct state_backend_storage_bucket_circular *circ)
>  {
>  	return erase(circ->fd, circ->mtd->erasesize,
> -		     (off_t)circ->eraseblock * circ->mtd->erasesize);
> +		     (off_t)circ->eraseblock * circ->mtd->erasesize, ERASE_TO_WRITE);
>  }
>  #endif
>  
> diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
> index db15b64d7dcf..8b8fd901685e 100644
> --- a/drivers/misc/storage-by-uuid.c
> +++ b/drivers/misc/storage-by-uuid.c
> @@ -126,6 +126,9 @@ static void storage_by_uuid_add_partitions(struct sbu *sbu, struct cdev *rcdev)
>  	sbu->cdev.dev = sbu->dev;
>  	sbu->cdev.priv = sbu;
>  
> +	if (rcdev->flags & DEVFS_WRITE_AUTOERASE)
> +		sbu->cdev.flags |= DEVFS_WRITE_AUTOERASE;
> +
>  	ret = devfs_create(&sbu->cdev);
>  	if (ret) {
>  		dev_err(sbu->dev, "Failed to create cdev: %s\n", strerror(-ret));
> diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
> index a41ff22dcebc..208e0cd23c29 100644
> --- a/drivers/usb/gadget/function/dfu.c
> +++ b/drivers/usb/gadget/function/dfu.c
> @@ -208,7 +208,7 @@ static void dfu_do_write(struct dfu_work *dw)
>  
>  	if (prog_erase && (dfu_written + wlen) > dfu_erased) {
>  		size = roundup(wlen, dfu_mtdinfo.erasesize);
> -		ret = erase(dfufd, size, dfu_erased);
> +		ret = erase(dfufd, size, dfu_erased, ERASE_TO_WRITE);
>  		dfu_erased += size;
>  		if (ret && ret != -ENOSYS) {
>  			perror("erase");
> @@ -333,7 +333,7 @@ static void dfu_do_copy(struct dfu_work *dw)
>  		return;
>  	}
>  
> -	ret = erase(fd, ERASE_SIZE_ALL, 0);
> +	ret = erase_flash(fd, ERASE_SIZE_ALL, 0);
>  	close(fd);
>  	if (ret && ret != -ENOSYS) {
>  		perror("erase");
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index ed445fbd4712..2715193c6956 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -509,6 +509,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
>  	loff_t _end = end ? *end : 0;
>  	static struct cdev *new;
>  	struct cdev *overlap;
> +	unsigned inherited_flags = 0;
>  
>  	if (cdev_by_name(partinfo->name))
>  		return ERR_PTR(-EEXIST);
> @@ -551,11 +552,14 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
>  		return overlap;
>  	}
>  
> +	/* Filter flags that we want to pass along to children */
> +	inherited_flags |= cdev->flags & DEVFS_WRITE_AUTOERASE;
> +
>  	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
>  		struct mtd_info *mtd;
>  
>  		mtd = mtd_add_partition(cdev->mtd, offset, size,
> -				partinfo->flags, partinfo->name);
> +				partinfo->flags | inherited_flags, partinfo->name);
>  		if (IS_ERR(mtd))
>  			return (void *)mtd;
>  
> @@ -571,6 +575,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
>  	new->priv = cdev->priv;
>  	new->size = size;
>  	new->offset = cdev->offset + offset;
> +	new->flags = inherited_flags;
>  
>  	new->dev = cdev->dev;
>  	new->master = cdev;
> diff --git a/fs/devfs.c b/fs/devfs.c
> index 9dbfa91b1d9f..5feb76cfef86 100644
> --- a/fs/devfs.c
> +++ b/fs/devfs.c
> @@ -61,13 +61,16 @@ static int devfs_lseek(struct device *_dev, FILE *f, loff_t pos)
>  }
>  
>  static int devfs_erase(struct device *_dev, FILE *f, loff_t count,
> -		       loff_t offset)
> +		       loff_t offset, enum erase_type type)
>  {
>  	struct cdev *cdev = f->priv;
>  
>  	if (cdev->flags & DEVFS_PARTITION_READONLY)
>  		return -EPERM;
>  
> +	if ((type == ERASE_TO_WRITE) && (cdev->flags & DEVFS_WRITE_AUTOERASE))
> +		return 0;
> +
>  	if (count + offset > cdev->size)
>  		count = cdev->size - offset;
>  
> diff --git a/fs/fs.c b/fs/fs.c
> index 656434f67ffa..5e7e05f4990a 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -600,7 +600,7 @@ loff_t lseek(int fd, loff_t offset, int whence)
>  }
>  EXPORT_SYMBOL(lseek);
>  
> -int erase(int fd, loff_t count, loff_t offset)
> +int erase(int fd, loff_t count, loff_t offset, enum erase_type type)
>  {
>  	struct fs_driver *fsdrv;
>  	FILE *f = fd_to_file(fd, false);
> @@ -621,7 +621,7 @@ int erase(int fd, loff_t count, loff_t offset)
>  		assert_command_context();
>  
>  	if (fsdrv->erase)
> -		ret = fsdrv->erase(&f->fsdev->dev, f, count, offset);
> +		ret = fsdrv->erase(&f->fsdev->dev, f, count, offset, type);
>  	else
>  		ret = -ENOSYS;
>  
> diff --git a/include/driver.h b/include/driver.h
> index 2b4db2221a6c..c4067d531cc7 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -562,6 +562,19 @@ extern struct list_head cdev_list;
>  #define DEVFS_PARTITION_BOOTABLE_LEGACY	(1U << 11)
>  #define DEVFS_PARTITION_BOOTABLE_ESP	(1U << 12)
>  #define DEVFS_PARTITION_FOR_FIXUP	(1U << 13)
> +#define DEVFS_WRITE_AUTOERASE		(1U << 14)
> +
> +/**
> + * cdev_write_requires_erase - Check whether writes must be done to erased blocks
> + * @cdev: pointer to cdev structure
> + *
> + * This function checks if the erase operation is required, so a subsequent
> + * write operation can write all bits.
> + */
> +static inline bool cdev_write_requires_erase(const struct cdev *cdev)
> +{
> +	return !(cdev->flags & DEVFS_WRITE_AUTOERASE);
> +}
>  
>  static inline bool cdev_is_mbr_partitioned(const struct cdev *master)
>  {
> diff --git a/include/fs.h b/include/fs.h
> index f87c4c40273f..f5950a052923 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -10,6 +10,7 @@
>  #include <sys/stat.h>
>  #include <driver.h>
>  #include <filetype.h>
> +#include <linux/bits.h>
>  #include <linux/fs.h>
>  #include <linux/string.h>
>  #include <linux/limits.h>
> @@ -38,6 +39,27 @@ typedef struct filep {
>  
>  #define FS_DRIVER_NO_DEV	1
>  
> +/**
> + * enum erase_type - Type of erase operation
> + * @ERASE_TO_WRITE: Conduct low-level erase operation to prepare for a write
> + *                  to all or part of the erased regions. This is required
> + *                  for raw flashes, but can be omitted by flashes behind
> + *                  a FTL that autoerases on write (e.g. eMMCs)
> + * @ERASE_TO_CLEAR: Force an erase of the region. When read afterwards,
> + *		    A fixed pattern should result, usually either all-zeroes
> + *		    or all-ones depending on storage technology.
> + *
> + * Many managed flashes provide an erase operation, which need not be used
> + * for regular writes, but is provided nonetheless for efficient clearing
> + * of large regions of storage to a fixed bit pattern. The erase type allows
> + * users to specify _why_ the erase operation is done, so the driver or
> + * the core code can choose the most optimal operation.
> + */
> +enum erase_type {
> +	ERASE_TO_WRITE,
> +	ERASE_TO_CLEAR
> +};
> +
>  struct fs_driver {
>  	int (*probe) (struct device *dev);
>  
> @@ -58,7 +80,7 @@ struct fs_driver {
>  
>  	int (*ioctl)(struct device *dev, FILE *f, unsigned int request, void *buf);
>  	int (*erase)(struct device *dev, FILE *f, loff_t count,
> -			loff_t offset);
> +			loff_t offset, enum erase_type type);
>  	int (*protect)(struct device *dev, FILE *f, size_t count,
>  			loff_t offset, int prot);
>  	int (*discard_range)(struct device *dev, FILE *f, loff_t count,
> @@ -127,7 +149,7 @@ int umount_by_cdev(struct cdev *cdev);
>  
>  /* not-so-standard functions */
>  #define ERASE_SIZE_ALL	((loff_t) - 1)
> -int erase(int fd, loff_t count, loff_t offset);
> +int erase(int fd, loff_t count, loff_t offset, enum erase_type type);
>  int protect(int fd, size_t count, loff_t offset, int prot);
>  int discard_range(int fd, loff_t count, loff_t offset);
>  int protect_file(const char *file, int prot);
> diff --git a/lib/libfile.c b/lib/libfile.c
> index a34e011f4f7c..80d4591dd6e5 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -412,7 +412,7 @@ int write_file_flash(const char *filename, const void *buf, size_t size)
>  	if (fd < 0)
>  		return fd;
>  
> -	ret = erase(fd, size, 0);
> +	ret = erase(fd, size, 0, ERASE_TO_WRITE);
>  	if (ret < 0)
>  		goto out_close;
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


