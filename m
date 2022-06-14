Delivery-date: Tue, 14 Jun 2022 11:43:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o135B-0025FO-Dv
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 11:43:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o135A-0001OU-Kb
	for lore@pengutronix.de; Tue, 14 Jun 2022 11:43:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vYIMMEMhHVvsQT6qtXESokP6pgCVOScwXORqK2vNJnA=; b=gouKWaKbJWiDgKasd/k6MmmMwN
	tVh5F2SSZprEW3f7kDwzNFDlwtOkAAWeUuI8TTOr0t/MYoRUbXM3ZtNEMXXr4P2zMgrPtESMqrZAd
	B3owOWvyzLVgrodhXYjEj7ad/8u8JYQAsWm9G4v3KZtxfh5sD5nXf4TOf4phWo2CZ6A64USa7AZRW
	bz4oe8pHQqYaffGsVnFuMZw5Gk/3FjTUWGCSmt//HZl0rfU408YmwlGzVupHVGOlFNOdFdNnLvK2F
	1ACJeKCHPss+AxRivLfRMW1LsKaaV8QTzAeYymCWU43svQHHlmdcN7Bkhxjqc0cOEVQiqsQD0Aoqz
	z0+hvQVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o133c-008pQy-Fv; Tue, 14 Jun 2022 09:41:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o133V-008pQA-Nl
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 09:41:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o133U-0001L9-B3; Tue, 14 Jun 2022 11:41:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o133T-000810-Qd; Tue, 14 Jun 2022 11:41:47 +0200
Date: Tue, 14 Jun 2022 11:41:47 +0200
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220614094147.GT1615@pengutronix.de>
References: <20220611212842.6413-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220611212842.6413-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_024150_141064_C335C41A 
X-CRM114-Status: GOOD (  47.56  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] i2c: add bcm283x i2c host controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jun 11, 2022 at 11:28:42PM +0200, Daniel Br=E1t wrote:
> Add a driver to support the i2c host controller (BSC)
> found on bcm283x family os SoCs.
> =

> Signed-off-by: Daniel Br=E1t <danek.brat@gmail.com>
> ---
>  arch/arm/configs/rpi_v8a_defconfig |   3 +-
>  drivers/i2c/busses/Kconfig         |   4 +
>  drivers/i2c/busses/Makefile        |   1 +
>  drivers/i2c/busses/i2c-bcm283x.c   | 372 +++++++++++++++++++++++++++++
>  4 files changed, 379 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/i2c/busses/i2c-bcm283x.c
> =

> diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8=
a_defconfig
> index 68cd2438b..e218311a7 100644
> --- a/arch/arm/configs/rpi_v8a_defconfig
> +++ b/arch/arm/configs/rpi_v8a_defconfig
> @@ -81,6 +81,8 @@ CONFIG_SERIAL_AMBA_PL011=3Dy
>  CONFIG_DRIVER_SERIAL_NS16550=3Dy
>  CONFIG_NET_USB=3Dy
>  CONFIG_NET_USB_SMSC95XX=3Dy
> +CONFIG_I2C=3Dy
> +CONFIG_I2C_BCM283X=3Dy
>  CONFIG_USB_HOST=3Dy
>  CONFIG_USB_DWC2_HOST=3Dy
>  CONFIG_USB_DWC2_GADGET=3Dy
> @@ -108,4 +110,3 @@ CONFIG_FS_FAT=3Dy
>  CONFIG_FS_FAT_WRITE=3Dy
>  CONFIG_FS_FAT_LFN=3Dy
>  CONFIG_ZLIB=3Dy
> -CONFIG_LZO_DECOMPRESS=3Dy
> diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> index 58f865606..429f5ba42 100644
> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -17,6 +17,10 @@ config I2C_AT91
>  	bool "AT91 I2C Master driver"
>  	depends on ARCH_AT91
>  =

