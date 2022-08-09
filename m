Delivery-date: Tue, 09 Aug 2022 15:22:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLPBl-00HPhC-3I
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 15:22:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLPBl-0001wQ-0X
	for lore@pengutronix.de; Tue, 09 Aug 2022 15:22:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4hjKfKcYSHFtjrPoBmosbd266bJvuMe8MzfrvqNlns8=; b=NCwORKcuyYFcOTuBCxwVcXpyFI
	8Lc2SUHL/Sp1FjDsd0mAwoY4GUOPyq8XR1RQwAcWdSPqCIarae/VgBTBrSvC/UkTOXIY0kMBRjjBt
	rsWiuyAXxjiTNr19VblrFwgkI0KHtiMON4Ya9xNkx7idJ8wJ/YCvbu4GMcgSkB19yECh9KYiE6zuJ
	HH2HXgsxJwhNaz5TQvo7idnOxOZZhYgWfVTVFUMmkYcKW8BRcBVpRJ7wI+FZYcvkEHK0XOEk6jjaU
	7/FO5hCxCZZCXMXfIJtsfmqY3vZVhDw/WhyKUdW4D0HOX8UwexBIKAn2jdNaljP1F79oM4zMPidKF
	sHTXxd+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLPAM-0044YC-OW; Tue, 09 Aug 2022 13:21:02 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLPAC-0044VT-QE
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 13:20:54 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id 609853236AB
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1660051251;
	bh=H0MkvLMkY6C5E9cjrFRRmq6BIxenO4owZJAocXze5oA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=sFCvGESQHtNCJwg47j7SPmfJ1fiad8nc8VWKJ+C/85cynozU3d9VcPFwSavvzzMga
	 bgVZRmWfXft5YZ5WVMXOy6VEh9uIdnU5VrqZvJ50fOkzV8WJXMpv/qAMqPRbg+yy37
	 n/oLzahH8TdglUc36fqPgMX7WFpHI5TlfCz5XhrQ=
