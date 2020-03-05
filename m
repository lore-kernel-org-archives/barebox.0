Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9lGe-0002ks-SX
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 07:50:07 +0000
Date: Thu, 5 Mar 2020 08:50:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200305075002.GO3335@pengutronix.de>
References: <20200228204823.28415-1-dg@emlix.com>
 <20200228204823.28415-3-dg@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228204823.28415-3-dg@emlix.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] fastboot net: implement fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org, Edmund Henniges <eh@emlix.com>

On Fri, Feb 28, 2020 at 09:48:22PM +0100, Daniel Gl=F6ckner wrote:
> From: Edmund Henniges <eh@emlix.com>
> =

> This implements the UDP variant of the fastboot protocol. The only way to
> start the service for now is to compile with CONFIG_FASTBOOT_NET_ON_BOOT.
> The service will bind to the network interface that provides the IPv4
> gateway.
> =

> Sending an OKAY packet before performing a restart is necessary since
> contrary to USB the host will not notice when a UDP server disappears.
> =

> Signed-off-by: Edmund Henniges <eh@emlix.com>
> Signed-off-by: Daniel Gl=F6ckner <dg@emlix.com>
> ---
>  common/fastboot.c      |   3 +
>  include/fastboot.h     |   1 +
>  include/fastboot_net.h |  12 ++
>  net/Kconfig            |  17 ++
>  net/Makefile           |   1 +
>  net/fastboot.c         | 437 +++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 471 insertions(+)
>  create mode 100644 include/fastboot_net.h
>  create mode 100644 net/fastboot.c
> =

> diff --git a/common/fastboot.c b/common/fastboot.c
> index 58a095efa..4a11ac54b 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -245,6 +245,7 @@ static char *fastboot_msg[] =3D {
>  	[FASTBOOT_MSG_FAIL] =3D "FAIL",
>  	[FASTBOOT_MSG_INFO] =3D "INFO",
>  	[FASTBOOT_MSG_DATA] =3D "DATA",
> +	[FASTBOOT_MSG_NONE] =3D "",
>  };
>  =

