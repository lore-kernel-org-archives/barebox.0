Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OjU49-0006La-LV
	for barebox@lists.infradead.org; Thu, 12 Aug 2010 09:27:15 +0000
Date: Thu, 12 Aug 2010 12:27:01 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100812092701.GE13166@jasper.tkos.co.il>
References: <20100810070909.GB10920@game.jcrosoft.org>
	<5a5cd75e51961a57b99c0727faa8b3eaa619b943.1281601710.git.baruch@tkos.co.il>
	<20100812090600.GY27749@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100812090600.GY27749@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] cmd: add fuse_blow/fuse_sense for the i.MX IIM
	fusebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Aug 12, 2010 at 11:06:00AM +0200, Sascha Hauer wrote:
> On Thu, Aug 12, 2010 at 11:35:04AM +0300, Baruch Siach wrote:
> > This has only been tested on i.MX25, but should work on other i.MX chips with
> > IIM.
> 
> I would prefer this command to be implemented as a device driver which
> registers a file under /dev. This way we could use the standard md/mw
> commands for this and look at a nice hexdump of all fuses and not only
> one at a time.

There are two methods for getting fuses values, direct memory access, and 
explicit sensing. Each method can independently be disabled with two dedicated 
protect fuses. How can md choose the right sensing method?

The IIM block also has an override functionality. Direct memory write to the 
fuse row overrides the value in this row. This feature can also be disabled 
with an override protect fuse. How does mw know whether you want to blow the 
fuses, or just override them?

Currently, you can sense fuses using the direct memory access method, and also 
override fuses with the regular md/mw command over /dev/mem.

baruch

