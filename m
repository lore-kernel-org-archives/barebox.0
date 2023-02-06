Delivery-date: Mon, 06 Feb 2023 08:44:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pOwB6-00FjuT-14
	for lore@lore.pengutronix.de; Mon, 06 Feb 2023 08:44:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pOwB3-0002ph-9X
	for lore@pengutronix.de; Mon, 06 Feb 2023 08:44:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ab23tXcZ5Q/yY+yoa645FTM5QXsX8MVNQRSud2z6is=; b=eN5z6c1hiWf0S7fBxmgkOT2Thf
	QN/4zvtrq+LBYBUAsiNN2C2gWN4DhuHJQd1j+8i+zPEBr18rb5QPKNrDRhStjKYJKTBZsPvy1vTFS
	0Q+TxlT1YHaN3NjvUx3HO+iz7NOmd0JvXjR56niX0Iqli9piE2hqXuwY4+ujgL1E5w98UcIWKRFEn
	2lSUPDI5uq4ypy3kSKBy0vbWaRFEm2moUeZPXosO2US4U0lXuiaQagQdJrrmiuVilTmr5VQsnvNSI
	jSB0yGoKTXNw9daLA4oP7waqIbhTtbVwO1XFbUKD+yBYZdKA1BiNH+4nfJnzOZI/BZij9LlGYwSfR
	IRYtxZaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOw9r-007bpP-4q; Mon, 06 Feb 2023 07:43:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOw9l-007boR-BN
	for barebox@lists.infradead.org; Mon, 06 Feb 2023 07:43:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pOw9k-0002jS-34; Mon, 06 Feb 2023 08:43:16 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pOw9j-0002iM-Rz; Mon, 06 Feb 2023 08:43:15 +0100
Date: Mon, 6 Feb 2023 08:43:15 +0100
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230206074315.GB13319@pengutronix.de>
References: <20230202173312.504493-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202173312.504493-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_234317_408449_2B8985C8 
X-CRM114-Status: GOOD (  29.49  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] nvmem: add support for post processing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 06:33:08PM +0100, Lucas Stach wrote:
> This is a port of the Linux commit 5008062f1c3f ("nvmem: core: add nvmem
> cell post processing callback"). It looks a little different, as Linux
> switched to create nvmem cells at registration time, effectively
> deduplicating the cells, but then needed to introduce nvmem_cells_entry
> to be able to store the lookup name, which is used by the post-processing.
> 
> As Barebox simply created a nvmem cell per lookup, as Linux did before
> e888d445ac33 ("nvmem: resolve cells from DT at registration time"), we
> can simply store the lookup name in the cell.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/nvmem/core.c           | 12 ++++++++++++
>  include/linux/nvmem-provider.h |  6 ++++++
>  2 files changed, 18 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index cd3328a650d6..e0110296f87b 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -26,10 +26,12 @@ struct nvmem_device {
>  	bool			read_only;
>  	struct cdev		cdev;
>  	void			*priv;
> +	nvmem_cell_post_process_t cell_post_process;
>  };
>  
>  struct nvmem_cell {
>  	const char		*name;
> +	const char		*id;
>  	int			offset;
>  	int			bytes;
>  	int			bit_offset;
> @@ -145,6 +147,7 @@ static struct nvmem_cell *nvmem_find_cell(const char *cell_id)
>  static void nvmem_cell_drop(struct nvmem_cell *cell)
>  {
>  	list_del(&cell->node);
> +	kfree(cell->id);
>  	kfree(cell);
>  }
>  
> @@ -209,6 +212,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
>  	np = config->cdev ? config->cdev->device_node : config->dev->of_node;
>  	nvmem->dev.of_node = np;
>  	nvmem->priv = config->priv;
> +	nvmem->cell_post_process = config->cell_post_process;
>  
>  	if (config->read_only || !config->bus->write || of_property_read_bool(np, "read-only"))
>  		nvmem->read_only = true;
> @@ -417,6 +421,7 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
>  	cell->offset = be32_to_cpup(addr++);
>  	cell->bytes = be32_to_cpup(addr);
>  	cell->name = cell_np->name;
> +	cell->id = kstrdup_const(name, GFP_KERNEL);
>  
>  	addr = of_get_property(cell_np, "bits", &len);
>  	if (addr && len == (2 * sizeof(u32))) {
> @@ -534,6 +539,13 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
>  	if (cell->bit_offset || cell->nbits)
>  		nvmem_shift_read_buffer_in_place(cell, buf);
>  
> +	if (nvmem->cell_post_process) {
> +		rc = nvmem->cell_post_process(nvmem->priv, cell->id,
> +					      cell->offset, buf, cell->bytes);
> +		if (rc)
> +			return rc;
> +	}
> +
>  	*len = cell->bytes;
>  
>  	return 0;
> diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
> index 1d4e1b75b204..2f130e51791c 100644
> --- a/include/linux/nvmem-provider.h
> +++ b/include/linux/nvmem-provider.h
> @@ -22,6 +22,11 @@ struct nvmem_bus {
>  	int (*read)(void *ctx, unsigned int reg, void *val, size_t val_size);
>  };
>  
> +/* used for vendor specific post processing of cell data */
> +typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
> +					 unsigned int offset, void *buf,
> +					 size_t bytes);
> +
>  struct nvmem_config {
>  	struct device		*dev;
>  	const char		*name;
> @@ -32,6 +37,7 @@ struct nvmem_config {
>  	int			size;
>  	const struct nvmem_bus	*bus;
>  	void			*priv;
> +	nvmem_cell_post_process_t cell_post_process;
>  };
>  
>  struct regmap;
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


