Delivery-date: Thu, 04 Dec 2025 15:42:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRAXV-007tHl-0s
	for lore@lore.pengutronix.de;
	Thu, 04 Dec 2025 15:42:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRAXU-0007zJ-IM
	for lore@pengutronix.de; Thu, 04 Dec 2025 15:42:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nSNjn1uwGXwkQDSIIYHcXkAjd03VClyMpXUjx2TJ0bg=; b=T9A+tBEUeg09IawT+SIRZFLIUB
	LPF/cRFa5eIDE3vxy1RX811aAHaKXcYQXYbkG/gJwZ82aAix8oasWHOYkl4uTTGV5197LM6pJK21j
	iGB3rsIhgkMtE1ciw75+jAlpZ3+nmrs4Fq37MPurDqHfTdNVtb4FB0hcZ3Y8FKX4ogGUpX9cOJ6Wr
	6F2ziE884sZwsHQMFcGH4A8YK+xN73fjkgjoImGemK703dpr/dkqVoqzj/iuywcaPN5zyTvCLYs22
	YlTUmW6OdcvsIGzcUv61W9tVVKr+6CeJ6ZhpvLTdQ0GT5uxzBpuIisOGmWTo35lxTWBqFeLQUogW3
	15s6OLiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRAWq-000000088NW-3iyq;
	Thu, 04 Dec 2025 14:41:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRAWo-000000088Mh-1moC
	for barebox@lists.infradead.org;
	Thu, 04 Dec 2025 14:41:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vRAWk-0007sF-RG; Thu, 04 Dec 2025 15:41:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vRAWj-003yJb-2X;
	Thu, 04 Dec 2025 15:41:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vRAWj-005Zw5-27;
	Thu, 04 Dec 2025 15:41:49 +0100
