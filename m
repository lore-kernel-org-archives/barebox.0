Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVbLN-0002CV-HV
 for barebox@lists.infradead.org; Thu, 03 Apr 2014 06:41:47 +0000
Date: Thu, 3 Apr 2014 08:41:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140403064122.GC17250@pengutronix.de>
References: <1396441829-17527-1-git-send-email-u.bely@sam-solutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396441829-17527-1-git-send-email-u.bely@sam-solutions.net>
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
Subject: Re: [PATCH] imx6: ocotp: Add On-Chip OTP registers write support
To: Uladzimir Bely <u.bely@sam-solutions.net>
Cc: barebox@lists.infradead.org

On Wed, Apr 02, 2014 at 03:30:29PM +0300, Uladzimir Bely wrote:
> OCOTP imx6 driver updated and ocotptool command added.
> MAC address can be written to PROM. "0" (unprogrammed) bits
> of MAC can be replaced with "1" (but not vice versa) only once.
> 
> Tested on phytec-phyflex-imx6 board.
> Also works on phytec-phycard-imx6 (not yet in barebox).
> 
> Signed-off-by: Uladzimir Bely <u.bely@sam-solutions.net>
> ---
>  arch/arm/mach-imx/Kconfig |   8 ++
>  arch/arm/mach-imx/ocotp.c | 288 ++++++++++++++++++++++++++++++++++++++++++++++
>  commands/Kconfig          |  11 ++
>  commands/Makefile         |   1 +
>  commands/ocotptool.c      | 150 ++++++++++++++++++++++++
>  5 files changed, 458 insertions(+)
>  create mode 100644 commands/ocotptool.c
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index b7e7533..3e71815 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -609,6 +609,14 @@ config IMX_OCOTP
>  	  only supported functionality is reading the MAC address and assigning
>  	  it to an ethernet device.
>  
> +config IMX_OCOTP_WRITE
> +	bool
> +	prompt "Enable write support of i.MX6 CPUs OTP fuses"
> +	depends on IMX_OCOTP
> +	help
> +	  This adds support for writing to On-Chip OTP registers.
> +
> +
>  endmenu
>  
>  endif
> diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
> index e36b484..0f1735a 100644
> --- a/arch/arm/mach-imx/ocotp.c
> +++ b/arch/arm/mach-imx/ocotp.c
> @@ -26,12 +26,282 @@
>  #include <io.h>
>  #include <of.h>
>  
> +#include <linux/clk.h>
> +#include <mach/imx6-regs.h>
> +
>  /*
>   * a single MAC address reference has the form
>   * <&phandle regoffset>
>   */
>  #define MAC_ADDRESS_PROPLEN	(2 * sizeof(__be32))
>  
> +/* OCOTP Registers */
> +#define OCOTP_CTRL			(MX6_OCOTP_BASE_ADDR + 0x0000)
> +#define OCOTP_CTRL_SET			(MX6_OCOTP_BASE_ADDR + 0x0004)
> +#define OCOTP_CTRL_CLR			(MX6_OCOTP_BASE_ADDR + 0x0008)
> +#define OCOTP_CTRL_TOG			(MX6_OCOTP_BASE_ADDR + 0x000C)
> +#define OCOTP_TIMING			(MX6_OCOTP_BASE_ADDR + 0x0010)
> +#define OCOTP_DATA			(MX6_OCOTP_BASE_ADDR + 0x0020)
> +#define OCOTP_READ_CTRL			(MX6_OCOTP_BASE_ADDR + 0x0030)
> +#define OCOTP_READ_FUSE_DATA		(MX6_OCOTP_BASE_ADDR + 0x0040)

Please do not hardcode register base addresses. Pass around a driver
private struct like other drivers do.

> +struct ocotp_priv {
> +	struct cdev cdev;
> +	void __iomem *base;
> +	int regsize;
> +};

You even have a private struct, but don't use it.

