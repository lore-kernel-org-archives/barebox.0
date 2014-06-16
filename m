Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WwRri-0004xF-RD
 for barebox@lists.infradead.org; Mon, 16 Jun 2014 08:02:11 +0000
Received: by mail-la0-f44.google.com with SMTP id ty20so728280lab.17
 for <barebox@lists.infradead.org>; Mon, 16 Jun 2014 01:01:44 -0700 (PDT)
Date: Mon, 16 Jun 2014 12:13:28 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140616121328.6fe9f49d224a103f2f1c2cba@gmail.com>
In-Reply-To: <1402905137-6953-1-git-send-email-antonynpavlov@gmail.com>
References: <1402905137-6953-1-git-send-email-antonynpavlov@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [WIP] i2c: add Marvell 64xxx driver
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, 16 Jun 2014 11:52:17 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Sorry, I have forgot to add RFC to the message's subject.

> This driver is also used for Allwinner SoCs I2C controllers.
> =

> Ported from linux-3.15.
> =

> The most notable barebox driver version changes:
> =

>   * drop message offloading support;
>   * add reg-io-width parameter to use driver with byte-oriented
>     controller versions.
> =

> TODOs:
> =

>   * check timeout in mv64xxx_i2c_wait_for_completion();
>   * remove 'line over 80 characters' warnings.
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/i2c/busses/Kconfig       |   7 +
>  drivers/i2c/busses/Makefile      |   1 +
>  drivers/i2c/busses/i2c-mv64xxx.c | 682 +++++++++++++++++++++++++++++++++=
++++++
>  include/linux/mv643xx_i2c.h      |  22 ++
>  4 files changed, 712 insertions(+)
>  create mode 100644 drivers/i2c/busses/i2c-mv64xxx.c
>  create mode 100644 include/linux/mv643xx_i2c.h
> =

> diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> index 370abb0..ccdad89 100644
> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -16,6 +16,13 @@ config I2C_IMX
>  	bool "MPC85xx/i.MX I2C Master driver"
>  	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX
>  =

