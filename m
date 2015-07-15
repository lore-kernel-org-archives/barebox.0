Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f41.google.com ([209.85.215.41])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZFT4i-0003Wm-IC
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:40 +0000
Received: by lagx9 with SMTP id x9so31439390lag.1
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:10 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.09
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:09 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:45 +0300
Message-Id: <1436991230-14251-8-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 07/12] net: picotcp: add test_picotcp command
To: barebox@lists.infradead.org

See original test_ipv4() from picotcp.git/test/unit/unit_ipv4.c.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/Makefile            |  2 ++
 net/picotcp/Kconfig     |  7 ++++
 net/picotcp_test_ipv4.c | 96 +++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 105 insertions(+)

diff --git a/net/Makefile b/net/Makefile
index 7a4597d..bfe74fb 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -10,3 +10,5 @@ obj-$(CONFIG_NET_IFUP)	+= ifup.o
 
 obj-$(CONFIG_NET_PICOTCP) += picotcp/
 obj-$(CONFIG_NET_PICOTCP) += picotcp.o
+
+obj-$(CONFIG_CMD_PICOTCP_TEST_IPV4) += picotcp_test_ipv4.o
diff --git a/net/picotcp/Kconfig b/net/picotcp/Kconfig
index 3882984..17b8293 100644
--- a/net/picotcp/Kconfig
+++ b/net/picotcp/Kconfig
@@ -31,4 +31,11 @@ config NET_PICO_BIGENDIAN
 	bool
 	prompt "bigendian picotcp"
 
+comment "Commands"
+
+config CMD_PICOTCP_TEST_IPV4
+	bool
+	depends on NET_PICO_SUPPORT_IPV4
+	prompt "test_picotcp command"
+
 endif # NET_PICOTCP
diff --git a/net/picotcp_test_ipv4.c b/net/picotcp_test_ipv4.c
new file mode 100644
index 0000000..314d21c
--- /dev/null
+++ b/net/picotcp_test_ipv4.c
@@ -0,0 +1,96 @@
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+
+#include <pico_stack.h>
+#include <pico_ipv4.h>
+#include <pico_dev_null.h>
+
+#define fail_if(a, msg) \
+	if (a) { \
+		printf("%s\n", msg); \
+		return; \
+	}
+
+#define fail_unless(a, msg) fail_if(!(a), msg)
+
+static void do_test_ipv4(void)
+{
+	#define IP_TST_SIZ 256
+	int i;
+
+	struct pico_device *dev[IP_TST_SIZ];
+	char devname[8];
+	struct pico_ip4 a[IP_TST_SIZ], d[IP_TST_SIZ], *source[IP_TST_SIZ], nm16, nm32, gw[IP_TST_SIZ], r[IP_TST_SIZ], ret;
+	struct pico_ipv4_link *l[IP_TST_SIZ];
+
+	char ipstr[] = "192.168.1.1";
+	struct pico_ip4 ipaddr;
+
+	struct pico_frame *f_NULL = NULL;
+	struct pico_ip4 *dst_NULL = NULL;
+
+	nm16.addr = long_be(0xFFFF0000);
+	nm32.addr = long_be(0xFFFFFFFF);
+
+	/*link_add*/
+	for (i = 0; i < IP_TST_SIZ; i++) {
+		snprintf(devname, 8, "nul%d", i);
+		dev[i] = pico_null_create(devname);
+		a[i].addr = long_be(0x0a000001 + (i << 16));
+		d[i].addr = long_be(0x0a000002 + (i << 16));
+		fail_if(pico_ipv4_link_add(dev[i], a[i], nm16) != 0, "Error adding link");
+	}
+	/*link_find + link_get + route_add*/
+	for (i = 0; i < IP_TST_SIZ; i++) {
+		gw[i].addr = long_be(0x0a0000f0 + (i << 16));
+		r[i].addr = long_be(0x0c00001 + (i << 16));
+		fail_unless(pico_ipv4_link_find(&a[i]) == dev[i], "Error finding link");
+		l[i] = pico_ipv4_link_get(&a[i]);
+		fail_if(l[i] == NULL, "Error getting link");
+		fail_if(pico_ipv4_route_add(r[i], nm32, gw[i], 1, l[i]) != 0, "Error adding route");
+		fail_if(pico_ipv4_route_add(d[i], nm32, gw[i], 1, l[i]) != 0, "Error adding route");
+	}
+	/*get_gateway + source_find*/
+	for (i = 0; i < IP_TST_SIZ; i++) {
+		ret = pico_ipv4_route_get_gateway(&r[i]);
+		fail_if(ret.addr != gw[i].addr, "Error get gateway: returned wrong route");
+		source[i] = pico_ipv4_source_find(&d[i]);
+		fail_if(source[i]->addr != a[i].addr, "Error find source: returned wrong route");
+	}
+	/*route_del + link_del*/
+	for (i = 0; i < IP_TST_SIZ; i++) {
+		fail_if(pico_ipv4_route_del(r[i], nm32, 1) != 0, "Error deleting route");
+		fail_if(pico_ipv4_link_del(dev[i], a[i]) != 0, "Error deleting link");
+	}
+	/*string_to_ipv4 + ipv4_to_string*/
+	pico_string_to_ipv4(ipstr, &(ipaddr.addr));
+	fail_if(ipaddr.addr != long_be(0xc0a80101), "Error string to ipv4");
+	memset(ipstr, 0, 12);
+	pico_ipv4_to_string(ipstr, ipaddr.addr);
+	fail_if(strncmp(ipstr, "192.168.1.1", 11) != 0, "Error ipv4 to string");
+
+	/*valid_netmask*/
+	fail_if(pico_ipv4_valid_netmask(long_be(nm32.addr)) != 32, "Error checking netmask");
+
+	/*is_unicast*/
+	fail_if((pico_ipv4_is_unicast(long_be(0xc0a80101))) != 1, "Error checking unicast");
+	fail_if((pico_ipv4_is_unicast(long_be(0xe0000001))) != 0, "Error checking unicast");
+
+	/*rebound*/
+	fail_if(pico_ipv4_rebound(f_NULL) != -1, "Error rebound frame");
+
+	/*frame_push*/
+	fail_if(pico_ipv4_frame_push(f_NULL, dst_NULL, PICO_PROTO_TCP) != -1, "Error push frame");
+}
+
+static int do_test_picotcp(int argc, char *argv[])
+{
+	do_test_ipv4();
+
+	return 0;
+}
+
+BAREBOX_CMD_START(test_picotcp)
+	.cmd		= do_test_picotcp,
+BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
