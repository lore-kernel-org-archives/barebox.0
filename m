Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yvf-0004Ip-By
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 09:28:48 +0000
Date: Wed, 11 Sep 2019 11:28:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <20190911112843.1785bf71@litschi.hi.pengutronix.de>
In-Reply-To: <829b5a88-c52f-5e5f-9987-148bdad90384@pengutronix.de>
References: <20190906132008.25309-1-m.tretter@pengutronix.de>
 <20190906132008.25309-8-m.tretter@pengutronix.de>
 <829b5a88-c52f-5e5f-9987-148bdad90384@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2 7/7] commands: add of_overlay command for device tree
 overlays
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

On Wed, 11 Sep 2019 09:55:34 +0200, Ahmad Fatoum wrote:
> On 9/6/19 3:20 PM, Michael Tretter wrote:
> > Add a new command "of_overlay" for applying device tree overlays,
> > because it does not really fit into any other device tree related
> > command and would create a mess with the command options.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > 
> > ---
> > Changelog:
> > 
> > v1->v2: none
> > ---
> >  commands/Kconfig      | 12 ++++++
> >  commands/Makefile     |  1 +
> >  commands/of_overlay.c | 89 +++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 102 insertions(+)
> >  create mode 100644 commands/of_overlay.c
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 039fd7d1ac..01d82031ad 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -2088,6 +2088,18 @@ config CMD_OF_FIXUP_STATUS
> >  	  Register a fixup to enable or disable a device tree node.
> >  	  Nodes are enabled on default. Disabled with -d.
> >  
> > +config CMD_OF_OVERLAY
> > +	tristate
> > +	select OFTREE  
> 
> This should depend or select OF_OVERLAY, otherwise:
> ./commands/of_overlay.c:60: undefined reference to `firmware_load_overlay'

Thanks. Actually, the firmware_load_overlay() function should be stubbed
and return an error, if FIRMWARE is disabled.

Michael

> 
> Cheers
> Ahmad
> 
> > +	prompt "of_overlay"
> > +	help
> > +	  of_overlay - register device tree overlay as fixup
> > +
> > +	  Usage: of_overlay [-S path] FILE
> > +
> > +	  Options:
> > +		  -S path	load firmware using this search path
> > +
> >  config CMD_OFTREE
> >  	tristate
> >  	select OFTREE
> > diff --git a/commands/Makefile b/commands/Makefile
> > index e69fb5046f..62ad9ce2b2 100644
> > --- a/commands/Makefile
> > +++ b/commands/Makefile
> > @@ -78,6 +78,7 @@ obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
> >  obj-$(CONFIG_CMD_OF_DUMP)	+= of_dump.o
> >  obj-$(CONFIG_CMD_OF_DISPLAY_TIMINGS)	+= of_display_timings.o
> >  obj-$(CONFIG_CMD_OF_FIXUP_STATUS)	+= of_fixup_status.o
> > +obj-$(CONFIG_CMD_OF_OVERLAY)	+= of_overlay.o
> >  obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
> >  obj-$(CONFIG_CMD_IOMEM)		+= iomemport.o
> >  obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
> > diff --git a/commands/of_overlay.c b/commands/of_overlay.c
> > new file mode 100644
> > index 0000000000..f929443bfe
> > --- /dev/null
> > +++ b/commands/of_overlay.c
> > @@ -0,0 +1,89 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2019 Michael Tretter <m.tretter@pengutronix.de>, Pengutronix
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + */
> > +
> > +#include <command.h>
> > +#include <common.h>
> > +#include <environment.h>
> > +#include <fdt.h>
> > +#include <firmware.h>
> > +#include <fs.h>
> > +#include <getopt.h>
> > +#include <libfile.h>
> > +#include <of.h>
> > +
> > +static int do_of_overlay(int argc, char *argv[])
> > +{
> > +	int opt, ret;
> > +	struct fdt_header *fdt;
> > +	struct device_node *overlay;
> > +	const char *search_path = NULL;
> > +
> > +	while ((opt = getopt(argc, argv, "S:")) > 0) {
> > +		switch (opt) {
> > +		case 'S':
> > +			search_path = optarg;
> > +			break;
> > +		default:
> > +			return COMMAND_ERROR_USAGE;
> > +		}
> > +	}
> > +
> > +	if (argc != optind + 1)
> > +		return COMMAND_ERROR_USAGE;
> > +
> > +	fdt = read_file(argv[optind], NULL);
> > +	if (!fdt) {
> > +		printf("cannot read %s\n", argv[optind]);
> > +		return 1;
> > +	}
> > +
> > +	overlay = of_unflatten_dtb(fdt);
> > +	free(fdt);
> > +	if (IS_ERR(overlay))
> > +		return PTR_ERR(overlay);
> > +
> > +	if (search_path) {
> > +		ret = firmware_load_overlay(overlay, search_path);
> > +		if (ret)
> > +			goto err;
> > +	}
> > +
> > +	ret = of_register_overlay(overlay);
> > +	if (ret) {
> > +		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
> > +		goto err;
> > +	}
> > +
> > +	return 0;
> > +
> > +err:
> > +	of_delete_node(overlay);
> > +	return ret;
> > +}
> > +
> > +BAREBOX_CMD_HELP_START(of_overlay)
> > +BAREBOX_CMD_HELP_TEXT("Options:")
> > +BAREBOX_CMD_HELP_OPT("-S path", "load firmware using this search path")
> > +BAREBOX_CMD_HELP_END
> > +
> > +BAREBOX_CMD_START(of_overlay)
> > +	.cmd = do_of_overlay,
> > +	BAREBOX_CMD_DESC("register device tree overlay as fixup")
> > +	BAREBOX_CMD_OPTS("[-S path] FILE")
> > +	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> > +	BAREBOX_CMD_HELP(cmd_of_overlay_help)
> > +BAREBOX_CMD_END
> >   
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