> +
> +static int imx6_ocotp_wait_busy(u32 flags)
> +{
> +	int count;
> +	u32 cf;
> +
> +	for (count = 10000; count >= 0; count--) {
> +		cf = (1 << OCOTP_CTRL_BUSY) | (1 << OCOTP_CTRL_ERROR) | flags;
> +		cf &= readl(OCOTP_CTRL);
> +		if (!cf)
> +			break;
> +	}
> +
> +	if (count < 0) {
> +		printf("ERROR: otp_wait_busy timeout. 0x%X\n", cf);
> +		/* Clear ERROR bit, BUSY bit will be cleared by controller */
> +		writel(1 << OCOTP_CTRL_ERROR, OCOTP_CTRL_CLR);
> +		return -1;
> +	}
> +
> +	return 0;
> +}
> +
> +static int imx6_ocotp_set_timing(void)
> +{
> +	u32 clk_rate;
> +	u32 relax, strobe_read, strobe_prog;
> +	u32 timing;
> +
> +	/* Get clock */
> +	clk_rate = clk_get_rate(clk_lookup("ipg"));

Devices have clocks associated with them. The driver API for getting
this clock is clk_get(). To make this call work you have to add a

	clkdev_add_physbase(clks[ipg], MX6_OCOTP_BASE_ADDR, NULL);

to arch/arm/mach-imx/clk-imx6.c.


> +	if (clk_rate == -1) {
> +		printf("ERROR: imx6_get_gptclk failed\n");
> +		return -1;
> +	}
> +
> +	relax = clk_rate / (1000000000 / DEF_RELAX) - 1;
> +	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
> +	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
> +
> +	timing = BF(relax, OCOTP_TIMING_RELAX);
> +	timing |= BF(strobe_read, OCOTP_TIMING_STROBE_READ);
> +	timing |= BF(strobe_prog, OCOTP_TIMING_STROBE_PROG);
> +
> +	writel(timing, OCOTP_TIMING);
> +
> +	return 0;
> +}
> +
> +static int imx6_ocotp_read_prep(void)
> +{
> +	return  (!imx6_ocotp_set_timing()) ? imx6_ocotp_wait_busy(0) : -1;
> +}
> +
> +static int fuse_read_addr(u32 addr, u32 *pdata)
> +{
> +	u32 ctrl_reg;
> +
> +	ctrl_reg = readl(OCOTP_CTRL);
> +	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
> +	ctrl_reg &= ~OCOTP_CTRL_WR_UNLOCK_MASK;
> +	ctrl_reg |= BF(addr, OCOTP_CTRL_ADDR);
> +	writel(ctrl_reg, OCOTP_CTRL);
> +
> +	writel(OCOTP_READ_CTRL_READ_FUSE, OCOTP_READ_CTRL);
> +	if (imx6_ocotp_wait_busy(0))
> +		return -1;

Please return a proper error code from include/asm-generic/errno.h

> +
> +	*pdata = readl(OCOTP_READ_FUSE_DATA);
> +
> +	return 0;
> +}
> +
> +/* Read one u32 to indexed fuse */
> +int imx6_ocotp_read_one_u32(u32 index, u32 *pdata)
> +{
> +	u32 ctrl_reg;
> +
> +	if (index > IMX6_OTP_ADDR_MAX) {
> +		printf("ERROR: invalid address.\n");
> +		return -1;
> +	}
> +	if (imx6_ocotp_read_prep()) {
> +		printf("ERROR: read preparation failed\n");
> +		return -1;
> +	}
> +	if (fuse_read_addr(index, pdata)) {
> +		printf("ERROR: read failed\n");
> +		return -1;
> +	}
> +	if (*pdata == IMX6_OTP_DATA_ERROR_VAL) {
> +		ctrl_reg = readl(OCOTP_CTRL);
> +		if (ctrl_reg & (1 << OCOTP_CTRL_ERROR)) {
> +			printf("ERROR: read fuse failed\n");
> +			return -1;
> +		}
> +	}

This looks strange. You check if you read a certain value and afterwards
you check for the error status. I would expect that you read the error
status only and return an error if it signals an error.

> +	return 0;
> +}
> +
> +static ssize_t imx6_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
> +		loff_t offset, ulong flags)
> +{
> +	ulong i;
> +	struct device_d *dev = cdev->dev;
> +	void __iomem *base;
> +	u32		index;
> +
> +	base = dev_request_mem_region(dev, 0);

You can call this only once. After this the region is busy and you'll
get NULL. Looking at this function 'base' is not used. Drop this. As
said, you should pass around a driver struct which contains a pointer to
base, in this function you'll get it with

	struct ocotp_priv *priv = container_of(cdev, struct ocotp_priv, cdev);

> +
> +	index = offset >> 2;
> +	count >>= 2;
> +	if (count > (FUSE_REGS_COUNT - index))
> +		count = FUSE_REGS_COUNT - index - 1;
> +
> +	for (i = index; i < (index + count); i++) {
> +		imx6_ocotp_read_one_u32(i, buf);
> +		buf += 4;
> +	}
> +	count <<= 2;
> +
> +	return count;
> +}
> +
> +#ifdef CONFIG_IMX_OCOTP_WRITE
> +static int imx6_ocotp_blow_prep(void)
> +{
> +	return  (!imx6_ocotp_set_timing()) ? imx6_ocotp_wait_busy(0) : -1;
> +}
> +
> +static int imx6_ocotp_blow_post(void)
> +{
> +	printf("Reloading shadow registers...\n");
> +	/* Reload all the shadow registers */
> +	writel(1 << OCOTP_CTRL_RELOAD_SHADOWS, OCOTP_CTRL_SET);
> +	udelay(1);
> +
> +	return imx6_ocotp_wait_busy(1 << OCOTP_CTRL_RELOAD_SHADOWS);
> +}
> +
> +static int fuse_blow_addr(u32 addr, u32 value)
> +{
> +	u32 ctrl_reg;
> +
> +	/* Control register */
> +	ctrl_reg = readl(OCOTP_CTRL);
> +	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
> +	ctrl_reg |= BF(addr, OCOTP_CTRL_ADDR);
> +	ctrl_reg |= BF(OCOTP_CTRL_WR_UNLOCK_KEY, OCOTP_CTRL_WR_UNLOCK);
> +	writel(ctrl_reg, OCOTP_CTRL);
> +
> +	writel(value, OCOTP_DATA);
> +	if (imx6_ocotp_wait_busy(0))
> +		return -1;
> +
> +	/* Write postamble */
> +	udelay(2000);
> +	return 0;
> +}
> +
> +/*
> + * Blow one u32 to indexed fuse
> + */
> +int imx6_ocotp_blow_one_u32(u32 index, u32 data, u32 *pfused_value)
> +{
> +	if (imx6_ocotp_blow_prep()) {
> +		printf("ERROR: blow preparation failed\n");
> +		return -1;
> +	}
> +	if (fuse_blow_addr(index, data)) {
> +		printf("ERROR: blow fuse failed\n");
> +		return -1;
> +	}
> +	if (imx6_ocotp_blow_post()) {
> +		printf("ERROR: blow post operation failed\n");
> +		return -1;
> +	}
> +	if (readl(OCOTP_CTRL) & (1 << OCOTP_CTRL_ERROR)) {
> +		printf("ERROR: OTP control\n");
> +		return -1;
> +	}
> +	if (imx6_ocotp_read_one_u32(index, pfused_value)) {
> +		printf("ERROR: OTP read\n");
> +		return -1;
> +	}
> +	return 0;
> +}
> +
> +static ssize_t imx6_ocotp_cdev_write(struct cdev *cdev,
> +		const void *buf, size_t count,
> +		loff_t offset, ulong flags)
> +{
> +	ulong size, index, i;
> +	u32 data, pfuse;
> +
> +	index = offset >> 2;
> +	size = count >> 2;
> +
> +	if (size > (FUSE_REGS_COUNT - index))
> +		size = FUSE_REGS_COUNT - index - 1;
> +
> +	if (IS_ENABLED(CONFIG_IMX_OCOTP_WRITE)) {
> +		for (i = 0; i < size; i++) {
> +			int ret;
> +
> +			memcpy(&data, buf + i * 4, 4);
> +			ret = imx6_ocotp_blow_one_u32(index + i, data, &pfuse);
> +			if (ret < 0)
> +				return ret;
> +		}
> +	}
> +
> +	return count;
> +}
> +#endif
> +
> +static const struct file_operations imx6_ocotp_ops = {
> +	.read	= imx6_ocotp_cdev_read,
> +#ifdef CONFIG_IMX_OCOTP_WRITE
> +	.write	= imx6_ocotp_cdev_write,
> +#endif

Drop all these ifdefs. Instead, start imx6_ocotp_cdev_write with:

	if (!IS_ENABLED(CONFIG_IMX_OCOTP_WRITE))
		return -ENOSYS;

The compiler will throw all unused code away then for you.

> +	.lseek	= dev_lseek_default,
> +};
> +
>  static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
>  {
>  	char mac[6];
> @@ -74,10 +344,28 @@ static int imx_ocotp_probe(struct device_d *dev)
>  {
>  	void __iomem *base;
>  
> +	int ret = 0;
> +	struct ocotp_priv *priv;
> +	struct cdev *cdev;
> +
>  	base = dev_request_mem_region(dev, 0);
>  	if (!base)
>  		return -EBUSY;
>  
> +	priv = xzalloc(sizeof(*priv));
> +
> +	priv->base	= base;
> +	cdev		= &priv->cdev;
> +	cdev->dev	= dev;
> +	cdev->ops	= &imx6_ocotp_ops;
> +	cdev->priv	= priv;
> +	cdev->size	= 32;
> +	cdev->name	= asprintf("imx-ocotp");
> +	if (cdev->name == NULL)
> +		return -ENOMEM;
> +
> +	ret = devfs_create(cdev);
> +
>  	imx_ocotp_init_dt(dev, base);
>  
>  	return 0;
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 352e8bf..736b4fc 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -739,6 +739,17 @@ config CMD_MIITOOL
>  	  detailed MII status information, such as MII capabilities,
>  	  current advertising mode, and link partner capabilities.
>  
> +config CMD_OCOTPTOOL
> +	bool
> +	default n

'default n' is already default. You can drop this line.

> +	depends on IMX_OCOTP
> +	prompt "ocotptool"
> +	help
> +	  The ocotptool command allows to read and write to i.MX6 On-Chip
> +	  OTP registers from barebox shell. Usage:
> +		"ocotptool read mac" to read MAC
> +		"ocotptool blow mac xx:xx:xx:xx:xx:xx" to write MAC
> +
>  config CMD_CLK
>  	tristate
>  	depends on COMMON_CLK
> diff --git a/commands/Makefile b/commands/Makefile
> index 91ec0e9..dfdc735 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -94,3 +94,4 @@ obj-$(CONFIG_CMD_DETECT)	+= detect.o
>  obj-$(CONFIG_CMD_BOOT)		+= boot.o
>  obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
>  obj-$(CONFIG_CMD_READF)		+= readf.o
> +obj-$(CONFIG_CMD_OCOTPTOOL)	+= ocotptool.o
> diff --git a/commands/ocotptool.c b/commands/ocotptool.c
> new file mode 100644
> index 0000000..7259d19
> --- /dev/null
> +++ b/commands/ocotptool.c
> @@ -0,0 +1,150 @@
> +/*
> + * ocotptool.c
> + *
> + * Copyright (c) 2014 Phytec Messtechnik GmbH
> + *
> + * Uladzimir Bely <u.bely@sam-solutions.com>,
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +#include <driver.h>
> +#include <getopt.h>
> +#include <fcntl.h>
> +
> +#define DEVICENAME	"imx-ocotp"
> +
> +#define MAC_LEN		6
> +#define BYTE_LEN	2
> +#define MAC_STRLEN	(MAC_LEN * BYTE_LEN + MAC_LEN - 1)
> +
> +static int parse_mac(char *mac_str, char *mac_bin)
> +{
> +	int i;
> +
> +	if (strlen(mac_str) != MAC_STRLEN)
> +		return 1;
> +
> +	for (i = 0; i < MAC_LEN; i++) {
> +		char *start, *end;
> +
> +		start = mac_str + i * (BYTE_LEN + 1);
> +		mac_bin[i] = simple_strtoul(start, &end, 16);
> +		if (end - start != BYTE_LEN
> +			|| (*end != ':' && *end)
> +			|| *start == '-')
> +			return 1;
> +	}
> +
> +	return 0;
> +}

We already have:

int string_to_ethaddr(const char *str, u8 enetaddr[6]);
void ethaddr_to_string(const u8 enetaddr[6], char *str);

No need to duplicate the code here.

> +
> +static int read_mac(void)
> +{
> +	struct cdev *cdev;
> +	char *name = asprintf(DEVICENAME);
> +	int ret = 0;
> +	char buf[128];
> +
> +	cdev = cdev_open(name, O_RDONLY);
> +	if (!cdev)
> +		return -ENODEV;
> +	ret = cdev_read(cdev, buf, 2*4, 0x22 * 4, 0);
> +	if (ret) {
> +		printf("MAC is %02x:%02x:%02x:%02x:%02x:%02x\n",
> +			buf[5], buf[4], buf[3], buf[2], buf[1], buf[0]);
> +	}

cdev_read either returns the number of bytes read or a negative error,
so if(ret) will be true even in error cases.

> +	cdev_close(cdev);
> +	free(name);
> +
> +	return ret;
> +}
> +
> +static int write_mac(char *str)
> +{
> +	struct cdev *cdev;
> +	char *name = asprintf(DEVICENAME);
> +	int ret = 0;
> +	char buf[128];
> +
> +	buf[0] = str[5]; buf[1] = str[4];
> +	buf[2] = str[3]; buf[3] = str[2];
> +	buf[4] = str[1]; buf[5] = str[0];
> +	buf[6] = 0; buf[7] = 0;
> +	cdev = cdev_open(name, O_RDONLY);

I know barebox doesn't check this properly, but you should use O_WRONLY
when you intend to write to a device.

> +	if (!cdev)
> +		return -ENODEV;
> +	printf("Writing MAC to OCOTP registers...\n");
> +	ret = cdev_write(cdev, buf, 2*4, 0x22 * 4, 0);
> +
> +	cdev_close(cdev);
> +	free(name);
> +
> +	return ret;
> +}
> +
> +static int do_ocotptool(int argc, char *argv[])
> +{
> +	int opt, ret = COMMAND_ERROR_USAGE;
> +#ifdef CONFIG_IMX_OCOTP_WRITE
> +	char	str[12];
> +#endif
> +
> +	while ((opt = getopt(argc, argv, "r:w:")) > 0) {
> +		switch (opt) {
> +		case 'r':
> +			if (!strcmp(optarg, "mac"))
> +				ret = read_mac();
> +			else
> +				return COMMAND_ERROR_USAGE;
> +			break;
> +		case 'w':
> +#ifdef CONFIG_IMX_OCOTP_WRITE
> +			if (!strcmp(optarg, "mac")) {
> +				if (optind >= argc) {
> +					printf("%s: specify MAC\n", argv[0]);
> +					return COMMAND_ERROR_USAGE;
> +				}
> +				if (parse_mac(argv[optind], str)) {
> +					printf("%s: incorrect MAC\n", argv[0]);
> +					return COMMAND_ERROR_USAGE;
> +				}
> +				ret = write_mac(str);

You shouldn't evaluate argv[optind] while still in the getopt() loop. I
bet this way you can confuse the option parser when other options
follow.

So this tool is only a convenience wrapper around the existing
/dev/ocotp device. We can read/write fuses without this tool. That's
fine, but what else do you envision we can do with this command?
The API to this command seems to be extendable, but we can only
read/write MAC addresses.
Should we extend this command the parsing gets cumbersome pretty fast
since we end up with
	if (!strcmp(optarg, "mac")) {
	} else if (!strcmp(optarg, "foo")) {
	} else if (!strcmp(optarg, "bar")) {
	} else {
	}

Do we need this command anyway? We could instead add a MAC Address
device parameter to the ocotp device.

> +			} else
> +				return COMMAND_ERROR_USAGE;
> +#else
> +			printf("OCOTP write support is disabled in barebox\n");
> +			return 0;

Please do not return success. This is an error.

> +#endif
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +	return ret;
> +}
> +
> +BAREBOX_CMD_HELP_START(ocotptool)
> +BAREBOX_CMD_HELP_USAGE("ocotptool [OPTIONS]\n")
> +BAREBOX_CMD_HELP_SHORT("Example:\n")
> +BAREBOX_CMD_HELP_SHORT("  Reading MAC: ocotptool -r mac\n")
> +BAREBOX_CMD_HELP_SHORT("  Writing MAC: ocotptool -w mac xx:xx:xx:xx:xx:xx\n")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(ocotptool)
> +	.cmd		= do_ocotptool,
> +	.usage		= "read/write i.MX6 fuses (MAC)",
> +	BAREBOX_CMD_COMPLETE(device_complete)

This doesn't make sense. The command does no take a device argument, so
you should use this command completion function.

Sascha

> +	BAREBOX_CMD_HELP(cmd_ocotptool_help)
> +BAREBOX_CMD_END
> -- 
> 1.8.3.2
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