Date: Thu, 4 Dec 2025 15:41:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aTGdrbZXAp_fWby8@pengutronix.de>
References: <20251203120953.318785-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251203120953.318785-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_064154_467463_E4EB4C95 
X-CRM114-Status: GOOD (  32.27  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: implement new safemode command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 03, 2025 at 01:09:52PM +0100, Ahmad Fatoum wrote:
> barebox has extensive support for manipulating the device tree it passes
> to Linux, which can be useful during bringup.
> 
> Let's collect some of this functionality into a safemode command in an
> attempt to gather that knowledge at one place.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig       |   7 +++
>  commands/Makefile      |   1 +
>  commands/safemode.c    | 109 +++++++++++++++++++++++++++++++++++++++++
>  drivers/mci/mci-core.c |   6 +--
>  include/mci.h          |   5 ++
>  5 files changed, 123 insertions(+), 5 deletions(-)
>  create mode 100644 commands/safemode.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 6bfc1499afdb..af3b65f35547 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -226,6 +226,13 @@ config CMD_MEMINFO
>  	  system bytes     =     282616
>  	  in use bytes     =     274752
>  
> +config CMD_SAFEMODE
> +	tristate
> +	prompt "safemode"
> +	select CMD_OF_PROPERTY
> +	help
> +	  Apply safe-mode defaults for next kernel boot.
> +
>  config CMD_CHECKLEAK
>  	tristate
>  	prompt "checkleak"
> diff --git a/commands/Makefile b/commands/Makefile
> index e7d65163ad80..657fb426ba3e 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -17,6 +17,7 @@ obj-$(CONFIG_CMD_MW)		+= mw.o
>  obj-$(CONFIG_CMD_MEMCMP)	+= memcmp.o
>  obj-$(CONFIG_CMD_MEMCPY)	+= memcpy.o
>  obj-$(CONFIG_CMD_MEMSET)	+= memset.o
> +obj-$(CONFIG_CMD_SAFEMODE)	+= safemode.o
>  obj-$(CONFIG_CMD_EDIT)		+= edit.o
>  obj-$(CONFIG_CMD_ETHLOG)	+= ethlog.o
>  obj-$(CONFIG_CMD_EXEC)		+= exec.o
> diff --git a/commands/safemode.c b/commands/safemode.c
> new file mode 100644
> index 000000000000..9016869bc56e
> --- /dev/null
> +++ b/commands/safemode.c
> @@ -0,0 +1,109 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <command.h>
> +#include <getopt.h>
> +#include <mci.h>
> +#include <xfuncs.h>
> +#include <stdio.h>
> +#include <environment.h>
> +
> +#define	SAFEMODE_MMC		BIT(0)
> +#define	SAFEMODE_CONSOLE	BIT(1)
> +#define	SAFEMODE_BOOT		BIT(2)
> +
> +#define run_command_fmt(args...) ({	\
> +	char *__buf = xasprintf(args);	\
> +	if (verbose)			\
> +		printf("%s\n", __buf);	\
> +	int __ret = run_command(__buf);	\
> +	free(__buf);			\
> +	__ret;				\
> +})
> +
> +static void safemode_mmc(int verbose)
> +{
> +	struct mci *mci;
> +
> +	for_each_mci(mci) {
> +		const char *dev = dev_name(&mci->dev);
> +
> +		run_command_fmt("%s.broken_cd=1", dev);
> +		run_command_fmt("of_property -fs %s max-frequency '<52000000>'", dev);
> +		run_command_fmt("of_property -fs %s pinctrl-names default", dev);

This only works when there is an alias for the SD card and barebox uses
it for the device name and the kernel device tree has the same alias.
We usually overcome this by using of_get_reproducible_name() /
of_find_node_by_reproducible_name(). Not sure how to integrate this here
though.

> +	}
> +}
> +
> +static void safemode_console(int verbose)
> +{
> +	run_command_fmt("global.bootm.earlycon=1");
> +}
> +
> +static void safemode_boot(int verbose)
> +{
> +	if (IS_ENABLED(CONFIG_WATCHDOG))
> +		run_command_fmt("global.boot.watchdog_timeout=0");
> +
> +	if (IS_ENABLED(CONFIG_BOOTCHOOSER) &&
> +	    getenv_nonempty("global.bootchooser.targets"))
> +		run_command_fmt("bootchooser -a default -p defaut");

s/defaut/default/

> +
> +	if (IS_ENABLED(CONFIG_EFI_HANDOVER_PROTOCOL))
> +		run_command_fmt("global.linux.efi.handover=1");
> +}
> +
> +static int do_safemode(int argc, char *argv[])
> +{
> +	unsigned safemode = 0;
> +	int opt, verbose = 0;
> +
> +	while((opt = getopt(argc, argv, "mcbv")) > 0) {
> +		switch(opt) {
> +		case 'm':
> +			safemode |= SAFEMODE_MMC;
> +			break;
> +		case 'c':
> +			safemode |= SAFEMODE_CONSOLE;
> +			break;
> +		case 'b':
> +			safemode |= SAFEMODE_BOOT;
> +			break;
> +		case 'v':
> +			verbose++;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (argc != optind)
> +		return COMMAND_ERROR_USAGE;
> +
> +	if (!safemode)
> +		safemode = ~0;

With this "safemode" without arguments shows nothing but still does
something. Better print a message here.

> +
> +	if (safemode & SAFEMODE_MMC)
> +		safemode_mmc(verbose);
> +	if (safemode & SAFEMODE_CONSOLE)
> +		safemode_console(verbose);
> +	if (safemode & SAFEMODE_BOOT)
> +		safemode_boot(verbose);
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_HELP_START(safemode)
> +BAREBOX_CMD_HELP_TEXT("Apply safe-mode defaults for next kernel boot.")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT ("-m",  "safe mmc settings")
> +BAREBOX_CMD_HELP_OPT ("-c",  "safe console settings")
> +BAREBOX_CMD_HELP_OPT ("-b",  "safe boot defaults")

-v is missing here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


