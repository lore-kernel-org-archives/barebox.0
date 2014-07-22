Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9Xtn-0007hQ-RE
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 11:06:25 +0000
Received: by mail-wi0-f172.google.com with SMTP id n3so5736082wiv.11
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 04:06:00 -0700 (PDT)
Message-ID: <53CE4594.7020601@gmail.com>
Date: Tue, 22 Jul 2014 13:05:56 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1405545909-9855-1-git-send-email-antonynpavlov@gmail.com>
 <1405545909-9855-2-git-send-email-antonynpavlov@gmail.com>
 <53CE25FE.9070903@gmail.com>
 <20140722135751.c888208fdea788c15cd5ff0b@gmail.com>
In-Reply-To: <20140722135751.c888208fdea788c15cd5ff0b@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] i2c: add Marvell 64xxx driver
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 07/22/2014 11:57 AM, Antony Pavlov wrote:
> On Tue, 22 Jul 2014 10:51:10 +0200
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:
>> On 07/16/2014 11:25 PM, Antony Pavlov wrote:
>>> This driver is also used for Allwinner SoCs I2C controllers.
>>>
>>> Ported from linux-3.15.
>>>
>>> The most notable barebox driver version changes:
>>>
>>>     * drop message offloading support;
>>>     * add reg-io-width parameter to use driver with byte-oriented
>>>       controller versions.
>>>
>>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>>
>> Antony,
>>
>> I finally finished work on xHCI and PCI on Armada 370. Now I come
>> back with the promised review of the i2c driver.
>>
>> I gave this driver a quick test on Mirabox, i2c_probe just gives I2C bus
>> errors. What SoC did you test the driver on?
>
> I test it on custom FPGA-based byte-oriented mv64xxx-style i2c controller.
>
> Linux 3.15 driver succesfully works with my controller. The only change is adding
> mv64xxx_write/mv64xxx_read functions for enabling byte registers access.
>
> Have you probed your Mirabox i2c bus under linux?

Actually, I switched to Dove CuBox after I realized that Mirabox has
nothing on i2c on-board but only externally connected ;)

Now you can add my

Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

But I still have some comments..

>> [...]
>>> diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
>>> index 9823d1b..4e4f6ba 100644
>>> --- a/drivers/i2c/busses/Makefile
>>> +++ b/drivers/i2c/busses/Makefile
>>> @@ -1,5 +1,6 @@
>>>    obj-$(CONFIG_I2C_GPIO)		+= i2c-gpio.o
>>>    obj-$(CONFIG_I2C_IMX) += i2c-imx.o
>>> +obj-$(CONFIG_I2C_MV64XXX)	+= i2c-mv64xxx.o
>>>    obj-$(CONFIG_I2C_OMAP) += i2c-omap.o
>>
>> IMHO, you can also fixup the indention of i2c-imx.o and i2c-omap
>> while you are at it.
>
> I prefere using separate patch for fixing indentation.

Fine with me.

