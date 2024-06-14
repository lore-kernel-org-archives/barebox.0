Delivery-date: Fri, 14 Jun 2024 09:47:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI1ey-005ogC-1m
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 09:47:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI1ex-0008LN-Re
	for lore@pengutronix.de; Fri, 14 Jun 2024 09:47:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XCwB2I6eYMuZz/sjLgeV4SYO6jvCEzr+MID1Ef//tC4=; b=uD1jFL2dKgsYI3VSgzIAP6TsiR
	dPFnL6X1zl0V+rXKHYa508cmuBjn6SmwJAoLpCINunL5J/61cFQfpbwmKT8gEU6fFkTgBAa8Hnjou
	/G9zJIonzx2hBFlNIhM2ytJU7g8Y2Q3jQZTkmP6EMyCqk+wBvTHS3XRl6+pyN4i2vss4xQeWj3p/y
	TxdPSOJLUWz3wO97y+BR0txMjT3EavUr05i4Gm1SPfM+wuOCNTbxvn/gUNYy3jIKxj69iMTe7N0wa
	Ra/dLZ0tNFotC9YU62iupPjNsC+d+K+X6uQSo1Bq+n+k7Rh2tVgWq8TkBEaT48YdNfx0rT4m4awj0
	0h/s8opw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI1eL-00000001qGQ-36Rj;
	Fri, 14 Jun 2024 07:47:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI1eI-00000001qEc-0AJm
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 07:47:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sI1eF-0008Ih-90; Fri, 14 Jun 2024 09:46:59 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sI1eE-002DTq-QB; Fri, 14 Jun 2024 09:46:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sI1eE-00AMXY-2L;
	Fri, 14 Jun 2024 09:46:58 +0200
Date: Fri, 14 Jun 2024 09:46:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zmv1cicAOuRI4PGO@pengutronix.de>
References: <20240613131531.364894-1-m.felsch@pengutronix.de>
 <20240613131531.364894-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613131531.364894-3-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_004702_104835_A60FE491 
X-CRM114-Status: GOOD (  27.29  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/5] nvmem: expose nvmem cells as cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 13, 2024 at 03:15:29PM +0200, Marco Felsch wrote:
> Expose the nvmem cells via cdevs which is our equivalent to the Linux
> sysfs exposure. This allows the easier user queries for board code and
> shell. Keep the Linux function name scheme for
> nvmem_populate_sysfs_cells() to reduce the diff for nvmem_register()
> function.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - fix error handling path during nvmem_register
> - drop useless list_empty()
> 
>  drivers/nvmem/core.c | 101 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 101 insertions(+)
> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index ee7d4c6301c3..8e91d9c0fc8a 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -44,6 +44,8 @@ struct nvmem_cell_entry {
>  	struct device_node	*np;
>  	struct nvmem_device	*nvmem;
>  	struct list_head	node;
> +
> +	struct cdev		cdev;
>  };
>  
>  struct nvmem_cell {
> @@ -144,6 +146,101 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
>  	return NULL;
>  }
>  
> +static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
> +					    const char *id, int index);
> +
> +static ssize_t nvmem_cell_cdev_read(struct cdev *cdev, void *buf, size_t count,
> +				    loff_t offset, unsigned long flags)
> +{
> +	struct nvmem_cell_entry *entry;
> +	struct nvmem_cell *cell = NULL;
> +	size_t cell_sz, read_len;
> +	void *content;
> +
> +	entry = container_of(cdev, struct nvmem_cell_entry, cdev);
> +	cell = nvmem_create_cell(entry, entry->name, 0);
> +	if (IS_ERR(cell))
> +		return PTR_ERR(cell);
> +
> +	content = nvmem_cell_read(cell, &cell_sz);
> +	if (IS_ERR(content)) {
> +		read_len = PTR_ERR(content);
> +		goto destroy_cell;
> +	}
> +
> +	read_len = min_t(unsigned int, cell_sz - offset, count);
> +	memcpy(buf, content + offset, read_len);
> +	kfree(content);
> +
> +destroy_cell:
> +	kfree_const(cell->id);
> +	kfree(cell);
> +
> +	return read_len;
> +}
> +
> +static ssize_t nvmem_cell_cdev_write(struct cdev *cdev, const void *buf, size_t count,
> +				     loff_t offset, unsigned long flags)
> +{
> +	struct nvmem_cell_entry *entry;
> +	struct nvmem_cell *cell;
> +	int ret;
> +
> +	entry = container_of(cdev, struct nvmem_cell_entry, cdev);
> +
> +	if (!entry->nvmem->reg_write)
> +		return -EPERM;
> +
> +	if (offset >= entry->bytes)
> +		return -EFBIG;
> +
> +	if (offset + count > entry->bytes)
> +		count = entry->bytes - offset;
> +
> +	cell = nvmem_create_cell(entry, entry->name, 0);
> +	if (IS_ERR(cell))
> +		return PTR_ERR(cell);
> +
> +	if (!cell)
> +		return -EINVAL;
> +
> +	ret = nvmem_cell_write(cell, buf, count);
> +
> +	kfree_const(cell->id);
> +	kfree(cell);
> +
> +	return ret;
> +}
> +
> +static struct cdev_operations nvmem_cell_chrdev_ops = {
> +	.read  = nvmem_cell_cdev_read,
> +	.write = nvmem_cell_cdev_write,
> +};
> +
> +static int nvmem_populate_sysfs_cells(struct nvmem_device *nvmem)
> +{
> +	struct device *dev = &nvmem->dev;
> +	struct nvmem_cell_entry *entry;
> +
> +	list_for_each_entry(entry, &nvmem->cells, node) {
> +		struct cdev *cdev;
> +		int ret;
> +
> +		cdev = &entry->cdev;
> +		cdev->name = xasprintf("%s.%s", dev_name(dev),
> +				       kbasename(entry->name));
> +		cdev->ops = &nvmem_cell_chrdev_ops;
> +		cdev->dev = dev;
> +		cdev->size = entry->bytes;
> +
> +		ret = devfs_create(cdev);
> +		if (ret)
> +			return ret;

You might fail here without unregistering the already registered cells.
Furthermore you free the nvmem device which likely leads to memory
corruptions further down. Your choices are:

- Do not fail here, but only print a warning when devfs_create() fails,
  or:
- properly unregister what you registered beforehand.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


