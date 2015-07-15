Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4d-0005HH-0c
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:35 +0000
Received: by lbbyj8 with SMTP id yj8so31751457lbb.0
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:11 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.10
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:11 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:46 +0300
Message-Id: <1436991230-14251-9-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 08/12] net: picotcp: add ifconfig command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/Makefile           |   1 +
 net/picotcp/Kconfig    |   5 +++
 net/picotcp_ifconfig.c | 116 +++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 122 insertions(+)

diff --git a/net/Makefile b/net/Makefile
index bfe74fb..d5b133b 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_NET_PICOTCP) += picotcp/
 obj-$(CONFIG_NET_PICOTCP) += picotcp.o
 
 obj-$(CONFIG_CMD_PICOTCP_TEST_IPV4) += picotcp_test_ipv4.o
+obj-$(CONFIG_CMD_PICOTCP_IFCONFIG) += picotcp_ifconfig.o
diff --git a/net/picotcp/Kconfig b/net/picotcp/Kconfig
index 17b8293..9a2d628 100644
--- a/net/picotcp/Kconfig
+++ b/net/picotcp/Kconfig
@@ -38,4 +38,9 @@ config CMD_PICOTCP_TEST_IPV4
 	depends on NET_PICO_SUPPORT_IPV4
 	prompt "test_picotcp command"
 
+config CMD_PICOTCP_IFCONFIG
+	bool
+	depends on NET_PICO_SUPPORT_IPV4
+	prompt "ifconfig command"
+
 endif # NET_PICOTCP
diff --git a/net/picotcp_ifconfig.c b/net/picotcp_ifconfig.c
new file mode 100644
index 0000000..1d4e89b
--- /dev/null
+++ b/net/picotcp_ifconfig.c
@@ -0,0 +1,116 @@
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+
+#include <pico_stack.h>
+#include <pico_ipv4.h>
+#include <pico_dev_null.h>
+#include <pico_icmp4.h>
+#include <pico_tree.h>
+
+extern struct pico_tree Device_tree;
+extern struct pico_tree Tree_dev_link;
+
+static void printf_iface(struct pico_device *dev)
+{
+	struct pico_ipv4_link *link;
+	struct pico_tree_node *index;
+
+	printf("%-10s", dev->name);
+
+	if (dev->eth) {
+		struct pico_ethdev *eth = dev->eth;
+
+		printf("Link encap:Ethernet  HWaddr ");
+		printf("%02x:%02x:%02x:%02x:%02x:%02x",
+			eth->mac.addr[0], eth->mac.addr[1],
+			eth->mac.addr[2], eth->mac.addr[3],
+			eth->mac.addr[4], eth->mac.addr[5]);
+	}
+	printf("\n");
+
+	pico_tree_foreach(index, &Tree_dev_link) {
+		link = index->keyValue;
+		if (dev == link->dev) {
+			char ipstr[16];
+			pico_ipv4_to_string(ipstr, link->address.addr);
+			printf("          inet addr:%s", ipstr);
+			pico_ipv4_to_string(ipstr, link->netmask.addr);
+			printf(" Mask:%s\n", ipstr);
+		}
+	}
+	printf("\n");
+}
+
+static int do_ifconfig(int argc, char *argv[])
+{
+	struct pico_device *picodev;
+	struct pico_ip4 ipaddr, nm;
+	int ret;
+
+	if (argc == 1) {
+		struct pico_tree_node *index;
+
+		pico_tree_foreach(index, &Device_tree) {
+			printf_iface(index->keyValue);
+		}
+
+		return 0;
+	}
+
+	picodev = pico_get_device(argv[1]);
+	if (!picodev) {
+		struct pico_device *dev;
+		struct pico_tree_node *index;
+
+		perror("wrong device name");
+
+		printf("available interfaces:\n");
+
+		pico_tree_foreach(index, &Device_tree) {
+			dev = index->keyValue;
+			printf("%s\n", dev->name);
+		}
+
+		return 1;
+	}
+
+	if (argc == 2) {
+		struct pico_tree_node *index;
+
+		pico_tree_foreach(index, &Device_tree) {
+			struct pico_device *dev = index->keyValue;
+
+			if (!strcmp(dev->name, argv[1])) {
+				printf_iface(dev);
+			}
+		}
+
+		return 0;
+	}
+
+	if (argc < 4) {
+		perror("ifconfig");
+		return 1;
+	}
+
+	ret = pico_string_to_ipv4(argv[2], &(ipaddr.addr));
+	if (ret) {
+		perror("wrong ipaddr");
+		return 1;
+	}
+
+	ret = pico_string_to_ipv4(argv[3], &(nm.addr));
+	if (ret) {
+		perror("wrong netmask");
+		return 1;
+	}
+
+	pico_ipv4_link_add(picodev, ipaddr, nm);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(ifconfig)
+	.cmd		= do_ifconfig,
+BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