>>>    obj-$(CONFIG_I2C_TEGRA)		+= i2c-tegra.o
>>>    obj-$(CONFIG_I2C_VERSATILE)	+= i2c-versatile.o
>>> diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
>>> new file mode 100644
>>> index 0000000..324796a
>>> --- /dev/null
>>> +++ b/drivers/i2c/busses/i2c-mv64xxx.c
>>> @@ -0,0 +1,687 @@
>>> +/*
>>> + * Driver for the i2c controller on the Marvell line of host bridges
>>> + * (e.g, gt642[46]0, mv643[46]0, mv644[46]0, and Orion SoC family).
>>
>>   From above list, it is more than unlikely that we will see support for
>> any of the mv643foo devices. How about to rename the driver to
>> i2c-orion, get rid of mv643foo, and add Allwinner SoCs to the list
>> above?
>
> I want to keep linux compatibility. This drivers has i2c-mv64xxx.c name in linux kernel!

Hmm, the driver name has nothing to do with linux compatibility. But
ok, it is just a name.

[...]
>>> +#define MV64XXX_I2C_ADDR_ADDR(val)			((val & 0x7f) << 1)
>>> +#define MV64XXX_I2C_BAUD_DIV_N(val)			(val & 0x7)
>>> +#define MV64XXX_I2C_BAUD_DIV_M(val)			((val & 0xf) << 3)
>>> +
>>> +#define	MV64XXX_I2C_REG_CONTROL_ACK			0x00000004
>>> +#define	MV64XXX_I2C_REG_CONTROL_IFLG			0x00000008
>>> +#define	MV64XXX_I2C_REG_CONTROL_STOP			0x00000010
>>> +#define	MV64XXX_I2C_REG_CONTROL_START			0x00000020
>>> +#define	MV64XXX_I2C_REG_CONTROL_TWSIEN			0x00000040
>>> +#define	MV64XXX_I2C_REG_CONTROL_INTEN			0x00000080
>>
>> As I said before, I see no point in tabs between #define and
>> MV64XXX_FOO. It is not about the 80 column rule, but general
>> style instead.
>>
>> Also, you can use BIT(x) for above defines.
>
> These are constants from linux kernel. I have only kept linux driver formatting.

Yeah, I got it that it isn't your fault. I'd suggest to rework them
anyway ;)

Also, you can get rid of MV64XXX_I2C_ prefix for the above defines, too.
They are local to this file and should not collide with anything you
include. IMHO it makes code much more readable if the defines aren't
always prefixed.

>>> +/* Ctlr status values */
>>> +#define	MV64XXX_I2C_STATUS_BUS_ERR			0x00
>>> +#define	MV64XXX_I2C_STATUS_MAST_START			0x08
>>> +#define	MV64XXX_I2C_STATUS_MAST_REPEAT_START		0x10
>>> +#define	MV64XXX_I2C_STATUS_MAST_WR_ADDR_ACK		0x18
>>> +#define	MV64XXX_I2C_STATUS_MAST_WR_ADDR_NO_ACK		0x20
>>> +#define	MV64XXX_I2C_STATUS_MAST_WR_ACK			0x28
>>> +#define	MV64XXX_I2C_STATUS_MAST_WR_NO_ACK		0x30
>>> +#define	MV64XXX_I2C_STATUS_MAST_LOST_ARB		0x38
>>> +#define	MV64XXX_I2C_STATUS_MAST_RD_ADDR_ACK		0x40
>>> +#define	MV64XXX_I2C_STATUS_MAST_RD_ADDR_NO_ACK		0x48
>>> +#define	MV64XXX_I2C_STATUS_MAST_RD_DATA_ACK		0x50
>>> +#define	MV64XXX_I2C_STATUS_MAST_RD_DATA_NO_ACK		0x58
>>> +#define	MV64XXX_I2C_STATUS_MAST_WR_ADDR_2_ACK		0xd0
>>> +#define	MV64XXX_I2C_STATUS_MAST_WR_ADDR_2_NO_ACK	0xd8
>>> +#define	MV64XXX_I2C_STATUS_MAST_RD_ADDR_2_ACK		0xe0
>>> +#define	MV64XXX_I2C_STATUS_MAST_RD_ADDR_2_NO_ACK	0xe8
>>> +#define	MV64XXX_I2C_STATUS_NO_STATUS			0xf8
>>> +
>>> +/* Driver states */
>>> +enum {
>>
>> enum mv64xxx_state {
>>
>> and get rid of MV64XXX_I2C_ prefix below.
>>
>>> +	MV64XXX_I2C_STATE_INVALID,
>>> +	MV64XXX_I2C_STATE_IDLE,
>>> +	MV64XXX_I2C_STATE_WAITING_FOR_START_COND,
>>> +	MV64XXX_I2C_STATE_WAITING_FOR_RESTART,
>>> +	MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK,
>>> +	MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK,
>>> +	MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK,
>>> +	MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA,
>>> +};
>>> +
>>> +/* Driver actions */
>>> +enum {
>>
>> enum mv64xxx_action {
>>
>> and get rid of MV64XXX_I2C_ prefix below.
>>
>>> +	MV64XXX_I2C_ACTION_INVALID,
>>> +	MV64XXX_I2C_ACTION_CONTINUE,
>>> +	MV64XXX_I2C_ACTION_SEND_RESTART,
>>> +	MV64XXX_I2C_ACTION_OFFLOAD_RESTART,
>>> +	MV64XXX_I2C_ACTION_SEND_ADDR_1,
>>> +	MV64XXX_I2C_ACTION_SEND_ADDR_2,
>>> +	MV64XXX_I2C_ACTION_SEND_DATA,
>>> +	MV64XXX_I2C_ACTION_RCV_DATA,
>>> +	MV64XXX_I2C_ACTION_RCV_DATA_STOP,
>>> +	MV64XXX_I2C_ACTION_SEND_STOP,
>>> +	MV64XXX_I2C_ACTION_OFFLOAD_SEND_STOP,
>>> +};
>>> +
>>> +struct mv64xxx_i2c_regs {
>>> +	u8	addr;
>>> +	u8	ext_addr;
>>> +	u8	data;
>>> +	u8	control;
>>> +	u8	status;
>>> +	u8	clock;
>>> +	u8	soft_reset;
>>> +};
>>> +
>>> +struct mv64xxx_i2c_data {
>>> +	struct i2c_msg		*msgs;
>>> +	int			num_msgs;
>>> +	u32			state;
>>> +	u32			action;
>>
>> enum mv64xxx_state state;
>> enum mv64xxx_action action;
>
> Good idea!
>
>>> +	u32			aborting;
>>
>> You are never aborting, so get rid of it and the logic completely.
>
>
> You are right, drv_data->aborting is always == 0.
>
>>> +	u32			cntl_bits;
>>
>> u8 cntl_bits;
>>
>> Although Orion SoCs allow 32b access, the registers are always
>> 8b.
>
> That is why FPGA-based i2c-controller that I work with byte oriented register access is used!

Yep, the registers are 8b because the i2c IP isn't even Marvell at all
but something ancient. Anyway, no need for u32 above as all registers
are 8b despite their access width.

>>> +	void __iomem		*reg_base;
>>
>> If you struggle with long lines, '*regs' or '*base' is sufficient.
>>
>>> +	struct mv64xxx_i2c_regs	reg_offsets;
>>
>> ditto, just choose shorter names.
>
> Linux kernel driver use this names. I prefer to use them too.

Again, names make no compatibility.. and again you are free to
choose.

>>> +	u32			addr1;
>>> +	u32			addr2;
>>
>> If you want to keep the state machine and track all msg stuff,
>> u8 is enough for both addrN above.
>>
>>> +	u32			bytes_left;
>>> +	u32			byte_posn;
>>
>> ditto, IIRC i2c doesn't even allow you to send more than 255 bytes
>> per message nor will you ever find a device that supports it.
>>
>>> +	u32			send_stop;
>>
>> I wonder if you'll ever send a restart at all, that will leave
>> the stop to the last message transferred. In any way, above should
>> be bool.
>>
>>> +	u32			block;
>>
>> Whatever block is for, remember that you will send each byte
>> individually and you'll ever be in charge of the code, i.e.
>> if you wait for completion, barebox will wait for it.
>> There is no threading nor interrupts.
>>
>>> +	int			rc;
>>> +	u32			freq_m;
>>> +	u32			freq_n;
>>
>> You could just init the HW when you found the best dividers.
>> No need to store them for eternity.
>>
>>> +	struct clk              *clk;
>>> +	struct i2c_msg		*msg;
>>> +	struct i2c_adapter	adapter;
>>> +/* 5us delay in order to avoid repeated start timing violation */
>>> +	bool			errata_delay;
>>> +	struct reset_control	*rstc;
>>
>> Unused.
>>
>>> +	bool			irq_clear_inverted;
>>> +	int			reg_io_width;
>>> +};
>>> +
>>> +static struct mv64xxx_i2c_regs mv64xxx_i2c_regs_mv64xxx = {
>>
>> __maybe_unused and see below at compatibles table.
>>
>>> +	.addr		= 0x00,
>>> +	.ext_addr	= 0x10,
>>> +	.data		= 0x04,
>>> +	.control	= 0x08,
>>> +	.status		= 0x0c,
>>> +	.clock		= 0x0c,
>>> +	.soft_reset	= 0x1c,
>>> +};
>>> +
>>> +static struct mv64xxx_i2c_regs mv64xxx_i2c_regs_sun4i = {
>>
>> ditto.
>
> Agree. Also I think I can convert u32 to u8 as you have noted above.

Ok.

>>> +	.addr		= 0x00,
>>> +	.ext_addr	= 0x04,
>>> +	.data		= 0x08,
>>> +	.control	= 0x0c,
>>> +	.status		= 0x10,
>>> +	.clock		= 0x14,
>>> +	.soft_reset	= 0x18,
>>> +};
>>> +
>>> +static inline void mv64xxx_write(struct mv64xxx_i2c_data *drv_data, u32 v, int reg)
>>
>> How about having a callback for this and _read below?
>>
>> You'd install the callback in _probe() and get rid of reg_io_width
>> check for every read/write access, i.e
>>
>> static void mv64xxx_writel(...)
>> {
>> 	writel(v, addr);
>> }
>>
>> static void mv64xxx_writeb(...)
>> {
>> 	writeb(v, addr);
>> }
>>
>> static int mv64xxx_i2c_probe(...)
>> {
>> 	...
>>
>> 	switch (reg_io_width) {
>> 	case 1:
>> 		drv_data->read = mv64xxx_readb;
>> 		drv_data->write = mv64xxx_writeb;
>> 		break;
>> 	case 4:
>> 		drv_data->read = mv64xxx_readl;
>> 		drv_data->write = mv64xxx_writel;
>> 		break;
>> 	default:
>> 		dev_err(pd, "unsupported reg-io-width (%d)\n",
>> 			reg_io_width);
>> 		rc = -EINVAL;
>> 		goto out;
>> 	}
>>
>> 	...
>> }
>>
>>> +{
>>> +	void *addr = drv_data->reg_base + reg;
>>> +
>>> +	switch (drv_data->reg_io_width) {
>>> +	case IORESOURCE_MEM_8BIT:
>>> +		writeb((u8)v, addr);
>>> +		break;
>>> +	case IORESOURCE_MEM_32BIT:
>>> +		writel(v, addr);
>>> +		break;
>>> +	default:
>>> +		dev_err(&drv_data->adapter.dev,
>>> +			"%s: wrong reg_io_width!\n", __func__);
>>
>> Beside the comment above, you already made sure reg_io_width will
>> never be anything else than 8BIT or 32BIT. So the default case is
>> not needed at all.
>
> good I can change it to callback. I see a template in drivers/serial/serial_ns16550.c.

Ok.

>>> +	}
>>> +}
[...]
>>> +static void mv64xxx_i2c_intr(struct mv64xxx_i2c_data *drv_data)
>>
>> Is "intr" for interrupt? Barebox is running with irqs disabled, so
>> maybe rename it to something like "mv64xxx_i2c_wait_for_done" ?
>
> This functions makes the work of the driver interrupt handler, so I prefere to keep
> linux kernel compartible naming here.

Here I have to insist just because there is no interrupt. Don't make the
driver look like the Linux driver. We do polling and we always know what
response we expect at a certain time, i.e. you issue a byte write and
you wait for it to complete.

There will be no out-of-order errors or events you have to deal with in
an interrupt context.

>>> +{
>>> +	u32 status;
>>> +	uint64_t start;
>>> +
>>> +	start = get_time_ns();
>>> +
>>> +	while (mv64xxx_read(drv_data, drv_data->reg_offsets.control) &
>>> +						MV64XXX_I2C_REG_CONTROL_IFLG) {
>>> +		status = mv64xxx_read(drv_data, drv_data->reg_offsets.status);
>>> +		mv64xxx_i2c_fsm(drv_data, status);
>>> +		mv64xxx_i2c_do_action(drv_data);
>>> +
>>> +		if (drv_data->irq_clear_inverted)
>>> +			mv64xxx_write(drv_data, drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_IFLG,
>>> +			       drv_data->reg_offsets.control);
>>> +
>>> +		if (is_timeout_non_interruptible(start, 3 * SECOND)) {
>>> +			drv_data->rc = -EIO;
>>> +			break;
>>> +		}
>>> +	}
>>> +}
>>> +
>>> +/*
>>> + *****************************************************************************
>>> + *
>>> + *	I2C Msg Execution Routines
>>> + *
>>> + *****************************************************************************
>>> + */
>>> +static void
>>> +mv64xxx_i2c_wait_for_completion(struct mv64xxx_i2c_data *drv_data)
>>> +{
>>> +	do {
>>> +		mv64xxx_i2c_intr(drv_data);
>>> +		if (drv_data->rc) {
>>> +			drv_data->state = MV64XXX_I2C_STATE_IDLE;
>>> +			dev_err(&drv_data->adapter.dev, "I2C bus error\n");

This dev_err is killing me. I haven't checked return values but
"No device responding at address FOO" is _not_ a bus error.

>>> +			mv64xxx_i2c_hw_init(drv_data);
>>> +			drv_data->block = 0;
>>> +		}
>>> +	} while (drv_data->block != 0);
>>> +}
>>> +
>>> +static int
>>> +mv64xxx_i2c_execute_msg(struct mv64xxx_i2c_data *drv_data, struct i2c_msg *msg,
>>> +				int is_last)
>>> +{
>>> +	drv_data->state = MV64XXX_I2C_STATE_WAITING_FOR_START_COND;
>>> +
>>> +	drv_data->send_stop = is_last;
>>> +	drv_data->block = 1;
>>> +	mv64xxx_i2c_send_start(drv_data);
>>> +	mv64xxx_i2c_wait_for_completion(drv_data);
>>> +
>>> +	return drv_data->rc;
>>> +}
>>> +
>>> +/*
>>> + *****************************************************************************
>>> + *
>>> + *	I2C Core Support Routines (Interface to higher level I2C code)
>>> + *
>>> + *****************************************************************************
>>> + */
>>> +static int
>>> +mv64xxx_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
>>> +{
>>> +	struct mv64xxx_i2c_data *drv_data = container_of(adap, struct mv64xxx_i2c_data, adapter);
>>> +	int rc, ret = num;
>>> +
>>> +	BUG_ON(drv_data->msgs != NULL);
>>> +	drv_data->msgs = msgs;
>>> +	drv_data->num_msgs = num;
>>> +
>>> +	rc = mv64xxx_i2c_execute_msg(drv_data, &msgs[0], num == 1);
>>> +	if (rc < 0)
>>> +		ret = rc;
>>> +
>>> +	drv_data->num_msgs = 0;
>>> +	drv_data->msgs = NULL;
>>
>> How about you loop over all passed msgs in here and get rid of
>> the both drv_data variables completely?
>
> I don't want to change code from linux driver without very good reason.

Oh, I guess you want to. Linux carries a whole bunch of software layers
that are very unnecessary on Barebox. But if you feel better with it,
I can live with it.

>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +/*
>>> + *****************************************************************************
>>> + *
>>> + *	Driver Interface & Early Init Routines
>>> + *
>>> + *****************************************************************************
>>> + */
>>> +static struct of_device_id mv64xxx_i2c_of_match_table[] = {
>> #if defined(CONFIG_SUN4I_FOO)
>>> +	{ .compatible = "allwinner,sun4i-i2c", .data = (unsigned long)&mv64xxx_i2c_regs_sun4i},
>> #endif
>> #if defined(CONFIG_SUN6I_FOO)
>>> +	{ .compatible = "allwinner,sun6i-a31-i2c", .data = (unsigned long)&mv64xxx_i2c_regs_sun4i},
>> #endif
>> #if defined(CONFIG_MACH_MVEBU)
>>> +	{ .compatible = "marvell,mv64xxx-i2c", .data = (unsigned long)&mv64xxx_i2c_regs_mv64xxx},
>> #endif
>> #if defined(CONFIG_ARCH_ARMADA_XP)
>>> +	{ .compatible = "marvell,mv78230-i2c", .data = (unsigned long)&mv64xxx_i2c_regs_mv64xxx},
>>> +	{ .compatible = "marvell,mv78230-a0-i2c", .data = (unsigned long)&mv64xxx_i2c_regs_mv64xxx},
>> #endif
>>> +	{}
>>> +};
>>
>> If you ifdef the compatibles, the compiler will be able to remove all
>> structs that are not referenced.
>>
>>> +
>>> +static int
>>> +mv64xxx_calc_freq(const int tclk, const int n, const int m)
>>
>> inline?
>
> Yes!
>
[...]
>>
>> In general, I agree that picking the driver from Linux is a good idea
>> because it is tested already. But IMHO there is often a huge amount of
>> unnecessary abstraction included that should be considered again for a
>> bootloader driver.
>>
>> I haven't looked at any detail of the FSM in this driver, but maybe it
>> is a victim for cleanup?
>
> I'll try to fix most of your issues.
>
> I think that it is better to use the same driver in linux and barebox.
> There is no reason to fix barebox driver without fixing original linux driver.

It depends. You'll notice that there will be fixes/improvements for
the Linux driver that will not make its way to the Barebox driver.

While API may be somewhat compatible and we are also probing from DT,
there is no need to carry interrupt/threading stuff and legacy code
with this driver.

IMHO, the driver (and its function names) should reflect what is used on
barebox, no matter where the driver template came from.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
