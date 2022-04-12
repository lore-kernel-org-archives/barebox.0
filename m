Delivery-date: Tue, 12 Apr 2022 10:56:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neCJy-00H0KQ-K3
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 10:56:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neCJv-0004Gq-MR
	for lore@pengutronix.de; Tue, 12 Apr 2022 10:56:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f6YWHeeaxUneZh0J8eWr8tZRJNki6QKOOFPZBDLhTms=; b=RrnwbnYHMJwDafd2QHAmNNcNvN
	6SnvsSpFbZ4hGwSntSIQGVmSgLai+Y68/L66Kd3M0GS3nMUyx5mFM+zRC+t9TZH82KGAQgz8UmT5u
	KGh3/Mo5j6gVjXRSAKabQJCbm7dxfU4potvKFGqNlYIQ/vXnTdibH07znaRA1cLVIgezffsmzDOby
	fCyGNOcOHczBsWmNRtBalOyxNBi6OoThEH9tdbr8u7Z3WpAI9ZxRKRUfFoKgHhXcOvhavSvz2f/6c
	tFzMdg/WOm6ZpxVg5qBWOtx/BlSxo8RO0G9Us8DqvOhIiHcrApLwtZB66vQNvGj45Xihfawbla1zw
	GhcDYrBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neCIb-00Ci4Q-DK; Tue, 12 Apr 2022 08:54:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neCIW-00Ci2m-5B
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 08:54:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neCIS-0003x9-H0; Tue, 12 Apr 2022 10:54:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neCIS-0002ui-87; Tue, 12 Apr 2022 10:54:48 +0200
Date: Tue, 12 Apr 2022 10:54:48 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220412085448.GZ4012@pengutronix.de>
References: <20220408082950.824927-1-o.rempel@pengutronix.de>
 <20220408082950.824927-14-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408082950.824927-14-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:48:32 up 12 days, 21:18, 65 users,  load average: 0.10, 0.12, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_015452_247687_6462C836 
X-CRM114-Status: GOOD (  34.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 13/13] add ethlog command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 08, 2022 at 10:29:50AM +0200, Oleksij Rempel wrote:
> It is kind of tcpdump or tshark for barebox. Instead of starting
> application it will let barebox dump everything to the console by still
> allowing to use other application.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  commands/Kconfig  |  8 +++++
>  commands/Makefile |  1 +
>  commands/ethlog.c | 83 +++++++++++++++++++++++++++++++++++++++++++++++
>  include/net.h     | 11 +++++++
>  net/eth.c         |  4 +--
>  net/net.c         |  3 ++
>  6 files changed, 108 insertions(+), 2 deletions(-)
>  create mode 100644 commands/ethlog.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index caef1e8fb5..c5505321cf 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1272,6 +1272,14 @@ config CMD_IP_ROUTE_GET
>  	  be shown on the command line or alternatively a variable is set to
>  	  the result.
>  
> +config CMD_ETHLOG
> +	tristate
> +	prompt "ethlog"
> +	help
> +	  log ethernet traffic.
> +
> +	  Usage: ethlog [-r] [DEVICENAME]
> +
>  # end Network commands
>  endmenu
>  
> diff --git a/commands/Makefile b/commands/Makefile
> index fffb6d979e..b3b7bafe6b 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -16,6 +16,7 @@ obj-$(CONFIG_CMD_MEMCMP)	+= memcmp.o
>  obj-$(CONFIG_CMD_MEMCPY)	+= memcpy.o
>  obj-$(CONFIG_CMD_MEMSET)	+= memset.o
>  obj-$(CONFIG_CMD_EDIT)		+= edit.o
> +obj-$(CONFIG_CMD_ETHLOG)	+= ethlog.o
>  obj-$(CONFIG_CMD_EXEC)		+= exec.o
>  obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
>  obj-$(CONFIG_CMD_SMC)		+= smc.o
> diff --git a/commands/ethlog.c b/commands/ethlog.c
> new file mode 100644
> index 0000000000..5ae278fc87
> --- /dev/null
> +++ b/commands/ethlog.c
> @@ -0,0 +1,83 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: (c) 2022 Pengutronix,
> +//                             Oleksij Rempel <o.rempel@pengutronix.de>
> +
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +#include <environment.h>
> +#include <getopt.h>
> +#include <net.h>
> +
> +static void ethlog_rx_monitor(struct eth_device *edev, void *packet,
> +			       int length)
> +{
> +	print_hex_dump(KERN_DEBUG, "rx data <: ", DUMP_PREFIX_OFFSET,
> +		       16, 1, packet, length, true);
> +}
> +
> +static void ethlog_tx_monitor(struct eth_device *edev, void *packet,
> +			       int length)
> +{
> +	print_hex_dump(KERN_DEBUG, "tx data >: ", DUMP_PREFIX_OFFSET,
> +		       16, 1, packet, length, true);
> +}

It would be nice to print the network device name along with the hex
dump. Maybe it's time for a dev_print_hex_dump()

> +
> +static int do_ethlog(int argc, char *argv[])
> +{
> +	struct eth_device *edev;
> +	const char *edevname;
> +	bool remove = false;
> +	int opt;
> +
> +	while ((opt = getopt(argc, argv, "r")) > 0) {
> +		switch (opt) {
> +		case 'r':
> +			remove = true;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (optind == argc)
> +		edevname = "eth0";
> +	else
> +		edevname = argv[optind];
> +
> +	edev = eth_get_byname(edevname);
> +	if (!edev) {
> +		printf("No such network device: %s\n", edevname);
> +		return 1;
> +	}
> +
> +	if (remove) {
> +		edev->tx_monitor = NULL;
> +		edev->rx_monitor = NULL;
> +
> +		return 0;
> +	}
> +
> +	if (edev->tx_monitor || edev->rx_monitor) {
> +		printf("TX/RX monitor is already registered on %s\n", edevname);
> +		return 1;
> +	}

This check doesn't look useful at the moment.

> +
> +	edev->tx_monitor = ethlog_tx_monitor;
> +	edev->rx_monitor = ethlog_rx_monitor;
> +
> +	return 0;
> +}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

