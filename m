Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQYfB-0003u4-Al
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 08:17:09 +0000
Date: Mon, 30 Sep 2013 10:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130930081642.GA30088@pengutronix.de>
References: <1380195624-22891-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380195624-22891-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] i2c-omap: Update driver
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 26, 2013 at 01:40:24PM +0200, Jan Weitzel wrote:
> The driver didn't work well with at24 driver. NACKS are lost.
> Errors are lost in isr due to the local variable err. Also we didn't wait for
> bus free in omap_i2c_xfer_msg.
> 
> Fix issues and get other improvements from linux kernel
> 
> Tested on OMAP4 and AM335x
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-omap/include/mach/generic.h |    9 +-
>  drivers/i2c/busses/i2c-omap.c             |  635 ++++++++++++++++++++---------
>  include/i2c/i2c.h                         |    1 +
>  3 files changed, 454 insertions(+), 191 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
> index ece8c2b..31ab100 100644
> --- a/arch/arm/mach-omap/include/mach/generic.h
> +++ b/arch/arm/mach-omap/include/mach/generic.h
> @@ -2,12 +2,13 @@
>  #define _MACH_GENERIC_H
>  
>  /* I2C controller revisions */
> -#define OMAP_I2C_REV_2			0x20
> +#define OMAP_I2C_OMAP1_REV_2            0x20
>  
>  /* I2C controller revisions present on specific hardware */
> -#define OMAP_I2C_REV_ON_2430		0x36
> -#define OMAP_I2C_REV_ON_3430		0x3C
> -#define OMAP_I2C_REV_ON_4430		0x40
> +#define OMAP_I2C_REV_ON_2430		0x00000036
> +#define OMAP_I2C_REV_ON_3430_3530       0x0000003C
> +#define OMAP_I2C_REV_ON_3630            0x00000040
> +#define OMAP_I2C_REV_ON_4430_PLUS       0x50400002
>  
>  #ifdef CONFIG_ARCH_OMAP
>  #define cpu_is_omap2430()	(1)
> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index 2eb5133..bec3b29 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -131,29 +131,41 @@
>  #define SYSC_IDLEMODE_SMART		0x2
>  #define SYSC_CLOCKACTIVITY_FCLK		0x2
>  
> +/* Errata definitions */
> +#define I2C_OMAP_ERRATA_I207		(1 << 0)
> +#define I2C_OMAP_ERRATA_I462		(1 << 1)
> +
>  /* i2c driver flags from kernel */
> -#define OMAP_I2C_FLAG_RESET_REGS_POSTIDLE	BIT(3)
> +#define OMAP_I2C_FLAG_NO_FIFO			BIT(0)
> +#define OMAP_I2C_FLAG_16BIT_DATA_REG		BIT(2)
>  #define OMAP_I2C_FLAG_BUS_SHIFT_NONE		0
>  #define OMAP_I2C_FLAG_BUS_SHIFT_1		BIT(7)
>  #define OMAP_I2C_FLAG_BUS_SHIFT_2		BIT(8)
>  #define OMAP_I2C_FLAG_BUS_SHIFT__SHIFT		7
>  
> +/* timeout waiting for the controller to respond */
> +#define OMAP_I2C_TIMEOUT		(1000 * MSECOND)	/* ms */
> +
>  struct omap_i2c_struct {
>  	void 			*base;
>  	u8			reg_shift;
>  	struct omap_i2c_driver_data	*data;
>  	struct resource		*ioarea;
>  	u32			speed;		/* Speed of bus in Khz */
> +	u16			scheme;
>  	u16			cmd_err;
>  	u8			*buf;
> +	u8			*regs;
>  	size_t			buf_len;
>  	struct i2c_adapter	adapter;
> +	u8			threshold;
>  	u8			fifo_size;	/* use as flag and value
>  						 * fifo_size==0 implies no fifo
>  						 * if set, should be trsh+1
>  						 */
> -	u8			rev;
> +	u32			rev;
>  	unsigned		b_hw:1;		/* bad h/w fixes */
> +	unsigned		receiver:1;	/* true for receiver mode */
>  	u16			iestate;	/* Saved interrupt register */
>  	u16			pscstate;
>  	u16			scllstate;
> @@ -161,6 +173,7 @@ struct omap_i2c_struct {
>  	u16			bufstate;
>  	u16			syscstate;
>  	u16			westate;
> +	u16			errata;
>  };
>  #define to_omap_i2c_struct(a)	container_of(a, struct omap_i2c_struct, adapter)
>  
> @@ -183,14 +196,15 @@ enum {
>  	OMAP_I2C_SCLH_REG,
>  	OMAP_I2C_SYSTEST_REG,
>  	OMAP_I2C_BUFSTAT_REG,
> -	OMAP_I2C_REVNB_LO,
> -	OMAP_I2C_REVNB_HI,
> -	OMAP_I2C_IRQSTATUS_RAW,
> -	OMAP_I2C_IRQENABLE_SET,
> -	OMAP_I2C_IRQENABLE_CLR,
> +	/* only on OMAP4430 */
> +	OMAP_I2C_IP_V2_REVNB_LO,
> +	OMAP_I2C_IP_V2_REVNB_HI,
> +	OMAP_I2C_IP_V2_IRQSTATUS_RAW,
> +	OMAP_I2C_IP_V2_IRQENABLE_SET,
> +	OMAP_I2C_IP_V2_IRQENABLE_CLR,
>  };
>  
> -static const u8 reg_map[] = {
> +static const u8 reg_map_ip_v1[] = {
>  	[OMAP_I2C_REV_REG] = 0x00,
>  	[OMAP_I2C_IE_REG] = 0x01,
>  	[OMAP_I2C_STAT_REG] = 0x02,
> @@ -211,7 +225,7 @@ static const u8 reg_map[] = {
>  	[OMAP_I2C_BUFSTAT_REG] = 0x10,
>  };
>  
> -static const u8 omap4_reg_map[] = {
> +static const u8 reg_map_ip_v2[] = {
>  	[OMAP_I2C_REV_REG] = 0x04,
>  	[OMAP_I2C_IE_REG] = 0x2c,
>  	[OMAP_I2C_STAT_REG] = 0x28,
> @@ -230,92 +244,104 @@ static const u8 omap4_reg_map[] = {
>  	[OMAP_I2C_SCLH_REG] = 0xb8,
>  	[OMAP_I2C_SYSTEST_REG] = 0xbc,
>  	[OMAP_I2C_BUFSTAT_REG] = 0xc0,
> -	[OMAP_I2C_REVNB_LO] = 0x00,
> -	[OMAP_I2C_REVNB_HI] = 0x04,
> -	[OMAP_I2C_IRQSTATUS_RAW] = 0x24,
> -	[OMAP_I2C_IRQENABLE_SET] = 0x2c,
> -	[OMAP_I2C_IRQENABLE_CLR] = 0x30,
> +	[OMAP_I2C_IP_V2_REVNB_LO] = 0x00,
> +	[OMAP_I2C_IP_V2_REVNB_HI] = 0x04,
> +	[OMAP_I2C_IP_V2_IRQSTATUS_RAW] = 0x24,
> +	[OMAP_I2C_IP_V2_IRQENABLE_SET] = 0x2c,
> +	[OMAP_I2C_IP_V2_IRQENABLE_CLR] = 0x30,
>  };
>  
>  struct omap_i2c_driver_data {
>  	u32		flags;
>  	u32		fclk_rate;
> -	u8		*regs;
>  };
>  
>  static struct omap_i2c_driver_data omap3_data = {
> -	.flags =	OMAP_I2C_FLAG_RESET_REGS_POSTIDLE |
> -			OMAP_I2C_FLAG_BUS_SHIFT_2,
> +	.flags =	OMAP_I2C_FLAG_BUS_SHIFT_2,
>  	.fclk_rate =	96000,
> -	.regs =		(u8 *) reg_map,
>  };
>  
>  static struct omap_i2c_driver_data omap4_data = {
>  	.flags =	OMAP_I2C_FLAG_BUS_SHIFT_NONE,
>  	.fclk_rate =	96000,
> -	.regs =		(u8 *) omap4_reg_map,
>  };
>  
>  static struct omap_i2c_driver_data am33xx_data = {
> -	.flags =	OMAP_I2C_FLAG_RESET_REGS_POSTIDLE |
> -			OMAP_I2C_FLAG_BUS_SHIFT_NONE,
> +	.flags =	OMAP_I2C_FLAG_BUS_SHIFT_NONE,
>  	.fclk_rate =	48000,
> -	.regs =		(u8 *) omap4_reg_map,
>  };
>  
>  static inline void omap_i2c_write_reg(struct omap_i2c_struct *i2c_omap,
>  				      int reg, u16 val)
>  {
>  	__raw_writew(val, i2c_omap->base +
> -			(i2c_omap->data->regs[reg] << i2c_omap->reg_shift));
> +			(i2c_omap->regs[reg] << i2c_omap->reg_shift));
>  }
>  
>  static inline u16 omap_i2c_read_reg(struct omap_i2c_struct *i2c_omap, int reg)
>  {
>  	return __raw_readw(i2c_omap->base +
> -			(i2c_omap->data->regs[reg] << i2c_omap->reg_shift));
> +			(i2c_omap->regs[reg] << i2c_omap->reg_shift));
>  }
>  
> -static void omap_i2c_unidle(struct omap_i2c_struct *i2c_omap)
> +static void __omap_i2c_init(struct omap_i2c_struct *dev)
>  {
> -	struct omap_i2c_driver_data *i2c_data = i2c_omap->data;
>  
> -	if (i2c_data->flags & OMAP_I2C_FLAG_RESET_REGS_POSTIDLE) {
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, 0);
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_PSC_REG, i2c_omap->pscstate);
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLL_REG, i2c_omap->scllstate);
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLH_REG, i2c_omap->sclhstate);
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_BUF_REG, i2c_omap->bufstate);
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG, i2c_omap->syscstate);
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_WE_REG, i2c_omap->westate);
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
> -	}
> +	omap_i2c_write_reg(dev, OMAP_I2C_CON_REG, 0);
> +
> +	/* Setup clock prescaler to obtain approx 12MHz I2C module clock: */
> +	omap_i2c_write_reg(dev, OMAP_I2C_PSC_REG, dev->pscstate);
> +
> +	/* SCL low and high time values */
> +	omap_i2c_write_reg(dev, OMAP_I2C_SCLL_REG, dev->scllstate);
> +	omap_i2c_write_reg(dev, OMAP_I2C_SCLH_REG, dev->sclhstate);
> +	if (dev->rev >= OMAP_I2C_REV_ON_3430_3530)
> +		omap_i2c_write_reg(dev, OMAP_I2C_WE_REG, dev->westate);
> +
> +	/* Take the I2C module out of reset: */
> +	omap_i2c_write_reg(dev, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
>  
>  	/*
>  	 * Don't write to this register if the IE state is 0 as it can
>  	 * cause deadlock.
>  	 */
> -	if (i2c_omap->iestate)
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, i2c_omap->iestate);
> +	if (dev->iestate)
> +		omap_i2c_write_reg(dev, OMAP_I2C_IE_REG, dev->iestate);
>  }
>  
> -static void omap_i2c_idle(struct omap_i2c_struct *i2c_omap)
> +static int omap_i2c_reset(struct omap_i2c_struct *dev)
>  {
> -	u16 iv;
> +	uint64_t start;
> +	u16 sysc;
>  
> -	i2c_omap->iestate = omap_i2c_read_reg(i2c_omap, OMAP_I2C_IE_REG);
> +	if (dev->rev >= OMAP_I2C_OMAP1_REV_2) {
> +		sysc = omap_i2c_read_reg(dev, OMAP_I2C_SYSC_REG);
>  
> -	/* Barebox driver don't need to clear interrupts here */
> +		/* Disable I2C controller before soft reset */
> +		omap_i2c_write_reg(dev, OMAP_I2C_CON_REG,
> +			omap_i2c_read_reg(dev, OMAP_I2C_CON_REG) &
> +				~(OMAP_I2C_CON_EN));
>  
> -	/* omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, 0); */
> -	if (i2c_omap->rev < OMAP_I2C_REV_2) {
> -		iv = omap_i2c_read_reg(i2c_omap, OMAP_I2C_IV_REG); /* Read clears */
> -	} else {
> -		omap_i2c_write_reg(i2c_omap, OMAP_I2C_STAT_REG, i2c_omap->iestate);
> +		omap_i2c_write_reg(dev, OMAP_I2C_SYSC_REG, SYSC_SOFTRESET_MASK);
> +		/* For some reason we need to set the EN bit before the
> +		 * reset done bit gets set. */
> +		omap_i2c_write_reg(dev, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
> +		start = get_time_ns();
> +		while (!(omap_i2c_read_reg(dev, OMAP_I2C_SYSS_REG) &
> +			 SYSS_RESETDONE_MASK)) {
> +			if (is_timeout(start, OMAP_I2C_TIMEOUT)) {
> +				dev_warn(&dev->adapter.dev, "timeout waiting "
> +						"for controller reset\n");
> +				return -ETIMEDOUT;
> +			}
> +			mdelay(1000);
> +		}
> +
> +		/* SYSC register is cleared by the reset; rewrite it */
> +		omap_i2c_write_reg(dev, OMAP_I2C_SYSC_REG, sysc);
>  
> -		/* Flush posted write before the i2c_omap->idle store occurs */
> -		omap_i2c_read_reg(i2c_omap, OMAP_I2C_STAT_REG);
>  	}
> +	return 0;
>  }
>  
>  static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
> @@ -326,7 +352,7 @@ static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
>  	unsigned long internal_clk = 0;
>  	struct omap_i2c_driver_data *i2c_data = i2c_omap->data;
>  
> -	if (i2c_omap->rev >= OMAP_I2C_REV_2) {
> +	if (i2c_omap->rev >= OMAP_I2C_OMAP1_REV_2) {
>  		/* Disable I2C controller before soft reset */
>  		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG,
>  			omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG) &
> @@ -354,7 +380,7 @@ static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
>  			omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG,
>  					   SYSC_AUTOIDLE_MASK);
>  
> -		} else if (i2c_omap->rev >= OMAP_I2C_REV_ON_3430) {
> +		} else if (i2c_omap->rev >= OMAP_I2C_REV_ON_3430_3530) {
>  			i2c_omap->syscstate = SYSC_AUTOIDLE_MASK;
>  			i2c_omap->syscstate |= SYSC_ENAWAKEUP_MASK;
>  			i2c_omap->syscstate |= (SYSC_IDLEMODE_SMART <<
> @@ -443,12 +469,14 @@ static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
>  			OMAP_I2C_IE_AL)  | ((i2c_omap->fifo_size) ?
>  				(OMAP_I2C_IE_RDR | OMAP_I2C_IE_XDR) : 0);
>  	omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, i2c_omap->iestate);
> -	if (i2c_data->flags & OMAP_I2C_FLAG_RESET_REGS_POSTIDLE) {
> -		i2c_omap->pscstate = psc;
> -		i2c_omap->scllstate = scll;
> -		i2c_omap->sclhstate = sclh;
> -		i2c_omap->bufstate = buf;
> -	}
> +
> +	i2c_omap->pscstate = psc;
> +	i2c_omap->scllstate = scll;
> +	i2c_omap->sclhstate = sclh;
> +	i2c_omap->bufstate = buf;
> +
> +	__omap_i2c_init(i2c_omap);
> +
>  	return 0;
>  }
>  
> @@ -472,151 +500,301 @@ static int omap_i2c_wait_for_bb(struct i2c_adapter *adapter)
>  }
>  
>  static inline void
> +omap_i2c_complete_cmd(struct omap_i2c_struct *dev, u16 err)
> +{
> +	dev->cmd_err |= err;
> +}
> +
> +static inline void
>  omap_i2c_ack_stat(struct omap_i2c_struct *i2c_omap, u16 stat)
>  {
>  	omap_i2c_write_reg(i2c_omap, OMAP_I2C_STAT_REG, stat);
>  }
>  
> +static int errata_omap3_i462(struct omap_i2c_struct *dev)
> +{
> +	unsigned long timeout = 10000;
> +	u16 stat;
> +
> +	do {
> +		stat = omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG);
> +		if (stat & OMAP_I2C_STAT_XUDF)
> +			break;
> +
> +		if (stat & (OMAP_I2C_STAT_NACK | OMAP_I2C_STAT_AL)) {
> +			omap_i2c_ack_stat(dev, (OMAP_I2C_STAT_XRDY |
> +							OMAP_I2C_STAT_XDR));
> +			if (stat & OMAP_I2C_STAT_NACK) {
> +				dev->cmd_err |= OMAP_I2C_STAT_NACK;
> +				omap_i2c_ack_stat(dev, OMAP_I2C_STAT_NACK);
> +			}
> +
> +			if (stat & OMAP_I2C_STAT_AL) {
> +				dev_err(&dev->adapter.dev, "Arbitration lost\n");
> +				dev->cmd_err |= OMAP_I2C_STAT_AL;
> +				omap_i2c_ack_stat(dev, OMAP_I2C_STAT_AL);
> +			}
> +
> +			return -EIO;
> +		}
> +	} while (--timeout);
> +
> +	if (!timeout) {
> +		dev_err(&dev->adapter.dev, "timeout waiting on XUDF bit\n");
> +		return 0;
> +	}
> +
> +	return 0;
> +}
> +
> +static void omap_i2c_receive_data(struct omap_i2c_struct *dev, u8 num_bytes,
> +		bool is_rdr)
> +{
> +	u16		w;
> +
> +	while (num_bytes--) {
> +		w = omap_i2c_read_reg(dev, OMAP_I2C_DATA_REG);
> +		*dev->buf++ = w;
> +		dev->buf_len--;
> +
> +		/*
> +		 * Data reg in 2430, omap3 and
> +		 * omap4 is 8 bit wide
> +		 */
> +		if (dev->data->flags & OMAP_I2C_FLAG_16BIT_DATA_REG) {
> +			*dev->buf++ = w >> 8;
> +			dev->buf_len--;
> +		}
> +	}
> +}
> +
> +static inline void i2c_omap_errata_i207(struct omap_i2c_struct *dev, u16 stat)
> +{
> +	/*
> +	 * I2C Errata(Errata Nos. OMAP2: 1.67, OMAP3: 1.8)
> +	 * Not applicable for OMAP4.
> +	 * Under certain rare conditions, RDR could be set again
> +	 * when the bus is busy, then ignore the interrupt and
> +	 * clear the interrupt.
> +	 */
> +	if (stat & OMAP_I2C_STAT_RDR) {
> +		/* Step 1: If RDR is set, clear it */
> +		omap_i2c_ack_stat(dev, OMAP_I2C_STAT_RDR);
> +
> +		/* Step 2: */
> +		if (!(omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG)
> +						& OMAP_I2C_STAT_BB)) {
> +
> +			/* Step 3: */
> +			if (omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG)
> +						& OMAP_I2C_STAT_RDR) {
> +				omap_i2c_ack_stat(dev, OMAP_I2C_STAT_RDR);
> +				dev_dbg(&dev->adapter.dev, "RDR when bus is busy.\n");
> +			}
> +
> +		}
> +	}
> +}
> +
> +static int omap_i2c_transmit_data(struct omap_i2c_struct *dev, u8 num_bytes,
> +		bool is_xdr)
> +{
> +	u16		w;
> +
> +	while (num_bytes--) {
> +		w = *dev->buf++;
> +		dev->buf_len--;
> +
> +		/*
> +		 * Data reg in 2430, omap3 and
> +		 * omap4 is 8 bit wide
> +		 */
> +		if (dev->data->flags & OMAP_I2C_FLAG_16BIT_DATA_REG) {
> +			w |= *dev->buf++ << 8;
> +			dev->buf_len--;
> +		}
> +
> +		if (dev->errata & I2C_OMAP_ERRATA_I462) {
> +			int ret;
> +
> +			ret = errata_omap3_i462(dev);
> +			if (ret < 0)
> +				return ret;
> +		}
> +
> +		omap_i2c_write_reg(dev, OMAP_I2C_DATA_REG, w);
> +	}
> +
> +	return 0;
> +}
> +
>  static int
>  omap_i2c_isr(struct omap_i2c_struct *dev)
>  {
>  	u16 bits;
> -	u16 stat, w;
> -	int err, count = 0;
> +	u16 stat;
> +	int err = 0, count = 0;
> +
> +	do {
> +		bits = omap_i2c_read_reg(dev, OMAP_I2C_IE_REG);
> +		stat = omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG);
> +		stat &= bits;
> +
> +		/* If we're in receiver mode, ignore XDR/XRDY */
> +		if (dev->receiver)
> +			stat &= ~(OMAP_I2C_STAT_XDR | OMAP_I2C_STAT_XRDY);
> +		else
> +			stat &= ~(OMAP_I2C_STAT_RDR | OMAP_I2C_STAT_RRDY);
> +
> +		if (!stat) {
> +			/* my work here is done */
> +			goto out;
> +		}
>  
> -	bits = omap_i2c_read_reg(dev, OMAP_I2C_IE_REG);
> -	while ((stat = (omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG))) & bits) {
>  		dev_dbg(&dev->adapter.dev, "IRQ (ISR = 0x%04x)\n", stat);
>  		if (count++ == 100) {
>  			dev_warn(&dev->adapter.dev, "Too much work in one IRQ\n");
>  			break;
>  		}
>  
> -		err = 0;
> -complete:
> -		/*
> -		 * Ack the stat in one go, but [R/X]DR and [R/X]RDY should be
> -		 * acked after the data operation is complete.
> -		 * Ref: TRM SWPU114Q Figure 18-31
> -		 */
> -		omap_i2c_write_reg(dev, OMAP_I2C_STAT_REG, stat &
> -				~(OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR |
> -				OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
> -
>  		if (stat & OMAP_I2C_STAT_NACK) {
>  			err |= OMAP_I2C_STAT_NACK;
> -			omap_i2c_write_reg(dev, OMAP_I2C_CON_REG,
> -					   OMAP_I2C_CON_STP);
> +			omap_i2c_ack_stat(dev, OMAP_I2C_STAT_NACK);
> +			break;
>  		}
> +
>  		if (stat & OMAP_I2C_STAT_AL) {
>  			dev_err(&dev->adapter.dev, "Arbitration lost\n");
>  			err |= OMAP_I2C_STAT_AL;
> +			omap_i2c_ack_stat(dev, OMAP_I2C_STAT_AL);
> +			break;
>  		}
> +
> +		/*
> +		 * ProDB0017052: Clear ARDY bit twice
> +		 */
>  		if (stat & (OMAP_I2C_STAT_ARDY | OMAP_I2C_STAT_NACK |
>  					OMAP_I2C_STAT_AL)) {
> -			omap_i2c_ack_stat(dev, stat &
> -				(OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR |
> -				OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
> -			return 0;
> +			omap_i2c_ack_stat(dev, (OMAP_I2C_STAT_RRDY |
> +						OMAP_I2C_STAT_RDR |
> +						OMAP_I2C_STAT_XRDY |
> +						OMAP_I2C_STAT_XDR |
> +						OMAP_I2C_STAT_ARDY));
> +			break;
>  		}
> -		if (stat & (OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR)) {
> +
> +		if (stat & OMAP_I2C_STAT_RDR) {
>  			u8 num_bytes = 1;
> -			if (dev->fifo_size) {
> -				if (stat & OMAP_I2C_STAT_RRDY)
> -					num_bytes = dev->fifo_size;
> -				else    /* read RXSTAT on RDR interrupt */
> -					num_bytes = (omap_i2c_read_reg(dev,
> -							OMAP_I2C_BUFSTAT_REG)
> -							>> 8) & 0x3F;
> -			}
> -			while (num_bytes) {
> -				num_bytes--;
> -				w = omap_i2c_read_reg(dev, OMAP_I2C_DATA_REG);
> -				if (dev->buf_len) {
> -					*dev->buf++ = w;
> -					dev->buf_len--;
> -				} else {
> -					if (stat & OMAP_I2C_STAT_RRDY)
> -						dev_err(&dev->adapter.dev,
> -							"RRDY IRQ while no data"
> -								" requested\n");
> -					if (stat & OMAP_I2C_STAT_RDR)
> -						dev_err(&dev->adapter.dev,
> -							"RDR IRQ while no data"
> -								" requested\n");
> -					break;
> -				}
> -			}
> -			omap_i2c_ack_stat(dev,
> -				stat & (OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR));
> +
> +			if (dev->fifo_size)
> +				num_bytes = dev->buf_len;
> +
> +			omap_i2c_receive_data(dev, num_bytes, true);
> +
> +			if (dev->errata & I2C_OMAP_ERRATA_I207)
> +				i2c_omap_errata_i207(dev, stat);
> +
> +			omap_i2c_ack_stat(dev, OMAP_I2C_STAT_RDR);
>  			continue;
>  		}
> -		if (stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR)) {
> +
> +		if (stat & OMAP_I2C_STAT_RRDY) {
>  			u8 num_bytes = 1;
> -			if (dev->fifo_size) {
> -				if (stat & OMAP_I2C_STAT_XRDY)
> -					num_bytes = dev->fifo_size;
> -				else    /* read TXSTAT on XDR interrupt */
> -					num_bytes = omap_i2c_read_reg(dev,
> -							OMAP_I2C_BUFSTAT_REG)
> -							& 0x3F;
> -			}
> -			while (num_bytes) {
> -				num_bytes--;
> -				w = 0;
> -				if (dev->buf_len) {
> -					w = *dev->buf++;
> -					dev->buf_len--;
> -				} else {
> -					if (stat & OMAP_I2C_STAT_XRDY)
> -						dev_err(&dev->adapter.dev,
> -							"XRDY IRQ while no "
> -							"data to send\n");
> -					if (stat & OMAP_I2C_STAT_XDR)
> -						dev_err(&dev->adapter.dev,
> -							"XDR IRQ while no "
> -							"data to send\n");
> -					break;
> -				}
> -
> -				/*
> -				 * OMAP3430 Errata 1.153: When an XRDY/XDR
> -				 * is hit, wait for XUDF before writing data
> -				 * to DATA_REG. Otherwise some data bytes can
> -				 * be lost while transferring them from the
> -				 * memory to the I2C interface.
> -				 */
> -
> -				if (dev->rev <= OMAP_I2C_REV_ON_3430) {
> -						while (!(stat & OMAP_I2C_STAT_XUDF)) {
> -							if (stat & (OMAP_I2C_STAT_NACK | OMAP_I2C_STAT_AL)) {
> -								omap_i2c_ack_stat(dev, stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
> -								err |= OMAP_I2C_STAT_XUDF;
> -								goto complete;
> -							}
> -							stat = omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG);
> -						}
> -				}
> -
> -				omap_i2c_write_reg(dev, OMAP_I2C_DATA_REG, w);
> -			}
> -			omap_i2c_ack_stat(dev,
> -				stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
> +
> +			if (dev->threshold)
> +				num_bytes = dev->threshold;
> +
> +			omap_i2c_receive_data(dev, num_bytes, false);
> +			omap_i2c_ack_stat(dev, OMAP_I2C_STAT_RRDY);
> +			continue;
> +		}
> +
> +		if (stat & OMAP_I2C_STAT_XDR) {
> +			u8 num_bytes = 1;
> +			int ret;
> +
> +			if (dev->fifo_size)
> +				num_bytes = dev->buf_len;
> +
> +			ret = omap_i2c_transmit_data(dev, num_bytes, true);
> +			if (ret < 0)
> +				break;
> +
> +			omap_i2c_ack_stat(dev, OMAP_I2C_STAT_XDR);
>  			continue;
>  		}
> +
> +		if (stat & OMAP_I2C_STAT_XRDY) {
> +			u8 num_bytes = 1;
> +			int ret;
> +
> +			if (dev->threshold)
> +				num_bytes = dev->threshold;
> +
> +			ret = omap_i2c_transmit_data(dev, num_bytes, false);
> +			if (ret < 0)
> +				break;
> +
> +			omap_i2c_ack_stat(dev, OMAP_I2C_STAT_XRDY);
> +			continue;
> +		}
> +
>  		if (stat & OMAP_I2C_STAT_ROVR) {
>  			dev_err(&dev->adapter.dev, "Receive overrun\n");
> -			dev->cmd_err |= OMAP_I2C_STAT_ROVR;
> +			err |= OMAP_I2C_STAT_ROVR;
> +			omap_i2c_ack_stat(dev, OMAP_I2C_STAT_ROVR);
> +			break;
>  		}
> +
>  		if (stat & OMAP_I2C_STAT_XUDF) {
>  			dev_err(&dev->adapter.dev, "Transmit underflow\n");
> -			dev->cmd_err |= OMAP_I2C_STAT_XUDF;
> +			err |= OMAP_I2C_STAT_XUDF;
> +			omap_i2c_ack_stat(dev, OMAP_I2C_STAT_XUDF);
> +			break;
>  		}
> -	}
> +	} while (stat);
>  
> +	omap_i2c_complete_cmd(dev, err);
> +	return 0;
> +
> +out:
>  	return -EBUSY;
>  }
>  
> +static void omap_i2c_resize_fifo(struct omap_i2c_struct *dev, u8 size,
> +								bool is_rx)
> +{
> +	u16		buf;
> +
> +	if (dev->data->flags & OMAP_I2C_FLAG_NO_FIFO)
> +		return;
> +
> +	/*
> +	 * Set up notification threshold based on message size. We're doing
> +	 * this to try and avoid draining feature as much as possible. Whenever
> +	 * we have big messages to transfer (bigger than our total fifo size)
> +	 * then we might use draining feature to transfer the remaining bytes.
> +	 */
> +
> +	dev->threshold = clamp(size, (u8) 1, dev->fifo_size);
> +
> +	buf = omap_i2c_read_reg(dev, OMAP_I2C_BUF_REG);
> +
> +	if (is_rx) {
> +		/* Clear RX Threshold */
> +		buf &= ~(0x3f << 8);
> +		buf |= ((dev->threshold - 1) << 8) | OMAP_I2C_BUF_RXFIF_CLR;
> +	} else {
> +		/* Clear TX Threshold */
> +		buf &= ~0x3f;
> +		buf |= (dev->threshold - 1) | OMAP_I2C_BUF_TXFIF_CLR;
> +	}
> +
> +	omap_i2c_write_reg(dev, OMAP_I2C_BUF_REG, buf);
> +
> +	if (dev->rev < OMAP_I2C_REV_ON_3630)
> +		dev->b_hw = 1; /* Enable hardware fixes */
> +}
>  
>  /*
>   * Low level master read/write transaction.
> @@ -637,12 +815,18 @@ static int omap_i2c_xfer_msg(struct i2c_adapter *adapter,
>  	if (msg->len == 0)
>  		return -EINVAL;
>  
> +	i2c_omap->receiver = !!(msg->flags & I2C_M_RD);
> +	omap_i2c_resize_fifo(i2c_omap, msg->len, i2c_omap->receiver);
> +
>  	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SA_REG, msg->addr);
>  
>  	/* REVISIT: Could the STB bit of I2C_CON be used with probing? */
>  	i2c_omap->buf = msg->buf;
>  	i2c_omap->buf_len = msg->len;
>  
> +	/* make sure writes to dev->buf_len are ordered */
> +	barrier();
> +
>  	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CNT_REG, i2c_omap->buf_len);
>  
>  	/* Clear the FIFO Buffers */
> @@ -658,6 +842,8 @@ static int omap_i2c_xfer_msg(struct i2c_adapter *adapter,
>  	if (i2c_omap->speed > 400)
>  		w |= OMAP_I2C_CON_OPMODE_HS;
>  
> +	if (msg->flags & I2C_M_STOP)
> +		stop = 1;
>  	if (msg->flags & I2C_M_TEN)
>  		w |= OMAP_I2C_CON_XA;
>  	if (!(msg->flags & I2C_M_RD))
> @@ -698,38 +884,64 @@ static int omap_i2c_xfer_msg(struct i2c_adapter *adapter,
>  	ret = omap_i2c_isr(i2c_omap);
>  	while (ret){
>  		ret = omap_i2c_isr(i2c_omap);
> -		if (is_timeout(start, 50 * MSECOND)) {
> +		if (is_timeout(start, OMAP_I2C_TIMEOUT)) {
>  				dev_err(&adapter->dev,
>  				"timed out on polling for "
>  				"open i2c message handling\n");
> +				omap_i2c_reset(i2c_omap);
> +				__omap_i2c_init(i2c_omap);
>  				return -ETIMEDOUT;
>  			}
>  	}
>  
> -	i2c_omap->buf_len = 0;
>  	if (likely(!i2c_omap->cmd_err))
>  		return 0;
>  
>  	/* We have an error */
>  	if (i2c_omap->cmd_err & (OMAP_I2C_STAT_AL | OMAP_I2C_STAT_ROVR |
>  			    OMAP_I2C_STAT_XUDF)) {
> -		omap_i2c_init(i2c_omap);
> +		omap_i2c_reset(i2c_omap);
> +		__omap_i2c_init(i2c_omap);
>  		return -EIO;
>  	}
>  
>  	if (i2c_omap->cmd_err & OMAP_I2C_STAT_NACK) {
>  		if (msg->flags & I2C_M_IGNORE_NAK)
>  			return 0;
> -		if (stop) {
> -			w = omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG);
> -			w |= OMAP_I2C_CON_STP;
> -			omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, w);
> -		}
> +
> +		w = omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG);
> +		w |= OMAP_I2C_CON_STP;
> +		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, w);
>  		return -EREMOTEIO;
>  	}
>  	return -EIO;
>  }
>  
> +static void omap_i2c_unidle(struct omap_i2c_struct *i2c_omap)
> +{
> +		__omap_i2c_init(i2c_omap);
> +}
> +
> +static void omap_i2c_idle(struct omap_i2c_struct *i2c_omap)
> +{
> +	u16 iv;
> +
> +	i2c_omap->iestate = omap_i2c_read_reg(i2c_omap, OMAP_I2C_IE_REG);
> +
> +	/* Barebox driver don't need to clear interrupts here */
> +
> +	/* omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, 0); */
> +	if (i2c_omap->rev < OMAP_I2C_OMAP1_REV_2) {
> +		/* Read clears */
> +		iv = omap_i2c_read_reg(i2c_omap, OMAP_I2C_IV_REG);
> +	} else {
> +		omap_i2c_write_reg(i2c_omap, OMAP_I2C_STAT_REG,
> +							i2c_omap->iestate);
> +
> +		/* Flush posted write before the i2c_omap->idle store occurs */
> +		omap_i2c_read_reg(i2c_omap, OMAP_I2C_STAT_REG);
> +	}
> +}
>  
>  /*
>   * Prepare controller for a transaction and call omap_i2c_xfer_msg
> @@ -756,11 +968,24 @@ omap_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg msgs[], int num)
>  
>  	if (r == 0)
>  		r = num;
> +
> +	omap_i2c_wait_for_bb(adapter);
> +
>  out:
>  	omap_i2c_idle(i2c_omap);
>  	return r;
>  }
>  
> +#define OMAP_I2C_SCHEME(rev)		((rev & 0xc000) >> 14)
> +
> +#define OMAP_I2C_REV_SCHEME_0_MAJOR(rev) (rev >> 4)
> +#define OMAP_I2C_REV_SCHEME_0_MINOR(rev) (rev & 0xf)
> +
> +#define OMAP_I2C_REV_SCHEME_1_MAJOR(rev) ((rev & 0x0700) >> 7)
> +#define OMAP_I2C_REV_SCHEME_1_MINOR(rev) (rev & 0x1f)
> +#define OMAP_I2C_SCHEME_0		0
> +#define OMAP_I2C_SCHEME_1		1
> +
>  static int __init
>  i2c_omap_probe(struct device_d *pdev)
>  {
> @@ -768,7 +993,8 @@ i2c_omap_probe(struct device_d *pdev)
>  	struct omap_i2c_driver_data *i2c_data;
>  	int r;
>  	u32 speed = 0;
> -	u16 s;
> +	u32 rev;
> +	u16 minor, major;
>  
>  	i2c_omap = kzalloc(sizeof(struct omap_i2c_struct), GFP_KERNEL);
>  	if (!i2c_omap) {
> @@ -787,31 +1013,67 @@ i2c_omap_probe(struct device_d *pdev)
>  	if (pdev->platform_data != NULL)
>  		speed = *(u32 *)pdev->platform_data;
>  	else
> -		speed = 100;	/* Defualt speed */
> +		speed = 100;	/* Default speed */
>  
>  	i2c_omap->speed = speed;
>  	i2c_omap->base = dev_request_mem_region(pdev, 0);
>  	printf ("I2C probe\n");
> -	omap_i2c_unidle(i2c_omap);
> -
> -	i2c_omap->rev = omap_i2c_read_reg(i2c_omap, OMAP_I2C_REV_REG) & 0xff;
> -
> -	/* Set up the fifo size - Get total size */
> -	s = (omap_i2c_read_reg(i2c_omap, OMAP_I2C_BUFSTAT_REG) >> 14) & 0x3;
> -	i2c_omap->fifo_size = 0x8 << s;
>  
>  	/*
> -	 * Set up notification threshold as half the total available
> -	 * size. This is to ensure that we can handle the status on int
> -	 * call back latencies.
> +	 * Read the Rev hi bit-[15:14] ie scheme this is 1 indicates ver2.
> +	 * On omap1/3/2 Offset 4 is IE Reg the bit [15:14] is 0 at reset.
> +	 * Also since the omap_i2c_read_reg uses reg_map_ip_* a
> +	 * raw_readw is done.
>  	 */
> +	rev = __raw_readw(i2c_omap->base + 0x04);
> +
> +	i2c_omap->scheme = OMAP_I2C_SCHEME(rev);
> +	switch (i2c_omap->scheme) {
> +	case OMAP_I2C_SCHEME_0:
> +		i2c_omap->regs = (u8 *)reg_map_ip_v1;
> +		i2c_omap->rev = omap_i2c_read_reg(i2c_omap, OMAP_I2C_REV_REG);
> +		minor = OMAP_I2C_REV_SCHEME_0_MAJOR(i2c_omap->rev);
> +		major = OMAP_I2C_REV_SCHEME_0_MAJOR(i2c_omap->rev);
> +		break;
> +	case OMAP_I2C_SCHEME_1:
> +		/* FALLTHROUGH */
> +	default:
> +		i2c_omap->regs = (u8 *)reg_map_ip_v2;
> +		rev = (rev << 16) |
> +			omap_i2c_read_reg(i2c_omap, OMAP_I2C_IP_V2_REVNB_LO);
> +		minor = OMAP_I2C_REV_SCHEME_1_MINOR(rev);
> +		major = OMAP_I2C_REV_SCHEME_1_MAJOR(rev);
> +		i2c_omap->rev = rev;
> +	}
>  
> -	i2c_omap->fifo_size = (i2c_omap->fifo_size / 2);
> +	i2c_omap->errata = 0;
>  
> -	if (i2c_omap->rev >= OMAP_I2C_REV_ON_4430)
> -		i2c_omap->b_hw = 0; /* Disable hardware fixes */
> -	else
> -		i2c_omap->b_hw = 1; /* Enable hardware fixes */
> +	if (i2c_omap->rev >= OMAP_I2C_REV_ON_2430 &&
> +			i2c_omap->rev < OMAP_I2C_REV_ON_4430_PLUS)
> +		i2c_omap->errata |= I2C_OMAP_ERRATA_I207;
> +
> +	if (i2c_omap->rev <= OMAP_I2C_REV_ON_3430_3530)
> +		i2c_omap->errata |= I2C_OMAP_ERRATA_I462;
> +
> +	if (!(i2c_data->flags & OMAP_I2C_FLAG_NO_FIFO)) {
> +		u16 s;
> +
> +		/* Set up the fifo size - Get total size */
> +		s = (omap_i2c_read_reg(i2c_omap, OMAP_I2C_BUFSTAT_REG) >> 14)
> +									 & 0x3;
> +		i2c_omap->fifo_size = 0x8 << s;
> +
> +		/*
> +		 * Set up notification threshold as half the total available
> +		 * size. This is to ensure that we can handle the status on int
> +		 * call back latencies.
> +		 */
> +
> +		i2c_omap->fifo_size = (i2c_omap->fifo_size / 2);
> +
> +		if (i2c_omap->rev < OMAP_I2C_REV_ON_3630)
> +			i2c_omap->b_hw = 1; /* Enable hardware fixes */
> +	}
>  
>  	/* reset ASAP, clearing any IRQs */
>  	omap_i2c_init(i2c_omap);
> @@ -821,7 +1083,7 @@ i2c_omap_probe(struct device_d *pdev)
>  
>  	omap_i2c_idle(i2c_omap);
>  
> -	i2c_omap->adapter.master_xfer	= omap_i2c_xfer,
> +	i2c_omap->adapter.master_xfer = omap_i2c_xfer,
>  	i2c_omap->adapter.nr = pdev->id;
>  	i2c_omap->adapter.dev.parent = pdev;
>  
> @@ -837,7 +1099,6 @@ i2c_omap_probe(struct device_d *pdev)
>  err_unuse_clocks:
>  	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, 0);
>  	omap_i2c_idle(i2c_omap);
> -
>  err_free_mem:
>  	kfree(i2c_omap);
>  
> diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
> index 46185ac..81e5daa 100644
> --- a/include/i2c/i2c.h
> +++ b/include/i2c/i2c.h
> @@ -36,6 +36,7 @@ struct i2c_platform_data {
>  #define I2C_M_DATA_ONLY		0x0002	/* transfer data bytes only */
>  #define I2C_M_TEN               0x0010  /* this is a ten bit chip address */
>  #define I2C_M_IGNORE_NAK        0x1000  /* if I2C_FUNC_PROTOCOL_MANGLING */
> +#define I2C_M_STOP		0x8000	/* if I2C_FUNC_PROTOCOL_MANGLING */
>  
>  /**
>   * struct i2c_msg - an I2C transaction segment beginning with START
> -- 
> 1.7.0.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
