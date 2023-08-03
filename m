Delivery-date: Thu, 03 Aug 2023 12:41:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVlR-004vpH-Hm
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:41:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVlO-0008BY-O1
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:41:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8n1DQChxDmjNNMydC7+k51GepbqReZ4xcZcwi4pOyIM=; b=4TDgZzp4njmMikXSLBtU3IKcdW
	lcPHMUiipw6kJ2d2GrIpftB+K5j0NG+KfIGiyvW21AnQdbVSdGjghLY4GXngfGNbpW7nsJMXsqYVW
	pfNYL3gt+Lk+exK5x5HjYDdXDrxohI74SpM8nd3oibVG6TcGX6si0w5A0vA0Q1Q2GdGjTRjLiSpbY
	SMyT5AD4RLQS6R7PI1y7r7OQgZUCGIOjanh6bOkGHa4tOqRZxQkm1vsOmNJ7BDR3Fa7LaUVKs6CaE
	lXIP3SR15AvOeVUWkYvfTH0sx9NPooVGZmOP4cAgXOcSHdeQ9u98np0m7LI62NZnU/a7sfxIZiCAR
	TJFJtXpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVkD-007QjL-0W;
	Thu, 03 Aug 2023 10:39:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVk6-007QgX-13
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:39:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qRVk4-0007jE-E9; Thu, 03 Aug 2023 12:39:40 +0200
Message-ID: <a8456e48-fa53-a118-0fb4-08de1cafbcde@pengutronix.de>
Date: Thu, 3 Aug 2023 12:39:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20230728102332.40088-1-eagle.alexander923@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230728102332.40088-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_033942_691362_795B94E2 
X-CRM114-Status: GOOD (  36.99  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: stm32: Update driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Alexander,

On 28.07.23 12:23, Alexander Shiyan wrote:
> This patch updates the stm32 i2c driver. The original source is taken from
> the STMicroelectronics/u-boot repository [1].
> As a bonus from the update, the i2c_probe command now works properly,
> added support for stm32mp13x CPUs and a parser for some stm32-specific
> i2c devicetree properties.

Are you using this on STM32MP13x? I am asking because support for the new SoC
is still rudimentary and if you are going to add support for it, we might have
some patches internally that could make it easier (OP-TEE integration).

Cheers,
Ahmad

> 
> [1] https://github.com/STMicroelectronics/u-boot/blob/v2022.10-stm32mp/drivers/i2c/stm32f7_i2c.c
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/i2c/busses/i2c-stm32.c | 442 +++++++++++++++++++++------------
>  1 file changed, 277 insertions(+), 165 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
> index 39e345e2cc..ba0d4a51b5 100644
> --- a/drivers/i2c/busses/i2c-stm32.c
> +++ b/drivers/i2c/busses/i2c-stm32.c
> @@ -9,9 +9,11 @@
>  #include <common.h>
>  #include <i2c/i2c.h>
>  #include <init.h>
> +#include <regmap.h>
>  #include <linux/clk.h>
>  #include <linux/iopoll.h>
>  #include <linux/reset.h>
> +#include <mfd/syscon.h>
>  
>  /* STM32 I2C registers */
>  struct __packed stm32_i2c_regs {
> @@ -38,6 +40,8 @@ struct __packed stm32_i2c_regs {
>  
>  /* STM32 I2C control 1 */
>  #define STM32_I2C_CR1_ANFOFF			BIT(12)
> +#define STM32_I2C_CR1_DNF_MASK			GENMASK(11, 8)
> +#define STM32_I2C_CR1_DNF(n)			(((n) & 0xf) << 8)
>  #define STM32_I2C_CR1_ERRIE			BIT(7)
>  #define STM32_I2C_CR1_TCIE			BIT(6)
>  #define STM32_I2C_CR1_STOPIE			BIT(5)
> @@ -48,7 +52,6 @@ struct __packed stm32_i2c_regs {
>  #define STM32_I2C_CR1_PE			BIT(0)
>  
>  /* STM32 I2C control 2 */
> -#define STM32_I2C_CR2_AUTOEND			BIT(25)
>  #define STM32_I2C_CR2_RELOAD			BIT(24)
>  #define STM32_I2C_CR2_NBYTES_MASK		GENMASK(23, 16)
>  #define STM32_I2C_CR2_NBYTES(n)			((n & 0xff) << 16)
> @@ -98,10 +101,8 @@ struct __packed stm32_i2c_regs {
>  
>  #define STM32_I2C_MAX_LEN			0xff
>  
> -#define STM32_I2C_DNF_DEFAULT			0
> -#define STM32_I2C_DNF_MAX			16
> +#define STM32_I2C_DNF_MAX			15
>  
> -#define STM32_I2C_ANALOG_FILTER_ENABLE	1
>  #define STM32_I2C_ANALOG_FILTER_DELAY_MIN	50	/* ns */
>  #define STM32_I2C_ANALOG_FILTER_DELAY_MAX	260	/* ns */
>  
> @@ -119,10 +120,9 @@ struct __packed stm32_i2c_regs {
>  #define FAST_PLUS_RATE				1000000
>  
>  enum stm32_i2c_speed {
> -	STM32_I2C_SPEED_STANDARD, /* 100 kHz */
> -	STM32_I2C_SPEED_FAST, /* 400 kHz */
> -	STM32_I2C_SPEED_FAST_PLUS, /* 1 MHz */
> -	STM32_I2C_SPEED_END,
> +	IC_SPEED_MODE_STANDARD,
> +	IC_SPEED_MODE_FAST,
> +	IC_SPEED_MODE_FAST_PLUS,
>  };
>  
>  /**
> @@ -154,20 +154,23 @@ struct stm32_i2c_spec {
>  
>  /**
>   * struct stm32_i2c_setup - private I2C timing setup parameters
> - * @speed: I2C speed mode (standard, Fast Plus)
> - * @speed_freq: actual I2C speed frequency  (Hz)
>   * @clock_src: I2C clock source frequency (Hz)
> - * @dnf: Digital filter coefficient (0-16)
> + * @timings: I2C timing information
>   * @analog_filter: Analog filter delay (On/Off)
> - * @timings: I2C timings parameters
>   */
>  struct stm32_i2c_setup {
> -	enum stm32_i2c_speed speed;
> -	u32 speed_freq;
>  	u32 clock_src;
> +	struct i2c_timings timings;
>  	u8 dnf;
>  	bool analog_filter;
> -	struct i2c_timings timings;
> +};
> +
> +/**
> + * struct stm32_i2c_data - driver data for I2C configuration by compatible
> + * @fmp_clr_offset: Fast Mode Plus clear register offset from set register
> + */
> +struct stm32_i2c_data {
> +	u32 fmp_clr_offset;
>  };
>  
>  /**
> @@ -187,8 +190,32 @@ struct stm32_i2c_timings {
>  	u8 scll;
>  };
>  
> +/**
> + * struct stm32_i2c_priv - private data of the controller
> + * @regs: I2C registers address
> + * @clk: hw i2c clock
> + * @setup: I2C timing setup parameters
> + * @speed: I2C clock frequency of the controller. Standard, Fast or Fast+
> + * @regmap: holds SYSCFG phandle for Fast Mode Plus bit
> + * @regmap_sreg: register address for setting Fast Mode Plus bits
> + * @regmap_creg: register address for clearing Fast Mode Plus bits
> + * @regmap_mask: mask for Fast Mode Plus bits
> + */
> +struct stm32_i2c_priv {
> +	struct stm32_i2c_regs __iomem *regs;
> +	struct clk *clk;
> +	struct i2c_adapter adapter;
> +	struct stm32_i2c_setup setup;
> +	u32 speed;
> +	struct regmap *regmap;
> +	u32 regmap_sreg;
> +	u32 regmap_creg;
> +	u32 regmap_mask;
> +};
> +
>  static const struct stm32_i2c_spec i2c_specs[] = {
> -	[STM32_I2C_SPEED_STANDARD] = {
> +	/* Standard speed - 100 KHz */
> +	[IC_SPEED_MODE_STANDARD] = {
>  		.rate = STANDARD_RATE,
>  		.rate_min = 8000,
>  		.rate_max = 120000,
> @@ -200,7 +227,8 @@ static const struct stm32_i2c_spec i2c_specs[] = {
>  		.l_min = 4700,
>  		.h_min = 4000,
>  	},
> -	[STM32_I2C_SPEED_FAST] = {
> +	/* Fast speed - 400 KHz */
> +	[IC_SPEED_MODE_FAST] = {
>  		.rate = FAST_RATE,
>  		.rate_min = 320000,
>  		.rate_max = 480000,
> @@ -212,7 +240,8 @@ static const struct stm32_i2c_spec i2c_specs[] = {
>  		.l_min = 1300,
>  		.h_min = 600,
>  	},
> -	[STM32_I2C_SPEED_FAST_PLUS] = {
> +	/* Fast Plus Speed - 1 MHz */
> +	[IC_SPEED_MODE_FAST_PLUS] = {
>  		.rate = FAST_PLUS_RATE,
>  		.rate_min = 800000,
>  		.rate_max = 1200000,
> @@ -226,22 +255,30 @@ static const struct stm32_i2c_spec i2c_specs[] = {
>  	},
>  };
>  
> -struct stm32_i2c {
> -	struct stm32_i2c_regs __iomem *regs;
> -	struct clk *clk;
> -	struct i2c_adapter adapter;
> -	struct stm32_i2c_setup setup;
> +static const struct stm32_i2c_data stm32f7_data = {
> +	.fmp_clr_offset = 0x00,
> +};
> +
> +static const struct stm32_i2c_data stm32mp15_data = {
> +	.fmp_clr_offset = 0x40,
> +};
> +
> +static const struct stm32_i2c_data stm32mp13_data = {
> +	.fmp_clr_offset = 0x4,
>  };
> -#define to_stm32_i2c(a)	container_of(a, struct stm32_i2c, adapter)
>  
> -static inline int stm32_i2c_check_device_busy(struct stm32_i2c *priv)
> +static inline int stm32_i2c_check_device_busy(struct stm32_i2c_priv *priv)
>  {
>  	u32 status = readl(&priv->regs->isr);
> -	return status & STM32_I2C_ISR_BUSY;
> +
> +	if (status & STM32_I2C_ISR_BUSY)
> +		return -EBUSY;
> +
> +	return 0;
>  }
>  
> -static void stm32_i2c_message_start(struct stm32_i2c *i2c_priv,
> -				    struct i2c_msg *msg, bool stop)
> +static void stm32_i2c_message_start(struct stm32_i2c_priv *i2c_priv,
> +				    struct i2c_msg *msg)
>  {
>  	struct stm32_i2c_regs *regs = i2c_priv->regs;
>  	u32 cr2 = readl(&regs->cr2);
> @@ -262,9 +299,8 @@ static void stm32_i2c_message_start(struct stm32_i2c *i2c_priv,
>  		cr2 |= STM32_I2C_CR2_SADD7(msg->addr);
>  	}
>  
> -	/* Set nb bytes to transfer and reload or autoend bits */
> -	cr2 &= ~(STM32_I2C_CR2_NBYTES_MASK | STM32_I2C_CR2_RELOAD |
> -		 STM32_I2C_CR2_AUTOEND);
> +	/* Set nb bytes to transfer and reload (if needed) */
> +	cr2 &= ~(STM32_I2C_CR2_NBYTES_MASK | STM32_I2C_CR2_RELOAD);
>  	if (msg->len > STM32_I2C_MAX_LEN) {
>  		cr2 |= STM32_I2C_CR2_NBYTES(STM32_I2C_MAX_LEN);
>  		cr2 |= STM32_I2C_CR2_RELOAD;
> @@ -284,8 +320,8 @@ static void stm32_i2c_message_start(struct stm32_i2c *i2c_priv,
>   * sent is greater than MAX_LEN
>   */
>  
> -static void stm32_i2c_handle_reload(struct stm32_i2c *i2c_priv,
> -				    struct i2c_msg *msg, bool stop)
> +static void stm32_i2c_handle_reload(struct stm32_i2c_priv *i2c_priv,
> +				    struct i2c_msg *msg)
>  {
>  	struct stm32_i2c_regs *regs = i2c_priv->regs;
>  	u32 cr2 = readl(&regs->cr2);
> @@ -302,7 +338,7 @@ static void stm32_i2c_handle_reload(struct stm32_i2c *i2c_priv,
>  	writel(cr2, &regs->cr2);
>  }
>  
> -static int stm32_i2c_wait_flags(struct stm32_i2c *i2c_priv,
> +static int stm32_i2c_wait_flags(struct stm32_i2c_priv *i2c_priv,
>  				u32 flags, u32 *status)
>  {
>  	struct stm32_i2c_regs *regs = i2c_priv->regs;
> @@ -311,7 +347,7 @@ static int stm32_i2c_wait_flags(struct stm32_i2c *i2c_priv,
>  				  *status & flags, USEC_PER_SEC);
>  }
>  
> -static int stm32_i2c_check_end_of_message(struct stm32_i2c *i2c_priv)
> +static int stm32_i2c_check_end_of_message(struct stm32_i2c_priv *i2c_priv)
>  {
>  	struct stm32_i2c_regs *regs = i2c_priv->regs;
>  	u32 mask = STM32_I2C_ISR_ERRORS | STM32_I2C_ISR_NACKF |
> @@ -362,30 +398,29 @@ static int stm32_i2c_check_end_of_message(struct stm32_i2c *i2c_priv)
>  		setbits_le32(&regs->icr, STM32_I2C_ICR_STOPCF);
>  
>  		/* Clear control register 2 */
> -		setbits_le32(&regs->cr2, STM32_I2C_CR2_RESET_MASK);
> +		clrbits_le32(&regs->cr2, STM32_I2C_CR2_RESET_MASK);
>  	}
>  
>  	return ret;
>  }
>  
> -static int stm32_i2c_message_xfer(struct stm32_i2c *i2c_priv,
> +static int stm32_i2c_message_xfer(struct stm32_i2c_priv *i2c_priv,
>  				  struct i2c_msg *msg, bool stop)
>  {
>  	struct stm32_i2c_regs *regs = i2c_priv->regs;
> -	int len = msg->len;
> -	u8 *buf = msg->buf;
>  	u32 status;
>  	u32 mask = msg->flags & I2C_M_RD ? STM32_I2C_ISR_RXNE :
>  		   STM32_I2C_ISR_TXIS | STM32_I2C_ISR_NACKF;
> -	int bytes_to_rw = min(len, STM32_I2C_MAX_LEN);
> +	int bytes_to_rw = msg->len > STM32_I2C_MAX_LEN ?
> +			  STM32_I2C_MAX_LEN : msg->len;
>  	int ret = 0;
>  
>  	/* Add errors */
>  	mask |= STM32_I2C_ISR_ERRORS;
>  
> -	stm32_i2c_message_start(i2c_priv, msg, stop);
> +	stm32_i2c_message_start(i2c_priv, msg);
>  
> -	while (len) {
> +	while (msg->len) {
>  		/*
>  		 * Wait until TXIS/NACKF/BERR/ARLO flags or
>  		 * RXNE/BERR/ARLO flags are set
> @@ -398,29 +433,30 @@ static int stm32_i2c_message_xfer(struct stm32_i2c *i2c_priv,
>  			break;
>  
>  		if (status & STM32_I2C_ISR_RXNE) {
> -			*buf++ = readb(&regs->rxdr);
> -			len--;
> +			*msg->buf++ = readb(&regs->rxdr);
> +			msg->len--;
>  			bytes_to_rw--;
>  		}
>  
>  		if (status & STM32_I2C_ISR_TXIS) {
> -			writeb(*buf++, &regs->txdr);
> -			len--;
> +			writeb(*msg->buf++, &regs->txdr);
> +			msg->len--;
>  			bytes_to_rw--;
>  		}
>  
> -		if (!bytes_to_rw && len) {
> +		if (!bytes_to_rw && msg->len) {
>  			/* Wait until TCR flag is set */
>  			mask = STM32_I2C_ISR_TCR;
>  			ret = stm32_i2c_wait_flags(i2c_priv, mask, &status);
>  			if (ret)
>  				break;
>  
> -			bytes_to_rw = min(len, STM32_I2C_MAX_LEN);
> +			bytes_to_rw = msg->len > STM32_I2C_MAX_LEN ?
> +				      STM32_I2C_MAX_LEN : msg->len;
>  			mask = msg->flags & I2C_M_RD ? STM32_I2C_ISR_RXNE :
>  			       STM32_I2C_ISR_TXIS | STM32_I2C_ISR_NACKF;
>  
> -			stm32_i2c_handle_reload(i2c_priv, msg, stop);
> +			stm32_i2c_handle_reload(i2c_priv, msg);
>  		} else if (!bytes_to_rw) {
>  			/* Wait until TC flag is set */
>  			mask = STM32_I2C_ISR_TC;
> @@ -434,9 +470,9 @@ static int stm32_i2c_message_xfer(struct stm32_i2c *i2c_priv,
>  		}
>  	}
>  
> -	/* End of transfer, send stop condition */
> -	mask = STM32_I2C_CR2_STOP;
> -	setbits_le32(&regs->cr2, mask);
> +	/* End of transfer, send stop condition if appropriate */
> +	if (!ret && !(status & (STM32_I2C_ISR_NACKF | STM32_I2C_ISR_ERRORS)))
> +		setbits_le32(&regs->cr2, STM32_I2C_CR2_STOP);
>  
>  	return stm32_i2c_check_end_of_message(i2c_priv);
>  }
> @@ -444,16 +480,16 @@ static int stm32_i2c_message_xfer(struct stm32_i2c *i2c_priv,
>  static int stm32_i2c_xfer(struct i2c_adapter *adapter,
>  			  struct i2c_msg *msg, int nmsgs)
>  {
> -	struct stm32_i2c *i2c_priv = to_stm32_i2c(adapter);
> -	int ret;
> -	int i;
> +	struct stm32_i2c_priv *i2c_priv =
> +		container_of(adapter, struct stm32_i2c_priv, adapter);
> +	int i, ret;
>  
>  	ret = stm32_i2c_check_device_busy(i2c_priv);
>  	if (ret)
> -		return -EBUSY;
> +		return ret;
>  
> -	for (i = 0; i < nmsgs; i++) {
> -		ret = stm32_i2c_message_xfer(i2c_priv, &msg[i], i == nmsgs - 1);
> +	for (i = nmsgs; i > 0; i--, msg++) {
> +		ret = stm32_i2c_message_xfer(i2c_priv, msg, i == 1);
>  		if (ret)
>  			return ret;
>  	}
> @@ -461,30 +497,30 @@ static int stm32_i2c_xfer(struct i2c_adapter *adapter,
>  	return nmsgs;
>  }
>  
> -
> -static int stm32_i2c_compute_solutions(struct stm32_i2c_setup *setup,
> +static int stm32_i2c_compute_solutions(u32 i2cclk,
> +				       struct stm32_i2c_setup *setup,
> +				       const struct stm32_i2c_spec *specs,
>  				       struct list_head *solutions)
>  {
>  	struct stm32_i2c_timings *v;
>  	u32 p_prev = STM32_PRESC_MAX;
> -	u32 i2cclk = DIV_ROUND_CLOSEST(NSEC_PER_SEC, setup->clock_src);
> -	u32 af_delay_min = 0, af_delay_max = 0;
> +	u32 af_delay_min, af_delay_max;
>  	u16 p, l, a;
>  	int sdadel_min, sdadel_max, scldel_min;
>  	int ret = 0;
>  
> -	if (setup->analog_filter) {
> -		af_delay_min = STM32_I2C_ANALOG_FILTER_DELAY_MIN;
> -		af_delay_max = STM32_I2C_ANALOG_FILTER_DELAY_MAX;
> -	}
> +	af_delay_min = setup->analog_filter ?
> +		       STM32_I2C_ANALOG_FILTER_DELAY_MIN : 0;
> +	af_delay_max = setup->analog_filter ?
> +		       STM32_I2C_ANALOG_FILTER_DELAY_MAX : 0;
>  
> -	sdadel_min = i2c_specs[setup->speed].hddat_min + setup->timings.scl_fall_ns -
> +	sdadel_min = specs->hddat_min + setup->timings.scl_fall_ns -
>  		     af_delay_min - (setup->dnf + 3) * i2cclk;
>  
> -	sdadel_max = i2c_specs[setup->speed].vddat_max - setup->timings.scl_rise_ns -
> +	sdadel_max = specs->vddat_max - setup->timings.scl_rise_ns -
>  		     af_delay_max - (setup->dnf + 4) * i2cclk;
>  
> -	scldel_min = setup->timings.scl_rise_ns + i2c_specs[setup->speed].sudat_min;
> +	scldel_min = setup->timings.scl_rise_ns + specs->sudat_min;
>  
>  	if (sdadel_min < 0)
>  		sdadel_min = 0;
> @@ -497,13 +533,13 @@ static int stm32_i2c_compute_solutions(struct stm32_i2c_setup *setup,
>  	/* Compute possible values for PRESC, SCLDEL and SDADEL */
>  	for (p = 0; p < STM32_PRESC_MAX; p++) {
>  		for (l = 0; l < STM32_SCLDEL_MAX; l++) {
> -			u32 scldel = (l + 1) * (p + 1) * i2cclk;
> +			int scldel = (l + 1) * (p + 1) * i2cclk;
>  
>  			if (scldel < scldel_min)
>  				continue;
>  
>  			for (a = 0; a < STM32_SDADEL_MAX; a++) {
> -				u32 sdadel = (a * (p + 1) + 1) * i2cclk;
> +				int sdadel = (a * (p + 1) + 1) * i2cclk;
>  
>  				if (((sdadel >= sdadel_min) &&
>  				     (sdadel <= sdadel_max)) &&
> @@ -527,36 +563,40 @@ static int stm32_i2c_compute_solutions(struct stm32_i2c_setup *setup,
>  		}
>  	}
>  
> -	if (list_empty(solutions))
> +	if (list_empty(solutions)) {
> +		pr_err("no Prescaler solution\n");
>  		ret = -EPERM;
> +	}
>  
>  	return ret;
>  }
>  
> -static int stm32_i2c_choose_solution(struct stm32_i2c_setup *setup,
> +static int stm32_i2c_choose_solution(u32 i2cclk,
> +				     struct stm32_i2c_setup *setup,
> +				     const struct stm32_i2c_spec *specs,
>  				     struct list_head *solutions,
>  				     struct stm32_i2c_timings *s)
>  {
>  	struct stm32_i2c_timings *v;
> -	u32 i2cbus = DIV_ROUND_CLOSEST(NSEC_PER_SEC, setup->speed_freq);
> +	u32 i2cbus = DIV_ROUND_CLOSEST(NSEC_PER_SEC,
> +				       setup->timings.bus_freq_hz);
>  	u32 clk_error_prev = i2cbus;
> -	u32 i2cclk = DIV_ROUND_CLOSEST(NSEC_PER_SEC, setup->clock_src);
>  	u32 clk_min, clk_max;
> -	u32 af_delay_min = 0;
> +	u32 af_delay_min;
>  	u32 dnf_delay;
>  	u32 tsync;
>  	u16 l, h;
>  	bool sol_found = false;
>  	int ret = 0;
>  
> -	if (setup->analog_filter)
> -		af_delay_min = STM32_I2C_ANALOG_FILTER_DELAY_MIN;
> +	af_delay_min = setup->analog_filter ?
> +		       STM32_I2C_ANALOG_FILTER_DELAY_MIN : 0;
>  
>  	dnf_delay = setup->dnf * i2cclk;
>  
>  	tsync = af_delay_min + dnf_delay + (2 * i2cclk);
> -	clk_max = NSEC_PER_SEC / i2c_specs[setup->speed].rate_min;
> -	clk_min = NSEC_PER_SEC / i2c_specs[setup->speed].rate_max;
> +	clk_max = NSEC_PER_SEC / specs->rate_min;
> +	clk_min = NSEC_PER_SEC / specs->rate_max;
>  
>  	/*
>  	 * Among Prescaler possibilities discovered above figures out SCL Low
> @@ -574,7 +614,7 @@ static int stm32_i2c_choose_solution(struct stm32_i2c_setup *setup,
>  		for (l = 0; l < STM32_SCLL_MAX; l++) {
>  			u32 tscl_l = (l + 1) * prescaler + tsync;
>  
> -			if ((tscl_l < i2c_specs[setup->speed].l_min) ||
> +			if (tscl_l < specs->l_min ||
>  			    (i2cclk >=
>  			     ((tscl_l - af_delay_min - dnf_delay) / 4))) {
>  				continue;
> @@ -583,16 +623,17 @@ static int stm32_i2c_choose_solution(struct stm32_i2c_setup *setup,
>  			for (h = 0; h < STM32_SCLH_MAX; h++) {
>  				u32 tscl_h = (h + 1) * prescaler + tsync;
>  				u32 tscl = tscl_l + tscl_h +
> -					   setup->timings.scl_rise_ns +
> -					   setup->timings.scl_fall_ns;
> +					   setup->timings.scl_rise_ns + setup->timings.scl_fall_ns;
>  
>  				if ((tscl >= clk_min) && (tscl <= clk_max) &&
> -				    (tscl_h >= i2c_specs[setup->speed].h_min) &&
> +				    (tscl_h >= specs->h_min) &&
>  				    (i2cclk < tscl_h)) {
> -					int clk_error = tscl - i2cbus;
> +					u32 clk_error;
>  
> -					if (clk_error < 0)
> -						clk_error = -clk_error;
> +					if (tscl > i2cbus)
> +						clk_error = tscl - i2cbus;
> +					else
> +						clk_error = i2cbus - tscl;
>  
>  					if (clk_error < clk_error_prev) {
>  						clk_error_prev = clk_error;
> @@ -606,61 +647,68 @@ static int stm32_i2c_choose_solution(struct stm32_i2c_setup *setup,
>  		}
>  	}
>  
> -	if (!sol_found)
> +	if (!sol_found) {
> +		pr_err("no solution at all\n");
>  		ret = -EPERM;
> +	}
>  
>  	return ret;
>  }
>  
> -static int stm32_i2c_compute_timing(struct stm32_i2c *i2c_priv,
> -				    struct stm32_i2c_setup *setup,
> +static const struct stm32_i2c_spec *get_specs(u32 rate)
> +{
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(i2c_specs); i++)
> +		if (rate <= i2c_specs[i].rate)
> +			return &i2c_specs[i];
> +
> +	/* NOT REACHED */
> +	return ERR_PTR(-EINVAL);
> +}
> +
> +static int stm32_i2c_compute_timing(struct stm32_i2c_priv *i2c_priv,
>  				    struct stm32_i2c_timings *output)
>  {
>  	struct device *dev = &i2c_priv->adapter.dev;
> +	struct stm32_i2c_setup *setup = &i2c_priv->setup;
> +	const struct stm32_i2c_spec *specs;
>  	struct stm32_i2c_timings *v, *_v;
>  	struct list_head solutions;
> +	u32 i2cclk = DIV_ROUND_CLOSEST(NSEC_PER_SEC, setup->clock_src);
>  	int ret;
>  
> -	if (setup->speed >= STM32_I2C_SPEED_END) {
> -		dev_err(dev, "speed out of bound {%d/%d}\n",
> -		       setup->speed, STM32_I2C_SPEED_END - 1);
> +	specs = get_specs(setup->timings.bus_freq_hz);
> +	if (specs == ERR_PTR(-EINVAL)) {
> +		dev_err(dev, "speed out of bound {%d}\n",
> +			setup->timings.bus_freq_hz);
>  		return -EINVAL;
>  	}
>  
> -	if ((setup->timings.scl_rise_ns > i2c_specs[setup->speed].rise_max) ||
> -	    (setup->timings.scl_fall_ns > i2c_specs[setup->speed].fall_max)) {
> +	if (setup->timings.scl_rise_ns > specs->rise_max ||
> +	    setup->timings.scl_fall_ns > specs->fall_max) {
>  		dev_err(dev, "timings out of bound Rise{%d>%d}/Fall{%d>%d}\n",
> -		       setup->timings.scl_rise_ns, i2c_specs[setup->speed].rise_max,
> -		       setup->timings.scl_fall_ns, i2c_specs[setup->speed].fall_max);
> +			setup->timings.scl_rise_ns, specs->rise_max,
> +			setup->timings.scl_fall_ns, specs->fall_max);
>  		return -EINVAL;
>  	}
>  
> +	/*  Analog and Digital Filters */
> +	setup->dnf = DIV_ROUND_CLOSEST(i2c_priv->setup.timings.digital_filter_width_ns, i2cclk);
>  	if (setup->dnf > STM32_I2C_DNF_MAX) {
>  		dev_err(dev, "DNF out of bound %d/%d\n",
> -		       setup->dnf, STM32_I2C_DNF_MAX);
> -		return -EINVAL;
> -	}
> -
> -	if (setup->speed_freq > i2c_specs[setup->speed].rate) {
> -		dev_err(dev, "Freq {%d/%d}\n",
> -		       setup->speed_freq, i2c_specs[setup->speed].rate);
> +			setup->dnf, STM32_I2C_DNF_MAX);
>  		return -EINVAL;
>  	}
>  
>  	INIT_LIST_HEAD(&solutions);
> -	ret = stm32_i2c_compute_solutions(setup, &solutions);
> -	if (ret) {
> -		if (ret == -EPERM)
> -			dev_err(dev, "No prescaler solution\n");
> +	ret = stm32_i2c_compute_solutions(i2cclk, setup, specs, &solutions);
> +	if (ret)
>  		goto exit;
> -	}
>  
> -	ret = stm32_i2c_choose_solution(setup, &solutions, output);
> -	if (ret) {
> -		if (ret == -EPERM)
> -			dev_err(dev, "no solution at all\n");
> +	ret = stm32_i2c_choose_solution(i2cclk, setup, specs, &solutions, output);
> +	if (ret)
>  		goto exit;
> -	}
>  
>  	dev_dbg(dev, "Presc: %i, scldel: %i, sdadel: %i, scll: %i, sclh: %i\n",
>  		output->presc,
> @@ -677,16 +725,25 @@ static int stm32_i2c_compute_timing(struct stm32_i2c *i2c_priv,
>  	return ret;
>  }
>  
> -static int stm32_i2c_setup_timing(struct stm32_i2c *i2c_priv,
> -				  enum stm32_i2c_speed speed,
> +static u32 get_lower_rate(u32 rate)
> +{
> +	int i;
> +
> +	for (i = ARRAY_SIZE(i2c_specs) - 1; i >= 0; i--)
> +		if (rate > i2c_specs[i].rate)
> +			return i2c_specs[i].rate;
> +
> +	return i2c_specs[0].rate;
> +}
> +
> +static int stm32_i2c_setup_timing(struct stm32_i2c_priv *i2c_priv,
>  				  struct stm32_i2c_timings *timing)
>  {
>  	struct device *dev = &i2c_priv->adapter.dev;
>  	struct stm32_i2c_setup *setup = &i2c_priv->setup;
>  	int ret = 0;
>  
> -	setup->speed = speed;
> -	setup->speed_freq = i2c_specs[setup->speed].rate;
> +	setup->timings.bus_freq_hz = i2c_priv->speed;
>  	setup->clock_src = clk_get_rate(i2c_priv->clk);
>  
>  	if (!setup->clock_src) {
> @@ -695,15 +752,14 @@ static int stm32_i2c_setup_timing(struct stm32_i2c *i2c_priv,
>  	}
>  
>  	do {
> -		ret = stm32_i2c_compute_timing(i2c_priv, setup, timing);
> +		ret = stm32_i2c_compute_timing(i2c_priv, timing);
>  		if (ret) {
>  			dev_dbg(dev, "failed to compute I2C timings.\n");
> -			if (speed > STM32_I2C_SPEED_STANDARD) {
> -				speed--;
> -				setup->speed = speed;
> -				setup->speed_freq = i2c_specs[setup->speed].rate;
> +			if (setup->timings.bus_freq_hz > STANDARD_RATE) {
> +				setup->timings.bus_freq_hz =
> +					get_lower_rate(setup->timings.bus_freq_hz);
>  				dev_dbg(dev, "downgrade I2C Speed Freq to (%i)\n",
> -					i2c_specs[setup->speed].rate);
> +					setup->timings.bus_freq_hz);
>  			} else {
>  				break;
>  			}
> @@ -715,31 +771,60 @@ static int stm32_i2c_setup_timing(struct stm32_i2c *i2c_priv,
>  		return ret;
>  	}
>  
> -	dev_dbg(dev, "I2C Speed(%i), Freq(%i), Clk Source(%i)\n",
> -		setup->speed, setup->speed_freq, setup->clock_src);
> +	dev_dbg(dev, "I2C Freq(%i), Clk Source(%i)\n",
> +		setup->timings.bus_freq_hz, setup->clock_src);
>  	dev_dbg(dev, "I2C Rise(%i) and Fall(%i) Time\n",
> -		 setup->timings.scl_rise_ns, setup->timings.scl_fall_ns);
> +		setup->timings.scl_rise_ns, setup->timings.scl_fall_ns);
>  	dev_dbg(dev, "I2C Analog Filter(%s), DNF(%i)\n",
> -		 setup->analog_filter ? "On" : "Off", setup->dnf);
> +		setup->analog_filter ? "On" : "Off", setup->dnf);
> +
> +	i2c_priv->speed = setup->timings.bus_freq_hz;
>  
>  	return 0;
>  }
>  
> -static int stm32_i2c_hw_config(struct stm32_i2c *i2c_priv,
> -			       enum stm32_i2c_speed speed)
> +static int stm32_i2c_write_fm_plus_bits(struct stm32_i2c_priv *i2c_priv)
> +{
> +	int ret;
> +	bool enable = i2c_priv->speed > FAST_RATE;
> +
> +	/* Optional */
> +	if (IS_ERR_OR_NULL(i2c_priv->regmap))
> +		return 0;
> +
> +	if (i2c_priv->regmap_sreg == i2c_priv->regmap_creg)
> +		ret = regmap_update_bits(i2c_priv->regmap,
> +					 i2c_priv->regmap_sreg,
> +					 i2c_priv->regmap_mask,
> +					 enable ? i2c_priv->regmap_mask : 0);
> +	else
> +		ret = regmap_write(i2c_priv->regmap,
> +				   enable ? i2c_priv->regmap_sreg :
> +					    i2c_priv->regmap_creg,
> +				   i2c_priv->regmap_mask);
> +
> +	return ret;
> +}
> +
> +static int stm32_i2c_hw_config(struct stm32_i2c_priv *i2c_priv)
>  {
>  	struct stm32_i2c_regs *regs = i2c_priv->regs;
>  	struct stm32_i2c_timings t;
>  	int ret;
>  	u32 timing = 0;
>  
> -	ret = stm32_i2c_setup_timing(i2c_priv, speed, &t);
> +	ret = stm32_i2c_setup_timing(i2c_priv, &t);
>  	if (ret)
>  		return ret;
>  
>  	/* Disable I2C */
>  	clrbits_le32(&regs->cr1, STM32_I2C_CR1_PE);
>  
> +	/* Setup Fast mode plus if necessary */
> +	ret = stm32_i2c_write_fm_plus_bits(i2c_priv);
> +	if (ret)
> +		return ret;
> +
>  	/* Timing settings */
>  	timing |= STM32_I2C_TIMINGR_PRESC(t.presc);
>  	timing |= STM32_I2C_TIMINGR_SCLDEL(t.scldel);
> @@ -753,44 +838,74 @@ static int stm32_i2c_hw_config(struct stm32_i2c *i2c_priv,
>  		clrbits_le32(&regs->cr1, STM32_I2C_CR1_ANFOFF);
>  	else
>  		setbits_le32(&regs->cr1, STM32_I2C_CR1_ANFOFF);
> +
> +	/* Program the Digital Filter */
> +	clrsetbits_le32(&regs->cr1, STM32_I2C_CR1_DNF_MASK,
> +			STM32_I2C_CR1_DNF(i2c_priv->setup.dnf));
> +
>  	setbits_le32(&regs->cr1, STM32_I2C_CR1_PE);
>  
>  	return 0;
>  }
>  
> -static int stm32_i2c_set_bus_speed(struct stm32_i2c *i2c_priv, unsigned speed)
> +static int stm32_i2c_set_bus_speed(struct stm32_i2c_priv *i2c_priv, unsigned int speed)
>  {
> -	struct device *parent_dev = i2c_priv->adapter.dev.parent;
> -	enum stm32_i2c_speed stm32_speed;
> -	switch (speed) {
> -	case STANDARD_RATE:
> -		stm32_speed = STM32_I2C_SPEED_STANDARD;
> -		break;
> -	case FAST_RATE:
> -		stm32_speed = STM32_I2C_SPEED_FAST;
> -		break;
> -	case FAST_PLUS_RATE:
> -		stm32_speed = STM32_I2C_SPEED_FAST_PLUS;
> -		break;
> -	default:
> -		dev_warn(parent_dev, "Speed %d not supported\n", speed);
> +	struct device *dev = &i2c_priv->adapter.dev;
> +
> +	if (speed > FAST_PLUS_RATE) {
> +		dev_dbg(dev, "Speed %d not supported\n", speed);
>  		return -EINVAL;
>  	}
>  
> -	return stm32_i2c_hw_config(i2c_priv, stm32_speed);
> +	i2c_priv->speed = speed;
> +
> +	return stm32_i2c_hw_config(i2c_priv);
> +}
> +
> +static int stm32_of_to_plat(struct device *dev, struct stm32_i2c_priv *i2c_priv)
> +{
> +	const struct stm32_i2c_data *data;
> +	int ret;
> +
> +	ret = dev_get_drvdata(dev, (const void **)&data);
> +	if (ret)
> +		return ret;
> +
> +	if (of_property_read_u32(dev->of_node, "i2c-digital-filter-width-ns",
> +				 &i2c_priv->setup.timings.digital_filter_width_ns))
> +		i2c_priv->setup.timings.digital_filter_width_ns = 0;
> +	if (!of_property_read_bool(dev->of_node, "i2c-digital-filter"))
> +		i2c_priv->setup.timings.digital_filter_width_ns = 0;
> +
> +	i2c_priv->setup.analog_filter =
> +		of_property_read_bool(dev->of_node, "i2c-analog-filter");
> +
> +	/* Optional */
> +	i2c_priv->regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
> +							   "st,syscfg-fmp");
> +	if (!IS_ERR(i2c_priv->regmap)) {
> +		u32 fmp[3];
> +
> +		ret = of_property_read_u32_array(dev->of_node, "st,syscfg-fmp", fmp, 3);
> +		if (ret)
> +			return ret;
> +
> +		i2c_priv->regmap_sreg = fmp[1];
> +		i2c_priv->regmap_creg = fmp[1] + data->fmp_clr_offset;
> +		i2c_priv->regmap_mask = fmp[2];
> +	}
> +
> +	return 0;
>  }
>  
>  static int __init stm32_i2c_probe(struct device *dev)
>  {
>  	struct resource *iores;
> -	struct stm32_i2c *stm32_i2c;
> +	struct stm32_i2c_priv *stm32_i2c;
>  	struct i2c_platform_data *pdata;
> -	const struct stm32_i2c_setup *setup;
>  	struct i2c_timings *timings;
>  	int ret;
>  
> -	pdata = dev->platform_data;
> -
>  	stm32_i2c = xzalloc(sizeof(*stm32_i2c));
>  
>  	stm32_i2c->clk = clk_get(dev, NULL);
> @@ -798,15 +913,20 @@ static int __init stm32_i2c_probe(struct device *dev)
>  		return PTR_ERR(stm32_i2c->clk);
>  	clk_enable(stm32_i2c->clk);
>  
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +
> +	stm32_i2c->regs = IOMEM(iores->start);
> +
>  	ret = device_reset_us(dev, 2);
>  	if (ret)
>  		return ret;
>  
> -	ret = dev_get_drvdata(dev, (const void **)&setup);
> +	ret = stm32_of_to_plat(dev, stm32_i2c);
>  	if (ret)
>  		return ret;
>  
> -	stm32_i2c->setup = *setup;
>  	timings = &stm32_i2c->setup.timings;
>  
>  	/* We've our own defaults, so don't use the i2c_parse_fw_timings ones */
> @@ -824,12 +944,8 @@ static int __init stm32_i2c_probe(struct device *dev)
>  	stm32_i2c->adapter.nr = dev->id;
>  	stm32_i2c->adapter.dev.parent = dev;
>  	stm32_i2c->adapter.dev.of_node = dev->of_node;
> -	iores = dev_request_mem_resource(dev, 0);
> -	if (IS_ERR(iores))
> -		return PTR_ERR(iores);
> -
> -	stm32_i2c->regs = IOMEM(iores->start);
>  
> +	pdata = dev->platform_data;
>  	if (pdata && pdata->bitrate)
>  		timings->bus_freq_hz = pdata->bitrate;
>  
> @@ -840,14 +956,10 @@ static int __init stm32_i2c_probe(struct device *dev)
>  	return i2c_add_numbered_adapter(&stm32_i2c->adapter);
>  }
>  
> -static const struct stm32_i2c_setup stm32f7_setup = {
> -	.dnf = STM32_I2C_DNF_DEFAULT,
> -	.analog_filter = STM32_I2C_ANALOG_FILTER_ENABLE,
> -};
> -
>  static __maybe_unused struct of_device_id stm32_i2c_dt_ids[] = {
> -	{ .compatible = "st,stm32f7-i2c", .data = &stm32f7_setup, },
> -	{ .compatible = "st,stm32mp15-i2c", .data = &stm32f7_setup},
> +	{ .compatible = "st,stm32f7-i2c", .data = &stm32f7_data },
> +	{ .compatible = "st,stm32mp15-i2c", .data = &stm32mp15_data },
> +	{ .compatible = "st,stm32mp13-i2c", .data = &stm32mp13_data },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, stm32_i2c_dt_ids);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



