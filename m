Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlnoM-0002nI-Tz
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 05:09:36 +0000
Date: Fri, 12 Jul 2019 07:09:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190712050931.5icq2vgdd5uobvzw@pengutronix.de>
References: <20190710201112.9086-1-a.fatoum@pengutronix.de>
 <20190710201112.9086-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710201112.9086-5-a.fatoum@pengutronix.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/7] i2c: add stm32f7 I2C adapter driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 10, 2019 at 10:11:10PM +0200, Ahmad Fatoum wrote:
> +
> +static int stm32_i2c_check_end_of_message(struct stm32_i2c *i2c_priv)
> +{
> +	struct stm32_i2c_regs *regs = i2c_priv->regs;
> +	u32 mask = STM32_I2C_ISR_ERRORS | STM32_I2C_ISR_NACKF |
> +		   STM32_I2C_ISR_STOPF;
> +	u32 status;
> +	int ret;
> +
> +	ret = stm32_i2c_wait_flags(i2c_priv, mask, &status);
> +	if (ret)
> +		return ret;
> +
> +	if (status & STM32_I2C_ISR_BERR) {
> +		debug("%s: Bus error\n", __func__);

Please replace with dev_dbg and friends.

> +
> +static int stm32_i2c_message_xfer(struct stm32_i2c *i2c_priv,
> +				  struct i2c_msg *msg, bool stop)
> +{
> +	struct stm32_i2c_regs *regs = i2c_priv->regs;
> +	u32 status;
> +	u32 mask = msg->flags & I2C_M_RD ? STM32_I2C_ISR_RXNE :
> +		   STM32_I2C_ISR_TXIS | STM32_I2C_ISR_NACKF;
> +	int bytes_to_rw = msg->len > STM32_I2C_MAX_LEN ?
> +			  STM32_I2C_MAX_LEN : msg->len;
> +	int ret = 0;
> +
> +	/* Add errors */
> +	mask |= STM32_I2C_ISR_ERRORS;
> +
> +	stm32_i2c_message_start(i2c_priv, msg, stop);
> +
> +	while (msg->len) {
> +		/*
> +		 * Wait until TXIS/NACKF/BERR/ARLO flags or
> +		 * RXNE/BERR/ARLO flags are set
> +		 */
> +		ret = stm32_i2c_wait_flags(i2c_priv, mask, &status);
> +		if (ret)
> +			break;
> +
> +		if (status & (STM32_I2C_ISR_NACKF | STM32_I2C_ISR_ERRORS))
> +			break;
> +
> +		if (status & STM32_I2C_ISR_RXNE) {
> +			*msg->buf++ = readb(&regs->rxdr);
> +			msg->len--;

The driver shouldn't modify the message. Please create local variables
for the length counter and buf pointer.

> +
> +static int __init stm32_i2c_probe(struct device_d *dev)
> +{
> +	struct device_node *np = dev->device_node;
> +	struct resource *iores;
> +	struct stm32_i2c *stm32_i2c;
> +	struct i2c_platform_data *pdata;
> +	struct reset_control *rst;
> +	const struct stm32_i2c_setup *setup;
> +	int bitrate;
> +	int ret;
> +
> +	pdata = dev->platform_data;
> +
> +	stm32_i2c = xzalloc(sizeof(*stm32_i2c));
> +
> +	stm32_i2c->clk = clk_get(dev, NULL);
> +	if (IS_ERR(stm32_i2c->clk))
> +		return PTR_ERR(stm32_i2c->clk);
> +	clk_enable(stm32_i2c->clk);
> +
> +	rst = reset_control_get(dev, NULL);
> +	if (IS_ERR(rst))
> +		return PTR_ERR(rst);
> +
> +	reset_control_assert(rst);
> +	udelay(2);
> +	reset_control_deassert(rst);
> +
> +	ret = dev_get_drvdata(dev, (const void **)&setup);
> +	if (ret)
> +		return ret;
> +
> +	stm32_i2c->setup = *setup;
> +
> +	of_property_read_u32(np, "i2c-scl-rising-time-ns",
> +				   &stm32_i2c->setup.rise_time);
> +	of_property_read_u32(np, "i2c-scl-falling-time-ns",
> +				   &stm32_i2c->setup.fall_time);

The Kernel has a helper function for reading these generic properties.
Can we have a similar function?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
