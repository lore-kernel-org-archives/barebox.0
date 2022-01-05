Delivery-date: Wed, 05 Jan 2022 12:22:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n54NG-00Bh2G-IU
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 12:22:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n54NE-0001q4-By
	for lore@pengutronix.de; Wed, 05 Jan 2022 12:22:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n09iEyMIjAdUYfuhnfs7uJOChg+PT45Vk+GEghit7sU=; b=Wv53MbFWv0me2UcZrXECBHRbH/
	JPJqMicCCx+VOZHuUAw5pjnC/aYdwBg6Vl+87+gmp0Wn/fCJ4FgBUNuWCmmMEHVA3aonz0Fc7dJ9S
	HAEjR0BpFMQdFOWqPpmvUCE+p39PvHt7km3hS4MtovNCb+rTZhrFx48XWXnBfsWWU60RDnYLC+qh0
	jOsuDQ72/bg0acMbTPNfZOG1ZrpRD583K7lfl50v/Ft4dCeZU+0lyEEkmyziCIi04VNcOq2gVMPqX
	bcdLx5wdzfpBmqRpmjOh6dHlIo/Gm3r/GXH7lM2ex1h0oOPGrvbBJMfK0F81gyB103bX9zx5eTsNW
	GTTIn+vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n54LR-00EeWp-If; Wed, 05 Jan 2022 11:20:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n54LK-00EeVV-Fq
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 11:20:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n54LH-0001f7-H9; Wed, 05 Jan 2022 12:20:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n54LH-0006Ez-6Y; Wed, 05 Jan 2022 12:20:31 +0100
Date: Wed, 5 Jan 2022 12:20:31 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220105112031.GT6003@pengutronix.de>
References: <20220103120015.1727051-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220103120015.1727051-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:51:17 up 25 days, 19:36, 81 users,  load average: 1.21, 1.10, 1.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_032034_918536_726045F3 
X-CRM114-Status: GOOD (  39.44  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: add Rockchip i2c controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 03, 2022 at 01:00:15PM +0100, Ahmad Fatoum wrote:
> For addressing the PMIC on Rockchip platforms, add an i2c controller
> driver. Tested with rk3399 and rk808.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/i2c/busses/Kconfig        |   8 +
>  drivers/i2c/busses/Makefile       |   1 +
>  drivers/i2c/busses/i2c-rockchip.c | 472 ++++++++++++++++++++++++++++++
>  3 files changed, 481 insertions(+)
>  create mode 100644 drivers/i2c/busses/i2c-rockchip.c
> 
> diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> index c1e76a04096e..a551df537a69 100644
> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -62,4 +62,12 @@ config I2C_STM32
>  	depends on HAVE_CLK
>  	depends on ARCH_STM32MP || COMPILE_TEST
>  
> +config I2C_RK3X
> +	tristate "Rockchip RK3xxx I2C adapter"
> +	depends on HAVE_CLK
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	help
> +	  Say Y here to include support for the I2C adapter in Rockchip RK3xxx
> +	  SoCs.
> +
>  endmenu
> diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
> index 34a12fcbea96..d6273f3d8679 100644
> --- a/drivers/i2c/busses/Makefile
> +++ b/drivers/i2c/busses/Makefile
> @@ -9,3 +9,4 @@ obj-$(CONFIG_I2C_TEGRA)		+= i2c-tegra.o
>  obj-$(CONFIG_I2C_VERSATILE)	+= i2c-versatile.o
>  obj-$(CONFIG_I2C_DESIGNWARE)	+= i2c-designware.o
>  obj-$(CONFIG_I2C_STM32)		+= i2c-stm32.o
> +obj-$(CONFIG_I2C_RK3X)		+= i2c-rockchip.o
> diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
> new file mode 100644
> index 000000000000..ba7397b19967
> --- /dev/null
> +++ b/drivers/i2c/busses/i2c-rockchip.c
> @@ -0,0 +1,472 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * (C) Copyright 2015 Google, Inc
> + *
> + * (C) Copyright 2008-2014 Rockchip Electronics
> + * Peter, Software Engineering, <superpeter.cai@gmail.com>.
> + */
> +
> +#include <common.h>
> +#include <i2c/i2c.h>
> +#include <linux/iopoll.h>
> +#include <errno.h>
> +#include <linux/err.h>
> +#include <driver.h>
> +#include <io.h>
> +#include <linux/clk.h>
> +#include <mfd/syscon.h>
> +#include <regmap.h>
> +#include <linux/sizes.h>
> +
> +struct i2c_regs {
> +	u32 con;
> +	u32 clkdiv;
> +	u32 mrxaddr;
> +	u32 mrxraddr;
> +	u32 mtxcnt;
> +	u32 mrxcnt;
> +	u32 ien;
> +	u32 ipd;
> +	u32 fcnt;
> +	u32 reserved0[0x37];
> +	u32 txdata[8];
> +	u32 reserved1[0x38];
> +	u32 rxdata[8];
> +};
> +
> +/* Control register */
> +#define I2C_CON_EN		(1 << 0)
> +#define I2C_CON_MOD(mod)	((mod) << 1)
> +#define I2C_MODE_TX		0x00
> +#define I2C_MODE_TRX		0x01
> +#define I2C_MODE_RX		0x02
> +#define I2C_MODE_RRX		0x03
> +#define I2C_CON_MASK		(3 << 1)
> +
> +#define I2C_CON_START		(1 << 3)
> +#define I2C_CON_STOP		(1 << 4)
> +#define I2C_CON_LASTACK		(1 << 5)
> +#define I2C_CON_ACTACK		(1 << 6)
> +
> +/* Clock dividor register */

s/dividor/divider/

> +#define I2C_CLKDIV_VAL(divl, divh) \
> +	(((divl) & 0xffff) | (((divh) << 16) & 0xffff0000))
> +
> +/* the slave address accessed  for master rx mode */
> +#define I2C_MRXADDR_SET(vld, addr)	(((vld) << 24) | (addr))
> +
> +/* the slave register address accessed  for master rx mode */
> +#define I2C_MRXRADDR_SET(vld, raddr)	(((vld) << 24) | (raddr))
> +
> +/* interrupt enable register */
> +#define I2C_BTFIEN		(1 << 0)
> +#define I2C_BRFIEN		(1 << 1)
> +#define I2C_MBTFIEN		(1 << 2)
> +#define I2C_MBRFIEN		(1 << 3)
> +#define I2C_STARTIEN		(1 << 4)
> +#define I2C_STOPIEN		(1 << 5)
> +#define I2C_NAKRCVIEN		(1 << 6)
> +
> +/* interrupt pending register */
> +#define I2C_BTFIPD              (1 << 0)
> +#define I2C_BRFIPD              (1 << 1)
> +#define I2C_MBTFIPD             (1 << 2)
> +#define I2C_MBRFIPD             (1 << 3)
> +#define I2C_STARTIPD            (1 << 4)
> +#define I2C_STOPIPD             (1 << 5)
> +#define I2C_NAKRCVIPD           (1 << 6)
> +#define I2C_IPD_ALL_CLEAN       0x7f
> +
> +/* i2c timerout */

s/timerout/timeout/

> +#define I2C_TIMEOUT		(100 * MSECOND)
> +#define I2C_RETRY_COUNT		3

unused

> +
> +/* rk i2c fifo max transfer bytes */
> +#define RK_I2C_FIFO_SIZE	32
> +
> +struct rk_i2c {
> +	struct i2c_adapter	adapter;
> +	struct clk *clk;
> +	struct i2c_regs *regs;
> +	unsigned int speed;
> +};
> +
> +static inline struct rk_i2c *to_rk_i2c(struct i2c_adapter *adapter)
> +{
> +	return container_of(adapter, struct rk_i2c, adapter);
> +}
> +
> +static inline void rk_i2c_get_div(int div, int *divh, int *divl)
> +{
> +	*divl = div / 2;
> +	if (div % 2 == 0)
> +		*divh = div / 2;

Why special case this? DIV_ROUND_UP(div, 2) should work for even numbers
as well.

> +	else
> +		*divh = DIV_ROUND_UP(div, 2);
> +}
> +
> +/*
> + * SCL Divisor = 8 * (CLKDIVL+1 + CLKDIVH+1)
> + * SCL = PCLK / SCLK Divisor
> + * i2c_rate = PCLK
> + */
> +static void rk_i2c_set_clk(struct rk_i2c *i2c, uint32_t scl_rate)
> +{
> +	struct device_d *dev = i2c->adapter.dev.parent;
> +	uint32_t i2c_rate;
> +	int div, divl, divh;
> +
> +	/* First get i2c rate from pclk */
> +	i2c_rate = clk_get_rate(i2c->clk);
> +
> +	div = DIV_ROUND_UP(i2c_rate, scl_rate * 8) - 2;
> +	divh = 0;
> +	divl = 0;
> +	if (div >= 0)
> +		rk_i2c_get_div(div, &divh, &divl);
> +	writel(I2C_CLKDIV_VAL(divl, divh), &i2c->regs->clkdiv);
> +
> +	dev_dbg(dev, "rk_i2c_set_clk: i2c rate = %d, scl rate = %d\n", i2c_rate,
> +		scl_rate);
> +	dev_dbg(dev, "set i2c clk div = %d, divh = %d, divl = %d\n", div, divh, divl);
> +	dev_dbg(dev, "set clk(I2C_CLKDIV: 0x%08x)\n", readl(&i2c->regs->clkdiv));
> +}
> +
> +static void rk_i2c_show_regs(struct rk_i2c *i2c)
> +{
> +	struct device_d *dev = &i2c->adapter.dev;
> +	struct i2c_regs *regs = i2c->regs;
> +	int i;
> +
> +	dev_dbg(dev, "i2c_con: 0x%08x\n", readl(&regs->con));
> +	dev_dbg(dev, "i2c_clkdiv: 0x%08x\n", readl(&regs->clkdiv));
> +	dev_dbg(dev, "i2c_mrxaddr: 0x%08x\n", readl(&regs->mrxaddr));
> +	dev_dbg(dev, "i2c_mrxraddR: 0x%08x\n", readl(&regs->mrxraddr));
> +	dev_dbg(dev, "i2c_mtxcnt: 0x%08x\n", readl(&regs->mtxcnt));
> +	dev_dbg(dev, "i2c_mrxcnt: 0x%08x\n", readl(&regs->mrxcnt));
> +	dev_dbg(dev, "i2c_ien: 0x%08x\n", readl(&regs->ien));
> +	dev_dbg(dev, "i2c_ipd: 0x%08x\n", readl(&regs->ipd));
> +	dev_dbg(dev, "i2c_fcnt: 0x%08x\n", readl(&regs->fcnt));
> +
> +	for (i = 0; i < 8; i++)
> +		dev_dbg(dev, "i2c_txdata%d: 0x%08x\n", i, readl(&regs->txdata[i]));
> +	for (i = 0; i < 8; i++)
> +		dev_dbg(dev, "i2c_rxdata%d: 0x%08x\n", i, readl(&regs->rxdata[i]));
> +}
> +
> +static int rk_i2c_send_start_bit(struct rk_i2c *i2c)
> +{
> +	struct device_d *dev = &i2c->adapter.dev;
> +	struct i2c_regs *regs = i2c->regs;
> +	u64 start;
> +
> +	dev_dbg(dev, "I2c Send Start bit.\n");
> +	writel(I2C_IPD_ALL_CLEAN, &regs->ipd);
> +
> +	writel(I2C_CON_EN | I2C_CON_START, &regs->con);
> +	writel(I2C_STARTIEN, &regs->ien);
> +
> +	for (start = get_time_ns(); !is_timeout(start, I2C_TIMEOUT);) {
> +		if (readl(&regs->ipd) & I2C_STARTIPD) {
> +			writel(I2C_STARTIPD, &regs->ipd);
> +			return 0;
> +		}
> +		udelay(1);

Unnecessary udelay()

> +	}
> +
> +	dev_dbg(dev, "I2C Send Start Bit Timeout\n");
> +	rk_i2c_show_regs(i2c);
> +	return -ETIMEDOUT;
> +}
> +
> +static int rk_i2c_send_stop_bit(struct rk_i2c *i2c)
> +{
> +	struct device_d *dev = &i2c->adapter.dev;
> +	struct i2c_regs *regs = i2c->regs;
> +	u64 start;
> +
> +	dev_dbg(dev, "I2c Send Stop bit.\n");
> +	writel(I2C_IPD_ALL_CLEAN, &regs->ipd);
> +
> +	writel(I2C_CON_EN | I2C_CON_STOP, &regs->con);
> +	writel(I2C_CON_STOP, &regs->ien);
> +
> +	for (start = get_time_ns(); !is_timeout(start, I2C_TIMEOUT);) {
> +		if (readl(&regs->ipd) & I2C_STOPIPD) {
> +			writel(I2C_STOPIPD, &regs->ipd);
> +			return 0;
> +		}
> +		udelay(1);

ditto

> +	}
> +
> +	dev_dbg(dev, "I2C Send Start Bit Timeout\n");
> +	rk_i2c_show_regs(i2c);
> +	return -ETIMEDOUT;
> +}
> +
> +static inline void rk_i2c_disable(struct rk_i2c *i2c)
> +{
> +	writel(0, &i2c->regs->con);
> +}
> +
> +static int rk_i2c_read(struct rk_i2c *i2c, uchar chip, uint reg, uint r_len,
> +		       uchar *buf, uint b_len)
> +{
> +	struct device_d *dev = &i2c->adapter.dev;
> +	struct i2c_regs *regs = i2c->regs;
> +	uchar *pbuf = buf;
> +	uint bytes_remain_len = b_len;
> +	uint bytes_xferred = 0;
> +	uint words_xferred = 0;
> +	u64 start;
> +	uint con = 0;
> +	uint rxdata;
> +	uint i, j;
> +	int err;
> +	bool snd_chunk = false;
> +
> +	dev_dbg(dev, "rk_i2c_read: chip = %d, reg = %d, r_len = %d, b_len = %d\n",
> +	      chip, reg, r_len, b_len);
> +
> +	err = rk_i2c_send_start_bit(i2c);
> +	if (err)
> +		return err;
> +
> +	writel(I2C_MRXADDR_SET(1, chip << 1 | 1), &regs->mrxaddr);
> +	if (r_len == 0) {
> +		writel(0, &regs->mrxraddr);
> +	} else if (r_len < 4) {
> +		writel(I2C_MRXRADDR_SET(r_len, reg), &regs->mrxraddr);
> +	} else {
> +		dev_dbg(dev, "I2C Read: addr len %d not supported\n", r_len);
> +		return -EIO;
> +	}
> +
> +	while (bytes_remain_len) {
> +		if (bytes_remain_len > RK_I2C_FIFO_SIZE) {
> +			con = I2C_CON_EN;
> +			bytes_xferred = 32;

bytes_xferred = RK_I2C_FIFO_SIZE

> +		} else {
> +			/*
> +			 * The hw can read up to 32 bytes at a time. If we need
> +			 * more than one chunk, send an ACK after the last byte.
> +			 */
> +			con = I2C_CON_EN | I2C_CON_LASTACK;
> +			bytes_xferred = bytes_remain_len;
> +		}
> +		words_xferred = DIV_ROUND_UP(bytes_xferred, 4);
> +
> +		/*
> +		 * make sure we are in plain RX mode if we read a second chunk
> +		 */
> +		if (snd_chunk)
> +			con |= I2C_CON_MOD(I2C_MODE_RX);
> +		else
> +			con |= I2C_CON_MOD(I2C_MODE_TRX);
> +
> +		writel(con, &regs->con);
> +		writel(bytes_xferred, &regs->mrxcnt);
> +		writel(I2C_MBRFIEN | I2C_NAKRCVIEN, &regs->ien);
> +
> +		err = -ETIMEDOUT;
> +		for (start = get_time_ns(); !is_timeout(start, I2C_TIMEOUT);) {
> +			if (readl(&regs->ipd) & I2C_NAKRCVIPD) {
> +				writel(I2C_NAKRCVIPD, &regs->ipd);
> +				err = -EREMOTEIO;

Does it make sense to stay in the loop here?

> +			}
> +			if (readl(&regs->ipd) & I2C_MBRFIPD) {
> +				writel(I2C_MBRFIPD, &regs->ipd);
> +				err = 0;
> +				break;
> +			}
> +			udelay(1);

Unnecessary udelay().

> +		}
> +
> +		if (err) {
> +			dev_dbg(dev, "I2C Read Data Timeout\n");
> +			rk_i2c_show_regs(i2c);
> +			goto i2c_exit;
> +		}

It's easier to follow when you just exit the loop with

	if (is_timeout()) {
		err = -ETIMEDOUT;
		goto i2c_exit;
	}

> +
> +		for (i = 0; i < words_xferred; i++) {
> +			rxdata = readl(&regs->rxdata[i]);
> +			dev_dbg(dev, "I2c Read RXDATA[%d] = 0x%x\n", i, rxdata);
> +			for (j = 0; j < 4; j++) {
> +				if ((i * 4 + j) == bytes_xferred)
> +					break;
> +				*pbuf++ = (rxdata >> (j * 8)) & 0xff;
> +			}
> +		}
> +
> +		bytes_remain_len -= bytes_xferred;
> +		snd_chunk = true;
> +		dev_dbg(dev, "I2C Read bytes_remain_len %d\n", bytes_remain_len);
> +	}
> +
> +i2c_exit:
> +	rk_i2c_disable(i2c);
> +
> +	return err;
> +}
> +
> +static int rk_i2c_write(struct rk_i2c *i2c, uchar chip, uint reg, uint r_len,
> +			uchar *buf, uint b_len)
> +{
> +	struct device_d *dev = &i2c->adapter.dev;
> +	struct i2c_regs *regs = i2c->regs;
> +	int err;
> +	uchar *pbuf = buf;
> +	uint bytes_remain_len = b_len + r_len + 1;
> +	uint bytes_xferred = 0;
> +	uint words_xferred = 0;
> +	u64 start;
> +	uint txdata;
> +	uint i, j;
> +
> +	dev_dbg(dev, "rk_i2c_write: chip = %d, reg = %d, r_len = %d, b_len = %d\n",
> +	      chip, reg, r_len, b_len);
> +	err = rk_i2c_send_start_bit(i2c);
> +	if (err)
> +		return err;
> +
> +	while (bytes_remain_len) {
> +		if (bytes_remain_len > RK_I2C_FIFO_SIZE)
> +			bytes_xferred = RK_I2C_FIFO_SIZE;
> +		else
> +			bytes_xferred = bytes_remain_len;
> +		words_xferred = DIV_ROUND_UP(bytes_xferred, 4);
> +
> +		for (i = 0; i < words_xferred; i++) {
> +			txdata = 0;
> +			for (j = 0; j < 4; j++) {
> +				if ((i * 4 + j) == bytes_xferred)
> +					break;
> +
> +				if (i == 0 && j == 0 && pbuf == buf) {
> +					txdata |= (chip << 1);
> +				} else if (i == 0 && j <= r_len && pbuf == buf) {
> +					txdata |= (reg &
> +						(0xff << ((j - 1) * 8))) << 8;
> +				} else {
> +					txdata |= (*pbuf++)<<(j * 8);
> +				}
> +			}
> +			writel(txdata, &regs->txdata[i]);
> +			dev_dbg(dev, "I2c Write TXDATA[%d] = 0x%08x\n", i, txdata);
> +		}
> +
> +		writel(I2C_CON_EN | I2C_CON_MOD(I2C_MODE_TX), &regs->con);
> +		writel(bytes_xferred, &regs->mtxcnt);
> +		writel(I2C_MBTFIEN | I2C_NAKRCVIEN, &regs->ien);
> +
> +		err = -ETIMEDOUT;
> +		for (start = get_time_ns(); !is_timeout(start, I2C_TIMEOUT);) {
> +			if (readl(&regs->ipd) & I2C_NAKRCVIPD) {
> +				writel(I2C_NAKRCVIPD, &regs->ipd);
> +				err = -EREMOTEIO;
> +			}

Same as above, need to stay in the loop here?

> +			if (readl(&regs->ipd) & I2C_MBTFIPD) {
> +				writel(I2C_MBTFIPD, &regs->ipd);
> +				err = 0;
> +				break;
> +			}
> +			udelay(1);

Drop the udelay()

> +		}
> +
> +		if (err) {
> +			dev_dbg(dev, "I2C Write Data Timeout\n");
> +			rk_i2c_show_regs(i2c);
> +			goto i2c_exit;
> +		}

Test for timeout in the loop.

> +
> +		bytes_remain_len -= bytes_xferred;
> +		dev_dbg(dev, "I2C Write bytes_remain_len %d\n", bytes_remain_len);
> +	}
> +
> +i2c_exit:
> +	rk_i2c_disable(i2c);
> +
> +	return err;
> +}
> +
> +static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
> +			     int nmsgs)
> +{
> +	struct rk_i2c *i2c = to_rk_i2c(adapter);
> +	struct device_d *dev = &adapter->dev;
> +	int ret;
> +
> +	dev_dbg(dev, "i2c_xfer: %d messages\n", nmsgs);
> +	for (; nmsgs > 0; nmsgs--, msg++) {
> +		dev_dbg(dev, "i2c_xfer: chip=0x%x, len=0x%x\n", msg->addr, msg->len);
> +		if (msg->flags & I2C_M_RD) {
> +			ret = rk_i2c_read(i2c, msg->addr, 0, 0, msg->buf,
> +					  msg->len);
> +		} else {
> +			ret = rk_i2c_write(i2c, msg->addr, 0, 0, msg->buf,
> +					   msg->len);
> +		}
> +		if (ret) {
> +			dev_dbg(dev, "i2c_write: error sending\n");
> +			return -EREMOTEIO;

Print the error code? Forward the error?

> +		}
> +	}
> +
> +	rk_i2c_send_stop_bit(i2c);
> +	rk_i2c_disable(i2c);
> +
> +	return 0;
> +}
> +
> +static int rk_i2c_probe(struct device_d *dev)
> +{
> +	struct device_node *np = dev->device_node;
> +	struct resource *iores;
> +	struct rk_i2c *i2c;
> +	unsigned bitrate;
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +
> +	i2c = kzalloc(sizeof(struct rk_i2c), GFP_KERNEL);
> +	if (!i2c)
> +		return -ENOMEM;
> +
> +	dev->priv = i2c;
> +	i2c->regs = IOMEM(iores->start);
> +
> +	/* Only one clock to use for bus clock and peripheral clock */
> +	i2c->clk = clk_get(dev, NULL);
> +	if (IS_ERR(i2c->clk))
> +		return dev_err_probe(dev, PTR_ERR(i2c->clk), "Can't get bus clk\n");
> +
> +	/* Setup i2c_fsl driver structure */

copy/paste, it's not i2c_fsl

> +	i2c->adapter.master_xfer = rockchip_i2c_xfer;
> +	i2c->adapter.nr = dev->id;
> +	i2c->adapter.dev.parent = dev;
> +	i2c->adapter.dev.device_node = np;
> +
> +	/* Set up clock divider */
> +	bitrate = 100000;
> +	of_property_read_u32(np, "clock-frequency", &bitrate);
> +
> +	rk_i2c_set_clk(i2c, bitrate);
> +
> +	return i2c_add_numbered_adapter(&i2c->adapter);
> +}
> +
> +static const struct of_device_id rk_i2c_match[] = {
> +	{ .compatible = "rockchip,rv1108-i2c" },
> +	{ .compatible = "rockchip,rk3228-i2c" },
> +	{ .compatible = "rockchip,rk3288-i2c" },
> +	{ .compatible = "rockchip,rk3399-i2c" },
> +	{},
> +};
> +
> +static struct driver_d rk_i2c_driver = {
> +	.name  = "rk3x-i2c",
> +	.of_compatible = rk_i2c_match,
> +	.probe   = rk_i2c_probe,
> +};
> +coredevice_platform_driver(rk_i2c_driver);
> -- 
> 2.30.2
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

