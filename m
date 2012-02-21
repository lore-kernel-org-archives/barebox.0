Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rzgpw-0007Ud-8u
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 03:56:22 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 48FCDFFA15B
 for <barebox@lists.infradead.org>; Tue, 21 Feb 2012 04:58:49 +0100 (CET)
Date: Tue, 21 Feb 2012 04:48:35 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120221034835.GD9343@game.jcrosoft.org>
References: <1329784059-6006-1-git-send-email-eric@eukrea.com>
 <1329784059-6006-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1329784059-6006-2-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 2/7] mfd: add mc34708 driver
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

> +static struct mc34708 *mc_dev;
> +
> +struct mc34708 *mc34708_get(void)
> +{
> +	if (!mc_dev)
> +		return NULL;
> +
> +	return mc_dev;
> +}
> +EXPORT_SYMBOL(mc34708_get);
no please do not export the current as it will not alloe multiple chip on
board
> +
> +#ifdef CONFIG_SPI
please drop the ifdef
> +static int spi_rw(struct spi_device *spi, void * buf, size_t len)
> +{
> +	int ret;
> +
> +	struct spi_transfer t = {
> +		.tx_buf = (const void *)buf,
> +		.rx_buf = buf,
> +		.len = len,
> +		.cs_change = 0,
> +		.delay_usecs = 0,
> +	};
> +	struct spi_message m;
> +
> +	spi_message_init(&m);
> +	spi_message_add_tail(&t, &m);
> +
> +	if ((ret = spi_sync(spi, &m)))
> +		return ret;
> +	return 0;
> +}
> +
> +#define MXC_PMIC_REG_NUM(reg)	(((reg) & 0x3f) << 25)
> +#define MXC_PMIC_WRITE		(1 << 31)
> +
> +static int mc34708_spi_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val)
> +{
> +	uint32_t buf;
> +
> +	buf = MXC_PMIC_REG_NUM(reg);
> +
> +	spi_rw(mc34708->spi, &buf, 4);
you need to check the return
> +
> +	*val = buf;
> +
> +	return 0;
> +}
> +
> +static int mc34708_spi_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val)
> +{
> +	uint32_t buf = MXC_PMIC_REG_NUM(reg) | MXC_PMIC_WRITE | (val & 0xffffff);
> +
> +	spi_rw(mc34708->spi, &buf, 4);
ditto
> +
> +	return 0;
> +}
> +#endif
> +
> +#ifdef CONFIG_I2C
please drop the ifdef
> +static int mc34708_i2c_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val)
> +{
> +	u8 buf[3];
> +	int ret;
> +
> +	ret = i2c_read_reg(mc34708->client, reg, buf, 3);
> +	*val = buf[0] << 16 | buf[1] << 8 | buf[2] << 0;
> +
> +	return ret == 3 ? 0 : ret;
> +}
> +
> +static int mc34708_i2c_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val)
> +{
> +	u8 buf[] = {
> +		val >> 16,
> +		val >>  8,
> +		val >>  0,
> +	};
why not convert val as a u8* and did this wirk on big endian?
> +	int ret;
> +
> +	ret = i2c_write_reg(mc34708->client, reg, buf, 3);
> +
> +	return ret == 3 ? 0 : ret;
> +}
> +#endif
> +
> +int mc34708_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val)
> +{
> +#ifdef CONFIG_I2C
please use IS_ENABLED
> +	if (mc34708->mode == MC34708_MODE_I2C)
> +		return mc34708_i2c_reg_write(mc34708, reg, val);
> +#endif
> +#ifdef CONFIG_SPI
ditto
> +	if (mc34708->mode == MC34708_MODE_SPI)
> +		return mc34708_spi_reg_write(mc34708, reg, val);
> +#endif
> +	return -EINVAL;
> +}
> +EXPORT_SYMBOL(mc34708_reg_write);
> +
> +int mc34708_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val)
> +{
> +#ifdef CONFIG_I2C
ditto
> +	if (mc34708->mode == MC34708_MODE_I2C)
> +		return mc34708_i2c_reg_read(mc34708, reg, val);
> +#endif
> +#ifdef CONFIG_SPI
> +	if (mc34708->mode == MC34708_MODE_SPI)
> +		return mc34708_spi_reg_read(mc34708, reg, val);
> +#endif
> +	return -EINVAL;
> +}
> +EXPORT_SYMBOL(mc34708_reg_read);
> +
> +int mc34708_set_bits(struct mc34708 *mc34708, enum mc34708_reg reg, u32 mask, u32 val)
> +{
> +	u32 tmp;
> +	int err;
> +
> +	err = mc34708_reg_read(mc34708, reg, &tmp);
> +	tmp = (tmp & ~mask) | val;
no need if err != 0
> +
> +	if (!err)
> +		err = mc34708_reg_write(mc34708, reg, tmp);
> +
> +	return err;
> +}
> +EXPORT_SYMBOL(mc34708_set_bits);
> +
> +static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
> +{
> +	struct mc34708 *priv = to_mc34708(cdev);
> +	u32 *buf = _buf;
> +	size_t i = count >> 2;
> +	int err;
> +
> +	offset >>= 2;
> +
> +	while (i) {
> +		err = mc34708_reg_read(priv, offset, buf);
> +		if (err)
> +			return (ssize_t)err;
> +		buf++;
> +		i--;
> +		offset++;
> +	}
> +
> +	return count;
> +}
> +
> +static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
> +{
> +	struct mc34708 *mc34708 = to_mc34708(cdev);
> +	const u32 *buf = _buf;
> +	size_t i = count >> 2;
> +	int err;
> +
> +	offset >>= 2;
> +
> +	while (i) {
> +		err = mc34708_reg_write(mc34708, offset, *buf);
> +		if (err)
> +			return (ssize_t)err;
> +		buf++;
> +		i--;
> +		offset++;
> +	}
> +
> +	return count;
> +}
> +
> +static struct file_operations mc_fops = {
> +	.lseek	= dev_lseek_default,
> +	.read	= mc_read,
> +	.write	= mc_write,
> +};
> +
> +static int mc34708_query_revision(struct mc34708 *mc34708)
> +{
> +	unsigned int rev_id;
> +	int rev;
> +
> +	mc34708_reg_read(mc34708, 7, &rev_id);
> +
> +	if (rev_id > 0xFFF)
> +		return -EINVAL;
> +
> +	rev = rev_id & 0xFFF;
> +
> +	dev_info(mc_dev->cdev.dev, "MC34708 ID: 0x%04x\n", rev);
> +
> +	mc34708->revision = rev;
> +
> +	return rev;
> +}
> +
> +static int mc_probe(struct device_d *dev, enum mc34708_mode mode)
> +{
> +	int rev;
> +
> +	if (mc_dev)
> +		return -EBUSY;
> +
> +	mc_dev = xzalloc(sizeof(struct mc34708));
> +	mc_dev->mode = mode;
> +	mc_dev->cdev.name = DRIVERNAME;

> +	if (mode == MC34708_MODE_I2C) {
please use IS_ENABLED
> +		mc_dev->client = to_i2c_client(dev);
> +	}
ditto
> +	if (mode == MC34708_MODE_SPI) {
> +		mc_dev->spi = dev->type_data;
> +		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
> +		mc_dev->spi->bits_per_word = 32;
> +	}
> +	mc_dev->cdev.size = 256;
> +	mc_dev->cdev.dev = dev;
> +	mc_dev->cdev.ops = &mc_fops;
> +
> +	rev = mc34708_query_revision(mc_dev);
> +	if (rev < 0) {
> +		free(mc_dev);
> +		mc_dev = NULL;
> +		return -EINVAL;
> +	}
> +
> +	devfs_create(&mc_dev->cdev);
return?
> +
> +	return 0;
> +}
> +
> +static int mc_i2c_probe(struct device_d *dev)
> +{
> +	return mc_probe(dev, MC34708_MODE_I2C);
> +}
> +
> +static int mc_spi_probe(struct device_d *dev)
> +{
> +	return mc_probe(dev, MC34708_MODE_SPI);
> +}
> +
> +static struct driver_d mc_i2c_driver = {
> +	.name  = "mc34708-i2c",
> +	.probe = mc_i2c_probe,
> +};
> +
> +static struct driver_d mc_spi_driver = {
> +	.name  = "mc34708-spi",
> +	.probe = mc_spi_probe,
> +};
> +
> +static int mc_init(void)
> +{
please use IS_ENABLED
> +        register_driver(&mc_i2c_driver);
> +        register_driver(&mc_spi_driver);
> +        return 0;

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