> +config I2C_MV64XXX
> +	bool "Marvell mv64xxx I2C Controller"
> +	help
> +	  If you say yes to this option, support will be included for the
> +	  built-in I2C interface on the Marvell 64xxx line of host bridges.
> +	  This driver is also used for Allwinner SoCs I2C controllers.
> +
>  config I2C_OMAP
>  	bool "OMAP I2C Master driver"
>  	depends on ARCH_OMAP
> diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
> index 9823d1b..4e4f6ba 100644
> --- a/drivers/i2c/busses/Makefile
> +++ b/drivers/i2c/busses/Makefile
> @@ -1,5 +1,6 @@
>  obj-$(CONFIG_I2C_GPIO)		+=3D i2c-gpio.o
>  obj-$(CONFIG_I2C_IMX) +=3D i2c-imx.o
> +obj-$(CONFIG_I2C_MV64XXX)	+=3D i2c-mv64xxx.o
>  obj-$(CONFIG_I2C_OMAP) +=3D i2c-omap.o
>  obj-$(CONFIG_I2C_TEGRA)		+=3D i2c-tegra.o
>  obj-$(CONFIG_I2C_VERSATILE)	+=3D i2c-versatile.o
> diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv=
64xxx.c
> new file mode 100644
> index 0000000..04c16e5
> --- /dev/null
> +++ b/drivers/i2c/busses/i2c-mv64xxx.c
> @@ -0,0 +1,682 @@
> +/*
> + * Driver for the i2c controller on the Marvell line of host bridges
> + * (e.g, gt642[46]0, mv643[46]0, mv644[46]0, and Orion SoC family).
> + *
> + * Author: Mark A. Greer <mgreer@mvista.com>
> + *
> + * 2005 (c) MontaVista, Software, Inc.  This file is licensed under
> + * the terms of the GNU General Public License version 2.  This program
> + * is licensed "as is" without any warranty of any kind, whether express
> + * or implied.
> + */
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <of.h>
> +#include <malloc.h>
> +#include <types.h>
> +#include <xfuncs.h>
> +#include <clock.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +#include <io.h>
> +#include <i2c/i2c.h>
> +#include <linux/mv643xx_i2c.h>
> +#include <printk.h>
> +
> +#define MV64XXX_I2C_ADDR_ADDR(val)			((val & 0x7f) << 1)
> +#define MV64XXX_I2C_BAUD_DIV_N(val)			(val & 0x7)
> +#define MV64XXX_I2C_BAUD_DIV_M(val)			((val & 0xf) << 3)
> +
> +#define	MV64XXX_I2C_REG_CONTROL_ACK			0x00000004
> +#define	MV64XXX_I2C_REG_CONTROL_IFLG			0x00000008
> +#define	MV64XXX_I2C_REG_CONTROL_STOP			0x00000010
> +#define	MV64XXX_I2C_REG_CONTROL_START			0x00000020
> +#define	MV64XXX_I2C_REG_CONTROL_TWSIEN			0x00000040
> +#define	MV64XXX_I2C_REG_CONTROL_INTEN			0x00000080
> +
> +/* Ctlr status values */
> +#define	MV64XXX_I2C_STATUS_BUS_ERR			0x00
> +#define	MV64XXX_I2C_STATUS_MAST_START			0x08
> +#define	MV64XXX_I2C_STATUS_MAST_REPEAT_START		0x10
> +#define	MV64XXX_I2C_STATUS_MAST_WR_ADDR_ACK		0x18
> +#define	MV64XXX_I2C_STATUS_MAST_WR_ADDR_NO_ACK		0x20
> +#define	MV64XXX_I2C_STATUS_MAST_WR_ACK			0x28
> +#define	MV64XXX_I2C_STATUS_MAST_WR_NO_ACK		0x30
> +#define	MV64XXX_I2C_STATUS_MAST_LOST_ARB		0x38
> +#define	MV64XXX_I2C_STATUS_MAST_RD_ADDR_ACK		0x40
> +#define	MV64XXX_I2C_STATUS_MAST_RD_ADDR_NO_ACK		0x48
> +#define	MV64XXX_I2C_STATUS_MAST_RD_DATA_ACK		0x50
> +#define	MV64XXX_I2C_STATUS_MAST_RD_DATA_NO_ACK		0x58
> +#define	MV64XXX_I2C_STATUS_MAST_WR_ADDR_2_ACK		0xd0
> +#define	MV64XXX_I2C_STATUS_MAST_WR_ADDR_2_NO_ACK	0xd8
> +#define	MV64XXX_I2C_STATUS_MAST_RD_ADDR_2_ACK		0xe0
> +#define	MV64XXX_I2C_STATUS_MAST_RD_ADDR_2_NO_ACK	0xe8
> +#define	MV64XXX_I2C_STATUS_NO_STATUS			0xf8
> +
> +/* Driver states */
> +enum {
> +	MV64XXX_I2C_STATE_INVALID,
> +	MV64XXX_I2C_STATE_IDLE,
> +	MV64XXX_I2C_STATE_WAITING_FOR_START_COND,
> +	MV64XXX_I2C_STATE_WAITING_FOR_RESTART,
> +	MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK,
> +	MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK,
> +	MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK,
> +	MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA,
> +};
> +
> +/* Driver actions */
> +enum {
> +	MV64XXX_I2C_ACTION_INVALID,
> +	MV64XXX_I2C_ACTION_CONTINUE,
> +	MV64XXX_I2C_ACTION_SEND_RESTART,
> +	MV64XXX_I2C_ACTION_OFFLOAD_RESTART,
> +	MV64XXX_I2C_ACTION_SEND_ADDR_1,
> +	MV64XXX_I2C_ACTION_SEND_ADDR_2,
> +	MV64XXX_I2C_ACTION_SEND_DATA,
> +	MV64XXX_I2C_ACTION_RCV_DATA,
> +	MV64XXX_I2C_ACTION_RCV_DATA_STOP,
> +	MV64XXX_I2C_ACTION_SEND_STOP,
> +	MV64XXX_I2C_ACTION_OFFLOAD_SEND_STOP,
> +};
> +
> +struct mv64xxx_i2c_regs {
> +	u8	addr;
> +	u8	ext_addr;
> +	u8	data;
> +	u8	control;
> +	u8	status;
> +	u8	clock;
> +	u8	soft_reset;
> +};
> +
> +struct mv64xxx_i2c_data {
> +	struct i2c_msg		*msgs;
> +	int			num_msgs;
> +	u32			state;
> +	u32			action;
> +	u32			aborting;
> +	u32			cntl_bits;
> +	void __iomem		*reg_base;
> +	struct mv64xxx_i2c_regs	reg_offsets;
> +	u32			addr1;
> +	u32			addr2;
> +	u32			bytes_left;
> +	u32			byte_posn;
> +	u32			send_stop;
> +	u32			block;
> +	int			rc;
> +	u32			freq_m;
> +	u32			freq_n;
> +	struct clk              *clk;
> +	struct i2c_msg		*msg;
> +	struct i2c_adapter	adapter;
> +/* 5us delay in order to avoid repeated start timing violation */
> +	bool			errata_delay;
> +	struct reset_control	*rstc;
> +	bool			irq_clear_inverted;
> +	int			reg_io_width;
> +};
> +
> +static struct mv64xxx_i2c_regs mv64xxx_i2c_regs_mv64xxx =3D {
> +	.addr		=3D 0x00,
> +	.ext_addr	=3D 0x10,
> +	.data		=3D 0x04,
> +	.control	=3D 0x08,
> +	.status		=3D 0x0c,
> +	.clock		=3D 0x0c,
> +	.soft_reset	=3D 0x1c,
> +};
> +
> +static struct mv64xxx_i2c_regs mv64xxx_i2c_regs_sun4i =3D {
> +	.addr		=3D 0x00,
> +	.ext_addr	=3D 0x04,
> +	.data		=3D 0x08,
> +	.control	=3D 0x0c,
> +	.status		=3D 0x10,
> +	.clock		=3D 0x14,
> +	.soft_reset	=3D 0x18,
> +};
> +
> +static inline void mv64xxx_write(struct mv64xxx_i2c_data *drv_data, u32 =
v, int reg)
> +{
> +	void *addr =3D drv_data->reg_base + reg;
> +
> +	switch (drv_data->reg_io_width) {
> +	case IORESOURCE_MEM_8BIT:
> +		writeb((u8)v, addr);
> +		break;
> +	case IORESOURCE_MEM_32BIT:
> +		writel(v, addr);
> +		break;
> +	default:
> +		dev_err(&drv_data->adapter.dev,
> +			"%s: wrong reg_io_width!\n", __func__);
> +	}
> +}
> +
> +static inline u32 mv64xxx_read(struct mv64xxx_i2c_data *drv_data, int re=
g)
> +{
> +	void *addr =3D drv_data->reg_base + reg;
> +	u32 r;
> +
> +	switch (drv_data->reg_io_width) {
> +	case IORESOURCE_MEM_8BIT:
> +		r =3D readb(addr);
> +		break;
> +
> +	case IORESOURCE_MEM_32BIT:
> +		r =3D readl(addr);
> +		break;
> +
> +	default:
> +		dev_err(&drv_data->adapter.dev,
> +			"%s: wrong reg_io_width!\n", __func__);
> +		r =3D 0xffffffff;
> +	}
> +
> +	return r;
> +}
> +
> +static void
> +mv64xxx_i2c_prepare_for_io(struct mv64xxx_i2c_data *drv_data,
> +	struct i2c_msg *msg)
> +{
> +	u32	dir =3D 0;
> +
> +	drv_data->cntl_bits =3D MV64XXX_I2C_REG_CONTROL_ACK |
> +		MV64XXX_I2C_REG_CONTROL_INTEN | MV64XXX_I2C_REG_CONTROL_TWSIEN;
> +
> +	if (msg->flags & I2C_M_RD)
> +		dir =3D 1;
> +
> +	if (msg->flags & I2C_M_TEN) {
> +		drv_data->addr1 =3D 0xf0 | (((u32)msg->addr & 0x300) >> 7) | dir;
> +		drv_data->addr2 =3D (u32)msg->addr & 0xff;
> +	} else {
> +		drv_data->addr1 =3D MV64XXX_I2C_ADDR_ADDR((u32)msg->addr) | dir;
> +		drv_data->addr2 =3D 0;
> +	}
> +}
> +
> +/*
> + ***********************************************************************=
******
> + *
> + *	Finite State Machine & Interrupt Routines
> + *
> + ***********************************************************************=
******
> + */
> +
> +/* Reset hardware and initialize FSM */
> +static void
> +mv64xxx_i2c_hw_init(struct mv64xxx_i2c_data *drv_data)
> +{
> +	mv64xxx_write(drv_data, 0, drv_data->reg_offsets.soft_reset);
> +	mv64xxx_write(drv_data, MV64XXX_I2C_BAUD_DIV_M(drv_data->freq_m) | MV64=
XXX_I2C_BAUD_DIV_N(drv_data->freq_n),
> +		drv_data->reg_offsets.clock);
> +	mv64xxx_write(drv_data, 0, drv_data->reg_offsets.addr);
> +	mv64xxx_write(drv_data, 0, drv_data->reg_offsets.ext_addr);
> +	mv64xxx_write(drv_data, MV64XXX_I2C_REG_CONTROL_TWSIEN | MV64XXX_I2C_RE=
G_CONTROL_STOP,
> +		drv_data->reg_offsets.control);
> +	drv_data->state =3D MV64XXX_I2C_STATE_IDLE;
> +}
> +
> +static void
> +mv64xxx_i2c_fsm(struct mv64xxx_i2c_data *drv_data, u32 status)
> +{
> +	/*
> +	 * If state is idle, then this is likely the remnants of an old
> +	 * operation that driver has given up on or the user has killed.
> +	 * If so, issue the stop condition and go to idle.
> +	 */
> +	if (drv_data->state =3D=3D MV64XXX_I2C_STATE_IDLE) {
> +		drv_data->action =3D MV64XXX_I2C_ACTION_SEND_STOP;
> +		return;
> +	}
> +
> +	/* The status from the ctlr [mostly] tells us what to do next */
> +	switch (status) {
> +	/* Start condition interrupt */
> +	case MV64XXX_I2C_STATUS_MAST_START: /* 0x08 */
> +	case MV64XXX_I2C_STATUS_MAST_REPEAT_START: /* 0x10 */
> +		drv_data->action =3D MV64XXX_I2C_ACTION_SEND_ADDR_1;
> +		drv_data->state =3D MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK;
> +		break;
> +
> +	/* Performing a write */
> +	case MV64XXX_I2C_STATUS_MAST_WR_ADDR_ACK: /* 0x18 */
> +		if (drv_data->msg->flags & I2C_M_TEN) {
> +			drv_data->action =3D MV64XXX_I2C_ACTION_SEND_ADDR_2;
> +			drv_data->state =3D
> +				MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK;
> +			break;
> +		}
> +		/* FALLTHRU */
> +	case MV64XXX_I2C_STATUS_MAST_WR_ADDR_2_ACK: /* 0xd0 */
> +	case MV64XXX_I2C_STATUS_MAST_WR_ACK: /* 0x28 */
> +		if ((drv_data->bytes_left =3D=3D 0)
> +				|| (drv_data->aborting
> +					&& (drv_data->byte_posn !=3D 0))) {
> +			if (drv_data->send_stop || drv_data->aborting) {
> +				drv_data->action =3D MV64XXX_I2C_ACTION_SEND_STOP;
> +				drv_data->state =3D MV64XXX_I2C_STATE_IDLE;
> +			} else {
> +				drv_data->action =3D
> +					MV64XXX_I2C_ACTION_SEND_RESTART;
> +				drv_data->state =3D
> +					MV64XXX_I2C_STATE_WAITING_FOR_RESTART;
> +			}
> +		} else {
> +			drv_data->action =3D MV64XXX_I2C_ACTION_SEND_DATA;
> +			drv_data->state =3D
> +				MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK;
> +			drv_data->bytes_left--;
> +		}
> +		break;
> +
> +	/* Performing a read */
> +	case MV64XXX_I2C_STATUS_MAST_RD_ADDR_ACK: /* 40 */
> +		if (drv_data->msg->flags & I2C_M_TEN) {
> +			drv_data->action =3D MV64XXX_I2C_ACTION_SEND_ADDR_2;
> +			drv_data->state =3D
> +				MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK;
> +			break;
> +		}
> +		/* FALLTHRU */
> +	case MV64XXX_I2C_STATUS_MAST_RD_ADDR_2_ACK: /* 0xe0 */
> +		if (drv_data->bytes_left =3D=3D 0) {
> +			drv_data->action =3D MV64XXX_I2C_ACTION_SEND_STOP;
> +			drv_data->state =3D MV64XXX_I2C_STATE_IDLE;
> +			break;
> +		}
> +		/* FALLTHRU */
> +	case MV64XXX_I2C_STATUS_MAST_RD_DATA_ACK: /* 0x50 */
> +		if (status !=3D MV64XXX_I2C_STATUS_MAST_RD_DATA_ACK)
> +			drv_data->action =3D MV64XXX_I2C_ACTION_CONTINUE;
> +		else {
> +			drv_data->action =3D MV64XXX_I2C_ACTION_RCV_DATA;
> +			drv_data->bytes_left--;
> +		}
> +		drv_data->state =3D MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA;
> +
> +		if ((drv_data->bytes_left =3D=3D 1) || drv_data->aborting)
> +			drv_data->cntl_bits &=3D ~MV64XXX_I2C_REG_CONTROL_ACK;
> +		break;
> +
> +	case MV64XXX_I2C_STATUS_MAST_RD_DATA_NO_ACK: /* 0x58 */
> +		drv_data->action =3D MV64XXX_I2C_ACTION_RCV_DATA_STOP;
> +		drv_data->state =3D MV64XXX_I2C_STATE_IDLE;
> +		break;
> +
> +	case MV64XXX_I2C_STATUS_MAST_WR_ADDR_NO_ACK: /* 0x20 */
> +	case MV64XXX_I2C_STATUS_MAST_WR_NO_ACK: /* 30 */
> +	case MV64XXX_I2C_STATUS_MAST_RD_ADDR_NO_ACK: /* 48 */
> +		/* Doesn't seem to be a device at other end */
> +		drv_data->action =3D MV64XXX_I2C_ACTION_SEND_STOP;
> +		drv_data->state =3D MV64XXX_I2C_STATE_IDLE;
> +		drv_data->rc =3D -ENXIO;
> +		break;
> +
> +	default:
> +		dev_err(&drv_data->adapter.dev,
> +			"mv64xxx_i2c_fsm: Ctlr Error -- state: 0x%x, "
> +			"status: 0x%x, addr: 0x%x, flags: 0x%x\n",
> +			 drv_data->state, status, drv_data->msg->addr,
> +			 drv_data->msg->flags);
> +		drv_data->action =3D MV64XXX_I2C_ACTION_SEND_STOP;
> +		mv64xxx_i2c_hw_init(drv_data);
> +		drv_data->rc =3D -EIO;
> +	}
> +}
> +
> +static void mv64xxx_i2c_send_start(struct mv64xxx_i2c_data *drv_data)
> +{
> +	drv_data->msg =3D drv_data->msgs;
> +	drv_data->byte_posn =3D 0;
> +	drv_data->bytes_left =3D drv_data->msg->len;
> +	drv_data->aborting =3D 0;
> +	drv_data->rc =3D 0;
> +
> +	mv64xxx_i2c_prepare_for_io(drv_data, drv_data->msgs);
> +	mv64xxx_write(drv_data, drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_S=
TART,
> +		drv_data->reg_offsets.control);
> +}
> +
> +static void
> +mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
> +{
> +	switch (drv_data->action) {
> +	case MV64XXX_I2C_ACTION_SEND_RESTART:
> +		/* We should only get here if we have further messages */
> +		BUG_ON(drv_data->num_msgs =3D=3D 0);
> +
> +		drv_data->msgs++;
> +		drv_data->num_msgs--;
> +		mv64xxx_i2c_send_start(drv_data);
> +
> +		if (drv_data->errata_delay)
> +			udelay(5);
> +
> +		/*
> +		 * We're never at the start of the message here, and by this
> +		 * time it's already too late to do any protocol mangling.
> +		 * Thankfully, do not advertise support for that feature.
> +		 */
> +		drv_data->send_stop =3D drv_data->num_msgs =3D=3D 1;
> +		break;
> +
> +	case MV64XXX_I2C_ACTION_CONTINUE:
> +		mv64xxx_write(drv_data, drv_data->cntl_bits,
> +			drv_data->reg_offsets.control);
> +		break;
> +
> +	case MV64XXX_I2C_ACTION_SEND_ADDR_1:
> +		mv64xxx_write(drv_data, drv_data->addr1,
> +			drv_data->reg_offsets.data);
> +		mv64xxx_write(drv_data, drv_data->cntl_bits,
> +			drv_data->reg_offsets.control);
> +		break;
> +
> +	case MV64XXX_I2C_ACTION_SEND_ADDR_2:
> +		mv64xxx_write(drv_data, drv_data->addr2,
> +			drv_data->reg_offsets.data);
> +		mv64xxx_write(drv_data, drv_data->cntl_bits,
> +			drv_data->reg_offsets.control);
> +		break;
> +
> +	case MV64XXX_I2C_ACTION_SEND_DATA:
> +		mv64xxx_write(drv_data, drv_data->msg->buf[drv_data->byte_posn++],
> +			drv_data->reg_offsets.data);
> +		mv64xxx_write(drv_data, drv_data->cntl_bits,
> +			drv_data->reg_offsets.control);
> +		break;
> +
> +	case MV64XXX_I2C_ACTION_RCV_DATA:
> +		drv_data->msg->buf[drv_data->byte_posn++] =3D
> +			mv64xxx_read(drv_data, drv_data->reg_offsets.data);
> +		mv64xxx_write(drv_data, drv_data->cntl_bits,
> +			drv_data->reg_offsets.control);
> +		break;
> +
> +	case MV64XXX_I2C_ACTION_RCV_DATA_STOP:
> +		drv_data->msg->buf[drv_data->byte_posn++] =3D
> +			mv64xxx_read(drv_data, drv_data->reg_offsets.data);
> +		drv_data->cntl_bits &=3D ~MV64XXX_I2C_REG_CONTROL_INTEN;
> +		mv64xxx_write(drv_data, drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_=
STOP,
> +			drv_data->reg_offsets.control);
> +		drv_data->block =3D 0;
> +		if (drv_data->errata_delay)
> +			udelay(5);
> +
> +		break;
> +
> +	case MV64XXX_I2C_ACTION_INVALID:
> +	default:
> +		dev_err(&drv_data->adapter.dev,
> +			"mv64xxx_i2c_do_action: Invalid action: %d\n",
> +			drv_data->action);
> +		drv_data->rc =3D -EIO;
> +
> +		/* FALLTHRU */
> +	case MV64XXX_I2C_ACTION_SEND_STOP:
> +		drv_data->cntl_bits &=3D ~MV64XXX_I2C_REG_CONTROL_INTEN;
> +		mv64xxx_write(drv_data, drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_=
STOP,
> +			drv_data->reg_offsets.control);
> +		drv_data->block =3D 0;
> +		break;
> +	}
> +}
> +
> +static int mv64xxx_i2c_intr(struct mv64xxx_i2c_data *drv_data)
> +{
> +	u32		status;
> +	int rc =3D 0;
> +
> +	while (mv64xxx_read(drv_data, drv_data->reg_offsets.control) &
> +						MV64XXX_I2C_REG_CONTROL_IFLG) {
> +		status =3D mv64xxx_read(drv_data, drv_data->reg_offsets.status);
> +		mv64xxx_i2c_fsm(drv_data, status);
> +		mv64xxx_i2c_do_action(drv_data);
> +
> +		if (drv_data->irq_clear_inverted)
> +			mv64xxx_write(drv_data, drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL=
_IFLG,
> +			       drv_data->reg_offsets.control);
> +
> +		rc =3D 1;
> +	}
> +
> +	return rc;
> +}
> +
> +
> +/*
> + ***********************************************************************=
******
> + *
> + *	I2C Msg Execution Routines
> + *
> + ***********************************************************************=
******
> + */
> +static void
> +mv64xxx_i2c_wait_for_completion(struct mv64xxx_i2c_data *drv_data)
> +{
> +	int r;
> +
> +	/* FIXME: check timeout too! */
> +	do {
> +		r =3D mv64xxx_i2c_intr(drv_data);
> +	} while (drv_data->block !=3D 0);
> +}
> +
> +static int
> +mv64xxx_i2c_execute_msg(struct mv64xxx_i2c_data *drv_data, struct i2c_ms=
g *msg,
> +				int is_last)
> +{
> +	drv_data->state =3D MV64XXX_I2C_STATE_WAITING_FOR_START_COND;
> +
> +	drv_data->send_stop =3D is_last;
> +	drv_data->block =3D 1;
> +	mv64xxx_i2c_send_start(drv_data);
> +	mv64xxx_i2c_wait_for_completion(drv_data);
> +
> +	return drv_data->rc;
> +}
> +
> +/*
> + ***********************************************************************=
******
> + *
> + *	I2C Core Support Routines (Interface to higher level I2C code)
> + *
> + ***********************************************************************=
******
> + */
> +static int
> +mv64xxx_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int nu=
m)
> +{
> +	struct mv64xxx_i2c_data *drv_data =3D container_of(adap, struct mv64xxx=
_i2c_data, adapter);
> +	int rc, ret =3D num;
> +
> +	BUG_ON(drv_data->msgs !=3D NULL);
> +	drv_data->msgs =3D msgs;
> +	drv_data->num_msgs =3D num;
> +
> +	rc =3D mv64xxx_i2c_execute_msg(drv_data, &msgs[0], num =3D=3D 1);
> +	if (rc < 0)
> +		ret =3D rc;
> +
> +	drv_data->num_msgs =3D 0;
> +	drv_data->msgs =3D NULL;
> +
> +	return ret;
> +}
> +
> +/*
> + ***********************************************************************=
******
> + *
> + *	Driver Interface & Early Init Routines
> + *
> + ***********************************************************************=
******
> + */
> +static struct of_device_id mv64xxx_i2c_of_match_table[] =3D {
> +	{ .compatible =3D "allwinner,sun4i-i2c", .data =3D (unsigned long)&mv64=
xxx_i2c_regs_sun4i},
> +	{ .compatible =3D "allwinner,sun6i-a31-i2c", .data =3D (unsigned long)&=
mv64xxx_i2c_regs_sun4i},
> +	{ .compatible =3D "marvell,mv64xxx-i2c", .data =3D (unsigned long)&mv64=
xxx_i2c_regs_mv64xxx},
> +	{ .compatible =3D "marvell,mv78230-i2c", .data =3D (unsigned long)&mv64=
xxx_i2c_regs_mv64xxx},
> +	{ .compatible =3D "marvell,mv78230-a0-i2c", .data =3D (unsigned long)&m=
v64xxx_i2c_regs_mv64xxx},
> +	{}
> +};
> +
> +static int
> +mv64xxx_calc_freq(const int tclk, const int n, const int m)
> +{
> +	return tclk / (10 * (m + 1) * (2 << n));
> +}
> +
> +static bool
> +mv64xxx_find_baud_factors(const u32 req_freq, const u32 tclk, u32 *best_=
n,
> +			  u32 *best_m)
> +{
> +	int freq, delta, best_delta =3D INT_MAX;
> +	int m, n;
> +
> +	for (n =3D 0; n <=3D 7; n++)
> +		for (m =3D 0; m <=3D 15; m++) {
> +			freq =3D mv64xxx_calc_freq(tclk, n, m);
> +			delta =3D req_freq - freq;
> +			if (delta >=3D 0 && delta < best_delta) {
> +				*best_m =3D m;
> +				*best_n =3D n;
> +				best_delta =3D delta;
> +			}
> +			if (best_delta =3D=3D 0)
> +				return true;
> +		}
> +	if (best_delta =3D=3D INT_MAX)
> +		return false;
> +	return true;
> +}
> +
> +static int
> +mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
> +		  struct device_d *pd)
> +{
> +	struct device_node *np =3D pd->device_node;
> +	u32 bus_freq, tclk;
> +	int rc =3D 0;
> +	u32 prop;
> +	struct mv64xxx_i2c_regs *mv64xxx_regs;
> +	int freq;
> +
> +	if (IS_ERR(drv_data->clk)) {
> +		rc =3D -ENODEV;
> +		goto out;
> +	}
> +	tclk =3D clk_get_rate(drv_data->clk);
> +
> +	rc =3D of_property_read_u32(np, "clock-frequency", &bus_freq);
> +	if (rc)
> +		bus_freq =3D 100000; /* 100kHz by default */
> +
> +	if (!mv64xxx_find_baud_factors(bus_freq, tclk,
> +				       &drv_data->freq_n, &drv_data->freq_m)) {
> +		rc =3D -EINVAL;
> +		goto out;
> +	}
> +
> +	freq =3D mv64xxx_calc_freq(tclk, drv_data->freq_n, drv_data->freq_m);
> +	dev_err(pd, "tclk=3D%d freq_n=3D%d freq_m=3D%d freq=3D%d\n",
> +			tclk, drv_data->freq_n, drv_data->freq_m, freq);
> +
> +	drv_data->reg_io_width =3D IORESOURCE_MEM_32BIT;
> +
> +	if (of_property_read_u32(np, "reg-io-width", &prop) =3D=3D 0) {
> +		switch (prop) {
> +		case 1:
> +			drv_data->reg_io_width =3D IORESOURCE_MEM_8BIT;
> +			break;
> +		case 4:
> +			drv_data->reg_io_width =3D IORESOURCE_MEM_32BIT;
> +			break;
> +		default:
> +			dev_err(pd, "unsupported reg-io-width (%d)\n", prop);
> +			rc =3D -EINVAL;
> +			goto out;
> +		}
> +	}
> +
> +	dev_get_drvdata(pd, (unsigned long *)&mv64xxx_regs);
> +	memcpy(&drv_data->reg_offsets, mv64xxx_regs,
> +		sizeof(drv_data->reg_offsets));
> +
> +	/*
> +	 * For controllers embedded in new SoCs activate the
> +	 * Transaction Generator support and the errata fix.
> +	 */
> +	if (of_device_is_compatible(np, "marvell,mv78230-i2c")) {
> +		drv_data->errata_delay =3D true;
> +	}
> +
> +	if (of_device_is_compatible(np, "marvell,mv78230-a0-i2c")) {
> +		drv_data->errata_delay =3D true;
> +	}
> +
> +	if (of_device_is_compatible(np, "allwinner,sun6i-a31-i2c"))
> +		drv_data->irq_clear_inverted =3D true;
> +
> +out:
> +	return rc;
> +}
> +
> +static int
> +mv64xxx_i2c_probe(struct device_d *pd)
> +{
> +	struct mv64xxx_i2c_data		*drv_data;
> +	int	rc;
> +
> +	if (!pd->device_node)
> +		return -ENODEV;
> +
> +	drv_data =3D xzalloc(sizeof(*drv_data));
> +
> +	drv_data->reg_base =3D dev_request_mem_region(pd, 0);
> +	if (IS_ERR(drv_data->reg_base))
> +		return PTR_ERR(drv_data->reg_base);
> +
> +	/* Not all platforms have a clk */
> +	drv_data->clk =3D clk_get(pd, NULL);
> +	if (IS_ERR(drv_data->clk))
> +		return PTR_ERR(drv_data->clk);
> +
> +	clk_enable(drv_data->clk);
> +
> +	rc =3D mv64xxx_of_config(drv_data, pd);
> +	if (rc)
> +		goto exit_clk;
> +
> +	mv64xxx_i2c_hw_init(drv_data);
> +
> +	drv_data->adapter.master_xfer =3D mv64xxx_i2c_xfer;
> +	drv_data->adapter.dev.parent =3D pd;
> +	drv_data->adapter.nr =3D pd->id;
> +	drv_data->adapter.dev.device_node =3D pd->device_node;
> +
> +	rc =3D i2c_add_numbered_adapter(&drv_data->adapter);
> +	if (rc) {
> +		dev_err(pd, "Failed to add I2C adapter\n");
> +		goto exit_clk;
> +	}
> +
> +	return 0;
> +
> +exit_clk:
> +	clk_disable(drv_data->clk);
> +
> +	return rc;
> +}
> +
> +static struct driver_d mv64xxx_i2c_driver =3D {
> +	.probe	=3D mv64xxx_i2c_probe,
> +	.name =3D "mv64xxx_i2c",
> +	.of_compatible =3D DRV_OF_COMPAT(mv64xxx_i2c_of_match_table),
> +};
> +device_platform_driver(mv64xxx_i2c_driver);
> diff --git a/include/linux/mv643xx_i2c.h b/include/linux/mv643xx_i2c.h
> new file mode 100644
> index 0000000..5db5152
> --- /dev/null
> +++ b/include/linux/mv643xx_i2c.h
> @@ -0,0 +1,22 @@
> +/*
> + * This program is free software; you can redistribute  it and/or modify=
 it
> + * under  the terms of  the GNU General  Public License as published by =
the
> + * Free Software Foundation;  either version 2 of the  License, or (at y=
our
> + * option) any later version.
> + */
> +
> +#ifndef _MV64XXX_I2C_H_
> +#define _MV64XXX_I2C_H_
> +
> +#include <linux/types.h>
> +
> +#define MV64XXX_I2C_CTLR_NAME	"mv64xxx_i2c"
> +
> +/* i2c Platform Device, Driver Data */
> +struct mv64xxx_i2c_pdata {
> +	u32	freq_m;
> +	u32	freq_n;
> +	u32	timeout;	/* In milliseconds */
> +};
> +
> +#endif /*_MV64XXX_I2C_H_*/
> -- =

> 1.9.2
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
