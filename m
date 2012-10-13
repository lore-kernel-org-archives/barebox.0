Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN0ai-0003Ug-Ql
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 12:13:19 +0000
Date: Sat, 13 Oct 2012 14:13:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013121314.GV27665@pengutronix.de>
References: <1349878154-7099-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349878154-7099-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC v2] add 'miitool' command to view media-independent
 interface status
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Wed, Oct 10, 2012 at 06:09:14PM +0400, Antony Pavlov wrote:
> This command is based on "mii-diag" and "mii-tool" programs.
> 
> TODO:
>  * add GbE support (see http://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60-24.2.diff.gz);
>  * add routines to manipulate media-independent interface state.

Looks good. Since it still has RFC state, should I apply it?

Sascha

> 
> EXAMPLES:
> 
> barebox:/ miitool /dev/phy0
> negotiated 100baseTx-FD, link ok
> 
> barebox:/ miitool -v /dev/phy0
> negotiated 100baseTx-FD, link ok
>   product info: Level One LXT971A rev 2
>   basic mode:   autonegotiation enabled
>   basic status: autonegotiation complete, link ok
>   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   link partner: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> 
> barebox:/ miitool -vv /dev/phy0
> negotiated 100baseTx-FD, link ok
>   registers for MII PHY:
>     3100 782d 0013 78e2 01e1 45e1 0007 2001
>     0000 ffff ffff ffff ffff ffff ffff ffff
>     0084 4780 0000 0000 0422 0000 0000 0000
>     0000 0000 0080 0000 ffff 0000 0000 3660
>   product info: Level One LXT971A rev 2
>   basic mode:   autonegotiation enabled
>   basic status: autonegotiation complete, link ok
>   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   link partner: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/Kconfig   |   11 +++
>  commands/Makefile  |    1 +
>  commands/miitool.c |  268 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 280 insertions(+)
>  create mode 100644 commands/miitool.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index e934f29..c8cdd54 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -620,6 +620,17 @@ config CMD_USB
>  	help
>  	  The usb command allows to rescan for USB devices.
>  
> +config CMD_MIITOOL
> +	bool
> +	prompt "miitool command"
> +	depends on NET
> +	help
> +	  The miitool command allows to view media-independent interface status.
> +	  The default short output reports the negotiated link speed and
> +	  link status for selected MII. The '-v' option displays more
> +	  detailed MII status information, such as MII capabilities,
> +	  current advertising mode, and link partner capabilities.
> +
>  config CMD_CLK
>  	tristate
>  	depends on COMMON_CLK
> diff --git a/commands/Makefile b/commands/Makefile
> index 610be55..c6416ca 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -76,3 +76,4 @@ obj-$(CONFIG_CMD_READLINK)	+= readlink.o
>  obj-$(CONFIG_CMD_LN)		+= ln.o
>  obj-$(CONFIG_CMD_CLK)		+= clk.o
>  obj-$(CONFIG_CMD_TFTP)		+= tftp.o
> +obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
> diff --git a/commands/miitool.c b/commands/miitool.c
> new file mode 100644
> index 0000000..3a9ac45
> --- /dev/null
> +++ b/commands/miitool.c
> @@ -0,0 +1,268 @@
> +/*
> + * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is based on Donald Becker's "mii-diag" and
> + * David A. Hinds' "mii-tool".
> + *
> + * mii-tool is written/copyright 2000 by David A. Hinds
> + *     <dhinds@pcmcia.sourceforge.org>
> + *
> + * mii-diag is written/copyright 1997-2000 by Donald Becker
> + *     <becker@scyld.com>
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
> +#include <init.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <getopt.h>
> +#include <linux/stat.h>
> +#include <xfuncs.h>
> +#include <linux/mii.h>
> +
> +static u16 mdio_read(int fd, int offset)
> +{
> +	int ret;
> +	u16 buf;
> +
> +	ret = lseek(fd, offset << 1, SEEK_SET);
> +	if (ret < 0)
> +		return 0;
> +
> +	ret = read(fd, &buf, sizeof(u16));
> +	if (ret < 0)
> +		return 0;
> +
> +	return buf;
> +}
> +
> +/* Table of known MII's */
> +static const struct {
> +	u_short	id1, id2;
> +	u_short	mask1, mask2;
> +	char	*name;
> +} mii_id[] = {
> +	{ 0x0013, 0x78e0, 0xffff, 0xfff0, "Level One LXT971A" },
> +};
> +#define NMII (sizeof(mii_id)/sizeof(mii_id[0]))
> +
> +const struct {
> +	char	*name;
> +	u_short	value;
> +} media[] = {
> +	/* The order through 100baseT4 matches bits in the BMSR */
> +	{ "10baseT-HD",	ADVERTISE_10HALF },
> +	{ "10baseT-FD",	ADVERTISE_10FULL },
> +	{ "100baseTx-HD",	ADVERTISE_100HALF },
> +	{ "100baseTx-FD",	ADVERTISE_100FULL },
> +	{ "100baseT4",	LPA_100BASE4 },
> +	{ "100baseTx",	ADVERTISE_100FULL | ADVERTISE_100HALF },
> +	{ "10baseT",	ADVERTISE_10FULL | ADVERTISE_10HALF },
> +};
> +#define NMEDIA (sizeof(media)/sizeof(media[0]))
> +
> +static char *media_list(int mask, int best)
> +{
> +	static char buf[100];
> +	int i;
> +
> +	*buf = '\0';
> +	mask >>= 5;
> +	for (i = 4; i >= 0; i--) {
> +		if (mask & (1 << i)) {
> +			strcat(buf, " ");
> +			strcat(buf, media[i].name);
> +			if (best)
> +				break;
> +		}
> +	}
> +
> +	if (mask & (1 << 5))
> +		strcat(buf, " flow-control");
> +
> +	return buf;
> +}
> +
> +static int show_basic_mii(int fd, int verbose)
> +{
> +	char buf[100];
> +	int i, mii_val[32];
> +	int bmcr, bmsr, advert, lkpar;
> +
> +	/* Some bits in the BMSR are latched, but we can't rely on being
> +	   the only reader, so only the current values are meaningful */
> +	mdio_read(fd, MII_BMSR);
> +	for (i = 0; i < ((verbose > 1) ? 32 : 8); i++)
> +		mii_val[i] = mdio_read(fd, i);
> +
> +	if (mii_val[MII_BMCR] == 0xffff) {
> +		fprintf(stderr, "  No MII transceiver present!.\n");
> +		return -1;
> +	}
> +
> +	/* Descriptive rename. */
> +	bmcr = mii_val[MII_BMCR];
> +	bmsr = mii_val[MII_BMSR];
> +	advert = mii_val[MII_ADVERTISE];
> +	lkpar = mii_val[MII_LPA];
> +
> +	*buf = '\0';
> +	if (bmcr & BMCR_ANENABLE) {
> +		if (bmsr & BMSR_ANEGCOMPLETE) {
> +			if (advert & lkpar) {
> +				sprintf(buf, "%s%s, ", (lkpar & LPA_LPACK) ?
> +					"negotiated" : "no autonegotiation,",
> +					media_list(advert & lkpar, 1));
> +			} else {
> +				sprintf(buf, "autonegotiation failed, ");
> +			}
> +		} else if (bmcr & BMCR_ANRESTART) {
> +			sprintf(buf, "autonegotiation restarted, ");
> +		}
> +	} else {
> +		sprintf(buf, "%s Mbit, %s duplex, ",
> +			(bmcr & BMCR_SPEED100) ? "100" : "10",
> +			(bmcr & BMCR_FULLDPLX) ? "full" : "half");
> +	}
> +
> +	strcat(buf, (bmsr & BMSR_LSTATUS) ? "link ok" : "no link");
> +
> +	printf("%s\n", buf);
> +
> +	if (verbose > 1) {
> +		printf("  registers for MII PHY: ");
> +		for (i = 0; i < 32; i++)
> +			printf("%s %4.4x",
> +				((i % 8) ? "" : "\n   "), mii_val[i]);
> +
> +		printf("\n");
> +	}
> +
> +	if (verbose) {
> +		printf("  product info: ");
> +		for (i = 0; i < NMII; i++)
> +			if ((mii_id[i].id1 == (mii_val[2] & mii_id[i].mask1)) &&
> +				(mii_id[i].id2 ==
> +					(mii_val[3] & mii_id[i].mask2)))
> +				break;
> +
> +		if (i < NMII)
> +			printf("%s rev %d\n", mii_id[i].name, mii_val[3]&0x0f);
> +		else
> +			printf("vendor %02x:%02x:%02x, model %d rev %d\n",
> +				mii_val[2] >> 10, (mii_val[2] >> 2) & 0xff,
> +				((mii_val[2] << 6)|(mii_val[3] >> 10)) & 0xff,
> +				(mii_val[3] >> 4) & 0x3f, mii_val[3] & 0x0f);
> +
> +		printf("  basic mode:   ");
> +		if (bmcr & BMCR_RESET)
> +			printf("software reset, ");
> +		if (bmcr & BMCR_LOOPBACK)
> +			printf("loopback, ");
> +		if (bmcr & BMCR_ISOLATE)
> +			printf("isolate, ");
> +		if (bmcr & BMCR_CTST)
> +			printf("collision test, ");
> +		if (bmcr & BMCR_ANENABLE) {
> +			printf("autonegotiation enabled\n");
> +		} else {
> +			printf("%s Mbit, %s duplex\n",
> +			   (bmcr & BMCR_SPEED100) ? "100" : "10",
> +			   (bmcr & BMCR_FULLDPLX) ? "full" : "half");
> +		}
> +		printf("  basic status: ");
> +		if (bmsr & BMSR_ANEGCOMPLETE)
> +			printf("autonegotiation complete, ");
> +		else if (bmcr & BMCR_ANRESTART)
> +			printf("autonegotiation restarted, ");
> +		if (bmsr & BMSR_RFAULT)
> +			printf("remote fault, ");
> +		printf((bmsr & BMSR_LSTATUS) ? "link ok" : "no link");
> +		printf("\n  capabilities:%s", media_list(bmsr >> 6, 0));
> +		printf("\n  advertising: %s", media_list(advert, 0));
> +
> +#define LPA_ABILITY_MASK	(LPA_10HALF | LPA_10FULL \
> +				| LPA_100HALF | LPA_100FULL \
> +				| LPA_100BASE4 | LPA_PAUSE_CAP)
> +
> +		if (lkpar & LPA_ABILITY_MASK)
> +			printf("\n  link partner:%s", media_list(lkpar, 0));
> +		printf("\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static int do_miitool(int argc, char *argv[])
> +{
> +	char *filename;
> +	int opt;
> +	int argc_min;
> +	int fd;
> +	int verbose;
> +
> +	verbose = 0;
> +	while ((opt = getopt(argc, argv, "v")) > 0) {
> +		switch (opt) {
> +		case 'v':
> +			verbose++;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	argc_min = optind + 1;
> +
> +	if (argc < argc_min)
> +		return COMMAND_ERROR_USAGE;
> +
> +	filename = argv[optind];
> +
> +	fd = open(filename, O_RDONLY);
> +	if (fd < 0) {
> +		printf("unable to read %s\n", filename);
> +		return COMMAND_ERROR;
> +	}
> +
> +	show_basic_mii(fd, verbose);
> +
> +	close(fd);
> +
> +	return COMMAND_SUCCESS;
> +}
> +
> +BAREBOX_CMD_HELP_START(miitool)
> +BAREBOX_CMD_HELP_USAGE("miitool [[[-v] -v] -v] <phy>\n")
> +BAREBOX_CMD_HELP_SHORT("view status for MII <phy>.\n")
> +BAREBOX_CMD_HELP_END
> +
> +/**
> + * @page miitool_command
> +This utility checks or sets the status of a network interface's
> +Media Independent Interface (MII) unit. Most fast ethernet
> +adapters use an MII to autonegotiate link speed and duplex setting.
> + */
> +BAREBOX_CMD_START(miitool)
> +	.cmd		= do_miitool,
> +	.usage		= "view media-independent interface status",
> +	BAREBOX_CMD_HELP(cmd_miitool_help)
> +BAREBOX_CMD_END
> -- 
> 1.7.10.4
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