> +config I2C_BCM283X
> +	bool "BCM283X I2C Master driver"
> +	depends on ARCH_BCM283X
> +
>  config I2C_IMX
>  	bool "MPC85xx/MPC5200/i.MX I2C Master driver"
>  	depends on ARCH_IMX || ARCH_MPC85XX || ARCH_MPC5200 || ARCH_LAYERSCAPE
> diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
> index a8661f605..a1ab46fb2 100644
> --- a/drivers/i2c/busses/Makefile
> +++ b/drivers/i2c/busses/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_I2C_AT91)		+=3D i2c-at91.o
> +obj-$(CONFIG_I2C_BCM283X)	+=3D i2c-bcm283x.o
>  obj-$(CONFIG_I2C_GPIO)		+=3D i2c-gpio.o
>  obj-$(CONFIG_I2C_IMX)		+=3D i2c-imx.o
>  lwl-$(CONFIG_I2C_IMX_EARLY)	+=3D i2c-imx-early.o
> diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bc=
m283x.c
> new file mode 100644
> index 000000000..dc9a2ea11
> --- /dev/null
> +++ b/drivers/i2c/busses/i2c-bcm283x.c
> @@ -0,0 +1,372 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * I2C bus driver for the BSC peripheral on Broadcom's bcm283x family of=
 SoCs
> + *
> + * Based on documentation published by Raspberry Pi foundation and the k=
ernel
> + * driver written by Stephen Warren.
> + *
> + * Copyright (C) Stephen Warren
> + * Copyright (C) 2022 Daniel Br=E1t
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <i2c/i2c.h>
> +#include <i2c/i2c-algo-bit.h>
> +#include <linux/iopoll.h>
> +#include <linux/clk.h>
> +#include <init.h>
> +#include <of_address.h>
> +
> +//#define DEBUG
> +//#define LOGLEVEL 7

Please drop these lines. They are wrong after all. DEBUG has to be
defined before the includes and LOGLEVEL is unused.

> +
> +// BSC C (Control) register
> +#define BSC_C_READ		BIT(0)
> +#define BSC_C_CLEAR1		BIT(4)
> +#define BSC_C_CLEAR2		BIT(5)
> +#define BSC_C_ST		BIT(7)
> +#define BSC_C_INTD		BIT(8)
> +#define BSC_C_INTT		BIT(9)
> +#define BSC_C_INTR		BIT(10)
> +#define BSC_C_I2CEN		BIT(15)
> +
> +// BSC S (Status) register
> +#define BSC_S_TA		BIT(0)
> +#define BSC_S_DONE		BIT(1)
> +#define BSC_S_TXW		BIT(2)
> +#define BSC_S_RXR		BIT(3)
> +#define BSC_S_TXD		BIT(4)
> +#define BSC_S_RXD		BIT(5)
> +#define BSC_S_TXE		BIT(6)
> +#define BSC_S_RXF		BIT(7)
> +#define BSC_S_ERR		BIT(8)
> +#define BSC_S_CLKT		BIT(9)
> +
> +// BSC A (Address) register
> +#define BSC_A_MASK		0x7f
> +
> +// Constants
> +#define BSC_CDIV_MIN		0x0002
> +#define BSC_CDIV_MAX		0xfffe
> +#define BSC_FIFO_SIZE		16U
> +
> +struct __packed bcm283x_i2c_regs {
> +	u32 c;
> +	u32 s;
> +	u32 dlen;
> +	u32 a;
> +	u32 fifo;
> +	u32 div;
> +	u32 del;
> +	u32 clkt;
> +};
> +
> +struct bcm283x_i2c {
> +	struct i2c_adapter adapter;
> +	struct clk *mclk;
> +	struct bcm283x_i2c_regs __iomem *regs;
> +	u32 bitrate;
> +};
> +
> +#define to_bcm283x_i2c(a) container_of(a, struct bcm283x_i2c, adapter)

Please make this a static inline function for better type safety. Also
it makes it obvious which type 'a' must have.

