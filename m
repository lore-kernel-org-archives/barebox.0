Delivery-date: Sat, 06 Sep 2025 02:11:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugWP-008dSC-0l
	for lore@lore.pengutronix.de;
	Sat, 06 Sep 2025 02:11:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugWM-0008FC-3V
	for lore@pengutronix.de; Sat, 06 Sep 2025 02:11:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/byWb0BGpC+RPSgPBy4U8MjBvEGjAJG9mB0CcbZ3GV4=; b=g/IUTKhPdez6yWnIsqJDhkILZK
	7vktgDQl80EMyzHLDZ/hv+m1AytiwQ09uA/2k2IgdNnWohmQoYpwrLiJJZU9HL0qwexoUxITj0gA4
	6xeKh7CklXl/+LioBtvMJoUsWsfFhwtldYFCn012LMAK7SPNdpFG8Cq5uOu//8ZbnzvlJbiUBNLQd
	rb+Z1IyyKi/DQv3V+eZA/k1WIEPBkynrjIdylQNvMkpcaoJSVm3zXuO5OcTwuInzqHI+B+QLRDb1D
	p5g2PxAx/4HR7AC7wcbG8iuWmPmX3rHpyCu6+tNP+e5FBkkAtDBuLDlPPvxY5oNNCBFD0ykCoxBAK
	22uKHDlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugVQ-00000005RAo-2tQP;
	Sat, 06 Sep 2025 00:10:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuZRg-000000039pg-0koZ
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 16:37:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uuZRe-0004cF-T6; Fri, 05 Sep 2025 18:37:50 +0200
Message-ID: <5dc919d3-eb60-47ec-81ee-b0e81423563a@pengutronix.de>
Date: Fri, 5 Sep 2025 18:37:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-4-tobias@waldekranz.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250828150637.2222474-4-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_093752_223937_C3ADAF85 
X-CRM114-Status: GOOD (  27.65  )
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
Subject: Re: [PATCH 3/5] dm: linear: Add linear target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
> This target allows you to map in a region of another device as a
> contiguous range of blocks of a dm device.
> 
> This is the basic building block used by LVM to stitch together
> logical volumes from one or more ranges of blocks from one or more
> physical disks.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  drivers/block/dm/Kconfig     |   7 ++
>  drivers/block/dm/Makefile    |   1 +
>  drivers/block/dm/dm-linear.c | 123 +++++++++++++++++++++++++++++++++++
>  3 files changed, 131 insertions(+)
>  create mode 100644 drivers/block/dm/dm-linear.c
> 
> diff --git a/drivers/block/dm/Kconfig b/drivers/block/dm/Kconfig
> index f64c69e03d..e763e530d3 100644
> --- a/drivers/block/dm/Kconfig
> +++ b/drivers/block/dm/Kconfig
> @@ -5,3 +5,10 @@ menuconfig DM_BLK
>  	  other data sources. Modeled after, and intended to be
>  	  compatible with, the Linux kernel's device mapper subsystem.
>  
> +config DM_BLK_LINEAR
> +        bool "Linear target"
> +	depends on DM_BLK

Tab/Spaces mix up.

> +        help
> +	  Maps a contiguous region of an existing device into a dm
> +	  device.
> +
> diff --git a/drivers/block/dm/Makefile b/drivers/block/dm/Makefile
> index 9c045087c0..f52d19f9c4 100644
> --- a/drivers/block/dm/Makefile
> +++ b/drivers/block/dm/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_DM_BLK) += dm-core.o
> +obj-$(CONFIG_DM_BLK_LINEAR) += dm-linear.o
> diff --git a/drivers/block/dm/dm-linear.c b/drivers/block/dm/dm-linear.c
> new file mode 100644
> index 0000000000..d3415814cb
> --- /dev/null
> +++ b/drivers/block/dm/dm-linear.c
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
> +
> +#include <block.h>
> +#include <common.h>

Nitpick: If possible, I'd like to avoid common.h in new code. It's a lot
of unneeded stuff in there.