Received: from fx405 (localhost [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id 2A215323816
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:31 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <15322.62f25f1d.d7b6a.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx405.security-mail.net (Postfix) with ESMTPS id DFDA932380F
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id B511F27E053F;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 9D0A627E0545;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 9D0A627E0545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1660051229;
	bh=4hjKfKcYSHFtjrPoBmosbd266bJvuMe8MzfrvqNlns8=;
	h=From:To:Date:Message-Id;
	b=ZvZV9/qLgCjm/5BUX1qF9ED1L7INjeGioiZO2n5OjdQxUpBPN2vNjlbxJZRzhmsmp
	 U6cZ7MOFiCmHt6y8gRhlnPQIL4j518ULYoQ16cp03zAlGXddSPHmchOK/BEhgjRmhV
	 +W5d6DhQ5dCjmQQjSdKVwxR2NEQMiPYR9z1p6+PE=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Ow2PUNhLqel3; Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 8BBF427E054B;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  9 Aug 2022 15:20:21 +0200
Message-Id: <20220809132021.7110-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220809132021.7110-1-jmaselbas@kalray.eu>
References: <20220809132021.7110-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_062053_181874_3E774D70 
X-CRM114-Status: GOOD (  18.64  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 5/5] Add tcpdump command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This a mirror of the ethlog command but this will only dump tcp traffic
to the console.

This tcpdump command could be merged with the ethlog, also this could
also evolve to dump udp and bad packets.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 commands/Kconfig   |  8 +++++
 commands/Makefile  |  1 +
 commands/tcpdump.c | 84 ++++++++++++++++++++++++++++++++++++++++++++++
 include/net.h      |  1 +
 net/net.c          | 10 ++++--
 5 files changed, 102 insertions(+), 2 deletions(-)
 create mode 100644 commands/tcpdump.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 5faf8eccc1..cb27ce29ce 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1289,6 +1289,14 @@ config CMD_ETHLOG
 
 	  Usage: ethlog [-r] [DEVICENAME]
 
+config CMD_TCPDUMP
+	tristate
+	prompt "tcpdump"
+	help
+	  dump tcp traffic.
+
+	  Usage: tcpdump [-r] [DEVICENAME]
+
 # end Network commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index ecdcfe9619..a09be2c8a3 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -104,6 +104,7 @@ obj-$(CONFIG_CMD_LN)		+= ln.o
 obj-$(CONFIG_CMD_CLK)		+= clk.o
 obj-$(CONFIG_CMD_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_CMD_TFTP)		+= tftp.o
+obj-$(CONFIG_CMD_TCPDUMP)	+= tcpdump.o
 obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
 obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
 obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
diff --git a/commands/tcpdump.c b/commands/tcpdump.c
new file mode 100644
index 0000000000..bcfe42a897
--- /dev/null
+++ b/commands/tcpdump.c
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: (c) 2022 Jules Maselbas <jmaselbas@kalray.eu>
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <environment.h>
+#include <getopt.h>
+#include <net.h>
+
+static void tcp_dump(struct eth_device *edev, void *pkt, int len)
+{
+	struct iphdr *ip = net_eth_to_iphdr(pkt);
+	struct tcphdr *tcp = net_eth_to_tcphdr(pkt);
+	uint16_t flag = ntohs(tcp->doff_flag) & TCP_FLAG_MASK;
+	int opt = net_tcp_data_offset(tcp) - sizeof(struct tcphdr);
+	char cksum[sizeof("0xffff")];
+	char flags[sizeof("FSRPAU")] = {};
+	char *f = flags;
+
+	if (flag & TCP_FLAG_FIN) *f++ = 'F';
+	if (flag & TCP_FLAG_SYN) *f++ = 'S';
+	if (flag & TCP_FLAG_RST) *f++ = 'R';
+	if (flag & TCP_FLAG_PSH) *f++ = 'P';
+	if (flag & TCP_FLAG_ACK) *f++ = 'A';
+	if (flag & TCP_FLAG_URG) *f++ = 'U';
+
+	snprintf(cksum, sizeof(cksum), "%#.4x", tcp_checksum(ip, tcp, len));
+	pr_debug("%pI4:%u > %pI4:%u [%s] cksum %#.4x (%s) seq %u ack %u win %u opt [%d] len %d\n",
+		&ip->saddr, ntohs(tcp->src), &ip->daddr, ntohs(tcp->dst),
+		flags, ntohs(tcp->sum),
+		tcp_checksum_ok(ip, tcp, len) ? "correct" : cksum,
+		ntohl(tcp->seq), ntohl(tcp->ack), ntohs(tcp->wnd),
+		opt, len);
+}
+
+static int do_tcpdump(int argc, char *argv[])
+{
+	struct eth_device *edev;
+	const char *edevname;
+	bool remove = false;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "r")) > 0) {
+		switch (opt) {
+		case 'r':
+			remove = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc)
+		edevname = "eth0";
+	else
+		edevname = argv[optind];
+
+	edev = eth_get_byname(edevname);
+	if (!edev) {
+		printf("No such network device: %s\n", edevname);
+		return 1;
+	}
+
+	if (remove)
+		edev->tcp_dump = NULL;
+	else
+		edev->tcp_dump = tcp_dump;
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(tcpdump)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-r", "remove log handler from Ethernet interface")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(tcpdump)
+	.cmd		= do_tcpdump,
+	BAREBOX_CMD_DESC("tcpdump - tool to get dump of TCP packets")
+	BAREBOX_CMD_OPTS("[-r] [device]")
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+	BAREBOX_CMD_COMPLETE(eth_complete)
+BAREBOX_CMD_END
diff --git a/include/net.h b/include/net.h
index 76b64ccb21..ff9c7dc1f7 100644
--- a/include/net.h
+++ b/include/net.h
@@ -48,6 +48,7 @@ struct eth_device {
 				 int *length);
 	void (*rx_monitor) (struct eth_device*, void *packet, int length);
 	void (*tx_monitor) (struct eth_device*, void *packet, int length);
+	void (*tcp_dump) (struct eth_device*, void *packet, int length);
 
 	struct eth_device *next;
 	void *priv;
diff --git a/net/net.c b/net/net.c
index 855bb8e4c2..1717a0726f 100644
--- a/net/net.c
+++ b/net/net.c
@@ -586,6 +586,9 @@ static int tcp_send(struct net_connection *con, int len, uint16_t flags)
 	con->tcp->sum = 0;
 	con->tcp->sum = ~tcp_checksum(con->ip, con->tcp, len);
 
+	if (con->edev->tcp_dump)
+		con->edev->tcp_dump(con->edev, con->packet, len);
+
 	return net_ip_send(con, hdr_size + len);
 }
 
@@ -848,7 +851,7 @@ static int net_handle_udp(unsigned char *pkt, int len)
 	return -EINVAL;
 }
 
-static int net_handle_tcp(unsigned char *pkt, int len)
+static int net_handle_tcp(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	size_t min_size = ETHER_HDR_SIZE + sizeof(struct iphdr);
 	struct net_connection *con;
@@ -890,6 +893,9 @@ static int net_handle_tcp(unsigned char *pkt, int len)
 		goto bad;
 	tcb = &con->tcb;
 
+	if (edev->tcp_dump)
+		edev->tcp_dump(edev, pkt, len);
+
 	/* segment arrives */
 	seg_last = seg_seq + seg_len - 1;
 	rcv_wnd = tcb->rcv_wnd;
@@ -1116,7 +1122,7 @@ static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
 	case IPPROTO_UDP:
 		return net_handle_udp(pkt, len);
 	case IPPROTO_TCP:
-		return net_handle_tcp(pkt, len);
+		return net_handle_tcp(edev, pkt, len);
 	}
 
 	return 0;
-- 
2.17.1



