Delivery-date: Mon, 25 Mar 2024 11:59:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roi3Y-003ioI-1W
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 11:59:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roi3X-0000Jg-Js
	for lore@pengutronix.de; Mon, 25 Mar 2024 11:59:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iuLpqUIEzwmLJJhvsVem+HhPn9oozsDiIkOCEg7lYXU=; b=WHVO9nABX0iFRIm6GVwif86y+N
	yk/r4vOdKvjHAtU3s+WApTBEjSAQdh8jPekE5c1XMwEvHL4F43XsjuIenDIq+ucAdhKtp+zQVpxXk
	H180tjbGezdxq4MsCI05Sg5+/P64UyvLqM07P9tBMgE6QLfZLQxPf9QSEsQiuW42C2oYEy2vzfvsP
	z7Z5rI/Pk7uax5WlgKamnI768mEEDQXHOFiFZBl/zA3og4DVCRfZpFLcX6CJ87EjTS9jGARA2yk60
	6SS25ieZjqPvei0kdlSikdTG6CNHP94SHHH63EQ2EyNn2PjC0Hc79sV3IAkVa/ytH5QR0+fwzXk8J
	FWmNBfpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roi2w-0000000GuEf-0NAd;
	Mon, 25 Mar 2024 10:59:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roi2q-0000000GuBs-3RJb
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 10:59:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1roi2m-0000CI-GR; Mon, 25 Mar 2024 11:59:08 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1roi2m-008P6L-4D; Mon, 25 Mar 2024 11:59:08 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1roi2m-00G6OG-0A;
	Mon, 25 Mar 2024 11:59:08 +0100
Date: Mon, 25 Mar 2024 11:59:08 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240325105908.lw54tqnyxmyombix@pengutronix.de>
References: <20240322164559.1768983-1-m.felsch@pengutronix.de>
 <20240322164559.1768983-2-m.felsch@pengutronix.de>
 <ZgFIqpbUHg1H1A3l@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgFIqpbUHg1H1A3l@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_035913_071587_03DE4934 