> +#include <disks.h>
> +#include <fcntl.h>
> +
> +#include "dm-target.h"
> +
> +struct dm_linear {
> +	struct cdev *cdev;
> +	loff_t offset;
> +};
> +
> +static int dm_linear_read(struct dm_target *ti, void *buf,
> +			  sector_t block, blkcnt_t num_blocks)
> +{
> +	struct dm_linear *l = ti->private;
> +
> +	block <<= SECTOR_SHIFT;
> +	num_blocks <<= SECTOR_SHIFT;
> +
> +	if (cdev_read(l->cdev, buf, num_blocks, l->offset + block, 0) < num_blocks)
> +		return -EIO;

Why not propagate the underlying error code if it's negative?

> +
> +	return 0;
> +}
> +
> +static int dm_linear_write(struct dm_target *ti, const void *buf,
> +			   sector_t block, blkcnt_t num_blocks)
> +{
> +	struct dm_linear *l = ti->private;
> +
> +	block <<= SECTOR_SHIFT;
> +	num_blocks <<= SECTOR_SHIFT;
> +
> +	if (cdev_write(l->cdev, buf, num_blocks, l->offset + block, 0) < num_blocks)
> +		return -EIO;
> +
> +	return 0;
> +}
> +
> +static int dm_linear_create(struct dm_target *ti, unsigned int argc, char **argv)
> +{
> +	struct dm_linear *l;
> +	int err;
> +
> +	if (argc != 2) {
> +		dm_target_err(ti, "Expected 2 arguments (\"<dev> <offset>\"), got %u\n",
> +			      argc);
> +		err = -EINVAL;
> +		goto err;
> +	}
> +
> +	l = xzalloc(sizeof(*l));
> +	ti->private = l;
> +
> +	if (kstrtoull(argv[1], 0, &l->offset)) {
> +		dm_target_err(ti, "Invalid offset: \"%s\"\n", argv[1]);
> +		err = -EINVAL;
> +		goto err_free;
> +	}
> +	l->offset <<= SECTOR_SHIFT;
> +
> +	l->cdev = cdev_open_by_path_name(argv[0], O_RDWR);
> +	if (!l->cdev) {
> +		dm_target_err(ti, "Cannot open device %s: %m\n", argv[0]);
> +		err = -ENODEV;
> +		goto err_free;
> +	}
> +
> +	l->cdev = cdev_readlink(l->cdev);
> +
> +	if ((ti->size << SECTOR_SHIFT) > (l->cdev->size - l->offset)) {
> +		dm_target_err(ti, "%s is too small to map %llu blocks at %llu, %llu available\n",
> +			      argv[0], ti->size, l->offset >> SECTOR_SHIFT,
> +			      (l->cdev->size - l->offset) >> SECTOR_SHIFT);
> +		err = -ENOSPC;
> +		goto err_close;
> +	}
> +
> +	return 0;
> +
> +err_close:
> +	cdev_close(l->cdev);
> +err_free:
> +	free(l);
> +err:
> +	return err;
> +}
> +
> +static int dm_linear_destroy(struct dm_target *ti)
> +{
> +	struct dm_linear *l = ti->private;
> +
> +	cdev_close(l->cdev);
> +	free(l);
> +	return 0;
> +}
> +
> +static char *dm_linear_asprint(struct dm_target *ti)
> +{
> +	struct dm_linear *l = ti->private;
> +
> +	return xasprintf("dev:%s offset:%llu",
> +			 cdev_name(l->cdev), l->offset >> SECTOR_SHIFT);
> +}
> +
> +static struct dm_target_ops dm_linear_ops = {
> +	.name = "linear",
> +	.asprint = dm_linear_asprint,
> +	.create = dm_linear_create,
> +	.destroy = dm_linear_destroy,
> +	.read = dm_linear_read,
> +	.write = dm_linear_write,
> +};
> +
> +static int __init dm_linear_init(void)
> +{
> +	return dm_target_register(&dm_linear_ops);
> +}
> +device_initcall(dm_linear_init);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



