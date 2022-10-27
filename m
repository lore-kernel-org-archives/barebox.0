Delivery-date: Thu, 27 Oct 2022 09:13:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onx4p-003oHX-BB
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 09:13:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onx4o-0006bd-7n
	for lore@pengutronix.de; Thu, 27 Oct 2022 09:13:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pwuhK/tZd4pdbVvKk1M+/2VUbEMfi6dxSY0r4FQlxfY=; b=Ac7Pzn5tJeLev7d2c04xR6z+Z+
	CfoFCmNgqtRe7j/Y3GNyzy0lAmL9UoHW3Ja+2zTOrzotp36gskAZ5Zjb0JqNkK5suSw+KSf4+vJ03
	Taq4zw0oycDnPCmLm8jf1vsgum9vhznweL3Q3Az/DAyZCwml4eyywjWTSb8A/YIp/BIn72lYuQBni
	A/ye8dZIpoCIIb83VpPzEuU1F5cISgonJ6CWOi9G5FL8x3v4c76xRFpG8d9h70OQ+5WRtt0uX0jbz
	VTMMhtCaZ7MH4X8r4u+IjTbl1d1FIQy3zRzgIbpml/8bwRlA1gFQ9JHK5WLCUxSj3LLrvM0Yp/Z4o
	A/ri6aog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onx3V-00C8Cb-Dg; Thu, 27 Oct 2022 07:11:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onx3Q-00C8BY-QR
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 07:11:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onx3O-0006W0-Tm; Thu, 27 Oct 2022 09:11:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onx3O-00037L-MH; Thu, 27 Oct 2022 09:11:50 +0200
Date: Thu, 27 Oct 2022 09:11:50 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221027071150.GR6702@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_001152_879039_18BDC177 
X-CRM114-Status: GOOD (  29.79  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/6] commands: add new uptime command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 26, 2022 at 08:42:00AM +0200, Ahmad Fatoum wrote:
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
>  commands/Kconfig  | 13 +++++++++
>  commands/Makefile |  1 +
>  commands/uptime.c | 72 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 86 insertions(+)
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
> index 000000000000..e220fec72139
> --- /dev/null
> +++ b/commands/uptime.c
> @@ -0,0 +1,72 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <command.h>
> +#include <clock.h>
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
> +
> +	timestamp = get_time_ns();
> +
> +	if (argc == 2 && !strcmp(argv[1], "-n")) {
> +		printf("up %lluns\n", timestamp);
> +		return 0;
> +	}

Use getopt(), that's what we have it for.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


