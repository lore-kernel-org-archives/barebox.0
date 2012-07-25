Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Stvsx-00020P-93
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 07:19:59 +0000
Date: Wed, 25 Jul 2012 09:19:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120725071947.GK30009@pengutronix.de>
References: <500EA7A8.4020603@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <500EA7A8.4020603@kiwigrid.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add JTAG bitbang driver
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

Hi Wjatscheslaw,

The driver looks mostly ok, some minor stuff below. Please run
scripts/checkpatch.pl, there are some coding style issues.

How do you use this driver? From C code, or is there some command
planned?

On Tue, Jul 24, 2012 at 03:48:24PM +0200, Wjatscheslaw Stoljarski (Slawa) wrote:
> Signed-off-by: Wjatscheslaw Stoljarski
> <wjatscheslaw.stoljarski@kiwigrid.com>
> ---
>  drivers/Kconfig       |    1 +
>  drivers/Makefile      |    1 +
>  drivers/misc/Kconfig  |   27 ++++
>  drivers/misc/Makefile |    5 +
>  drivers/misc/jtag.c   |  395
> +++++++++++++++++++++++++++++++++++++++++++++++++

linewrap here, please use git send-email.

> +#define MAX_DEVICES 16
> +
> +static LIST_HEAD(jtag_device_list);

Each device is added to this list and removed from this list on remove,
but otherwise it's unused. Please remove.

> +
> +struct jtag_info {
> +	struct jtag_platdata *pdata;
> +	struct cdev cdev;
> +	unsigned int devices; /* Number of devices found in the jtag chain */
> +	struct list_head device_entry;
> +	/* Instruction register length of every device in the chain */
> +	unsigned int ir_len[];	/* [devices] */

Better use a fixed len array here: ir_len[MAX_DEVICES]
It makes the code more obviously correct.

> +};
> +
> +static const unsigned long bypass = 0xFFFFFFFF;
> +
> +static void pulseTMS0(const struct jtag_platdata *pdata)

Better name it to pulse_tms0. Lower case function names are preferred.