>  int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
> @@ -273,6 +274,7 @@ int fastboot_tx_print(struct fastboot *fb, enum fastb=
oot_msg_type type,
>  	case FASTBOOT_MSG_INFO:
>  		pr_info("%pV\n", &vaf);
>  		break;
> +	case FASTBOOT_MSG_NONE:
>  	case FASTBOOT_MSG_DATA:
>  		break;
>  	}
> @@ -287,6 +289,7 @@ int fastboot_tx_print(struct fastboot *fb, enum fastb=
oot_msg_type type,
>  =

>  static void cb_reboot(struct fastboot *fb, const char *cmd)
>  {
> +	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
>  	restart_machine();
>  }
>  =

> diff --git a/include/fastboot.h b/include/fastboot.h
> index 3b6cae8a5..503d21bc7 100644
> --- a/include/fastboot.h
> +++ b/include/fastboot.h
> @@ -51,6 +51,7 @@ enum fastboot_msg_type {
>  	FASTBOOT_MSG_FAIL,
>  	FASTBOOT_MSG_INFO,
>  	FASTBOOT_MSG_DATA,
> +	FASTBOOT_MSG_NONE,
>  };
>  =

>  int fastboot_generic_init(struct fastboot *fb, bool export_bbu);
> diff --git a/include/fastboot_net.h b/include/fastboot_net.h
> new file mode 100644
> index 000000000..e4b9d9809
> --- /dev/null
> +++ b/include/fastboot_net.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +#ifndef __FASTBOOT_NET__
> +#define __FASTBOOT_NET__
> +
> +#include <fastboot.h>
> +
> +struct fastboot_net;
> +
> +struct fastboot_net *fastboot_net_init(struct fastboot_opts *opts);
> +void fastboot_net_free(struct fastboot_net *fbn);
> +
> +#endif
> diff --git a/net/Kconfig b/net/Kconfig
> index 12b6bdb56..aaf621559 100644
> --- a/net/Kconfig
> +++ b/net/Kconfig
> @@ -31,4 +31,21 @@ config NET_SNTP
>  	bool
>  	prompt "sntp support"
>  =

> +config NET_FASTBOOT
> +	bool
> +	select BANNER
> +	select FILE_LIST
> +	select FASTBOOT_BASE
> +	prompt "Android Fastboot support"
> +	help
> +	  This option adds support for the UDP variant of the Fastboot
> +	  protocol.
> +
> +config FASTBOOT_NET_ON_BOOT
> +	bool
> +	depends on NET_FASTBOOT
> +	prompt "Start network fastboot during boot"
> +	help
> +	  Automatically starts the network and listens for Fastboot packets.
> +	  The list of accessible files is taken from nv.fastboot.files.
>  endif
> diff --git a/net/Makefile b/net/Makefile
> index eb8d43915..962b2dec5 100644
> --- a/net/Makefile
> +++ b/net/Makefile
> @@ -8,3 +8,4 @@ obj-$(CONFIG_CMD_PING)	+=3D ping.o
>  obj-$(CONFIG_NET_RESOLV)+=3D dns.o
>  obj-$(CONFIG_NET_NETCONSOLE) +=3D netconsole.o
>  obj-$(CONFIG_NET_IFUP)	+=3D ifup.o
> +obj-$(CONFIG_NET_FASTBOOT) +=3D fastboot.o
> diff --git a/net/fastboot.c b/net/fastboot.c
> new file mode 100644
> index 000000000..41d1859ab
> --- /dev/null
> +++ b/net/fastboot.c
> @@ -0,0 +1,437 @@
> +// SPDX-License-Identifier: BSD-2-Clause
> +/*
> + * Copyright (C) 2016 The Android Open Source Project
> + *
> + * Copyright 2020 Edmund Henniges <eh@emlix.com>
> + * Copyright 2020 Daniel Gl=F6ckner <dg@emlix.com>
> + * Ported from U-Boot to Barebox
> + */
> +
> +#define pr_fmt(fmt) "net fastboot: " fmt
> +
> +#include <common.h>
> +#include <net.h>
> +#include <fastboot.h>
> +#include <fastboot_net.h>
> +#include <environment.h>
> +#include <progress.h>
> +#include <unistd.h>
> +#include <init.h>
> +
> +#define FASTBOOT_PORT 5554
> +#define MAX_MTU 1500
> +#define PACKET_SIZE (min(PKTSIZE, MAX_MTU + ETHER_HDR_SIZE) \
> +		      - (net_eth_to_udp_payload(0) - (char *)0))
> +
> +enum {
> +	FASTBOOT_ERROR =3D 0,
> +	FASTBOOT_QUERY =3D 1,
> +	FASTBOOT_INIT =3D 2,
> +	FASTBOOT_FASTBOOT =3D 3,
> +};
> +
> +struct __packed fastboot_header {
> +	uint8_t id;
> +	uint8_t flags;
> +	uint16_t seq;
> +};
> +
> +struct fastboot_net {
> +	struct fastboot fastboot;
> +
> +	struct net_connection *net_con;
> +	struct fastboot_header response_header;
> +	struct poller_struct poller;
> +	bool active_download;
> +	bool reinit;
> +	bool may_print;
> +	char command[65];
> +
> +	IPaddr_t host_addr;
> +	uint16_t host_port;
> +	uint8_t host_mac[ETH_ALEN];
> +	uint16_t sequence_number;
> +	uint16_t last_payload_len;
> +	uchar last_payload[64 + sizeof(struct fastboot_header)];
> +};
> +
> +static const ushort udp_version =3D 1;
> +
> +static bool is_current_connection(struct fastboot_net *fbn)
> +{
> +	return fbn->host_addr =3D=3D net_read_ip(&fbn->net_con->ip->daddr) &&
> +	       fbn->host_port =3D=3D fbn->net_con->udp->uh_dport;
> +}
> +
> +static void fastboot_send(struct fastboot_net *fbn,
> +			  struct fastboot_header header,
> +			  const char *error_msg)
> +{
> +	short tmp;
> +	uchar *packet =3D net_udp_get_payload(fbn->net_con);
> +	uchar *packet_base =3D packet;
> +	bool current_session =3D false;;
> +
> +	if (fbn->sequence_number =3D=3D ntohs(header.seq) &&
> +	    is_current_connection(fbn))
> +		current_session =3D true;
> +
> +	if (error_msg)
> +		header.id =3D FASTBOOT_ERROR;
> +
> +	/* send header */
> +	memcpy(packet, &header, sizeof(header));
> +	packet +=3D sizeof(header);
> +
> +	switch (header.id) {
> +	case FASTBOOT_QUERY:
> +		/* send sequence number */
> +		tmp =3D htons(fbn->sequence_number);
> +		memcpy(packet, &tmp, sizeof(tmp));
> +		packet +=3D sizeof(tmp);
> +		break;
> +	case FASTBOOT_INIT:
> +		/* send udp version and packet size */
> +		tmp =3D htons(udp_version);
> +		memcpy(packet, &tmp, sizeof(tmp));
> +		packet +=3D sizeof(tmp);
> +		tmp =3D htons(PACKET_SIZE);
> +		memcpy(packet, &tmp, sizeof(tmp));
> +		packet +=3D sizeof(tmp);
> +		break;
> +	case FASTBOOT_ERROR:
> +		pr_err("%s\n", error_msg);
> +
> +		/* send error message */
> +		tmp =3D strlen(error_msg);
> +		memcpy(packet, error_msg, tmp);
> +		packet +=3D tmp;
> +
> +		if (current_session) {
> +			fbn->fastboot.active =3D false;
> +			fbn->active_download =3D false;
> +			fbn->reinit =3D true;
> +		}
> +		break;
> +	}
> +
> +	if (current_session && header.id !=3D FASTBOOT_QUERY) {
> +		fbn->sequence_number++;
> +		fbn->last_payload_len =3D packet - packet_base;
> +		memcpy(fbn->last_payload, packet_base, fbn->last_payload_len);
> +	}
> +	net_udp_send(fbn->net_con, packet - packet_base);
> +}
> +
> +static int fastboot_write_net(struct fastboot *fb, const char *buf, unsi=
gned int n)
> +{
> +	struct fastboot_net *fbn =3D container_of(fb, struct fastboot_net,
> +						fastboot);
> +	struct fastboot_header response_header;
> +	uchar *packet;
> +	uchar *packet_base;
> +
> +	if (fbn->reinit)
> +		return 0;
> +
> +	while (!fbn->may_print) {
> +		net_poll();
> +		if (fbn->reinit)
> +			return 0;
> +	}
> +
> +	response_header =3D fbn->response_header;
> +	response_header.flags =3D 0;
> +	response_header.seq =3D htons(fbn->sequence_number);
> +	++fbn->sequence_number;
> +	fbn->may_print =3D false;
> +
> +	packet =3D net_udp_get_payload(fbn->net_con);
> +	packet_base =3D packet;
> +
> +	/* Write headers */
> +	memcpy(packet, &response_header, sizeof(response_header));
> +	packet +=3D sizeof(response_header);
> +	/* Write response */
> +	memcpy(packet, buf, n);
> +	packet +=3D n;
> +
> +	/* Save packet for retransmitting */
> +	fbn->last_payload_len =3D packet - packet_base;
> +	memcpy(fbn->last_payload, packet_base, fbn->last_payload_len);
> +
> +	memcpy(fbn->net_con->et->et_dest, fbn->host_mac, ETH_ALEN);
> +	net_write_ip(&fbn->net_con->ip->daddr, fbn->host_addr);
> +	fbn->net_con->udp->uh_dport =3D fbn->host_port;
> +	net_udp_send(fbn->net_con, fbn->last_payload_len);
> +
> +	return 0;
> +}
> +
> +static void fastboot_start_download_net(struct fastboot *fb)
> +{
> +	struct fastboot_net *fbn =3D container_of(fb, struct fastboot_net,
> +						fastboot);
> +
> +	fastboot_start_download_generic(fb);
> +	fbn->active_download =3D true;
> +}
> +
> +/* must send exactly one packet on all code paths */
> +static void fastboot_data_download(struct fastboot_net *fbn,
> +			const void *fastboot_data,
> +			unsigned int fastboot_data_len)
> +{
> +	int ret;
> +
> +	if (fastboot_data_len =3D=3D 0 ||
> +	    (fbn->fastboot.download_bytes + fastboot_data_len) >
> +	    fbn->fastboot.download_size) {
> +		fastboot_send(fbn, fbn->response_header,
> +			      "Received invalid data length");
> +		return;
> +	}
> +
> +	ret =3D fastboot_handle_download_data(&fbn->fastboot, fastboot_data,
> +					    fastboot_data_len);
> +	if (ret < 0) {
> +		fastboot_send(fbn, fbn->response_header, strerror(-ret));
> +		return;
> +	}
> +
> +	fastboot_tx_print(&fbn->fastboot, FASTBOOT_MSG_NONE, "");
> +}
> +
> +static void fastboot_handle_type_fastboot(struct fastboot_net *fbn,
> +					  struct fastboot_header header,
> +					  char *fastboot_data,
> +					  unsigned int fastboot_data_len)
> +{
> +	fbn->response_header =3D header;
> +	fbn->may_print =3D true;
> +	if (fbn->active_download) {
> +		if (!fastboot_data_len && fbn->fastboot.download_bytes
> +					   =3D=3D fbn->fastboot.download_size) {
> +			/*
> +			 * Can't call fastboot_download_finished here
> +			 * because it will call fastboot_tx_print
> +			 * multiple times.
> +			 */
> +			fbn->active_download =3D false;
> +		} else {
> +			fastboot_data_download(fbn, fastboot_data,
> +					       fastboot_data_len);
> +		}
> +	} else if (!fbn->command[0]) {
> +		if (fastboot_data_len >=3D sizeof(fbn->command)) {
> +			fastboot_send(fbn, header, "command too long");
> +		} else {
> +			memcpy(fbn->command, fastboot_data, fastboot_data_len);
> +			fbn->command[fastboot_data_len] =3D 0;
> +		}
> +	}
> +
> +	if (!fbn->fastboot.active)
> +		fbn->active_download =3D false;
> +}
> +
> +static void fastboot_check_retransmit(struct fastboot_net *fbn,
> +				      struct fastboot_header header)
> +{
> +	if (ntohs(header.seq) =3D=3D fbn->sequence_number - 1 &&
> +	    is_current_connection(fbn)) {
> +		/* Retransmit last sent packet */
> +		memcpy(net_udp_get_payload(fbn->net_con),
> +		       fbn->last_payload, fbn->last_payload_len);
> +		net_udp_send(fbn->net_con, fbn->last_payload_len);
> +	}
> +}
> +
> +static void fastboot_handler(void *ctx, char *packet, unsigned int raw_l=
en)
> +{
> +	unsigned int len =3D net_eth_to_udplen(packet);
> +	struct ethernet *eth_header =3D (struct ethernet *)packet;
> +	struct iphdr *ip_header =3D net_eth_to_iphdr(packet);
> +	struct udphdr *udp_header =3D net_eth_to_udphdr(packet);
> +	char *payload =3D net_eth_to_udp_payload(packet);
> +	struct fastboot_net *fbn =3D ctx;
> +	struct fastboot_header header;
> +	char *fastboot_data =3D payload + sizeof(header);
> +	uint16_t tot_len =3D ntohs(ip_header->tot_len);
> +
> +	/* catch bogus tot_len values */
> +	if ((char *)ip_header - packet + tot_len > raw_len)
> +		return;
> +
> +	/* catch packets split into fragments that are too small to reply */
> +	if (fastboot_data - (char *)ip_header > tot_len)
> +		return;
> +
> +	/* catch packets too small to be valid */
> +	if (len < sizeof(struct fastboot_header))
> +		return;
> +
> +	memcpy(&header, payload, sizeof(header));
> +	header.flags =3D 0;
> +	len -=3D sizeof(header);
> +
> +	/* catch remaining fragmented packets */
> +	if (fastboot_data - (char *)ip_header + len > tot_len) {
> +		fastboot_send(fbn, header, "can't reassemble fragmented frames");
> +		return;
> +	}
> +	/* catch too large packets */
> +	if (len > PACKET_SIZE) {
> +		fastboot_send(fbn, header, "packet too large");
> +		return;
> +	}
> +
> +	memcpy(fbn->net_con->et->et_dest, eth_header->et_src, ETH_ALEN);
> +	net_copy_ip(&fbn->net_con->ip->daddr, &ip_header->saddr);
> +	fbn->net_con->udp->uh_dport =3D udp_header->uh_sport;
> +
> +	switch (header.id) {
> +	case FASTBOOT_QUERY:
> +		fastboot_send(fbn, header, NULL);
> +		break;
> +	case FASTBOOT_INIT:
> +		if (ntohs(header.seq) !=3D fbn->sequence_number) {
> +			fastboot_check_retransmit(fbn, header);
> +			break;
> +		}
> +		fbn->host_addr =3D net_read_ip(&ip_header->saddr);
> +		fbn->host_port =3D udp_header->uh_sport;
> +		memcpy(fbn->host_mac, eth_header->et_src, ETH_ALEN);
> +		fbn->reinit =3D true;
> +		if (fbn->active_download) {
> +			/*
> +			 * it is safe to call
> +			 * fastboot_download_finished here
> +			 * because reinit is true
> +			 */
> +			fastboot_download_finished(&fbn->fastboot);
> +			fbn->active_download =3D false;
> +		}
> +		fastboot_send(fbn, header, NULL);
> +		break;
> +	case FASTBOOT_FASTBOOT:
> +		if (!is_current_connection(fbn))
> +			break;
> +		memcpy(fbn->host_mac, eth_header->et_src, ETH_ALEN);
> +		if (ntohs(header.seq) =3D=3D fbn->sequence_number)
> +			fastboot_handle_type_fastboot(fbn, header,
> +						      fastboot_data, len);
> +		else
> +			fastboot_check_retransmit(fbn, header);
> +		break;
> +	default:
> +		fastboot_send(fbn, header, "unknown packet type");
> +		break;
> +	}
> +}
> +
> +static void fastboot_poll(struct poller_struct *poller)
> +{
> +	struct fastboot_net *fbn =3D container_of(poller, struct fastboot_net,
> +					       poller);
> +
> +	net_poll();
> +	if (!fbn->command[0])
> +		return;
> +
> +	fbn->reinit =3D false;
> +	fastboot_tx_print(&fbn->fastboot, FASTBOOT_MSG_NONE, "");
> +	fastboot_exec_cmd(&fbn->fastboot, fbn->command);
> +	fbn->command[0] =3D 0;
> +
> +	if (fbn->active_download) {
> +		while (fbn->active_download)
> +			net_poll();
> +		if (!fbn->reinit)
> +			fastboot_download_finished(&fbn->fastboot);
> +	}
> +}
> +
> +void fastboot_net_free(struct fastboot_net *fbn)
> +{
> +	fastboot_generic_close(&fbn->fastboot);
> +	poller_unregister(&fbn->poller);
> +	net_unregister(fbn->net_con);
> +	fastboot_generic_free(&fbn->fastboot);
> +	free(fbn);
> +}
> +
> +struct fastboot_net *fastboot_net_init(struct fastboot_opts *opts)
> +{
> +	struct fastboot_net *fbn;
> +	int ret;
> +
> +	fbn =3D xzalloc(sizeof(*fbn));
> +	INIT_LIST_HEAD(&fbn->fastboot.variables);
> +	fbn->fastboot.write =3D fastboot_write_net;
> +	fbn->fastboot.start_download =3D fastboot_start_download_net;
> +
> +	if (opts) {
> +		fbn->fastboot.files =3D opts->files;
> +		fbn->fastboot.cmd_exec =3D opts->cmd_exec;
> +		fbn->fastboot.cmd_flash =3D opts->cmd_flash;
> +		ret =3D fastboot_generic_init(&fbn->fastboot, opts->export_bbu);
> +	} else {
> +		const char *fastboot_files =3D getenv("nv.fastboot.files");

Please don't use nv variables directly, always use the corresponding
global variable.

For USB fastboot we have a variable global.usbgadget.fastboot_function
for the same purpose. We should probably use the same variable for both
fastboot variants and maybe also for DFU. How about moving the variable
name out of that usbgadget namespace and use something like
global.update_partitions? There might be better names...

> +
> +		fbn->fastboot.files =3D file_list_parse(fastboot_files);
> +		ret =3D fastboot_generic_init(&fbn->fastboot, false);
> +	}
> +	if (ret)
> +		goto fail_generic_init;
> +
> +	fbn->net_con =3D net_udp_new(IP_BROADCAST, FASTBOOT_PORT,
> +				    fastboot_handler, fbn);
> +	if (IS_ERR(fbn->net_con)) {
> +		ret =3D PTR_ERR(fbn->net_con);
> +		goto fail_net_con;
> +	}
> +	net_udp_bind(fbn->net_con, FASTBOOT_PORT);
> +
> +	fbn->poller.func =3D fastboot_poll;
> +	ret =3D poller_register(&fbn->poller);
> +	if (ret)
> +		goto fail_poller;

With this you call net_poll() from inside a poller. I just tested the
next obvious step and created a poller which calls net_poll() and
removed all the other calls to net_poll(). This however brought up a
problem. The fec_imx driver (in my case, other drivers do the same) uses
is_timeout() in its mdio read function. Now it can happen that some code
reads from the mdio bus which in turn triggers a poller run which then
checks for a link and ends up in the same mdio read function we already
come from.

Interestingly this only became a problem with my change, I tested your
fastboot net patches as-is and it works fluently. I have the gut feeling
though that the same problem should exist in principle without my change
too. We should sort that out first before merging this series. My
favourite solution would be to move net_poll() inside a poller indeed,
but I currently have no good idea how to fix this mdio read problem.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