> +
> +static inline int bcm283x_i2c_init(struct bcm283x_i2c *bcm_i2c)
> +{
> +	struct device_d *dev =3D &bcm_i2c->adapter.dev;
> +	u32 mclk_rate, cdiv, redl, fedl;
> +
> +	/*
> +	 * Reset control reg, flush FIFO, clear all flags and disable
> +	 * clock stretching
> +	 */
> +	writel(0UL, &bcm_i2c->regs->c);
> +	writel(BSC_C_CLEAR1, &bcm_i2c->regs->c);
> +	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
> +	writel(0UL, &bcm_i2c->regs->clkt);
> +
> +	/*
> +	 * Set the divider based on the master clock frequency and the
> +	 * requested i2c bitrate
> +	 */
> +	mclk_rate =3D clk_get_rate(bcm_i2c->mclk);
> +	cdiv =3D DIV_ROUND_UP(mclk_rate, bcm_i2c->bitrate);
> +	dev_dbg(dev, "bcm283x_i2c_init: mclk_rate=3D%u, cdiv=3D%08x\n",
> +		mclk_rate, cdiv);
> +	/* Note from kernel driver:
> +	 *   Per the datasheet, the register is always interpreted as an even
> +	 *   number, by rounding down. In other words, the LSB is ignored. So,
> +	 *   if the LSB is set, increment the divider to avoid any issue.
> +	 */
> +	if (cdiv & 1)
> +		cdiv++;
> +	if ((cdiv < BSC_CDIV_MIN) || (cdiv > BSC_CDIV_MAX)) {
> +		dev_err(dev, "failed to calculate valid clock divider value\n");
> +		return -EINVAL;
> +	}
> +	dev_dbg(dev, "bcm283x_i2c_init: cdiv adjusted to %04x\n", cdiv);
> +	fedl =3D max(cdiv / 16, 1U);
> +	redl =3D max(cdiv / 4, 1U);
> +	dev_dbg(dev, "bcm283x_i2c_init: fedl=3D%04x, redl=3D%04x\n", fedl, redl=
);
> +	writel(cdiv & 0xffff, &bcm_i2c->regs->div);
> +	writel((fedl << 16) | redl, &bcm_i2c->regs->del);
> +	dev_dbg(dev, "bcm283x_i2c_init: regs->div=3D%08x, regs->del=3D%08x\n",
> +		readl(&bcm_i2c->regs->div), readl(&bcm_i2c->regs->del));
> +
> +	return 0;
> +}
> +
> +/*
> + * Macro to calculate generous timeout for given bitrate and number of b=
ytes
> + */
> +#define calc_byte_timeout_us(bitrate) \
> +	(3 * 9 * DIV_ROUND_UP(1000000, bitrate))
> +#define calc_msg_timeout_us(bitrate, bytes) \
> +	((bytes + 1) * calc_byte_timeout_us(bitrate))
> +
> +static int bcm283x_i2c_xfer(struct i2c_adapter *adapter,
> +                            struct i2c_msg *msgs, int count)
> +{
> +	int ret, i;
> +	bool msg_read, msg_10bit;
> +	struct i2c_msg *msg;
> +	u16 buf_pos;
> +	u32 reg_c, reg_s, reg_dlen, bytes_left, timeout, bulk_written;
> +	struct device_d *dev =3D &adapter->dev;
> +	struct bcm283x_i2c *bcm_i2c =3D to_bcm283x_i2c(adapter);
> +	dev_dbg(dev, "bcm283x_i2c_xfer: count=3D%d\n", count);
> +
> +	/*
> +	 * Reset control reg, flush FIFO, clear flags and enable the BSC
> +	 */
> +	writel(0UL, &bcm_i2c->regs->c);
> +	writel(BSC_C_CLEAR1, &bcm_i2c->regs->c);
> +	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
> +	writel(BSC_C_I2CEN, &bcm_i2c->regs->c);
> +
> +	for (i =3D 0; i < count; i++) {

You could move the body of this loop into an extra function. It saves
you one indentation level and thus gives you less linebreaks and better
readability.

> +		msg =3D &msgs[i];
> +		msg_read =3D (msg->flags & I2C_M_RD) > 0;
> +		msg_10bit =3D (msg->flags & I2C_M_TEN) > 0;
> +		reg_dlen =3D bytes_left =3D msg->len;
> +		buf_pos =3D 0;
> +		dev_dbg(dev, "bcm283x_i2c_xfer: msg #%d: "
> +			     "msg_read=3D%d, msg_10bit=3D%d, "
> +			     "reg_dlen=3D%u, buf_pos=3D%u\n",
> +			i, msg_read, msg_10bit, reg_dlen, buf_pos);
> +
> +		if (msg_10bit && msg_read) {
> +			timeout =3D calc_byte_timeout_us(bcm_i2c->bitrate);
> +			writel(1UL, &bcm_i2c->regs->dlen);
> +			writel(msg->addr & 0xff, &bcm_i2c->regs->fifo);
> +			writel(((msg->addr >> 8) | 0x78) & BSC_A_MASK,
> +			       &bcm_i2c->regs->a);
> +			writel(BSC_C_ST | BSC_C_I2CEN, &bcm_i2c->regs->c);
> +			ret =3D readl_poll_timeout(&bcm_i2c->regs->s, reg_s,
> +						 reg_s & (BSC_S_TA | BSC_S_ERR),
> +						 timeout);
> +			if (ret) {
> +				dev_err(dev, "timeout: 10bit addr "
> +					     "read initilization\n");

s/initilization/initialization/

> +				goto out;
> +			}
> +			if (reg_s & BSC_S_ERR) {
> +				dev_dbg(dev, "device with addr %x didnt ACK\n",
> +					msg->addr);
> +				ret =3D -EREMOTEIO;
> +				goto out;
> +			}
> +		} else if (msg_10bit) {
> +			reg_dlen++;
> +			writel(msg->addr & 0xff, &bcm_i2c->regs->fifo);
> +			writel(((msg->addr >> 8) | 0x78) & BSC_A_MASK,
> +			       &bcm_i2c->regs->a);
> +		} else {
> +			writel(msg->addr & BSC_A_MASK, &bcm_i2c->regs->a);
> +		}
> +
> +		writel(reg_dlen, &bcm_i2c->regs->dlen);
> +		reg_c =3D BSC_C_ST | BSC_C_I2CEN;
> +		if (msg_read)
> +			reg_c |=3D BSC_C_READ;
> +		writel(reg_c, &bcm_i2c->regs->c);
> +		dev_dbg(dev, "bcm283x_i2c_xfer: msg #%d: reg_c=3D%08x\n",
> +			i, reg_c);

This driver is far too chatty in debug mode for my taste. Could you
remove some of the messages? This particular one doesn't give any
additional information for example.

> +
> +		if (msg_read) {
> +			/*
> +			 * Read out data from FIFO as soon as it is available
> +			 */
> +			timeout =3D calc_byte_timeout_us(bcm_i2c->bitrate);
> +			dev_dbg(dev, "bcm283x_i2c_xfer: msg #%d: "
> +				     "reading data from FIFO, timeout=3D%u, "
> +				     "bytes_left=3D%u\n",
> +				  i, timeout, bytes_left);

Ditto. All information has been printed directly or indirectly before.

> +			for (; bytes_left; bytes_left--) {
> +				ret =3D readl_poll_timeout(&bcm_i2c->regs->s,
> +							 reg_s, reg_s &
> +							 (BSC_S_RXD | BSC_S_ERR),
> +							 timeout);
> +				if (ret) {
> +					dev_err(dev, "timeout: "
> +						"waiting for data in FIFO\n");
> +					goto out;
> +				}
> +				if (reg_s & BSC_S_ERR) {
> +					ret =3D -EREMOTEIO;
> +					goto out;
> +				}
> +				msg->buf[buf_pos++] =3D
> +					(u8) readl(&bcm_i2c->regs->fifo);
> +				dev_dbg(dev, "read %02x from FIFO",
> +					msg->buf[buf_pos-1]);
> +			}
> +		} else {
> +			/*
> +			 * Fit as much data to the FIFO as we can in one go
> +			 */
> +			for (bulk_written =3D min(bytes_left, (msg_10bit ?
> +			     (BSC_FIFO_SIZE - 1U) : BSC_FIFO_SIZE));
> +			     bulk_written; bulk_written--, bytes_left--)
> +			{
> +				dev_dbg(dev, "writing %02x to FIFO\n",
> +					msg->buf[buf_pos]);
> +				writel(msg->buf[buf_pos++],
> +					&bcm_i2c->regs->fifo);
> +			}

Filling up the FIFO upfront looks like adding code for no gain. I think
you can drop this and only use the loop below.

> +			timeout =3D calc_byte_timeout_us(bcm_i2c->bitrate);
> +			/*
> +			 * Feed any remaining data to FIFO as soon as there
> +			 * is space for them
> +			 */
> +			dev_dbg(dev, "remaining bytes after bulk write: %u\n",
> +				bytes_left);
> +			for (; bytes_left; bytes_left--) {
> +				ret =3D readl_poll_timeout(&bcm_i2c->regs->s,
> +							 reg_s, reg_s &
> +							 (BSC_S_TXD | BSC_S_ERR),
> +							 timeout);
> +				if (ret) {
> +					dev_err(dev, "timeout: "
> +						"waiting for space in FIFO\n");
> +					goto out;
> +				}
> +				if (reg_s & BSC_S_ERR) {
> +					dev_dbg(dev, "device with addr %x "
> +						"didnt ACK\n", msg->addr);
> +					ret =3D -EREMOTEIO;
> +					goto out;
> +				}
> +				dev_dbg(dev, "writing %02x to FIFO\n",
> +					msg->buf[buf_pos]);
> +				writel(msg->buf[buf_pos++],
> +					&bcm_i2c->regs->fifo);
> +			}
> +		}
> +		/*
> +		 * Wait for the current transfer to finish and then flush FIFO
> +		 * and clear any flags so that we are ready for next msg
> +		 */
> +		timeout =3D calc_msg_timeout_us(bcm_i2c->bitrate, reg_dlen);
> +		ret =3D readl_poll_timeout(&bcm_i2c->regs->s, reg_s,
> +				reg_s & (BSC_S_DONE | BSC_S_ERR), timeout);
> +		if (ret) {
> +			dev_err(dev, "timeout: waiting for transfer to end\n");
> +			goto out;
> +		}
> +		if (reg_s & BSC_S_ERR) {
> +			dev_dbg(dev, "device with addr %x didnt ACK\n",
> +				msg->addr);
> +			ret =3D -EREMOTEIO;
> +			goto out;
> +		}
> +		writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
> +		writel(BSC_C_CLEAR1 | BSC_C_I2CEN, &bcm_i2c->regs->c);
> +	}
> +	writel(0UL, &bcm_i2c->regs->c);
> +	dev_dbg(dev, "bcm283x_i2c_xfer: returning successfully\n");
> +	return count;
> +out:
> +	writel(0UL, &bcm_i2c->regs->c);
> +	writel(BSC_C_CLEAR1, &bcm_i2c->regs->c);
> +	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
> +	dev_dbg(dev, "bcm283x_i2c_xfer: returning via err, ret: %d\n", ret);
> +	return ret;
> +}
> +
> +static int bcm283x_i2c_probe(struct device_d *dev)
> +{
> +	int ret;
> +	struct resource *iores;
> +	struct bcm283x_i2c *bcm_i2c;
> +	struct device_node *np =3D dev->device_node;
> +
> +	bcm_i2c =3D xzalloc(sizeof(*bcm_i2c));
> +
> +	if (!np) {
> +		ret =3D -ENXIO;
> +		goto err;
> +	}
> +
> +	if (!IS_ENABLED(CONFIG_OFDEVICE)) {
> +		ret =3D -ENODEV;
> +		goto err;
> +	}

That shouldn't be necessary. You already tested that you have a
device_node pointer which you will only get when CONFIG_OFDEVICE
is enabled.

> +
> +	iores =3D dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		dev_err(dev, "could not get iomem region\n");
> +		ret =3D PTR_ERR(iores);
> +		goto err;
> +	}
> +	bcm_i2c->regs =3D IOMEM(iores->start);
> +	dev_dbg(dev, "bcm283x_i2c_probe: regs at %p\n", bcm_i2c->regs);

Unncecessary, you can view the register in the output of the 'iomem'
command.

> +
> +	bcm_i2c->mclk =3D clk_get(dev, NULL);
> +	if (IS_ERR(bcm_i2c->mclk)) {
> +		dev_err(dev, "could not aquire clock\n");

s/aquire/acquire/

> +		ret =3D PTR_ERR(bcm_i2c->mclk);
> +		goto err;
> +	}
> +	clk_enable(bcm_i2c->mclk);
> +	dev_dbg(dev, "bcm283x_i2c_probe: enabled mclk\n");

Also unnecessary. The next message will tell you that you've been here
as well.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

