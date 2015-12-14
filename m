Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8RXr-0001Oi-Gi
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:44:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 12:43:29 +0100
Message-Id: <1450093411-13885-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
References: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/7] net: Add SNTP support
To: Barebox List <barebox@lists.infradead.org>

This adds support for retrieving the time via Simple Network Time
Protocol (SNTP). No fancy features are supported, only plainly getting
the current time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/sntp.h |   8 +++
 net/Kconfig    |   4 ++
 net/Makefile   |   1 +
 net/sntp.c     | 173 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 186 insertions(+)
 create mode 100644 include/sntp.h
 create mode 100644 net/sntp.c

diff --git a/include/sntp.h b/include/sntp.h
new file mode 100644
index 0000000..bfcfcfa
--- /dev/null
+++ b/include/sntp.h
@@ -0,0 +1,8 @@
+#ifndef __SNTP_H
+#define __SNTP_H
+
+#include <types.h>
+
+s64 sntp(const char *server);
+
+#endif /* __SNTP_H */
diff --git a/net/Kconfig b/net/Kconfig
index a890492..f6ef0ce 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -26,4 +26,8 @@ config NET_DHCP
 	bool
 	prompt "dhcp support"
 
+config NET_SNTP
+	bool
+	prompt "sntp support"
+
 endif
diff --git a/net/Makefile b/net/Makefile
index 8d564e7..eb8d439 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_NET)	+= eth.o
 obj-$(CONFIG_NET)	+= net.o
 obj-$(CONFIG_NET_NFS)	+= nfs.o
 obj-$(CONFIG_NET_DHCP)	+= dhcp.o
+obj-$(CONFIG_NET_SNTP)	+= sntp.o
 obj-$(CONFIG_CMD_PING)	+= ping.o
 obj-$(CONFIG_NET_RESOLV)+= dns.o
 obj-$(CONFIG_NET_NETCONSOLE) += netconsole.o
diff --git a/net/sntp.c b/net/sntp.c
new file mode 100644
index 0000000..3b9f244
--- /dev/null
+++ b/net/sntp.c
@@ -0,0 +1,173 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <asm/byteorder.h>
+#include <asm/unaligned.h>
+#include <asm-generic/div64.h>
+#include <command.h>
+#include <clock.h>
+#include <net.h>
+#include <sntp.h>
+#include <errno.h>
+#include <environment.h>
+#include <linux/err.h>
+
+#define SNTP_PORT       123
+#define TIMEOUT         1
+
+#define VERSION         4	/* version number */
+
+#define M_RSVD          0	/* reserved */
+#define M_SACT          1	/* symmetric active */
+#define M_PASV          2	/* symmetric passive */
+#define M_CLNT          3	/* client */
+#define M_SERV          4	/* server */
+#define M_BCST          5	/* broadcast server */
+#define M_BCLN          6	/* broadcast client */
+
+typedef uint64_t tstamp;	/* NTP timestamp format */
+typedef uint32_t tdist;		/* NTP short format */
+
+struct ntp_packet {
+#if __BYTE_ORDER == __LITTLE_ENDIAN	// reversed
+	unsigned int mode:3;	/* mode */
+	unsigned int version:3;	/* version number */
+	unsigned int leap:2;	/* leap indicator */
+#elif __BYTE_ORDER == __BIG_ENDIAN	// forward
+	unsigned int leap:2;	/* leap indicator */
+	unsigned int version:3;	/* version number */
+	unsigned int mode:3;	/* mode */
+#else
+#error "byte order undefined"
+#endif
+	uint8_t stratum;	/* stratum */
+	uint8_t poll;		/* poll interval */
+	int8_t precision;	/* precision */
+	tdist rootdelay;	/* root delay */
+	tdist rootdisp;		/* root dispersion */
+	uint32_t refid;		/* reference ID */
+	tstamp reftime;		/* reference time */
+	tstamp org;		/* origin timestamp */
+	tstamp rec;		/* receive timestamp */
+	tstamp xmt;		/* transmit timestamp */
+};
+
+static IPaddr_t net_sntp_ip;
+
+#define SNTP_STATE_INIT		0
+#define SNTP_STATE_SUCCESS	1
+
+static int sntp_state;
+
+static struct net_connection *sntp_con;
+
+static s64 curr_timestamp;
+
+static int sntp_send(void)
+{
+	struct ntp_packet *ntp = net_udp_get_payload(sntp_con);
+
+	memset(ntp, 0, sizeof(struct ntp_packet));
+
+	ntp->version = VERSION;
+	ntp->mode = M_CLNT;
+
+	return net_udp_send(sntp_con, sizeof(struct ntp_packet));
+}
+
+static void sntp_handler(void *ctx, char *pkt, unsigned len)
+{
+	IPaddr_t ip_addr;
+	struct iphdr *ip = net_eth_to_iphdr(pkt);
+	struct ntp_packet *ntp =
+	    (struct ntp_packet *)net_eth_to_udp_payload(pkt);
+
+	ip_addr = net_read_ip((void *)&ip->saddr);
+	if (ip_addr != net_sntp_ip)
+		return;
+
+	len = net_eth_to_udplen(pkt);
+	if (len < sizeof(struct ntp_packet))
+		return;
+
+	pr_debug("received SNTP response\n");
+
+	if (ntp->version != VERSION)
+		return;
+
+	if (ntp->mode != M_SERV)
+		return;
+
+	curr_timestamp = (get_unaligned_be64(&ntp->xmt) >> 32) - 2208988800UL;
+
+	sntp_state = SNTP_STATE_SUCCESS;
+}
+
+s64 sntp(const char *server)
+{
+	int ret, repeat = 5;
+	u64 sntp_start;
+
+	if (!server)
+		server = getenv("global.dhcp.ntpserver");
+	if (!server)
+		return -EINVAL;
+
+	net_sntp_ip = resolv(server);
+	if (!net_sntp_ip) {
+		printf("unknown host %s\n", server);
+		return 1;
+	}
+
+	sntp_con = net_udp_new(net_sntp_ip, SNTP_PORT, sntp_handler, NULL);
+	if (IS_ERR(sntp_con)) {
+		ret = PTR_ERR(sntp_con);
+		goto out;
+	}
+
+	sntp_start = get_time_ns();
+	ret = sntp_send();
+	if (ret)
+		goto out_unreg;
+
+	sntp_state = SNTP_STATE_INIT;
+
+	while (sntp_state == SNTP_STATE_INIT) {
+		if (ctrlc()) {
+			ret = -EINTR;
+			break;
+		}
+
+		net_poll();
+
+		if (is_timeout(sntp_start, 1 * SECOND)) {
+			sntp_start = get_time_ns();
+			ret = sntp_send();
+			if (ret)
+				goto out_unreg;
+			repeat--;
+			if (!repeat) {
+				ret = -ETIMEDOUT;
+				goto out_unreg;
+			}
+		}
+	}
+
+	net_unregister(sntp_con);
+
+	return curr_timestamp;
+
+out_unreg:
+	net_unregister(sntp_con);
+out:
+	return ret;
+}
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