X-CRM114-Status: GOOD (  40.46  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] nvmem: expose nvmem cells as cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-03-25, Sascha Hauer wrote:
> On Fri, Mar 22, 2024 at 05:45:56PM +0100, Marco Felsch wrote:
> > Expose the nvmem cells via cdevs which is our equivalent to the Linux
> > sysfs exposure. This allows the easier user queries for board code and
> > shell. Keep the Linux function name scheme for
> > nvmem_populate_sysfs_cells() to reduce the diff for nvmem_register()
> > function.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/nvmem/core.c | 109 +++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 109 insertions(+)
> > 
> > diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> > index 657025daddb3..b4a29e4b67f3 100644
> > --- a/drivers/nvmem/core.c
> > +++ b/drivers/nvmem/core.c
> > @@ -44,6 +44,8 @@ struct nvmem_cell_entry {
> >  	struct device_node	*np;
> >  	struct nvmem_device	*nvmem;
> >  	struct list_head	node;
> > +
> > +	struct cdev		cdev;
> >  };
> >  
> >  struct nvmem_cell {
> > @@ -144,6 +146,107 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
> >  	return NULL;
> >  }
> >  
> > +static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
> > +					    const char *id, int index);
> > +
> > +static ssize_t nvmem_cell_cdev_read(struct cdev *cdev, void *buf, size_t count,
> > +				    loff_t offset, unsigned long flags)
> > +{
> > +	struct nvmem_cell_entry *entry;
> > +	struct nvmem_cell *cell = NULL;
> > +	size_t cell_sz, read_len;
> > +	void *content;
> > +
> > +	entry = container_of(cdev, struct nvmem_cell_entry, cdev);
> > +	cell = nvmem_create_cell(entry, entry->name, 0);
> > +	if (IS_ERR(cell))
> > +		return PTR_ERR(cell);
> > +
> > +	if (!cell)
> > +		return -EINVAL;
> 
> From looking at the implementation of nvmem_create_cell() I'd say this
> can't happen.

Right, I took it from the Linux implementation and wanted to keep the
diff small. But I can change it.

> > +
> > +	content = nvmem_cell_read(cell, &cell_sz);
> > +	if (IS_ERR(content)) {
> > +		read_len = PTR_ERR(content);
> > +		goto destroy_cell;
> > +	}
> > +
> > +	read_len = min_t(unsigned int, cell_sz - offset, count);
> > +	memcpy(buf, content + offset, read_len);
> > +	kfree(content);
> > +
> > +destroy_cell:
> > +	kfree_const(cell->id);
> > +	kfree(cell);
> > +
> > +	return read_len;
> > +}
> > +
> > +static ssize_t nvmem_cell_cdev_write(struct cdev *cdev, const void *buf, size_t count,
> > +				     loff_t offset, unsigned long flags)
> > +{
> > +	struct nvmem_cell_entry *entry;
> > +	struct nvmem_cell *cell;
> > +	int ret;
> > +
> > +	entry = container_of(cdev, struct nvmem_cell_entry, cdev);
> > +
> > +	if (!entry->nvmem->reg_write)
> > +		return -EPERM;
> > +
> > +	if (offset >= entry->bytes)
> > +		return -EFBIG;
> > +
> > +	if (offset + count > entry->bytes)
> > +		count = entry->bytes - offset;
> > +
> > +	cell = nvmem_create_cell(entry, entry->name, 0);
> > +	if (IS_ERR(cell))
> > +		return PTR_ERR(cell);
> > +
> > +	if (!cell)
> > +		return -EINVAL;
> > +
> > +	ret = nvmem_cell_write(cell, buf, count);
> > +
> > +	kfree_const(cell->id);
> > +	kfree(cell);
> > +
> > +	return ret;
> > +}
> > +
> > +static struct cdev_operations nvmem_cell_chrdev_ops = {
> > +	.read  = nvmem_cell_cdev_read,
> > +	.write = nvmem_cell_cdev_write,
> > +};
> > +
> > +static int nvmem_populate_sysfs_cells(struct nvmem_device *nvmem)
> > +{
> > +	struct device *dev = &nvmem->dev;
> > +	struct nvmem_cell_entry *entry;
> > +
> > +	if (list_empty(&nvmem->cells))
> > +		return 0;
> 
> This is unnecessary.

Sure.

> > +
> > +	list_for_each_entry(entry, &nvmem->cells, node) {
> > +		struct cdev *cdev;
> > +		int ret;
> > +
> > +		cdev = &entry->cdev;
> > +		cdev->name = xasprintf("%s.%s", dev_name(dev),
> > +				       kbasename(entry->name));
> > +		cdev->ops = &nvmem_cell_chrdev_ops;
> > +		cdev->dev = dev;
> > +		cdev->size = entry->bytes;
> > +
> > +		ret = devfs_create(cdev);
> > +		if (ret)
> > +			return ret;
> > +	}
> 
> Can't we just register a cdev when the cell is actually created? Why do
> we iterate over all cells instead?

Reason for me was to align the nvmem_register() function more with the
Linux variant to port other features like layouts more easily and to
import fixes more easily.

> I am looking at the corresponding kernel code and I wonder how
> u-boot-env is supposed to work. In u_boot_env_probe() first
> nvmem_register() is called and nvmem_add_one_cell() for each variable
> afterwards. nvmem_populate_sysfs_cells() is called during
> nvmem_register(), so how are the variables added later are supposed to
> get a sysfs entry?

I think they don't supposed to get an sysfs entry at all since the
uboot_env handling uses the partitions mechanism. To make it work with
the new sysfs interface the u-boot driver need to be changed to an
nvmem-layout driver, which is the new way of abstracting an layout.

> > +	return 0;
> > +}
> > +
> >  static void nvmem_cell_entry_add(struct nvmem_cell_entry *cell)
> >  {
> >  	list_add_tail(&cell->node, &cell->nvmem->cells);
> > @@ -337,6 +440,12 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
> >  		}
> >  	}
> >  
> > +	rval = nvmem_populate_sysfs_cells(nvmem);
> > +	if (rval) {
> > +		kfree(nvmem);
> 
> It's fine returning an error without cleaning up properly, but freeing
> the memory on an half registered device is leading to memory
> corruptions which must be fixed. We have the same in barebox master
> already:
> 
> >        rval = register_device(&nvmem->dev);
> >        if (rval) {
> >                kfree(nvmem);
> >                return ERR_PTR(rval);
> >        }
> >
> >        if (!config->cdev) {
> >                rval = nvmem_register_cdev(nvmem, config->name);
> >                if (rval) {
> >                        kfree(nvmem);
> 
> Either we unregister the previously registered device before freeing the
> memory or we keep the allocation, but freeing the memory without
> unregistering the device is wrong.

You're right, I'll fix that.

Regards,
  Marco

> 
> >                        return ERR_PTR(rval);
> >                }
> >        }
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


