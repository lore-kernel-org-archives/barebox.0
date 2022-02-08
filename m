Delivery-date: Tue, 08 Feb 2022 13:29:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHPcl-009PdH-Nv
	for lore@lore.pengutronix.de; Tue, 08 Feb 2022 13:29:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHPcj-0006Fx-Jt
	for lore@pengutronix.de; Tue, 08 Feb 2022 13:29:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lX4MLbK5lmr2qjyqb5GfdZhTj0cvB93JNdHH7RypkTM=; b=L0Vj5vjCh55jfD
	eQaNWmMlzWS7LU86mZ5ubDi9wczso0GQSB8TWlmI7NUrNXaZQXYcneEOm2K5miH/1tvFBexIwJluV
	1VgFsOaVQV64ODMF/jb3ro8VYsSJsjDvA2dlVY/Z43WTJXBJGex9R5L5XnOKVNXcds2y0lSaBCIVD
	0Oaio9iRGycSJlFsuISbDy+l4kRq8UmiU0eTJ3pUCB5/8WmuKn1UzmeuAmR62/HGbO2U1RZbYNWYD
	Y7n31dcHqkCZuy6kv9GKVHlvXKwi3BNr9ymSIgTinc7ohb8lEr7GJzXLMC0W8cHD2dSzMr3xmuRvc
	6dj/V19De6peox6Z2mhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHPav-00DkN9-U1; Tue, 08 Feb 2022 12:27:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHPan-00DkMq-IV
 for barebox@lists.infradead.org; Tue, 08 Feb 2022 12:27:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHPal-00062Y-G2; Tue, 08 Feb 2022 13:27:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHPal-0004eD-7K; Tue, 08 Feb 2022 13:27:31 +0100
Date: Tue, 8 Feb 2022 13:27:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Olbrich <mol@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220208122731.GQ18637@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
 <20220207094953.949868-8-s.hauer@pengutronix.de>
 <20220208092931.GC24132@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208092931.GC24132@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:26:45 up 59 days, 21:12, 85 users,  load average: 0.03, 0.09, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_042736_957057_25BBD50B 
