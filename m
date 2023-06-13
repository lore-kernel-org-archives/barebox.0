Delivery-date: Tue, 13 Jun 2023 09:53:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yq6-004tS4-2P
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:53:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yq3-0004iG-3v
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:53:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n8246eFFH8bs6ZET1itlfuDt1SDu0KHXYc/ce7B4XYk=; b=LMvd6GPD26xisEnupzFNgM/LFe
	UgykDFgQfvxDtlvAIh6lIWViSLuKbNuhj3jboeFd5BHkkjxmMD3KgDGTdXmO59gSAPZiNajuDjoT4
	u4Q7KewjU9LU21hlA/nDUlNXFPxOrLoq00eBR1PFBO092wESrqlPCRUCm+8QJo9z5iChDUAGpRPx9
	F51Ua/ccTcz3NJLApO9Bm1CAo7OmPpBtVTtTB7dIKbTJu9CdlsttdiTtNiZhxc/Yo3353cihfMhpp
	FhYmboImLXA2i1+qJJX5SH8ZlAAdQhajCCtb5lTUeKsJXlRpyYeA56dyl5dbhOKtvVikmLomelYv4
	iXZ0fwQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yos-007HPf-3B;
	Tue, 13 Jun 2023 07:52:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yoo-007HO2-1y
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:52:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8yon-0004ZF-AD; Tue, 13 Jun 2023 09:51:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8yon-0000Li-2k; Tue, 13 Jun 2023 09:51:57 +0200
Date: Tue, 13 Jun 2023 09:51:57 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230613075157.GK18491@pengutronix.de>
References: <20230612125711.1086786-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612125711.1086786-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_005158_974744_44515092 
X-CRM114-Status: GOOD (  26.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] nvmem: retire struct nvmem_bus for better Linux
 compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 12, 2023 at 02:57:11PM +0200, Ahmad Fatoum wrote:
> nvmem_bus is arguably a confusing name and serves no real purpose over
> just embedding its two members directly. That's what Linux currently
> does, so follow suit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/eeprom/at24.c            |  8 ++------
>  drivers/net/phy/mv88e6xxx/chip.c |  8 ++------
>  drivers/nvmem/core.c             | 24 +++++++++++++++---------
>  drivers/nvmem/eeprom_93xx46.c    |  9 +++------
>  drivers/nvmem/kvx-otp-nv.c       |  6 +-----
>  drivers/nvmem/partition.c        |  8 ++------
>  drivers/nvmem/rave-sp-eeprom.c   |  8 ++------
>  drivers/nvmem/regmap.c           |  8 ++------
>  drivers/nvmem/rmem.c             |  6 +-----
>  drivers/nvmem/snvs_lpgpr.c       |  8 ++------
>  drivers/rtc/rtc-imxdi.c          |  8 ++------
>  include/linux/nvmem-provider.h   | 10 ++++------
>  12 files changed, 38 insertions(+), 73 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
> index 43cd78a88328..23cb0e1fbbc9 100644
> --- a/drivers/eeprom/at24.c
> +++ b/drivers/eeprom/at24.c
> @@ -363,11 +363,6 @@ static int at24_nvmem_write(void *ctx, unsigned off, const void *buf, size_t cou
>  	return at24_write(ctx, buf, off, count);
>  }
>  
> -static const struct nvmem_bus at24_nvmem_bus = {
> -	.write = at24_nvmem_write,
> -	.read  = at24_nvmem_read,
> -};
> -
>  static int at24_probe(struct device *dev)
>  {
>  	struct i2c_client *client = to_i2c_client(dev);
> @@ -489,7 +484,8 @@ static int at24_probe(struct device *dev)
>  	at24->nvmem_config.dev = dev;
>  	at24->nvmem_config.priv = at24;
>  	at24->nvmem_config.read_only = !writable;
> -	at24->nvmem_config.bus = &at24_nvmem_bus;
> +	at24->nvmem_config.reg_write = at24_nvmem_write;
> +	at24->nvmem_config.reg_read  = at24_nvmem_read;
>  	at24->nvmem_config.stride = 1;
>  	at24->nvmem_config.word_size = 1;
>  	at24->nvmem_config.size = chip.byte_len;
> diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
> index 4dbc4cc3418f..5c1e0a524203 100644
> --- a/drivers/net/phy/mv88e6xxx/chip.c
> +++ b/drivers/net/phy/mv88e6xxx/chip.c
> @@ -832,11 +832,6 @@ static int mv88e6xxx_eeprom_write(void *ctx, unsigned offset, const void *val, s
>  	return chip->info->ops->set_eeprom(chip, &eeprom, (void *)val);
>  }
>  
> -static const struct nvmem_bus mv88e6xxx_eeprom_nvmem_bus = {
> -	.write = mv88e6xxx_eeprom_write,
> -	.read  = mv88e6xxx_eeprom_read,
> -};
> -
>  static int mv88e6xxx_probe(struct device *dev)
>  {
>  	struct device_node *np = dev->of_node;
> @@ -911,7 +906,8 @@ static int mv88e6xxx_probe(struct device *dev)
>  			.stride = 1,
>  			.size = eeprom_len,
>  			.read_only = false,
> -			.bus = &mv88e6xxx_eeprom_nvmem_bus,
> +			.reg_write = mv88e6xxx_eeprom_write,
> +			.reg_read = mv88e6xxx_eeprom_read,
>  		};
>  
>  		if (IS_ERR(nvmem_register(&config)))
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index e0110296f87b..595514f2ebcc 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -16,7 +16,6 @@
>  struct nvmem_device {
>  	const char		*name;
>  	struct device		dev;
> -	const struct nvmem_bus	*bus;
>  	struct list_head	node;
>  	int			stride;
>  	int			word_size;
> @@ -27,6 +26,10 @@ struct nvmem_device {
>  	struct cdev		cdev;
>  	void			*priv;
>  	nvmem_cell_post_process_t cell_post_process;
> +	int			(*reg_write)(void *ctx, unsigned int reg,
> +					     const void *val, size_t val_size);
> +	int			(*reg_read)(void *ctx, unsigned int reg,
> +					    void *val, size_t val_size);
>  };
>  
>  struct nvmem_cell {
> @@ -208,13 +211,14 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
>  	nvmem->word_size = config->word_size;
>  	nvmem->size = config->size;
>  	nvmem->dev.parent = config->dev;
> -	nvmem->bus = config->bus;
> +	nvmem->reg_read = config->reg_read;
> +	nvmem->reg_write = config->reg_write;
>  	np = config->cdev ? config->cdev->device_node : config->dev->of_node;
>  	nvmem->dev.of_node = np;
>  	nvmem->priv = config->priv;
>  	nvmem->cell_post_process = config->cell_post_process;
>  
> -	if (config->read_only || !config->bus->write || of_property_read_bool(np, "read-only"))
> +	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
>  		nvmem->read_only = true;
>  
>  	dev_set_name(&nvmem->dev, config->name);
> @@ -531,7 +535,7 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
>  {
>  	int rc;
>  
> -	rc = nvmem->bus->read(nvmem->priv, cell->offset, buf, cell->bytes);
> +	rc = nvmem->reg_read(nvmem->priv, cell->offset, buf, cell->bytes);
>  	if (rc < 0)
>  		return rc;
>  
> @@ -603,7 +607,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
>  		*b <<= bit_offset;
>  
>  		/* setup the first byte with lsb bits from nvmem */
> -		rc = nvmem->bus->read(nvmem->priv, cell->offset, &v, 1);
> +		rc = nvmem->reg_read(nvmem->priv, cell->offset, &v, 1);
>  		if (rc < 0)
>  			return ERR_PTR(rc);
>  
> @@ -623,7 +627,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
>  	/* if it's not end on byte boundary */
>  	if ((nbits + bit_offset) % BITS_PER_BYTE) {
>  		/* setup the last byte with msb bits from nvmem */
> -		rc = nvmem->bus->read(nvmem->priv, cell->offset + cell->bytes - 1,
> +		rc = nvmem->reg_read(nvmem->priv, cell->offset + cell->bytes - 1,
>  				      &v, 1);
>  		if (rc < 0)
>  			return ERR_PTR(rc);
> @@ -659,7 +663,7 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
>  			return PTR_ERR(buf);
>  	}
>  
> -	rc = nvmem->bus->write(nvmem->priv, cell->offset, buf, cell->bytes);
> +	rc = nvmem->reg_write(nvmem->priv, cell->offset, buf, cell->bytes);
>  
>  	/* free the tmp buffer */
>  	if (cell->bit_offset || cell->nbits)
> @@ -756,7 +760,8 @@ int nvmem_device_read(struct nvmem_device *nvmem,
>  	if (!bytes)
>  		return 0;
>  
> -	rc = nvmem->bus->read(nvmem->priv, offset, buf, bytes);
> +	rc = nvmem->reg_read(nvmem->priv, offset, buf, bytes);
> +
>  	if (rc < 0)
>  		return rc;
>  
> @@ -789,7 +794,8 @@ int nvmem_device_write(struct nvmem_device *nvmem,
>  	if (!bytes)
>  		return 0;
>  
> -	rc = nvmem->bus->write(nvmem->priv, offset, buf, bytes);
> +	rc = nvmem->reg_write(nvmem->priv, offset, buf, bytes);
> +
>  	if (rc < 0)
>  		return rc;
>  
> diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
> index fbc516e1e7d2..b39977930cda 100644
> --- a/drivers/nvmem/eeprom_93xx46.c
> +++ b/drivers/nvmem/eeprom_93xx46.c
> @@ -362,11 +362,6 @@ static int eeprom_93xx46_probe_dt(struct spi_device *spi)
>  	return 0;
>  }
>  
> -static const struct nvmem_bus eeprom_93xx46_nvmem_bus = {
> -	.write = eeprom_93xx46_write,
> -	.read  = eeprom_93xx46_read,
> -};
> -
>  static int eeprom_93xx46_probe(struct device *dev)
>  {
>  	struct spi_device *spi = (struct spi_device *)dev->type_data;
> @@ -406,7 +401,9 @@ static int eeprom_93xx46_probe(struct device *dev)
>  	edev->nvmem_config.dev = &spi->dev;
>  	edev->nvmem_config.priv = edev;
>  	edev->nvmem_config.read_only = pd->flags & EE_READONLY;
> -	edev->nvmem_config.bus = &eeprom_93xx46_nvmem_bus;
> +	edev->nvmem_config.reg_write = eeprom_93xx46_write;
> +	edev->nvmem_config.reg_read  = eeprom_93xx46_read;
> +
>  	edev->nvmem_config.stride = 4;
>  	edev->nvmem_config.word_size = 1;
>  	edev->nvmem_config.size = edev->size;
> diff --git a/drivers/nvmem/kvx-otp-nv.c b/drivers/nvmem/kvx-otp-nv.c
> index b888da2de706..015fdd0ba61f 100644
> --- a/drivers/nvmem/kvx-otp-nv.c
> +++ b/drivers/nvmem/kvx-otp-nv.c
> @@ -49,10 +49,6 @@ static int kvx_otp_nv_read(void *context, unsigned int offset,
>  	return 0;
>  }
>  
> -static const struct nvmem_bus kvx_otp_nv_bus = {
> -	.read = kvx_otp_nv_read,
> -};
> -
>  static const struct of_device_id kvx_otp_nv_match[] = {
>  	{ .compatible = "kalray,kvx-otp-nv" },
>  	{ /* sentinel */},
> @@ -81,7 +77,7 @@ static int kvx_otp_nv_probe(struct device *dev)
>  	econfig.size = resource_size(res);
>  	econfig.dev = dev;
>  	econfig.priv = priv;
> -	econfig.bus = &kvx_otp_nv_bus;
> +	econfig.reg_read = kvx_otp_nv_read;
>  
>  	dev->priv = priv;
>  
> diff --git a/drivers/nvmem/partition.c b/drivers/nvmem/partition.c
> index a034c6c4d55a..14907e05ba2d 100644
> --- a/drivers/nvmem/partition.c
> +++ b/drivers/nvmem/partition.c
> @@ -18,11 +18,6 @@ static int nvmem_cdev_read(void *ctx, unsigned offset, void *buf, size_t bytes)
>  	return cdev_read(ctx, buf, bytes, offset, 0);
>  }
>  
> -static struct nvmem_bus nvmem_cdev_bus = {
> -	.read = nvmem_cdev_read,
> -	.write = nvmem_cdev_write,
> -};
> -
>  struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
>  {
>  	struct nvmem_config config = {};
> @@ -34,7 +29,8 @@ struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
>  	config.stride = 1;
>  	config.word_size = 1;
>  	config.size = cdev->size;
> -	config.bus = &nvmem_cdev_bus;
> +	config.reg_read = nvmem_cdev_read;
> +	config.reg_write = nvmem_cdev_write;
>  
>  	return nvmem_register(&config);
>  }
> diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
> index a16b8a5a7eb9..80da8ade1927 100644
> --- a/drivers/nvmem/rave-sp-eeprom.c
> +++ b/drivers/nvmem/rave-sp-eeprom.c
> @@ -280,11 +280,6 @@ static int rave_sp_eeprom_write(void *ctx, unsigned offset, const void *val, siz
>  				     offset, (void *)val, bytes);
>  }
>  
> -static const struct nvmem_bus rave_sp_eeprom_nvmem_bus = {
> -	.write = rave_sp_eeprom_write,
> -	.read  = rave_sp_eeprom_read,
> -};
> -
>  static int rave_sp_eeprom_probe(struct device *dev)
>  {
>  	struct rave_sp *sp = dev->parent->priv;
> @@ -329,7 +324,8 @@ static int rave_sp_eeprom_probe(struct device *dev)
>  	config.word_size = 1;
>  	config.stride    = 1;
>  	config.size      = reg[1];
> -	config.bus       = &rave_sp_eeprom_nvmem_bus;
> +	config.reg_write = rave_sp_eeprom_write;
> +	config.reg_read  = rave_sp_eeprom_read;
>  
>  	nvmem = nvmem_register(&config);
>  	if (IS_ERR(nvmem)) {
> diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
> index 58b3fe647b28..db0221bae325 100644
> --- a/drivers/nvmem/regmap.c
> +++ b/drivers/nvmem/regmap.c
> @@ -53,11 +53,6 @@ static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes
>  	return 0;
>  }
>  
> -static struct nvmem_bus nvmem_regmap_bus = {
> -	.read = nvmem_regmap_read,
> -	.write = nvmem_regmap_write,
> -};
> -
>  struct nvmem_device *
>  nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
>  			      nvmem_cell_post_process_t cell_post_process)
> @@ -74,8 +69,9 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
>  	config.stride = 1;
>  	config.word_size = 1;
>  	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
> -	config.bus = &nvmem_regmap_bus;
>  	config.cell_post_process = cell_post_process;
> +	config.reg_write = nvmem_regmap_write;
> +	config.reg_read = nvmem_regmap_read;
>  
>  	return nvmem_register(&config);
>  }
> diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
> index 8982ee836d84..069a59866619 100644
> --- a/drivers/nvmem/rmem.c
> +++ b/drivers/nvmem/rmem.c
> @@ -21,10 +21,6 @@ static int rmem_read(void *context, unsigned int offset,
>  			bytes, offset, 0);
>  }
>  
> -static struct nvmem_bus rmem_nvmem_bus = {
> -	.read = rmem_read,
> -};
> -
>  static int rmem_probe(struct device *dev)
>  {
>  	struct nvmem_config config = { };
> @@ -45,7 +41,7 @@ static int rmem_probe(struct device *dev)
>  	config.priv = priv;
>  	config.name = "rmem";
>  	config.size = resource_size(mem);
> -	config.bus = &rmem_nvmem_bus;
> +	config.reg_read = rmem_read;
>  
>  	return PTR_ERR_OR_ZERO(nvmem_register(&config));
>  }
> diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
> index fc4b2c2bb6d4..8c20ac63d188 100644
> --- a/drivers/nvmem/snvs_lpgpr.c
> +++ b/drivers/nvmem/snvs_lpgpr.c
> @@ -73,11 +73,6 @@ static int snvs_lpgpr_read(void *ctx, unsigned offset, void *val, size_t bytes)
>  				val, bytes);
>  }
>  
> -static const struct nvmem_bus snvs_lpgpr_nvmem_bus = {
> -	.write = snvs_lpgpr_write,
> -	.read  = snvs_lpgpr_read,
> -};
> -
>  static int snvs_lpgpr_probe(struct device *dev)
>  {
>  	struct device_node *node = dev->of_node;
> @@ -112,7 +107,8 @@ static int snvs_lpgpr_probe(struct device *dev)
>  	cfg->stride = 4;
>  	cfg->word_size = 4;
>  	cfg->size = 4;
> -	cfg->bus = &snvs_lpgpr_nvmem_bus;
> +	cfg->reg_write = snvs_lpgpr_write;
> +	cfg->reg_read  = snvs_lpgpr_read;
>  
>  	nvmem = nvmem_register(cfg);
>  	if (IS_ERR(nvmem)) {
> diff --git a/drivers/rtc/rtc-imxdi.c b/drivers/rtc/rtc-imxdi.c
> index 08e49d8fb6ae..f38e7580a6e1 100644
> --- a/drivers/rtc/rtc-imxdi.c
> +++ b/drivers/rtc/rtc-imxdi.c
> @@ -529,17 +529,13 @@ static int nvstore_read(void *ctx, unsigned reg, void *val, size_t bytes)
>  	return 0;
>  }
>  
> -static struct nvmem_bus nvstore_nvmem_bus = {
> -	.write = nvstore_write,
> -	.read  = nvstore_read,
> -};
> -
>  static struct nvmem_config nvstore_nvmem_config = {
>  	.name = "nvstore",
>  	.stride = 4,
>  	.word_size = 4,
>  	.size = 4,
> -	.bus = &nvstore_nvmem_bus,
> +	.reg_write = nvstore_write,
> +	.reg_read = nvstore_read,
>  };
>  
>  static int __init dryice_rtc_probe(struct device *dev)
> diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
> index 43fe49648e66..3c30e18409c8 100644
> --- a/include/linux/nvmem-provider.h
> +++ b/include/linux/nvmem-provider.h
> @@ -17,11 +17,6 @@
>  
>  struct nvmem_device;
>  
> -struct nvmem_bus {
> -	int (*write)(void *ctx, unsigned int reg, const void *val, size_t val_size);
> -	int (*read)(void *ctx, unsigned int reg, void *val, size_t val_size);
> -};
> -
>  /* used for vendor specific post processing of cell data */
>  typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
>  					 unsigned int offset, void *buf,
> @@ -35,7 +30,10 @@ struct nvmem_config {
>  	int			stride;
>  	int			word_size;
>  	int			size;
> -	const struct nvmem_bus	*bus;
> +	int			(*reg_write)(void *ctx, unsigned int reg,
> +					     const void *val, size_t val_size);
> +	int			(*reg_read)(void *ctx, unsigned int reg,
> +					    void *val, size_t val_size);
>  	void			*priv;
>  	nvmem_cell_post_process_t cell_post_process;
>  };
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


