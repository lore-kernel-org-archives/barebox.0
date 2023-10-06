Delivery-date: Fri, 06 Oct 2023 13:54:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojPK-008Nlt-7p
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 13:54:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojPI-0005pF-39
	for lore@pengutronix.de; Fri, 06 Oct 2023 13:54:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/JUvqA/3chmpg1auGlOTLbSh7YDs03MZyD4cSvXh2Jk=; b=mpDuXsqODhV29SnmpvFgdqOCFY
	xpiHpFX+pF15iO0tTcAE+e7jHYfT1f4td2M4repkki9io+EwEAiOxV6kkSdRo2wrFLIJkD3uwSmo/
	iHnNytVOMOWJKaFIAOdO8epNi6f77WQJ1x/aiiH61f3rYh8f9EmStg9BfMponPQdq4nl+QiHD3Qg7
	RFDBF2t0ThndWdszLxHjbkkB/nYYjIpgCykUALUJsfDj+ib0DVH+qK1oOp6ihkcYxDVxbmwDG0Vnm
	3NyhxjNy8wfh90+86M5b3YlarKhJXxbIX38XISPK1G6OJunu68PGahgYMPSmsASB99XL3c81pVCw7
	daTb2PkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qojO4-005iqy-37;
	Fri, 06 Oct 2023 11:52:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qojO1-005ipR-0I
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 11:52:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojNz-0005bo-Rl; Fri, 06 Oct 2023 13:52:51 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qojNz-00BVMP-7u; Fri, 06 Oct 2023 13:52:51 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojNz-00D4CX-5U; Fri, 06 Oct 2023 13:52:51 +0200
Date: Fri, 6 Oct 2023 13:52:51 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20231006115251.GA3114228@pengutronix.de>
References: <20231006054812.4343-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006054812.4343-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_045253_441395_F33837FE 
X-CRM114-Status: GOOD (  38.90  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] nvmem: Add Rockchip OTP controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 06, 2023 at 08:48:11AM +0300, Alexander Shiyan wrote:
> This adds a simple driver to dump specified values of Rockchip SoC
> from otp, such as cpu-leakage, id etc.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/nvmem/Kconfig        |   7 +
>  drivers/nvmem/Makefile       |   1 +
>  drivers/nvmem/rockchip-otp.c | 448 +++++++++++++++++++++++++++++++++++
>  3 files changed, 456 insertions(+)
>  create mode 100644 drivers/nvmem/rockchip-otp.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index 2e60734156..bea356c900 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -58,6 +58,13 @@ config EEPROM_93XX46
>  	  supports both read and write commands and also the command to
>  	  erase the whole EEPROM.
>  
> +config NVMEM_ROCKCHIP_OTP
> +	tristate "Rockchip OTP controller support"
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	help
> +	  This is a simple driver to dump specified values of Rockchip SoC
> +	  from otp, such as cpu-leakage, id etc.
> +
>  config STM32_BSEC
>  	tristate "STM32 Boot and security and OTP control"
>  	depends on ARCH_STM32MP
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index 62a1f925dd..a3f3c31602 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -27,4 +27,5 @@ nvmem_bsec-y			:= bsec.o
>  obj-$(CONFIG_KVX_OTP_NV)	+= nvmem-kvx-otp-nv.o
>  nvmem-kvx-otp-nv-y		:= kvx-otp-nv.o
>  
> +obj-$(CONFIG_NVMEM_ROCKCHIP_OTP)+= rockchip-otp.o
>  obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
> diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> new file mode 100644
> index 0000000000..b8da4c5380
> --- /dev/null
> +++ b/drivers/nvmem/rockchip-otp.c
> @@ -0,0 +1,448 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Rockchip OTP Driver
> + *
> + * Copyright (c) 2018 Rockchip Electronics Co. Ltd.
> + * Author: Finley Xiao <finley.xiao@rock-chips.com>
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <of.h>
> +#include <of_device.h>
> +#include <linux/clk.h>
> +#include <linux/iopoll.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/reset.h>
> +
> +/* OTP Register Offsets */
> +#define OTPC_SBPI_CTRL			0x0020
> +#define OTPC_SBPI_CMD_VALID_PRE		0x0024
> +#define OTPC_SBPI_CS_VALID_PRE		0x0028
> +#define OTPC_SBPI_STATUS		0x002C
> +#define OTPC_USER_CTRL			0x0100
> +#define OTPC_USER_ADDR			0x0104
> +#define OTPC_USER_ENABLE		0x0108
> +#define OTPC_USER_Q			0x0124
> +#define OTPC_INT_STATUS			0x0304
> +#define OTPC_SBPI_CMD0_OFFSET		0x1000
> +#define OTPC_SBPI_CMD1_OFFSET		0x1004
> +
> +/* OTP Register bits and masks */
> +#define OTPC_USER_ADDR_MASK		GENMASK(31, 16)
> +#define OTPC_USE_USER			BIT(0)
> +#define OTPC_USE_USER_MASK		GENMASK(16, 16)
> +#define OTPC_USER_FSM_ENABLE		BIT(0)
> +#define OTPC_USER_FSM_ENABLE_MASK	GENMASK(16, 16)
> +#define OTPC_SBPI_DONE			BIT(1)
> +#define OTPC_USER_DONE			BIT(2)
> +
> +#define SBPI_DAP_ADDR			0x02
> +#define SBPI_DAP_ADDR_SHIFT		8
> +#define SBPI_DAP_ADDR_MASK		GENMASK(31, 24)
> +#define SBPI_CMD_VALID_MASK		GENMASK(31, 16)
> +#define SBPI_DAP_CMD_WRF		0xC0
> +#define SBPI_DAP_REG_ECC		0x3A
> +#define SBPI_ECC_ENABLE			0x00
> +#define SBPI_ECC_DISABLE		0x09
> +#define SBPI_ENABLE			BIT(0)
> +#define SBPI_ENABLE_MASK		GENMASK(16, 16)
> +
> +#define OTPC_TIMEOUT			10000
> +
> +#define RK3568_NBYTES			2
> +
> +/* RK3588 Register */
> +#define RK3588_OTPC_AUTO_CTRL		0x04
> +#define RK3588_OTPC_AUTO_EN		0x08
> +#define RK3588_OTPC_INT_ST		0x84
> +#define RK3588_OTPC_DOUT0		0x20
> +#define RK3588_NO_SECURE_OFFSET		0x300
> +#define RK3588_NBYTES			4
> +#define RK3588_BURST_NUM		1
> +#define RK3588_BURST_SHIFT		8
> +#define RK3588_ADDR_SHIFT		16
> +#define RK3588_AUTO_EN			BIT(0)
> +#define RK3588_RD_DONE			BIT(1)
> +
> +struct rockchip_data {
> +	int size;
> +	const char * const *clks;
> +	int num_clks;
> +	int (*reg_read)(void *ctx, unsigned int reg, void *val, size_t val_size);
> +};
> +
> +struct rockchip_otp {
> +	struct device *dev;
> +	void __iomem *base;
> +	struct clk_bulk_data *clks;
> +	struct reset_control *rst;
> +	const struct rockchip_data *data;
> +};
> +
> +static int rockchip_otp_reset(struct rockchip_otp *otp)
> +{
> +	int ret;
> +
> +	ret = reset_control_assert(otp->rst);
> +	if (ret) {
> +		dev_err(otp->dev, "failed to assert otp phy %d\n", ret);
> +		return ret;
> +	}
> +
> +	udelay(2);
> +
> +	ret = reset_control_deassert(otp->rst);
> +	if (ret) {
> +		dev_err(otp->dev, "failed to deassert otp phy %d\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_otp_wait_status(struct rockchip_otp *otp,
> +				    unsigned int reg, u32 flag)
> +{
> +	u32 status = 0;
> +	int ret;
> +
> +	ret = readl_poll_timeout(otp->base + reg, status,
> +				 (status & flag), OTPC_TIMEOUT);
> +	if (ret)
> +		return ret;
> +
> +	/* clean int status */
> +	writel(flag, otp->base + reg);
> +
> +	return 0;
> +}
> +
> +static int rockchip_otp_ecc_enable(struct rockchip_otp *otp, bool enable)
> +{
> +	int ret = 0;
> +
> +	writel(SBPI_DAP_ADDR_MASK | (SBPI_DAP_ADDR << SBPI_DAP_ADDR_SHIFT),
> +	       otp->base + OTPC_SBPI_CTRL);
> +
> +	writel(SBPI_CMD_VALID_MASK | 0x1, otp->base + OTPC_SBPI_CMD_VALID_PRE);
> +	writel(SBPI_DAP_CMD_WRF | SBPI_DAP_REG_ECC,
> +	       otp->base + OTPC_SBPI_CMD0_OFFSET);
> +	if (enable)
> +		writel(SBPI_ECC_ENABLE, otp->base + OTPC_SBPI_CMD1_OFFSET);
> +	else
> +		writel(SBPI_ECC_DISABLE, otp->base + OTPC_SBPI_CMD1_OFFSET);
> +
> +	writel(SBPI_ENABLE_MASK | SBPI_ENABLE, otp->base + OTPC_SBPI_CTRL);
> +
> +	ret = rockchip_otp_wait_status(otp, OTPC_INT_STATUS, OTPC_SBPI_DONE);
> +	if (ret < 0)
> +		dev_err(otp->dev, "timeout during ecc_enable\n");
> +
> +	return ret;
> +}
> +
> +static int px30_otp_read(void *context, unsigned int offset,
> +			 void *val, size_t bytes)
> +{
> +	struct rockchip_otp *otp = context;
> +	u8 *buf = val;
> +	int ret;
> +
> +	ret = rockchip_otp_reset(otp);
> +	if (ret) {
> +		dev_err(otp->dev, "failed to reset otp phy\n");
> +		return ret;
> +	}
> +
> +	ret = rockchip_otp_ecc_enable(otp, false);
> +	if (ret < 0) {
> +		dev_err(otp->dev, "rockchip_otp_ecc_enable err\n");
> +		return ret;
> +	}
> +
> +	writel(OTPC_USE_USER | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
> +	udelay(5);
> +	while (bytes--) {
> +		writel(offset++ | OTPC_USER_ADDR_MASK,
> +		       otp->base + OTPC_USER_ADDR);
> +		writel(OTPC_USER_FSM_ENABLE | OTPC_USER_FSM_ENABLE_MASK,
> +		       otp->base + OTPC_USER_ENABLE);
> +		ret = rockchip_otp_wait_status(otp, OTPC_INT_STATUS, OTPC_USER_DONE);
> +		if (ret < 0) {
> +			dev_err(otp->dev, "timeout during read setup\n");
> +			goto read_end;
> +		}
> +		*buf++ = readb(otp->base + OTPC_USER_Q);
> +	}
> +
> +read_end:
> +	writel(0x0 | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
> +
> +	return ret;
> +}
> +
> +static int rk3568_otp_read(void *context, unsigned int offset, void *val,
> +			   size_t bytes)
> +{
> +	struct rockchip_otp *otp = context;
> +	unsigned int addr_start, addr_end, addr_offset, addr_len;
> +	u32 out_value;
> +	u8 *buf;
> +	int ret = 0, i = 0;
> +
> +	addr_start = rounddown(offset, RK3568_NBYTES) / RK3568_NBYTES;
> +	addr_end = roundup(offset + bytes, RK3568_NBYTES) / RK3568_NBYTES;
> +	addr_offset = offset % RK3568_NBYTES;
> +	addr_len = addr_end - addr_start;
> +
> +	buf = kzalloc(array3_size(addr_len, RK3568_NBYTES, sizeof(*buf)),
> +		      GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	ret = rockchip_otp_reset(otp);
> +	if (ret) {
> +		dev_err(otp->dev, "failed to reset otp phy\n");
> +		goto out;
> +	}
> +
> +	ret = rockchip_otp_ecc_enable(otp, false);
> +	if (ret < 0) {
> +		dev_err(otp->dev, "rockchip_otp_ecc_enable err\n");
> +		goto out;
> +	}
> +
> +	writel(OTPC_USE_USER | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
> +	udelay(5);
> +	while (addr_len--) {
> +		writel(addr_start++ | OTPC_USER_ADDR_MASK,
> +		       otp->base + OTPC_USER_ADDR);
> +		writel(OTPC_USER_FSM_ENABLE | OTPC_USER_FSM_ENABLE_MASK,
> +		       otp->base + OTPC_USER_ENABLE);
> +		ret = rockchip_otp_wait_status(otp, OTPC_INT_STATUS, OTPC_USER_DONE);
> +		if (ret < 0) {
> +			dev_err(otp->dev, "timeout during read setup\n");
> +			goto read_end;
> +		}
> +		out_value = readl(otp->base + OTPC_USER_Q);
> +		memcpy(&buf[i], &out_value, RK3568_NBYTES);
> +		i += RK3568_NBYTES;
> +	}
> +
> +	memcpy(val, buf + addr_offset, bytes);
> +
> +read_end:
> +	writel(0x0 | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
> +out:
> +	kfree(buf);
> +
> +	return ret;
> +}
> +
> +static int rk3588_otp_read(void *context, unsigned int offset,
> +			   void *val, size_t bytes)
> +{
> +	struct rockchip_otp *otp = context;
> +	unsigned int addr_start, addr_end, addr_len;
> +	int ret = 0, i = 0;
> +	u32 data;
> +	u8 *buf;
> +
> +	addr_start = round_down(offset, RK3588_NBYTES) / RK3588_NBYTES;
> +	addr_end = round_up(offset + bytes, RK3588_NBYTES) / RK3588_NBYTES;
> +	addr_len = addr_end - addr_start;
> +	addr_start += RK3588_NO_SECURE_OFFSET;
> +
> +	buf = kzalloc(array_size(addr_len, RK3588_NBYTES), GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	while (addr_len--) {
> +		writel((addr_start << RK3588_ADDR_SHIFT) |
> +		       (RK3588_BURST_NUM << RK3588_BURST_SHIFT),
> +		       otp->base + RK3588_OTPC_AUTO_CTRL);
> +		writel(RK3588_AUTO_EN, otp->base + RK3588_OTPC_AUTO_EN);
> +
> +		ret = rockchip_otp_wait_status(otp, RK3588_OTPC_INT_ST,
> +					       RK3588_RD_DONE);
> +		if (ret < 0) {
> +			dev_err(otp->dev, "timeout during read setup\n");
> +			goto read_end;
> +		}
> +
> +		data = readl(otp->base + RK3588_OTPC_DOUT0);
> +		memcpy(&buf[i], &data, RK3588_NBYTES);
> +
> +		i += RK3588_NBYTES;
> +		addr_start++;
> +	}
> +
> +	memcpy(val, buf + offset % RK3588_NBYTES, bytes);
> +
> +read_end:
> +	kfree(buf);
> +
> +	return ret;
> +}
> +
> +static int rockchip_otp_read(void *context, unsigned int offset,
> +			     void *val, size_t bytes)
> +{
> +	struct rockchip_otp *otp = context;
> +	int ret;
> +
> +	if (!otp->data || !otp->data->reg_read)
> +		return -EINVAL;
> +
> +	ret = clk_bulk_enable(otp->data->num_clks, otp->clks);
> +	if (ret < 0) {
> +		dev_err(otp->dev, "failed to prepare/enable clks\n");
> +		return ret;
> +	}
> +
> +	ret = otp->data->reg_read(context, offset, val, bytes);
> +
> +	clk_bulk_disable(otp->data->num_clks, otp->clks);
> +
> +	return ret;
> +}
> +
> +static struct nvmem_config otp_config = {
> +	.name = "rockchip-otp",
> +	.read_only = true,
> +	.stride = 1,
> +	.word_size = 1,
> +	.reg_read = rockchip_otp_read,
> +};
> +
> +static const char * const px30_otp_clocks[] = {
> +	"otp", "apb_pclk", "phy",
> +};
> +
> +static const struct rockchip_data px30_data = {
> +	.size = 0x40,
> +	.clks = px30_otp_clocks,
> +	.num_clks = ARRAY_SIZE(px30_otp_clocks),
> +	.reg_read = px30_otp_read,
> +};
> +
> +static const char * const rk3568_otp_clocks[] = {
> +	"usr", "sbpi", "apb", "phy",
> +};
> +
> +static const struct rockchip_data rk3568_data = {
> +	.size = 0x80,
> +	.clks = rk3568_otp_clocks,
> +	.num_clks = ARRAY_SIZE(rk3568_otp_clocks),
> +	.reg_read = rk3568_otp_read,
> +};
> +
> +static const char * const rk3588_otp_clocks[] = {
> +	"otp", "apb_pclk", "phy", "arb",
> +};
> +
> +static const struct rockchip_data rk3588_data = {
> +	.size = 0x400,
> +	.clks = rk3588_otp_clocks,
> +	.num_clks = ARRAY_SIZE(rk3588_otp_clocks),
> +	.reg_read = rk3588_otp_read,
> +};
> +
> +static __maybe_unused const struct of_device_id rockchip_otp_match[] = {
> +	{
> +		.compatible = "rockchip,px30-otp",
> +		.data = &px30_data,
> +	},
> +	{
> +		.compatible = "rockchip,rk3308-otp",
> +		.data = &px30_data,
> +	},
> +	{
> +		.compatible = "rockchip,rk3568-otp",
> +		.data = &rk3568_data,
> +	},
> +	{
> +		.compatible = "rockchip,rk3588-otp",
> +		.data = &rk3588_data,
> +	},
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, rockchip_otp_match);
> +
> +static int rockchip_otp_probe(struct device *dev)
> +{
> +	struct rockchip_otp *otp;
> +	const struct rockchip_data *data;
> +	struct nvmem_device *nvmem;
> +	struct resource *res;
> +	int ret, i;
> +
> +	data = of_device_get_match_data(dev);
> +	if (!data)
> +		return dev_err_probe(dev, -EINVAL, "failed to get match data\n");
> +
> +	otp = kzalloc(sizeof(*otp), GFP_KERNEL);
> +	if (!otp)
> +		return -ENOMEM;
> +
> +	res = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(res)) {
> +		ret = PTR_ERR(res);
> +		goto err_free;
> +	}
> +
> +	otp->data = data;
> +	otp->dev = dev;
> +	otp->base = IOMEM(res->start);
> +
> +	otp->clks = kcalloc(data->num_clks, sizeof(*otp->clks), GFP_KERNEL);
> +	if (!otp->clks) {
> +		ret = -ENOMEM;
> +		goto err_free;
> +	}
> +
> +	for (i = 0; i < data->num_clks; ++i)
> +		otp->clks[i].id = data->clks[i];
> +
> +	ret = clk_bulk_get_optional(dev, data->num_clks, otp->clks);
> +	if (ret)
> +		goto err_clk;
> +
> +	otp->rst = reset_control_get(dev, NULL);
> +	if (IS_ERR(otp->rst)) {
> +		ret = PTR_ERR(otp->rst);
> +		goto err_rst;
> +	}
> +
> +	otp_config.size = data->size;
> +	otp_config.priv = otp;
> +	otp_config.dev = dev;
> +
> +	nvmem = nvmem_register(&otp_config);
> +	if (!IS_ERR(nvmem))
> +		return 0;
> +
> +	ret = PTR_ERR(nvmem);
> +
> +	reset_control_put(otp->rst);
> +
> +err_rst:
> +	clk_bulk_put_all(data->num_clks, otp->clks);
> +
> +err_clk:
> +	kfree(otp->clks);
> +
> +err_free:
> +	kfree(otp);
> +
> +	return ret;
> +}
> +
> +static struct driver rockchip_otp_driver = {
> +	.name	= "rockchip-otp",
> +	.probe	= rockchip_otp_probe,
> +	.of_compatible = DRV_OF_COMPAT(rockchip_otp_match),
> +};
> +device_platform_driver(rockchip_otp_driver);
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