X-CRM114-Status: GOOD (  44.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 8/8] misc: Add storage-by-uuid driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 08, 2022 at 10:29:31AM +0100, Michael Olbrich wrote:
> On Mon, Feb 07, 2022 at 10:49:53AM +0100, Sascha Hauer wrote:
> > This adds a driver which matches to a "barebox,storage-by-uuid"
> > compatible node. The driver looks for a storage device matching the
> > given UUID and when found registers a new cdev for the device.
> > 
> > This driver solved a very specific problem. On EFI the storage devices
> > are not connected to any device tree node. barebox-state however expects
> > a node to use as its backend. The obvious solution would be to create
> > a partition with a specific partuuid and use that for state, in our
> > special usecase though the storage device is partitioned with a MBR
> > which doesn't have any space left to create a new partition. As this
> > driver parses the of partition binding we can use that to create
> > a partition in an unallocated are of the disk which is then used for
> > state.
> > 
> > This driver has the problem that it depends on storage devices which
> > are not described in the device tree. This means it cannot work with
> > deep probe. This is not a problem on EFI though. It's a special purpose
> > driver, it's not recommended for general use.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/misc/Kconfig           |  23 ++++
> >  drivers/misc/Makefile          |   1 +
> >  drivers/misc/storage-by-uuid.c | 199 +++++++++++++++++++++++++++++++++
> >  3 files changed, 223 insertions(+)
> >  create mode 100644 drivers/misc/storage-by-uuid.c
> > 
> > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > index 5ab0506cd9..78c9c193d8 100644
> > --- a/drivers/misc/Kconfig
> > +++ b/drivers/misc/Kconfig
> > @@ -47,4 +47,27 @@ config STARFIVE_PWRSEQ
> >  	  be accessed over /dev/mem or used from kernels which still depend
> >  	  on bootloader for initialization.
> >  
> > +config STORAGE_BY_UUID
> > +	bool "storage by UUID"
> > +	depends on OFDEVICE
> > +	help
> > +	  This adds a driver which matches to a "barebox,storage-by-uuid"
> > +	  compatible node. The driver looks for a storage device matching the
> > +	  given UUID and when found registers a new cdev for the device.
> > +
> > +	  This driver solved a very specific problem. On EFI the storage devices
> > +	  are not connected to any device tree node. barebox-state however expects
> > +	  a node to use as its backend. The obvious solution would be to create
> > +	  a partition with a specific partuuid and use that for state, in our
> > +	  special usecase though the storage device is partitioned with a MBR
> > +	  which doesn't have any space left to create a new partition. As this
> > +	  driver parses the of partition binding we can use that to create
> > +	  a partition in an unallocated are of the disk which is then used for
> > +	  state.
> > +
> > +	  This driver has the problem that it depends on storage devices which
> > +	  are not described in the device tree. This means it cannot work with
> > +	  deep probe. This is not a problem on EFI though. It's a special purpose
> > +	  driver, it's not recommended for general use.
> > +
> >  endmenu
> > diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> > index 6326e784fc..986f7b1b38 100644
> > --- a/drivers/misc/Makefile
> > +++ b/drivers/misc/Makefile
> > @@ -9,3 +9,4 @@ obj-$(CONFIG_STATE_DRV)		+= state.o
> >  obj-$(CONFIG_DEV_MEM)		+= mem.o
> >  obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
> >  obj-$(CONFIG_STARFIVE_PWRSEQ)	+= starfive-pwrseq.o
> > +obj-$(CONFIG_STORAGE_BY_UUID)	+= storage-by-uuid.o
> > diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
> > new file mode 100644
> > index 0000000000..c9dd6e9793
> > --- /dev/null
> > +++ b/drivers/misc/storage-by-uuid.c
> > @@ -0,0 +1,199 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +#include <common.h>
> > +#include <init.h>
> > +#include <io.h>
> > +#include <of.h>
> > +#include <malloc.h>
> > +#include <partition.h>
> > +#include <envfs.h>
> > +#include <fs.h>
> > +
> > +static LIST_HEAD(sbu_list);
> > +
> > +struct sbu {
> > +	char *uuid;
> > +	struct device_d *dev;
> > +	struct cdev *rcdev;
> > +	struct cdev cdev;
> > +	struct list_head list;
> > +};
> > +
> > +void storage_by_uuid_check_exist(struct cdev *cdev);
> > +
> > +static ssize_t sbu_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_read(sbu->rcdev, buf, count, offset, flags);
> > +}
> > +
> > +static ssize_t sbu_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_write(sbu->rcdev, buf, count, offset, flags);
> > +}
> > +
> > +static int sbu_ioctl(struct cdev *cdev, int request, void *buf)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_ioctl(sbu->rcdev, request, buf);
> > +}
> > +
> > +static int sbu_open(struct cdev *cdev, unsigned long flags)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_open(sbu->rcdev, flags);
> > +}
> > +
> > +static int sbu_close(struct cdev *cdev)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	cdev_close(sbu->rcdev);
> > +
> > +	return 0;
> > +}
> > +
> > +static int sbu_flush(struct cdev *cdev)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_flush(sbu->rcdev);
> > +}
> > +
> > +static int sbu_erase(struct cdev *cdev, loff_t count, loff_t offset)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_erase(sbu->rcdev, count, offset);
> > +}
> > +
> > +static int sbu_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_protect(sbu->rcdev, count, offset, prot);
> > +}
> > +
> > +static int sbu_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_discard_range(sbu->rcdev, count, offset);
> > +}
> > +
> > +static int sbu_memmap(struct cdev *cdev, void **map, int flags)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_memmap(sbu->rcdev, map, flags);
> > +}
> > +
> > +static int sbu_truncate(struct cdev *cdev, size_t size)
> > +{
> > +	struct sbu *sbu = cdev->priv;
> > +
> > +	return cdev_truncate(sbu->rcdev, size);
> > +}
> > +
> > +static struct cdev_operations sbu_ops = {
> > +        .read = sbu_read,
> > +        .write = sbu_write,
> > +        .ioctl = sbu_ioctl,
> > +        .open = sbu_open,
> > +        .close = sbu_close,
> > +        .flush = sbu_flush,
> > +        .erase = sbu_erase,
> > +        .protect = sbu_protect,
> > +        .discard_range = sbu_discard_range,
> > +        .memmap = sbu_memmap,
> > +        .truncate = sbu_truncate,
> 
> Should be indented with tabs, right?

Right, fixed that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

