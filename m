Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGuse-000820-1B
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:08:12 +0000
Received: by lahe2 with SMTP id e2so24135558lah.1
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:22 +0300
Message-Id: <1437336443-8076-16-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 15/16] net: picotcp: add route command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/Makefile        |  1 +
 net/picotcp/Kconfig |  5 +++++
 net/picotcp_route.c | 36 ++++++++++++++++++++++++++++++++++++
 3 files changed, 42 insertions(+)

diff --git a/net/Makefile b/net/Makefile
index 04e347f..6261454 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -14,3 +14,4 @@ obj-$(CONFIG_NET_PICOTCP) += picotcp.o
 obj-$(CONFIG_CMD_PICOTCP_TEST_IPV4) += picotcp_test_ipv4.o
 obj-$(CONFIG_CMD_PICOTCP_IFCONFIG) += picotcp_ifconfig.o
 obj-$(CONFIG_CMD_PICOTCP_PING) += picotcp_ping.o
+obj-$(CONFIG_CMD_PICOTCP_ROUTE) += picotcp_route.o
diff --git a/net/picotcp/Kconfig b/net/picotcp/Kconfig
index cb60001..2cd04d2 100644
--- a/net/picotcp/Kconfig
+++ b/net/picotcp/Kconfig
@@ -48,4 +48,9 @@ config CMD_PICOTCP_PING
 	depends on NET_PICO_SUPPORT_ICMP4
 	prompt "ping command"
 
+config CMD_PICOTCP_ROUTE
+	bool
+	depends on NET_PICO_SUPPORT_IPV4
+	prompt "route command"
+
 endif # NET_PICOTCP
diff --git a/net/picotcp_route.c b/net/picotcp_route.c
new file mode 100644
index 0000000..d24e9ba
--- /dev/null
+++ b/net/picotcp_route.c
@@ -0,0 +1,36 @@
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+
+#include <pico_stack.h>
+#include <pico_ipv4.h>
+#include <pico_icmp4.h>
+
+static int do_route(int argc, char *argv[])
+{
+	struct pico_ipv4_route *r;
+	struct pico_tree_node *index;
+
+	printf("picotcp IPv4 routing table\n");
+	printf("Destination     Gateway         Genmask         Metric Iface\n");
+
+	pico_tree_foreach(index, &Routes) {
+		char ipstr[32];
+
+		r = index->keyValue;
+
+		pico_ipv4_to_string(ipstr, r->dest.addr);
+		printf("%-16s", ipstr);
+		pico_ipv4_to_string(ipstr, r->gateway.addr);
+		printf("%-16s", ipstr);
+		pico_ipv4_to_string(ipstr, r->netmask.addr);
+		printf("%-16s", ipstr);
+		printf("%-7d%s\n", r->metric, r->link->dev->name);
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_START(route)
+	.cmd		= do_route,
+BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
