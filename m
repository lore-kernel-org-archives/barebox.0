Delivery-date: Wed, 02 Nov 2022 09:07:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8mb-00C1RQ-Pq
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:07:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8ma-00018v-0G
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:07:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yUJr6/91fGno8fHGWOLg+HWeDOYyxNzTXzm83GqCRAQ=; b=YQRKHB1lFW7cO9ChPqdAt9c/w/
	lDMhVPxlK80kW9bk/wGxhdmQj8JX6VyRt8Ns6Ol+PQKHHa/qlx3amdGqj7+bu5bsdhEazRvsFM8eU
	5cvp080kk4BO0sM53eCeND2zuGC+p46h5l7iJsYj136uf2s/KmksN8NpVvP4Dydxnil3W6vcaLunj
	i93MoGWH5o+PnNGBGyiAD39oCvT/hEIZdf/50oqufkSr7x5ScCBYTJzqt3A+cOIagTo4KTVOOBb/W
	gjbz2ZAI2n+QDa4HceXaIwQCW/xiviqvYc7CeKzq92sAZiO1N91YHzOC6YFMVs8+KD73dpcg5TDqu
	6UdI7Umg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8lO-008kft-Ba; Wed, 02 Nov 2022 08:06:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8lJ-008keo-U1
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:06:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8lI-00014A-MX; Wed, 02 Nov 2022 09:06:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8lI-0007Qe-Fi; Wed, 02 Nov 2022 09:06:12 +0100
Date: Wed, 2 Nov 2022 09:06:12 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102080612.GE3143@pengutronix.de>
References: <20221101063757.3225283-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101063757.3225283-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_010613_986807_D1DDFE11 
X-CRM114-Status: GOOD (  32.39  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] commands: add new uptime command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 01, 2022 at 07:37:56AM +0100, Ahmad Fatoum wrote:
> We have a time command to record the delta of get_time_ns() to time
> command execution, but have no command to just print get_time_ns().
> 
> Such a command can be useful to debug clocksources or to verify that a
> system is still running and hasn't been reset by a yet unhandled
> watchdog in-between.
> 
> Make development a bit easier by providing a new uptime command.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - use getopt (Sascha)
>   - drop other patches
> ---

Applied, thanks

Sascha

>  commands/Kconfig  | 13 ++++++++
>  commands/Makefile |  1 +
>  commands/uptime.c | 79 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 93 insertions(+)
>  create mode 100644 commands/uptime.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 2ce990b5616a..a59616ad1474 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2289,6 +2289,19 @@ config CMD_TIME
>  	  Note: This command depends on COMMAND being interruptible,
>  	  otherwise the timer may overrun resulting in incorrect results
>  
> +config CMD_UPTIME
> +	bool "uptime"
> +	help
> +	  uptime - Tell how long barebox has been running
> +
> +	  Usage: uptime [-n]
> +
> +	  This command formats the number of elapsed nanoseconds
> +	  as measured with the current clocksource.
> +
> +	  Options:
> +	    -n		output elapsed time in nanoseconds
> +
>  config CMD_STATE
>  	tristate
>  	depends on STATE
> diff --git a/commands/Makefile b/commands/Makefile
> index 68d0d05365a5..cac1d4f2535b 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -80,6 +80,7 @@ obj-$(CONFIG_CMD_WD)		+= wd.o
>  obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
>  obj-$(CONFIG_CMD_USB)		+= usb.o
>  obj-$(CONFIG_CMD_TIME)		+= time.o
> +obj-$(CONFIG_CMD_UPTIME)	+= uptime.o
>  obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
>  obj-$(CONFIG_CMD_OF_DIFF)	+= of_diff.o
>  obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
> diff --git a/commands/uptime.c b/commands/uptime.c
> new file mode 100644
> index 000000000000..a9a8c650b698
> --- /dev/null
> +++ b/commands/uptime.c
> @@ -0,0 +1,79 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <command.h>
> +#include <clock.h>
> +#include <getopt.h>
> +#include <linux/math64.h>
> +
> +#define NSEC_PER_MINUTE	(NSEC_PER_SEC * 60LL)
> +#define NSEC_PER_HOUR	(NSEC_PER_MINUTE * 60LL)
> +#define NSEC_PER_DAY	(NSEC_PER_HOUR * 24LL)
> +#define NSEC_PER_WEEK	(NSEC_PER_DAY * 7LL)
> +
> +static bool print_with_unit(u64 val, const char *unit, bool comma)
> +{
> +	if (!val)
> +		return comma;
> +
> +	printf("%s%llu %s%s", comma ? ", " : "", val, unit, val > 1 ? "s" : "");
> +	return true;
> +}
> +
> +static int do_uptime(int argc, char *argv[])
> +{
> +	u64 timestamp, weeks, days, hours, minutes;
> +	bool comma = false;
> +	int opt;
> +
> +	timestamp = get_time_ns();
> +
> +	while((opt = getopt(argc, argv, "n")) > 0) {
> +		switch(opt) {
> +		case 'n':
> +			printf("up %lluns\n", timestamp);
> +			return 0;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (optind != argc)
> +		return COMMAND_ERROR_USAGE;
> +
> +	printf("up ");
> +
> +	weeks = div64_u64_rem(timestamp, NSEC_PER_WEEK, &timestamp);
> +	days = div64_u64_rem(timestamp, NSEC_PER_DAY, &timestamp);
> +	hours = div64_u64_rem(timestamp, NSEC_PER_HOUR, &timestamp);
> +	minutes = div64_u64_rem(timestamp, NSEC_PER_MINUTE, &timestamp);
> +
> +	comma = print_with_unit(weeks, "week", false);
> +	comma = print_with_unit(days, "day", comma);
> +	comma = print_with_unit(hours, "hour", comma);
> +	comma = print_with_unit(minutes, "minute", comma);
> +
> +	if (!comma) {
> +		u64 seconds = div64_u64_rem(timestamp, NSEC_PER_SEC, &timestamp);
> +		print_with_unit(seconds, "second", false);
> +	}
> +
> +	printf("\n");
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_HELP_START(uptime)
> +BAREBOX_CMD_HELP_TEXT("This command formats the number of elapsed nanoseconds")
> +BAREBOX_CMD_HELP_TEXT("as measured with the current clocksource")
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT ("-n",     "output elapsed time in nanoseconds")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(uptime)
> +	.cmd		= do_uptime,
> +	BAREBOX_CMD_DESC("Tell how long barebox has been running")
> +	BAREBOX_CMD_OPTS("[-n]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> +	BAREBOX_CMD_HELP(cmd_uptime_help)
> +BAREBOX_CMD_END
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