> As blowing fuses is quite dangerous, an additional iim.writeenable
> variable would be good.
> 
> Sorry, but a command with three positional arguments is just so U-Boot.
> 
> Sascha
> 
> > 
> > Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> > ---
> > Changes from v1:
> > 	Improve commands documentation and add a comment describing the fuse 
> > 	commands.
> > 	Make fuse_blow and fuse_sense build independent from each other.
> > 
> >  commands/Kconfig  |   10 +++
> >  commands/Makefile |    2 +
> >  commands/fuse.c   |  175 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 187 insertions(+), 0 deletions(-)
> >  create mode 100644 commands/fuse.c
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 9d11a8b..1eae0d7 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -173,6 +173,16 @@ config CMD_MTEST_ALTERNATIVE
> >  	depends on CMD_MTEST
> >  	prompt "alternative mtest implementation"
> >  
> > +config CMD_FUSE_BLOW
> > +	tristate
> > +	depends on ARCH_IMX25 || ARCH_IMX35
> > +	prompt "fuse_blow"
> > +
> > +config CMD_FUSE_SENSE
> > +	tristate
> > +	depends on ARCH_IMX25 || ARCH_IMX35
> > +	prompt "fuse_sense"
> > +
> >  endmenu
> >  
> >  menu "flash                         "
> > diff --git a/commands/Makefile b/commands/Makefile
> > index 276af85..3c4e1d1 100644
> > --- a/commands/Makefile
> > +++ b/commands/Makefile
> > @@ -8,6 +8,8 @@ obj-$(CONFIG_CMD_ECHO)		+= echo.o
> >  obj-$(CONFIG_CMD_MEMORY)	+= mem.o
> >  obj-$(CONFIG_CMD_LOADS)		+= s_record.o
> >  obj-$(CONFIG_CMD_MTEST)		+= memtest.o
> > +obj-$(CONFIG_CMD_FUSE_BLOW)	+= fuse.o
> > +obj-$(CONFIG_CMD_FUSE_SENSE)	+= fuse.o
> >  obj-$(CONFIG_CMD_EDIT)		+= edit.o
> >  obj-$(CONFIG_CMD_EXEC)		+= exec.o
> >  obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
> > diff --git a/commands/fuse.c b/commands/fuse.c
> > new file mode 100644
> > index 0000000..c9059b3
> > --- /dev/null
> > +++ b/commands/fuse.c
> > @@ -0,0 +1,175 @@
> > +/*
> > + * fuse.c - i.MX IIM fusebox programing and sensing
> > + * 
> > + * Provide an interface for programming and sensing the information that are
> > + * stored in on-chip fuse elements. This functionality is part of the IC
> > + * Identification Module (IIM), which is present on some i.MX CPUs.
> > + *
> > + * Copyright (c) 2010 Baruch Siach <baruch@tkos.co.il>,
> > + * 	Orex Computed Radiography
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * http://www.opensource.org/licenses/gpl-license.html
> > + * http://www.gnu.org/copyleft/gpl.html
> > + */
> > +
> > +#include <common.h>
> > +#include <command.h>
> > +#include <asm/io.h>
> > +#include <mach/imx-regs.h>
> > +#include <mach/iim.h>
> > +
> > +#ifdef CONFIG_CMD_FUSE_BLOW
> > +
> > +static int do_fuse_blow(struct command *cmdtp, int argc, char *argv[])
> > +{
> > +	unsigned int bank, row, value;
> > +	int bit, ret = 0;
> > +	u8 err, stat;
> > +
> > +	if (argc != 4)
> > +		return COMMAND_ERROR_USAGE;
> > +
> > +	bank	= simple_strtoul(argv[1], NULL, 0);
> > +	row	= simple_strtoul(argv[2], NULL, 0);
> > +	value	= simple_strtoul(argv[3], NULL, 0);
> > +
> > +	if (bank > 7) {
> > +		printf("fuse_blow: invalid bank number\n");
> > +		return 1;
> > +	}
> > +
> > +	if (row > 0x3ff) {
> > +		printf("fuse_blow: invalid row offset\n");
> > +		return 1;
> > +	}
> > +
> > +	if (value > 0xff) {
> > +		printf("fuse_blow: invalid value\n");
> > +		return 1;
> > +	}
> > +
> > +	/* clear status and error registers */
> > +	writeb(3, IMX_IIM_BASE + IIM_STATM);
> > +	writeb(0xfe, IMX_IIM_BASE + IIM_ERR);
> > +
> > +	/* unprotect fuse programing */
> > +	writeb(0xaa, IMX_IIM_BASE + IIM_PREG_P);
> > +
> > +	/* upper half address register */
> > +	writeb((bank << 3) | (row >> 7), IMX_IIM_BASE + IIM_UA);
> > +
> > +	for (bit = 0; bit < 8; bit++) {
> > +		if (((value >> bit) & 1) == 0)
> > +			continue;
> > +
> > +		/* lower half address register */
> > +		writeb(((row << 1) | bit), IMX_IIM_BASE + IIM_LA);
> > +
> > +		/* start fuse programing */
> > +		writeb(0x71, IMX_IIM_BASE + IIM_FCTL);
> > +
> > +		/* wait for program done */
> > +		while ((readb(IMX_IIM_BASE + IIM_STAT) & 0x80) != 0)
> > +			;
> > +
> > +		/* clear program done status */
> > +		stat = readb(IMX_IIM_BASE + IIM_STAT);
> > +		writeb(stat, IMX_IIM_BASE + IIM_STAT);
> > +
> > +		err = readb(IMX_IIM_BASE + IIM_ERR);
> > +		if (err) {
> > +			printf("fuse_blow: bit %d program error (0x%02x)\n",
> > +					bit, err);
> > +			ret = 1;
> > +			goto out;
> > +		}
> > +	}
> > +
> > +out:
> > +	/* protect fuse programing */
> > +	writeb(0, IMX_IIM_BASE + IIM_PREG_P);
> > +	return ret;
> > +}
> > +
> > +static const __maybe_unused char cmd_fuse_blow_help[] =
> > +"Usage: fuse_blow <bank> <row> <value>\n"
> > +"Blow unblown fuses in <bank> <row> to match <value>\n"
> > +"Blown fuses are read as 1. Unblown fuses are read as 0.\n"
> > +"WARNING: blown fuses can not be unblown. Use this command carefully.\n";
> > +
> > +BAREBOX_CMD_START(fuse_blow)
> > +	.cmd	= do_fuse_blow,
> > +	.usage	= "program a row of fuses (8 bit)",
> > +	BAREBOX_CMD_HELP(cmd_fuse_blow_help)
> > +BAREBOX_CMD_END
> > +
> > +#endif /* CONFIG_CMD_FUSE_BLOW */
> > +
> > +#ifdef CONFIG_CMD_FUSE_SENSE
> > +
> > +static int do_fuse_sense(struct command *cmdtp, int argc, char *argv[])
> > +{
> > +	unsigned int bank, row;
> > +	u8 err, stat;
> > +
> > +	if (argc != 3)
> > +		return COMMAND_ERROR_USAGE;
> > +
> > +	bank	= simple_strtoul(argv[1], NULL, 0);
> > +	row	= simple_strtoul(argv[2], NULL, 0);
> > +
> > +	if (bank > 7) {
> > +		printf("fuse_sense: invalid bank number\n");
> > +		return 1;
> > +	}
> > +
> > +	if (row > 0x3ff) {
> > +		printf("fuse_sense: invalid row offset\n");
> > +		return 1;
> > +	}
> > +
> > +	/* clear status and error registers */
> > +	writeb(3, IMX_IIM_BASE + IIM_STATM);
> > +	writeb(0xfe, IMX_IIM_BASE + IIM_ERR);
> > +
> > +	/* upper and lower address halves */
> > +	writeb((bank << 3) | (row >> 7), IMX_IIM_BASE + IIM_UA);
> > +	writeb((row << 1) & 0xf8, IMX_IIM_BASE + IIM_LA);
> > +
> > +	/* start fuse sensing */
> > +	writeb(0x08, IMX_IIM_BASE + IIM_FCTL);
> > +
> > +	/* wait for sense done */
> > +	while ((readb(IMX_IIM_BASE + IIM_STAT) & 0x80) != 0)
> > +		;
> > +
> > +	stat =  readb(IMX_IIM_BASE + IIM_STAT);
> > +	writeb(stat, IMX_IIM_BASE + IIM_STAT);
> > +
> > +	err = readb(IMX_IIM_BASE + IIM_ERR);
> > +	if (err) {
> > +		printf("fuse_sense: sense error (0x%02x)\n", err);
> > +		return 1;
> > +	}
> > +
> > +	printf("bank %u row 0x%02x: 0x%02x\n", bank, row,
> > +			readb(IMX_IIM_BASE + IIM_SDAT));
> > +
> > +	return 0;
> > +}
> > +
> > +static const __maybe_unused char cmd_fuse_sense_help[] =
> > +"Usage: fuse_sense <bank> <row>\n"
> > +"Sense the fuses row at <bank> <row>\n";
> > +
> > +BAREBOX_CMD_START(fuse_sense)
> > +	.cmd	= do_fuse_sense,
> > +	.usage	= "sense a row of fuses (8 bit)",
> > +	BAREBOX_CMD_HELP(cmd_fuse_sense_help)
> > +BAREBOX_CMD_END
> > +
> > +#endif /* CONFIG_CMD_FUSE_SENSE */
> > -- 
> > 1.7.1
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
