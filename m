Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZFT4i-0003Wn-OB
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:41 +0000
Received: by lagw2 with SMTP id w2so31429301lag.3
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:13 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.11
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:47 +0300
Message-Id: <1436991230-14251-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
References: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 09/12] net: picotcp: add ping command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/Makefile        |  1 +
 net/picotcp/Kconfig |  5 ++++
 net/picotcp_ping.c  | 85 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 91 insertions(+)

diff --git a/net/Makefile b/net/Makefile
index d5b133b..04e347f 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_NET_PICOTCP) += picotcp.o
 
 obj-$(CONFIG_CMD_PICOTCP_TEST_IPV4) += picotcp_test_ipv4.o
 obj-$(CONFIG_CMD_PICOTCP_IFCONFIG) += picotcp_ifconfig.o
+obj-$(CONFIG_CMD_PICOTCP_PING) += picotcp_ping.o
diff --git a/net/picotcp/Kconfig b/net/picotcp/Kconfig
index 9a2d628..cb60001 100644
--- a/net/picotcp/Kconfig
+++ b/net/picotcp/Kconfig
@@ -43,4 +43,9 @@ config CMD_PICOTCP_IFCONFIG
 	depends on NET_PICO_SUPPORT_IPV4
 	prompt "ifconfig command"
 
+config CMD_PICOTCP_PING
+	bool
+	depends on NET_PICO_SUPPORT_ICMP4
+	prompt "ping command"
+
 endif # NET_PICOTCP
diff --git a/net/picotcp_ping.c b/net/picotcp_ping.c
new file mode 100644
index 0000000..d4ceb92
--- /dev/null
+++ b/net/picotcp_ping.c
@@ -0,0 +1,85 @@
+#include <command.h>
+#include <common.h>
+#include <complete.h>
+#include <driver.h>
+#include <poller.h>
+
+#include <pico_stack.h>
+#include <pico_ipv4.h>
+#include <pico_dev_null.h>
+#include <pico_dhcp_client.h>
+#include <pico_icmp4.h>
+
+#define NUM_PING 10
+
+static int ping_done;
+static int ping_code;
+
+/* callback function for receiving ping reply */
+void cb_ping(struct pico_icmp4_stats *s)
+{
+	char host[30];
+	int time_sec = 0;
+	int time_msec = 0;
+
+	/* convert ip address from icmp4_stats structure to string */
+	pico_ipv4_to_string(host, s->dst.addr);
+
+	/* get time information from icmp4_stats structure */
+	time_sec = s->time / 1000;
+	time_msec = s->time % 1000;
+
+	if (s->err == PICO_PING_ERR_REPLIED) {
+		/* print info if no error reported in icmp4_stats structure */
+		printf("%lu bytes from %s: icmp_req=%lu ttl=%lu time=%llu ms\n", \
+			s->size, host, s->seq, s->ttl, s->time);
+		if (s->seq == NUM_PING) {
+			ping_done = 1;
+		}
+	} else {
+		/* else, print error info */
+		printf("PING %lu to %s: Error %d\n", s->seq, host, s->err);
+		ping_done = 1;
+	}
+
+	ping_code = s->err;
+}
+
+static int do_picoping(int argc, char *argv[])
+{
+	int id;
+
+	if (argc < 1) {
+		perror("picoping");
+		return 1;
+	}
+
+	id = pico_icmp4_ping(argv[1], NUM_PING, 1000, 5000, 48, cb_ping);
+
+	if (id == -1) {
+		return -EIO;
+	}
+
+	ping_done = 0;
+	ping_code = PICO_PING_ERR_PENDING;
+
+	while (!ping_done) {
+		if (ctrlc()) {
+			break;
+		}
+		get_time_ns();
+		poller_call();
+	}
+
+	pico_icmp4_ping_abort(id);
+
+	if (ping_code != PICO_PING_ERR_REPLIED) {
+		return -EIO;
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_START(picoping)
+	.cmd		= do_picoping,
+BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
