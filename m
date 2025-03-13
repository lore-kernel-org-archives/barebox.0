Delivery-date: Thu, 13 Mar 2025 12:39:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsgu3-00DYB4-0Q
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 12:39:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsgu1-000479-OM
	for lore@pengutronix.de; Thu, 13 Mar 2025 12:39:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vbynT7mAmB25/CqJe0U7OLGDmBb5WF5/RVYmbUOY/n4=; b=D111EkkEcSEIxVBzNYiADgAuVd
	sLCb//41F90qL3GUSOFmxWZVnSXAy4V5ioDeOukIf3OxdxXLOVqSI5SW8S9q7L5keOr0J+1rzG+3d
	MaZ6BMMWcS4Ykx8g82u5Folgvt90JX6HuFcXId1ZMS16kxGTYfK2CIHPs+jj8xI9PxmRPW/WPPwpg
	tiiN8LAyiTc4cHzNepLPi3VK+5xFGMDaoiL5CLKx83HfTUN2Qtz7LGJT1JTce9n5TviGmcz0p5uqY
	BsopmmcZEarXKSeaWAUXHeqCp1eU3hd2nP8r/ebfH3pc75B7eCvOv0RPGnHdG8deIWQzI5MqT+of5
	/R2Z4SMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsgta-0000000B44N-20cT;
	Thu, 13 Mar 2025 11:38:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsgtX-0000000B43z-3u65
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 11:38:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tsgtV-000408-DE; Thu, 13 Mar 2025 12:38:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsgtV-005Wl8-0i;
	Thu, 13 Mar 2025 12:38:33 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsgtV-00BL7n-0R;
	Thu, 13 Mar 2025 12:38:33 +0100
Date: Thu, 13 Mar 2025 12:38:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z9LDufA4tvr8r_Zf@pengutronix.de>
References: <20250312134536.3232324-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250312134536.3232324-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_043835_971795_6FCC8DEB 
X-CRM114-Status: GOOD (  29.90  )
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
Subject: Re: [PATCH v1] commands: Add `ip` command for listing interfaces,
 addresses, and routes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 12, 2025 at 02:45:36PM +0100, Oleksij Rempel wrote:
> This patch introduces the `ip` command, providing functionality similar
> to Linux’s `ip` tool, catering to users with strong Linux muscle memory.
> It supports:
> 
> - `ip l` / `ip link`   - Show network interfaces (state, MAC address)
> - `ip a` / `ip addr`   - Show assigned IP addresses and netmasks
> - `ip r` / `ip route`  - Show routing table, including default gateway,
>                          interface-specific routes, DNS, and server IP.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  commands/Kconfig  |   9 +++
>  commands/Makefile |   1 +
>  commands/ip.c     | 157 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 167 insertions(+)
>  create mode 100644 commands/ip.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index e41625e294c9..528b30b8fc90 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1397,6 +1397,15 @@ config CMD_TFTP
>  	  Options:
>  		  -p	push to TFTP server
>  
> +config CMD_IP
> +	tristate
> +	prompt "ip"
> +	default y
> +	help
> +          This command provides information about network interfaces, similar
> +	  to the Linux `ip addr show` command. It lists interface names, states
> +	  (UP/DOWN), MAC addresses, and assigned IP addresses.

Whitespace damage before "This..."

> +
>  config CMD_IP_ROUTE_GET
>  	tristate
>  	prompt "ip-route-get"
> diff --git a/commands/Makefile b/commands/Makefile
> index e152e4148b04..c202cdef5703 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -146,6 +146,7 @@ obj-$(CONFIG_CMD_MMC)		+= mmc.o
>  obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
>  obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
>  obj-$(CONFIG_CMD_SEED)		+= seed.o
> +obj-$(CONFIG_CMD_IP)		+= ip.o
>  obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
>  obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
>  obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
> diff --git a/commands/ip.c b/commands/ip.c
> new file mode 100644
> index 000000000000..35fc5f4d300f
> --- /dev/null
> +++ b/commands/ip.c
> @@ -0,0 +1,157 @@

SPDX?

