Delivery-date: Wed, 26 Jul 2023 13:58:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOd9k-00AoU5-Ce
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 13:58:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOd9h-0007Mv-8s
	for lore@pengutronix.de; Wed, 26 Jul 2023 13:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UEOeybEEM36rVa7HHD+rsQTb+bksCq9Mfw119n3RfoU=; b=0t5dcnTDS3N1w5i8bmpZ1D4Ipk
	3cRbDmwVqjtaHdOUWe6TFL+j7y/W6r99PGHZc323peeNQ+/qNMUsFuwGGyw2UkITcmI8mJKsV+Jvh
	xKxcqQ30Kdb0NbM0XXdMnClW4pKwr4c++5V58LJ+lj6PbUJbNa3fnCBeapj3uHbZIqGMJ/tK5myZO
	smyqJ47r+BIjKptzSVamhtgY6IiZJHdwymCFaAMiAz8FhMBIYEYGfyjqJNYnSBVt3hbwPDfNY9pRs
	L83c5XyWv9Adb28rcfwpkNAQgkC9fec0dwtrCJTO8MR5evIX3Qsu5MIX2NT16Uh/RRdsYFF79fain
	4JbrTHvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOd8f-00AGlj-0a;
	Wed, 26 Jul 2023 11:57:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOd8c-00AGka-1o
	for barebox@bombadil.infradead.org;
	Wed, 26 Jul 2023 11:57:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=UEOeybEEM36rVa7HHD+rsQTb+bksCq9Mfw119n3RfoU=; b=nkatJE432asyWOeMATaRHNvCpg
	lulINww+Lz31z4Zy8Eye1JaZ5TGuHi48ixY+smEK0bO3iqLCWXlYic0v2yETOmKUqdoyqkjXKE80/
	3YDJ/doG6qXIv1wvfsrrFHxzzX4H1DkWR3UXvWESfwBhJtkq/JUo3ardM3bebHyjETKKBgTI6wOyz
	LgXER2sNWM2t7OIhF8w5zGIHw+KdjGTeslzUSWfYfSWME6uAhlSK/AcrOYfbZ/So1yuuCFGyilfIY
	PSx2zddkNqkK5iI+UxmLb2+M7/YSH3b4Af/IQzHHv07kgOJe5h8ejLsC3a54h/pQjXcoYnA+3tvnX
	AsJw0r+w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOcrN-005pu0-2P
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 11:39:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOcrI-0004JM-PN; Wed, 26 Jul 2023 13:39:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOcrI-0003Az-6Z; Wed, 26 Jul 2023 13:39:12 +0200
Date: Wed, 26 Jul 2023 13:39:12 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20230726113912.GL18491@pengutronix.de>
References: <20230717165428.27286-1-jmaselbas@kalray.eu>
 <20230717165428.27286-5-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230717165428.27286-5-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_123917_839860_8505191B 
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/5] mtd: spi-nor: Add Synopsys DesignWare Octal SPI
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On Mon, Jul 17, 2023 at 06:54:28PM +0200, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/mtd/spi-nor/Kconfig       |   6 +
>  drivers/mtd/spi-nor/Makefile      |   1 +
>  drivers/mtd/spi-nor/dw-ospi-nor.c | 960 ++++++++++++++++++++++++++++++
>  3 files changed, 967 insertions(+)
>  create mode 100644 drivers/mtd/spi-nor/dw-ospi-nor.c
> 
> diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
> index 2beb26006e..b34c69203e 100644
> --- a/drivers/mtd/spi-nor/Kconfig
> +++ b/drivers/mtd/spi-nor/Kconfig
> @@ -26,4 +26,10 @@ config SPI_CADENCE_QUADSPI
>  	help
>  	  This enables support for the Cadence Quad SPI controller and NOR flash.
>  
> +config SPI_SYNOPSYS_OCTALSPI_NOR
> +	tristate "Synopsys DesignWare Octal SPI controller"
> +	help
> +	  This enables support for the Synopsys DesignWare Octal SPI controller
> +	  and NOR flash.
> +
>  endif
> diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
> index 457a2f0488..61cf789182 100644
> --- a/drivers/mtd/spi-nor/Makefile
> +++ b/drivers/mtd/spi-nor/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_MTD_SPI_NOR)		+= spi-nor.o
>  obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
> +obj-$(CONFIG_SPI_SYNOPSYS_OCTALSPI_NOR) += dw-ospi-nor.o
> diff --git a/drivers/mtd/spi-nor/dw-ospi-nor.c b/drivers/mtd/spi-nor/dw-ospi-nor.c
> new file mode 100644
> index 0000000000..13033f9500
> --- /dev/null
> +static int dw_spi_find_chipselect(struct spi_nor *nor)
> +{
> +	int cs = -1;
> +	struct dw_spi_nor *dw_spi = nor->priv;

Better put a pointer to dw_spi_flash_pdata into nor->priv...
(or use container_of() to get dw_spi_flash_pdata from *nor)

> +
> +	for (cs = 0; cs < dw_spi->supported_cs; cs++)
> +		if (nor == &dw_spi->f_pdata[cs].nor)
> +			break;
> +	return cs;
> +}

...and put cs into struct dw_spi_flash_pdata. This way you don't have to
iterate to get the current chip select.

> +static int dw_spi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +{
> +	int i, ret;
> +
> +	dev_dbg(nor->dev, "write_reg opcode 0x%02x: ", opcode);
> +	for (i = 0; i < len; i++)
> +		pr_debug("%02x ", buf[i]);
> +	pr_debug("\n");
> +
> +	if (!IS_ENABLED(CONFIG_MTD_WRITE))
> +		return -ENOTSUPP;

This function looks like it's supposed to write a register. Are you sure
this is not needed when MTD write support is disabled?

> +
> +	ret = dw_spi_prep_std(nor, SPI_TMOD_TO);
> +	if (ret)
> +		return ret;
> +
> +	return dw_spi_write_std(nor, &opcode, 1, buf, len);
> +}

[...]

> +
> +	if (!dev->of_node) {
> +		f_pdata = &dw_spi->f_pdata[0];
> +
> +		ret = dw_spi_setup_flash(dev, f_pdata, np);
> +		if (ret)
> +			goto probe_failed;

Do we need probing without device tree? If not, please remove this case.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


