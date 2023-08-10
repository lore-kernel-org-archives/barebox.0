Delivery-date: Thu, 10 Aug 2023 17:22:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qU7Ux-00FOq9-Eg
	for lore@lore.pengutronix.de; Thu, 10 Aug 2023 17:22:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qU7Uv-0006pV-NB
	for lore@pengutronix.de; Thu, 10 Aug 2023 17:22:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L8rOUTKfbWjUcnbBDC5EyTmcfBiVdqMc18SKfljEj40=; b=Dhrdu4IYFfv1UiZybBKiG6ckmU
	6K8EhsfN1qSNNQsUfWdf8Jex//QmF0l4JFnwwd01DiVl2V8TUbMmEorcK9Z4Pvjg0OxPSrSRreyAk
	yuiwODaDIfyDlMywZhEdiwveNBfHVKkTF24l2h/BJhYih3DLgiMd3b6l6IPE4rjJjvbMtmR0AQTPt
	INlq02KiBiOqe6jsyNgyJk9bUea+rGZORICc/U2cZoXgeCz4e1V5ymqC/PYza5HCRSinijapcDdEy
	40F9pzt1fJI9be1fk3sCCARDKvDU3/dDaNEbDVfBvGQhCC2DOrHxG0D5TN4kldiIV0LstLMJBj1fU
	SvIr0GRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU7TP-00827W-2A;
	Thu, 10 Aug 2023 15:21:15 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU7TL-00826N-1y
	for barebox@lists.infradead.org;
	Thu, 10 Aug 2023 15:21:13 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 82399FF80A;
	Thu, 10 Aug 2023 15:21:05 +0000 (UTC)
Date: Thu, 10 Aug 2023 17:20:08 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZNTl8Y2syTlCdZnP@tour>
References: <20230717165428.27286-1-jmaselbas@kalray.eu>
 <20230717165428.27286-5-jmaselbas@kalray.eu>
 <20230726113912.GL18491@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726113912.GL18491@pengutronix.de>
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_082111_961652_48E760ED 
X-CRM114-Status: GOOD (  32.37  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] mtd: spi-nor: Add Synopsys DesignWare Octal SPI
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Wed, Jul 26, 2023 at 01:39:12PM +0200, Sascha Hauer wrote:
> Hi Jules,
> 
> On Mon, Jul 17, 2023 at 06:54:28PM +0200, Jules Maselbas wrote:
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  drivers/mtd/spi-nor/Kconfig       |   6 +
> >  drivers/mtd/spi-nor/Makefile      |   1 +
> >  drivers/mtd/spi-nor/dw-ospi-nor.c | 960 ++++++++++++++++++++++++++++++
> >  3 files changed, 967 insertions(+)
> >  create mode 100644 drivers/mtd/spi-nor/dw-ospi-nor.c
> > 
> > diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
> > index 2beb26006e..b34c69203e 100644
> > --- a/drivers/mtd/spi-nor/Kconfig
> > +++ b/drivers/mtd/spi-nor/Kconfig
> > @@ -26,4 +26,10 @@ config SPI_CADENCE_QUADSPI
> >  	help
> >  	  This enables support for the Cadence Quad SPI controller and NOR flash.
> >  
> > +config SPI_SYNOPSYS_OCTALSPI_NOR
> > +	tristate "Synopsys DesignWare Octal SPI controller"
> > +	help
> > +	  This enables support for the Synopsys DesignWare Octal SPI controller
> > +	  and NOR flash.
> > +
> >  endif
> > diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
> > index 457a2f0488..61cf789182 100644
> > --- a/drivers/mtd/spi-nor/Makefile
> > +++ b/drivers/mtd/spi-nor/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_MTD_SPI_NOR)		+= spi-nor.o
> >  obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
> > +obj-$(CONFIG_SPI_SYNOPSYS_OCTALSPI_NOR) += dw-ospi-nor.o
> > diff --git a/drivers/mtd/spi-nor/dw-ospi-nor.c b/drivers/mtd/spi-nor/dw-ospi-nor.c
> > new file mode 100644
> > index 0000000000..13033f9500
> > --- /dev/null
> > +static int dw_spi_find_chipselect(struct spi_nor *nor)
> > +{
> > +	int cs = -1;
> > +	struct dw_spi_nor *dw_spi = nor->priv;
> 
> Better put a pointer to dw_spi_flash_pdata into nor->priv...
> (or use container_of() to get dw_spi_flash_pdata from *nor)

Yeah, I am going to use container_of to get dw_spi_flash_pdata,
and keep dw_spi in priv.
> 
> > +
> > +	for (cs = 0; cs < dw_spi->supported_cs; cs++)
> > +		if (nor == &dw_spi->f_pdata[cs].nor)
> > +			break;
> > +	return cs;
> > +}
> 
> ...and put cs into struct dw_spi_flash_pdata. This way you don't have to
> iterate to get the current chip select.
> 
> > +static int dw_spi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> > +{
> > +	int i, ret;
> > +
> > +	dev_dbg(nor->dev, "write_reg opcode 0x%02x: ", opcode);
> > +	for (i = 0; i < len; i++)
> > +		pr_debug("%02x ", buf[i]);
> > +	pr_debug("\n");
> > +
> > +	if (!IS_ENABLED(CONFIG_MTD_WRITE))
> > +		return -ENOTSUPP;
> 
> This function looks like it's supposed to write a register. Are you sure
> this is not needed when MTD write support is disabled?

I am not sure about this, this looks exactly the same in the cadence-quadspi
driver. I though adding a condition to only refuse writing to the "write enable"
register, like so:

-       if (!IS_ENABLED(CONFIG_MTD_WRITE))
+       if (!IS_ENABLED(CONFIG_MTD_WRITE) && opcode == SPINOR_OP_WREN)

But I think it should not be handled at the driver level... and it is probably
already handled by core spi-nor driver... In the end I think I'll remove theses
from this driver.

> > +
> > +	ret = dw_spi_prep_std(nor, SPI_TMOD_TO);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return dw_spi_write_std(nor, &opcode, 1, buf, len);
> > +}
> 
> [...]
> 
> > +
> > +	if (!dev->of_node) {
> > +		f_pdata = &dw_spi->f_pdata[0];
> > +
> > +		ret = dw_spi_setup_flash(dev, f_pdata, np);
> > +		if (ret)
> > +			goto probe_failed;
> 
> Do we need probing without device tree? If not, please remove this case.

Only device-tree probing is needed, this likely is a copy-paste from cadence-quadspi
driver.


Best,
Jules