> +#include <common.h>
> +#include <command.h>
> +#include <net.h>
> +#include <linux/list.h>
> +#include <complete.h>
> +
> +/* Function to calculate CIDR prefix from netmask */
> +static int netmask_to_prefix(IPaddr_t netmask)
> +{
> +	int prefix = 0;
> +
> +	while (netmask) {
> +		prefix += netmask & 1;
> +		netmask >>= 1;
> +	}
> +
> +	return prefix;
> +}
> +
> +/* Function to display network links (`ip l`) */
> +static int do_ip_link(int argc, char *argv[])
> +{
> +	struct eth_device *edev;
> +
> +	for_each_netdev(edev) {
> +		const char *phy_status = edev->phydev ?
> +			(edev->phydev->link ? ",LOWER_UP" : ",NO-CARRIER") : "";
> +
> +		printf("%s: <%s%s>\n",
> +			   eth_name(edev),
> +			   edev->active ? "UP" : "DOWN",
> +			   phy_status);
> +
> +		printf("	link/ether %pM brd ff:ff:ff:ff:ff:ff\n",
> +		       edev->ethaddr);
> +	}
> +
> +	return 0;
> +}
> +
> +/* Function to display network addresses (`ip a`) */
> +static int do_ip_addr(int argc, char *argv[])
> +{
> +	struct eth_device *edev;
> +
> +	for_each_netdev(edev) {
> +		IPaddr_t ipaddr = net_get_ip(edev);
> +		int prefix_length = netmask_to_prefix(edev->netmask);
> +		const char *phy_status = edev->phydev ?
> +			(edev->phydev->link ? ",LOWER_UP" : ",NO-CARRIER") : "";
> +
> +		printf("%s: <%s%s>\n", eth_name(edev),
> +		       edev->active ? "UP" : "DOWN", phy_status);
> +
> +		printf("	link/ether %pM brd ff:ff:ff:ff:ff:ff\n",
> +		       edev->ethaddr);
> +
> +		if (ipaddr) {
> +			printf("	inet %pI4/%d scope global src %pI4\n",
> +				   &ipaddr, prefix_length, &ipaddr);
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +/* Function to display network routes (`ip r`) */
> +static int do_ip_route(int argc, char *argv[])
> +{
> +	const char *domainname = net_get_domainname();
> +	IPaddr_t nameserver = net_get_nameserver();
> +	const char *serverip = net_get_server();
> +	IPaddr_t gateway = net_get_gateway();
> +	struct eth_device *edev;
> +
> +	for_each_netdev(edev) {
> +		int prefix_length = netmask_to_prefix(edev->netmask);
> +		IPaddr_t ipaddr = net_get_ip(edev);
> +		const char *proto;
> +
> +		/* Skip interfaces without an IP address */
> +		if (!ipaddr)
> +			continue;
> +
> +		/* Determine protocol: DHCP or Static */
> +		if (edev->global_mode == ETH_MODE_DHCP)
> +			proto = "dhcp";
> +		else
> +			proto = "static";
> +
> +		/* Show default gateway */
> +		if (gateway) {
> +			printf("default via %pI4 dev %s proto %s src %pI4\n",
> +				   &gateway, eth_name(edev), proto, &ipaddr);
> +		}
> +
> +		/* Show per-interface network route */
> +		if (prefix_length > 0) {
> +			printf("%pI4/%d dev %s proto kernel scope link src %pI4\n",
> +				   &ipaddr, prefix_length, eth_name(edev),
> +				   &ipaddr);
> +		}
> +	}
> +
> +	/* Show boot server */
> +	if (serverip && *serverip) {
> +		printf("serverip %s\n", serverip);
> +	}
> +
> +	/* Show DNS server */
> +	if (nameserver) {
> +		printf("nameserver %pI4\n", &nameserver);
> +	}
> +
> +	/* Show search domain */
> +	if (domainname && *domainname) {
> +		printf("search %s\n", domainname);
> +	}
> +
> +	return 0;
> +}
> +
> +/* Main IP command dispatcher */
> +static int do_ip(int argc, char *argv[])
> +{
> +	if (argc < 2) {
> +		return do_ip_addr(argc, argv); /* Default: `ip a` */
> +	}
> +
> +	if (!strcmp(argv[1], "l") || !strcmp(argv[1], "link"))
> +		return do_ip_link(argc, argv);
> +	else if (!strcmp(argv[1], "a") || !strcmp(argv[1], "addr"))
> +		return do_ip_addr(argc, argv);
> +	else if (!strcmp(argv[1], "r") || !strcmp(argv[1], "route"))
> +		return do_ip_route(argc, argv);

The Linux ip tool not only accepts "l" and "link", but also "li" and "lin",
so maybe something like strncmp(argv[1], "link", strlen(argv[1]))?

> +
> +	printf("Usage: ip [l|link] | [a|addr] | [r|route]\n");
> +	return 1;

return COMMAND_ERROR_USAGE instead?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