> +{
> +	gpio_set_value(pdata->pin_tms, 0);
> +	gpio_set_value(pdata->pin_tclk, 0);
> +	gpio_set_value(pdata->pin_tclk, 1);
> +}
> +
> +static void pulseTMS1(const struct jtag_platdata *pdata)
> +{
> +	gpio_set_value(pdata->pin_tms, 1);
> +	gpio_set_value(pdata->pin_tclk, 0);
> +	gpio_set_value(pdata->pin_tclk, 1);
> +}
> +
> +static void jtag_reset(const struct jtag_platdata *pdata)
> +{
> +	gpio_set_value(pdata->pin_tms, 1);
> +	gpio_set_value(pdata->pin_tclk, 0);
> +	gpio_set_value(pdata->pin_tclk, 1);
> +	gpio_set_value(pdata->pin_tclk, 0);
> +	gpio_set_value(pdata->pin_tclk, 1);
> +	gpio_set_value(pdata->pin_tclk, 0);
> +	gpio_set_value(pdata->pin_tclk, 1);
> +	gpio_set_value(pdata->pin_tclk, 0);
> +	gpio_set_value(pdata->pin_tclk, 1);
> +	gpio_set_value(pdata->pin_tclk, 0);
> +	gpio_set_value(pdata->pin_tclk, 1);
> +}
> +
> +static void jtag_output(const struct jtag_platdata *pdata,
> +	const unsigned long *data, unsigned int bitlen, int notlast)
> +{
> +	unsigned int a;
> +	unsigned long mask;
> +	gpio_set_value(pdata->pin_tms, 0);
> +	while (bitlen > 0) {
> +		for (a = *data++, mask = 0x00000001; mask != 0 && bitlen > 0;
> +		      mask <<= 1, bitlen--) {
> +			gpio_set_value(pdata->pin_tdo, (a & mask) ? 1 : 0);
> +			if ((bitlen == 1) && !notlast)
> +				gpio_set_value(pdata->pin_tms, 1);
> +			gpio_set_value(pdata->pin_tclk, 0);
> +			gpio_set_value(pdata->pin_tclk, 1);
> +		}
> +	}
> +}
> +
> +static int jtag_ioctl(struct cdev *inode, int cmd, void *arg)
> +{
> +	int ret = 0;
> +	struct jtag_info *info = (struct jtag_info *)inode->priv;
> +	int devices = info->devices;
> +	struct jtag_cmd *jcmd = (struct jtag_cmd *)arg;
> +	struct jtag_platdata *pdata = info->pdata;
> +
> +	if (_IOC_TYPE(cmd) != JTAG_IOC_MAGIC) return -ENOTTY;
> +	if (_IOC_NR(cmd) > JTAG_IOC_MAXNR) return -ENOTTY;
> +
> +	switch (cmd) {
> +
> +	case JTAG_GET_DEVICES:
> +		/* Returns how many devices found in the chain */
> +		ret = info->devices;
> +		break;
> +
> +	case JTAG_GET_ID:
> +		/* Returns ID register of selected device */
> +		if ((((struct jtag_rd_id *)arg)->device < 0) ||
> +			(((struct jtag_rd_id *)arg)->device >= devices)) {
> +			ret = -EINVAL;
> +			break;
> +		}
> +		jtag_reset(pdata);
> +		pulseTMS0(pdata);
> +		pulseTMS1(pdata);
> +		pulseTMS0(pdata);
> +		pulseTMS0(pdata);
> +		while (devices-- > 0) {
> +			unsigned long id = 0;
> +			pulseTMS0(pdata);
> +			if (gpio_get_value(pdata->pin_tdi)) {
> +				unsigned long mask;
> +				for (id = 1, mask = 0x00000002; (mask != 0);
> +				      mask <<= 1) {
> +					pulseTMS0(pdata);
> +					if (gpio_get_value(pdata->pin_tdi))
> +						id |= mask;
> +				}
> +			}
> +			if (devices == ((struct jtag_rd_id *)arg)->device) {
> +				((struct jtag_rd_id *)arg)->id = id;
> +				ret = 0;
> +				break;
> +			}
> +		}
> +		jtag_reset(pdata);
> +		break;
> +
> +	case JTAG_SET_IR_LENGTH:
> +		/* Sets up IR length of one device */
> +		if ((jcmd->device >= 0) && (jcmd->device < devices))
> +			info->ir_len[jcmd->device] = jcmd->bitlen;
> +		else
> +			ret = -EINVAL;
> +		break;
> +
> +	case JTAG_RESET:
> +		/* Resets all JTAG states */
> +		jtag_reset(pdata);
> +		break;
> +
> +	case JTAG_IR_WR:
> +		/* Writes Instruction Register
> +		If device == -1 writes same Instruction Register in all devices
> +		If device >= 0 writes Instruction Register in selected device
> +		 and loads BYPASS instruction in all others */
> +		if ((jcmd->device < -1) || (jcmd->device >= devices)) {
> +			ret = -EINVAL;
> +			break;
> +		}
> +		pulseTMS0(pdata);
> +		pulseTMS1(pdata);
> +		pulseTMS1(pdata);
> +		pulseTMS0(pdata);
> +		pulseTMS0(pdata);
> +		while (devices-- > 0) {
> +			if ((jcmd->device == -1) || (jcmd->device == devices))
> +				/* Loads desired instruction */
> +				jtag_output(pdata, jcmd->data,
> +					info->ir_len[devices], devices);
> +			else
> +				/* Loads BYPASS instruction */
> +				jtag_output(pdata, &bypass,
> +					info->ir_len[devices], devices);
> +		}
> +		pulseTMS1(pdata);
> +		pulseTMS0(pdata);
> +		break;
> +
> +	case JTAG_DR_WR:
> +		/* Writes Data Register of all devices
> +		If device == -1 writes same Data Register in all devices
> +		If device >= 0 writes Data Register in selected device
> +		 and loads BYPASS instruction in all others */

	/*
	 * multiline comments
	 * like this please
	 */

> +		if ((jcmd->device < -1) || (jcmd->device >= devices)) {
> +			ret = -EINVAL;
> +			break;
> +		}
> +		pulseTMS0(pdata);
> +		pulseTMS1(pdata);
> +		pulseTMS0(pdata);
> +		pulseTMS0(pdata);
> +		while (devices-- > 0) {
> +			if ((jcmd->device == -1) || (devices == jcmd->device))
> +				/* Loads desired data */
> +				jtag_output(pdata, jcmd->data, jcmd->bitlen,
> +					devices);
> +			else
> +				/* Loads 1 dummy bit in BYPASS data register */
> +				jtag_output(pdata, &bypass, 1, devices);
> +		}
> +		pulseTMS1(pdata);
> +		pulseTMS0(pdata);
> +		break;
> +
> +	case JTAG_DR_RD:
> +		/* Reads data register of selected device */
> +		if ((jcmd->device < 0) || (jcmd->device >= devices))
> +			ret = -EINVAL;
> +		else {
> +			unsigned long mask;
> +			int bitlen = jcmd->bitlen;
> +			unsigned long *data = jcmd->data;
> +			pulseTMS0(pdata);
> +			pulseTMS1(pdata);
> +			pulseTMS0(pdata);
> +			pulseTMS0(pdata);
> +			devices -= (jcmd->device + 1);
> +			while (devices-- > 0)
> +				pulseTMS0(pdata);
> +			while (bitlen > 0) {
> +				for (*data = 0, mask = 0x00000001;
> +				      (mask != 0) && (bitlen > 0);
> +				      mask <<= 1, bitlen--) {
> +					if (bitlen == 1)
> +						pulseTMS1(pdata);
> +					else
> +						pulseTMS0(pdata);
> +					if (gpio_get_value(pdata->pin_tdi))
> +						*data |= mask;
> +				}
> +				data++;
> +			}
> +			pulseTMS1(pdata);
> +			pulseTMS0(pdata);
> +		}
> +		break;
> +
> +	case JTAG_CLK:
> +		/* Generates arg clock pulses */
> +		gpio_set_value(pdata->pin_tms, 0);
> +		while ((*(unsigned int *) arg)--) {
> +			gpio_set_value(pdata->pin_tclk, 0);
> +			gpio_set_value(pdata->pin_tclk, 1);
> +		}
> +		break;
> +
> +	default:
> +		ret = -EFAULT;
> +	}
> +
> +	return ret;
> +}
> +
> +struct file_operations jtag_operations = {
> +	.ioctl = jtag_ioctl,
> +};
> +
> +static int jtag_probe(struct device_d *pdev)
> +{
> +	int i, ret;
> +	struct jtag_info *info;
> +	struct jtag_platdata *pdata = pdev->platform_data;
> +
> +	/* Setup gpio pins */
> +	gpio_direction_output(pdata->pin_tms, 0);
> +	gpio_direction_output(pdata->pin_tclk, 1);
> +	gpio_direction_output(pdata->pin_tdo, 0);
> +	gpio_direction_input(pdata->pin_tdi);
> +	if (pdata->use_pin_trst) {
> +		/* Keep fixed at 1 because some devices in the chain could
> +			not use it, to reset chain use jtag_reset() */
> +		gpio_direction_output(pdata->pin_trst, 1);
> +	}
> +
> +	/* Find how many devices in chain */
> +	jtag_reset(pdata);
> +	pulseTMS0(pdata);
> +	pulseTMS1(pdata);
> +	pulseTMS1(pdata);
> +	pulseTMS0(pdata);
> +	pulseTMS0(pdata);
> +	gpio_set_value(pdata->pin_tdo, 1);
> +	/* Fills all IR with bypass instruction */
> +	for (i = 0; i < 32 * MAX_DEVICES; i++)
> +		pulseTMS0(pdata);
> +	pulseTMS1(pdata);
> +	pulseTMS1(pdata);
> +	pulseTMS1(pdata);
> +	pulseTMS0(pdata);
> +	pulseTMS0(pdata);
> +	gpio_set_value(pdata->pin_tdo, 0);
> +	/* Fills all 1-bit bypass register with 0 */
> +	for (i = 0; i < MAX_DEVICES + 2; i++)
> +		pulseTMS0(pdata);
> +	gpio_set_value(pdata->pin_tdo, 1);
> +	/* Counts chain's bit length */
> +	for (i = 0; i < MAX_DEVICES + 1; i++) {
> +		pulseTMS0(pdata);
> +		if (gpio_get_value(pdata->pin_tdi))
> +			break;
> +	}
> +	dev_notice(pdev, "%d devices found in chain\n", i);
> +
> +	/* Allocate structure with chain specific infos */
> +	info = xzalloc(sizeof(struct jtag_info) + sizeof(info->ir_len[0]) * i);
> +	if (!info) {
> +		dev_err(pdev, "out of kernel memory\n");
> +		return -ENOMEM;
> +	}

the x* memory allocation functions never return an error, barebox panics
instead. They are suitable for small memory allocations like above. You
don't have to check the result.

> +	info->devices = i;
> +	INIT_LIST_HEAD(&info->device_entry);
> +	list_add(&info->device_entry, &jtag_device_list);
> +	info->pdata = pdata;
> +	pdev->priv = info;
> +
> +	info->cdev.name = JTAG_NAME;
> +	info->cdev.dev = pdev;
> +	info->cdev.ops = &jtag_operations;
> +	info->cdev.priv = info;
> +	ret = devfs_create(&info->cdev);
> +
> +	if (ret)
> +		goto fail_devfs_create;
> +
> +	return 0;
> +
> +fail_devfs_create:
> +	pdev->priv = NULL;
> +	free(info);
> +	return ret;
> +}
> +
> +static void jtag_info(struct device_d *pdev)
> +{
> +	int dn, ret;
> +	struct jtag_rd_id jid;
> +	struct jtag_info *info = pdev->priv;
> +
> +	printf(" JTAG:\n");
> +	printf("  Devices found: %d\n", info->devices);
> +	for(dn = 0; dn < info->devices; dn++) {
> +		jid.device = dn;
> +		ret = jtag_ioctl(&info->cdev, JTAG_GET_ID, &jid);
> +		printf("  Device number: %d\n", dn);
> +		if ( ret == -1 )
> +			printf("   JTAG_GET_ID failed: %s\n", strerror(errno));
> +		else
> +			printf("   ID: 0x%lX\n", jid.id);
> +	}
> +}
> +
> +static void jtag_remove(struct device_d *pdev)
> +{
> +	struct jtag_info *info = (struct jtag_info *) pdev->priv;
> +
> +	list_del(&info->device_entry);
> +	devfs_remove(&info->cdev);
> +	pdev->priv = NULL;
> +	free(info);
> +	dev_notice(pdev, "Device removed\n");
> +}
> +
> +static struct driver_d jtag_driver = {
> +	.name = JTAG_NAME,
> +	.probe = jtag_probe,
> +	.remove = jtag_remove,
> +	.info = jtag_info,
> +};
> +
> +static int jtag_module_init(void)
> +{
> +	return register_driver(&jtag_driver);
> +}
> +
> +device_initcall(jtag_module_init);
> +
> +MODULE_AUTHOR("Davide Rizzo <elpa.rizzo@gmail.com>");
> +MODULE_AUTHOR("Wjatscheslaw Stoljarski
> <wjatscheslaw.stoljarski@kiwigrid.com>");
> +MODULE_DESCRIPTION("JTAG bitbang driver");
> +MODULE_LICENSE("GPL");
> diff --git a/include/jtag.h b/include/jtag.h
> new file mode 100644
> index 0000000..d8f0606
> --- /dev/null
> +++ b/include/jtag.h
> @@ -0,0 +1,113 @@
> +/*
> + * include/linux/jtag.h
> + *
> + * Written Aug 2009 by Davide Rizzo <elpa.rizzo@gmail.com>
> + * Ported to barebox Jul 2012 by
> + *       Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + */
> +
> +/*
> + * This driver manages one or more jtag chains controlled by host pins.
> + * Jtag chains must be defined during setup using jtag_platdata structs.
> + * All operations must be done from user programs using ioctls to /dev/jtag
> + * Typical operation sequence is:
> + * - open() the device (normally /dev/jtag)
> + * - ioctl JTAG_GET_DEVICES reads how many devices in the chain
> + * (repeat for each chip in the chain)
> + * - ioctl JTAG_GET_ID identifies the chip
> + * - ioctl JTAG_SET_IR_LENGTH sets the instruction register length
> + * Before accessing the data registers, instruction registers' lenghtes
> + *  MUST be programmed for all chips.
> + * After this initialization, you can execute JTAG_IR_WR,
> JTAG_DR_RD, JTAG_DR_WR
> + *  commands in any sequence.
> + */
> +
> +#ifndef __JTAG_H__
> +#define __JTAG_H__
> +
> +#ifdef __KERNEL__

You don't need this ifdef

> +/* Controller's pin_tdi must be connected to last device's pin_tdo */
> +/* Controller's pin_tdo must be connected to first device's pin_tdi */
> +struct jtag_platdata {
> +	unsigned int pin_tclk;
> +	unsigned int pin_tms;
> +	unsigned int pin_tdi;
> +	unsigned int pin_tdo;
> +	unsigned int pin_trst;

Better gpio_t*? It makes it more obvious that these variables refer to
gpios.

> +	int use_pin_trst;
> +};
> +#endif /* __KERNEL__ */
> +
> +#define JTAG_NAME "jtag"
> +
> +/* structures used for passing arguments to ioctl */
> +
> +struct jtag_rd_id {
> +	int device; /* Device in the chain */
> +	unsigned long id;
> +};
> +
> +struct jtag_cmd {
> +	int device; /* Device in the chain (-1 = all devices) */
> +	unsigned int bitlen; /* Bit length of the register to be transfered */
> +	unsigned long *data; /* Data to be transfered */
> +};
> +
> +/* Use 'j' as magic number */
> +#define JTAG_IOC_MAGIC		'j'
> +
> +/* ioctl commands */
> +
> +/* Resets jtag chain status, arg is ignored */
> +#define JTAG_RESET		_IO(JTAG_IOC_MAGIC, 0)
> +
> +/* Returns the number of devices in the jtag chain, arg is ignored. */
> +#define JTAG_GET_DEVICES	_IO(JTAG_IOC_MAGIC, 1)
> +
> +/* arg must point to a jtag_rd_id structure.
> +   Fills up the id field with ID of selected device */
> +#define JTAG_GET_ID		_IOR(JTAG_IOC_MAGIC, 2, struct jtag_rd_id)
> +
> +/* arg must point to a struct jtag_cmd.
> +   Programs the Instruction Register length of specified device at
> bitlen value.
> +   *data is ignored. */
> +#define JTAG_SET_IR_LENGTH	_IOW(JTAG_IOC_MAGIC, 3, struct jtag_rd_id)
> +
> +/* arg must point to a struct jtag_cmd.
> +   Writes *data in the Instruction Register of selected device, and BYPASS
> +    instruction into Instruction Registers of all other devices in
> the chain.
> +   If device == -1, the Instruction Registers of all devices are programmed
> +    to the same value.
> +   bitlen is always ignored, before using this command you have to
> program all
> +    Instruction Register's lengthes with JTAG_SET_IR_LENGTH command. */
> +#define JTAG_IR_WR		_IOW(JTAG_IOC_MAGIC, 4, struct jtag_cmd)
> +
> +/* arg must point to a struct jtag_cmd.
> +   Reads data register of selected device, with length bitlen */
> +#define JTAG_DR_RD		_IOR(JTAG_IOC_MAGIC, 5, struct jtag_cmd)
> +
> +/* arg must point to a struct jtag_cmd.
> +   Writes data register of selected device, with length bitlen.
> +   If device == -1, writes same data on all devices. */
> +#define JTAG_DR_WR		_IOW(JTAG_IOC_MAGIC, 6, struct jtag_cmd)
> +
> +/* Generates arg pulses on TCLK pin */
> +#define JTAG_CLK		_IOW(JTAG_IOC_MAGIC, 7, unsigned int)
> +
> +#define JTAG_IOC_MAXNR		9
> +
> +#endif /* __JTAG_H__ */
> -- 
> 1.7.9.5
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
