Delivery-date: Mon, 01 Jul 2024 11:27:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODJN-000SO9-2y
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 11:27:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODJN-0001ZZ-6L
	for lore@pengutronix.de; Mon, 01 Jul 2024 11:27:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NZ5nJVgv9LrmZtt5NMNi2gIj7GEre+nI4AboIZkQL+Y=; b=CF+0J6Nu64D1FYeQCtDB48y+Xn
	bpjy9cPYnrXTttWMPur7NMXCTVvMa8hDNpnpvvArTtxFAlJ775hdBDsh31taB4wp2fxAEiRSHvEAU
	38ThDp/lL9b17lRwwwUGxoqS8S0a7uQ0QiGeAN/XekTyXuAfjsKV1BSehukOJ6si7Ab+rfQN5NyDl
	8AfVYIEuPgzjlAYo3BKv2CIYGhMMA/Di7SrVQSmH8RxrqPzlyd+k8KOalkxZq8Lab3FO0fgpFQ3lP
	JwuhI4Dz58jIhaoYMG+pWtyznpKaJqG1dZMlcd2fdyTAq/O21KhBvLy//UgsnAtcQy5yQMj1VYTZ+
	pOb2E9dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODIn-00000002RBC-3owX;
	Mon, 01 Jul 2024 09:26:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODIj-00000002R8P-1uu6
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 09:26:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sODIh-0001SY-F3; Mon, 01 Jul 2024 11:26:19 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sODIh-006L3Q-29; Mon, 01 Jul 2024 11:26:19 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sODIg-008N2j-38;
	Mon, 01 Jul 2024 11:26:18 +0200
Date: Mon, 1 Jul 2024 11:26:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZoJ2Ooxw4D1P6ZjV@pengutronix.de>
References: <20240701075434.220378-1-a.fatoum@pengutronix.de>
 <20240701075434.220378-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701075434.220378-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_022621_522030_18CA75A5 
X-CRM114-Status: GOOD (  34.43  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] commands: watch: add new command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jul 01, 2024 at 09:54:34AM +0200, Ahmad Fatoum wrote:
> For testing proper operation of IIO devices, it can be useful to monitor
> changes in the reading reported by the hwmon command. This is now
> possible by using `watch -n 0.5 -t hwmon`.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig  |  6 +++
>  commands/Makefile |  1 +
>  commands/watch.c  | 97 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 104 insertions(+)
>  create mode 100644 commands/watch.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index c9c4be67e098..5b512f1bbac7 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2417,6 +2417,12 @@ config CMD_TIME
>  	  Note: This command depends on COMMAND being interruptible,
>  	  otherwise the timer may overrun resulting in incorrect results
>  
> +config CMD_WATCH
> +	bool "watch"
> +	help
> +	  watch is used to execute a command periodically, showing
> +	  output to the screen.
> +
>  config CMD_UPTIME
>  	bool "uptime"
>  	help
> diff --git a/commands/Makefile b/commands/Makefile
> index f3e8e944a931..4ca7ba7eb609 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -82,6 +82,7 @@ obj-$(CONFIG_CMD_WD)		+= wd.o
>  obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
>  obj-$(CONFIG_CMD_USB)		+= usb.o
>  obj-$(CONFIG_CMD_TIME)		+= time.o
> +obj-$(CONFIG_CMD_WATCH)		+= watch.o
>  obj-$(CONFIG_CMD_UPTIME)	+= uptime.o
>  obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
>  obj-$(CONFIG_CMD_OF_COMPATIBLE)	+= of_compatible.o
> diff --git a/commands/watch.c b/commands/watch.c
> new file mode 100644
> index 000000000000..84731eb8505a
> --- /dev/null
> +++ b/commands/watch.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Port of Mini watch implementation from busybox
> + *
> + * Copyright (C) 2001 by Michael Habermann <mhabermann@gmx.de>
> + * Copyrigjt (C) Mar 16, 2003 Manuel Novoa III   (mjn3@codepoet.org)
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <clock.h>
> +#include <linux/math64.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <term.h>
> +#include <rtc.h>
> +
> +static int do_watch(int argc , char *argv[])
> +{
> +	const char *period_str = "2.0";
> +	u64 period_ns, start;
> +	bool print_header = false;
> +	int opt;
> +	unsigned width, new_width;
> +	char *end, *header, *cmd;
> +
> +	while ((opt = getopt(argc, argv, "+n:t")) > 0) {
> +		switch (opt) {
> +		case 'n':
> +			period_str = optarg;
> +			break;
> +		case 't':
> +			print_header = true;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	argc -= optind;
> +	argv += optind;
> +
> +	if (argc < 1)
> +		return COMMAND_ERROR_USAGE;
> +
> +	cmd = strjoin(" ", argv, argc);
> +
> +	period_ns = simple_strtofract(period_str, &end, NSEC_PER_SEC);
> +	if (*end)
> +		return -EINVAL;
> +
> +	width = (unsigned)-1; // make sure first time new_width != width
> +	header = NULL;
> +
> +	while (!ctrlc()) {
> +		/* home; clear to the end of screen */
> +		printf("\e[H\e[J");
> +
> +		if (print_header) {
> +			term_getsize(&new_width, NULL);
> +			if (new_width != width) {
> +				width = new_width;
> +				free(header);
> +				header = xasprintf("Every %ss: %-*s",
> +						   period_str, (int)width, cmd);

header should be freed in the exit path.

> +			}
> +
> +			printf("%s\n\n", header);
> +		}
> +
> +		run_command(cmd);
> +
> +		start = get_time_ns();
> +		while (!is_timeout(start, period_ns)) {
> +			if (ctrlc())
> +				return 1;

cmd should be freed here.

I think the return value should be 0 here like in the other exit path.

> +		}
> +	}
> +
> +	free(cmd);
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_HELP_START(watch)
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT ("-n SEC", "Period (default 2)")
> +BAREBOX_CMD_HELP_OPT ("-t",	"Don't print header")

The implementation does the opposite of what the description says.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


