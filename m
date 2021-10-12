Delivery-date: Tue, 12 Oct 2021 09:46:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCUa-0002Vg-1l
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:46:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCUY-00075O-Oe
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:46:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y8jt/4JFQXlTi4N2tKRZaFWthakxkSKKkcffmKsGLq8=; b=EB9jODFs1Ga/EDSn83o6yVRZxo
	ilTm34PWAwA4kwVLiTdcaEYP1vIBaXpYCi24l6Y1sLCqs3TIJt9LODLZh2/aE+BgeOtiWnuH3j5CJ
	NErevo+wCRVLHtG8xiQgwZWDAneXsA48UnkNQ0Yth0xbvyJ/seQcdCO7T1/Fpz4fg+Bxc/BzIeWP0
	CuatUWTFMa8hV82ydOueGEnEH4Y1mwCDBHNorUTQvyLyEs7wuDNAbog99e9QYlG1UnqWO7Ke/5KkT
	xdD88fbRu39I/8r0hFz4OFMzbT8Cg/T3/4HSGzaJMD+05XAqegYNPtJp7W/kQB7rHkioXo13JBPaB
	ecaqYILA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCTL-00Bptr-2v; Tue, 12 Oct 2021 07:45:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCTF-00Bpsm-FE
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:45:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCTE-0006kC-8e; Tue, 12 Oct 2021 09:45:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCTD-0000nb-UQ; Tue, 12 Oct 2021 09:45:07 +0200
Date: Tue, 12 Oct 2021 09:45:07 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211012074507.GJ28453@pengutronix.de>
References: <20211011184213.854061-1-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211011184213.854061-1-trent.piepho@igorinstitute.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:44:59 up 236 days, 11:08, 140 users,  load average: 0.02, 0.12,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_004509_548375_83AA7F4F 
X-CRM114-Status: GOOD (  38.06  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: ksz8864: Add support for KSZ87xx switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 11:42:13AM -0700, Trent Piepho wrote:
> This adds support for the ksz8765, ksz8794, and ksz8795 switches.
> 
> IDs for OF bindings are added.  The base chip type is "ksz8795", the
> same as the Linux driver, for the ksz87xx switches added here.
> "ksz8864rmn" is used for the existing switch.
> 
> The registers for these switch chips, as least as far as this simple
> driver is concerned, are the same as the existing ksz8864 support.
> 
> The difference in the ksz87xx chips is the format of the command and
> address bytes:
> 
> C = command
> A = address (used bits)
> a = address (unused bits)
> p = turn around padding bit
> 
> ksz8864: 00000CCC  AAAAAAAA
> ksz8795: CCCaaaaA  AAAAAAAp
> 
> CCC and AAAAAAAA are the same, it's just where they are that changes.
> This is parameterized in the read/write reg functions by using two
> values for the address width and pad width.
> 
> Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
> ---
>  drivers/net/ksz8864rmn.c | 66 ++++++++++++++++++++++++++++++----------
>  1 file changed, 50 insertions(+), 16 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
> index 85063ff0d..72ab86579 100644
> --- a/drivers/net/ksz8864rmn.c
> +++ b/drivers/net/ksz8864rmn.c
> @@ -31,48 +31,55 @@
>  #define CMD_WRITE		0x02
>  #define CMD_READ		0x03
>  
> +enum ksz_type {
> +	unknown,
> +	ksz87,
> +	ksz88
> +};
> +
>  struct micrel_switch_priv {
>  	struct cdev             cdev;
>  	struct spi_device       *spi;
>  	unsigned int		p_enable;
> +	unsigned int		addr_width;
> +	unsigned int		pad;
>  };
>  
> -static int micrel_switch_read_reg(struct spi_device *spi, uint8_t reg)
> +static int micrel_switch_read_reg(const struct micrel_switch_priv *priv, uint8_t reg)
>  {
>  	uint8_t tx[2];
>  	uint8_t rx[1];
>  	int ret;
>  
> -	tx[0] = CMD_READ;
> -	tx[1] = reg;
> +	tx[0] = CMD_READ << (priv->addr_width + priv->pad - 8) | reg >> (8 - priv->pad);
> +	tx[1] = reg << priv->pad;
>  
> -	ret = spi_write_then_read(spi, tx, 2, rx, 1);
> +	ret = spi_write_then_read(priv->spi, tx, 2, rx, 1);
>  	if (ret < 0)
>  		return ret;
>  
>  	return rx[0];
>  }
>  
> -static void micrel_switch_write_reg(struct spi_device *spi, uint8_t reg, uint8_t val)
> +static void micrel_switch_write_reg(const struct micrel_switch_priv *priv, uint8_t reg, uint8_t val)
>  {
>  	uint8_t tx[3];
>  
> -	tx[0] = CMD_WRITE;
> -	tx[1] = reg;
> +	tx[0] = CMD_WRITE << (priv->addr_width + priv->pad - 8) | reg >> (8 - priv->pad);
> +	tx[1] = reg << priv->pad;
>  	tx[2] = val;
>  
> -	spi_write_then_read(spi, tx, 3, NULL, 0);
> +	spi_write_then_read(priv->spi, tx, 3, NULL, 0);
>  }
>  
>  static int micrel_switch_enable_set(struct param_d *param, void *_priv)
>  {
>  	struct micrel_switch_priv *priv = _priv;
> -	struct spi_device *spi = priv->spi;
>  
>  	if (priv->p_enable)
> -		micrel_switch_write_reg(spi, REG_ID1, 1);
> +		micrel_switch_write_reg(priv, REG_ID1, 1);
>  	else
> -		micrel_switch_write_reg(spi, REG_ID1, 0);
> +		micrel_switch_write_reg(priv, REG_ID1, 0);
>  
>  	return 0;
>  }
> @@ -84,7 +91,7 @@ static ssize_t micel_switch_read(struct cdev *cdev, void *_buf, size_t count, lo
>  	struct micrel_switch_priv *priv = cdev->priv;
>  
>  	for (i = 0; i < count; i++) {
> -		ret = micrel_switch_read_reg(priv->spi, offset);
> +		ret = micrel_switch_read_reg(priv, offset);
>  		if (ret < 0)
>  			return ret;
>  		*buf = ret;
> @@ -102,7 +109,7 @@ static ssize_t micel_switch_write(struct cdev *cdev, const void *_buf, size_t co
>  	struct micrel_switch_priv *priv = cdev->priv;
>  
>  	for (i = 0; i < count; i++) {
> -		micrel_switch_write_reg(priv->spi, offset, *buf);
> +		micrel_switch_write_reg(priv, offset, *buf);
>  		buf++;
>  		offset++;
>  	}
> @@ -119,6 +126,11 @@ static int micrel_switch_probe(struct device_d *dev)
>  {
>  	struct micrel_switch_priv *priv;
>  	int ret = 0;
> +	enum ksz_type kind = (enum ksz_type)device_get_match_data(dev);
> +	uint8_t id;
> +
> +	if (kind == unknown)
> +		return -ENODEV;
>  
>  	priv = xzalloc(sizeof(*priv));
>  
> @@ -128,12 +140,27 @@ static int micrel_switch_probe(struct device_d *dev)
>  	priv->spi->mode = SPI_MODE_0;
>  	priv->spi->bits_per_word = 8;
>  
> -	ret = micrel_switch_read_reg(priv->spi, REG_ID0);
> +	switch (kind) {
> +	case ksz87:
> +		priv->addr_width = 12;
> +		priv->pad = 1;
> +		id = 0x87;
> +		break;
> +	case ksz88:
> +		priv->addr_width = 8;
> +		priv->pad = 0;
> +		id = 0x95;
> +		break;
> +	default:
> +		return -ENODEV;
> +	};
> +
> +	ret = micrel_switch_read_reg(priv, REG_ID0);
>  	if (ret < 0) {
>  		dev_err(&priv->spi->dev, "failed to read device id\n");
>  		return ret;
>  	}
> -	if (ret != 0x95) {
> +	if (ret != id) {
>  		dev_err(&priv->spi->dev, "unknown device id: %02x\n", ret);
>  		return -ENODEV;
>  	}
> @@ -149,13 +176,20 @@ static int micrel_switch_probe(struct device_d *dev)
>  			NULL, &priv->p_enable, priv);
>  
>  	priv->p_enable = 1;
> -	micrel_switch_write_reg(priv->spi, REG_ID1, 1);
> +	micrel_switch_write_reg(priv, REG_ID1, 1);
>  
>  	return 0;
>  }
>  
> +static const struct platform_device_id ksz_ids[] = {
> +	{ .name = "ksz8864rmn", .driver_data = ksz88 },
> +	{ .name = "ksz8795", .driver_data = ksz87 },
> +	{ }
> +};
> +
>  static struct driver_d micrel_switch_driver = {
>  	.name  = "ksz8864rmn",
>  	.probe = micrel_switch_probe,
> +	.id_table = ksz_ids,
>  };
>  device_spi_driver(micrel_switch_driver);
> -- 
> 2.31.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

