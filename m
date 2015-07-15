Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4U-0006Nf-Ps
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:27 +0000
Received: by laem6 with SMTP id m6so31443366lae.0
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:04 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.03
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:40 +0300
Message-Id: <1436991230-14251-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 02/12] picotcp: switch to Kbuild
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/picotcp/.gitignore       |  1 +
 net/picotcp/Kconfig          | 34 ++++++++++++++++++++++++++++++++++
 net/picotcp/Makefile         | 30 ++++++++++++++++++++++++++++++
 net/picotcp/modules/Makefile |  8 ++++++++
 net/picotcp/stack/Makefile   |  7 +++++++
 5 files changed, 80 insertions(+)

diff --git a/net/picotcp/.gitignore b/net/picotcp/.gitignore
index 88593da..10f36c8 100644
--- a/net/picotcp/.gitignore
+++ b/net/picotcp/.gitignore
@@ -22,3 +22,4 @@ cscope.out
 *.gcov
 *.gcda
 *.gcno
+*.o.cmd
diff --git a/net/picotcp/Kconfig b/net/picotcp/Kconfig
new file mode 100644
index 0000000..3882984
--- /dev/null
+++ b/net/picotcp/Kconfig
@@ -0,0 +1,34 @@
+if NET_PICOTCP
+
+config NET_PICO_SUPPORT_IPV4
+	bool
+	default y if NET_PICOTCP
+
+config NET_PICO_SUPPORT_IPFRAG
+	bool
+	default y if NET_PICO_SUPPORT_IPV4
+
+config NET_PICO_SUPPORT_ICMP4
+	bool
+	default y if NET_PICO_SUPPORT_IPV4
+
+config NET_PICO_SUPPORT_UDP
+	bool
+	default y if NET_PICO_SUPPORT_IPV4
+
+
+config NET_PICO_SUPPORT_ETH
+	bool
+	default y if NET_PICOTCP
+
+config NET_PICO_SUPPORT_DEVLOOP
+	bool
+	default y if NET_PICOTCP
+
+comment "Misc options"
+
+config NET_PICO_BIGENDIAN
+	bool
+	prompt "bigendian picotcp"
+
+endif # NET_PICOTCP
diff --git a/net/picotcp/Makefile b/net/picotcp/Makefile
new file mode 100644
index 0000000..8127453
--- /dev/null
+++ b/net/picotcp/Makefile
@@ -0,0 +1,30 @@
+ifeq ($(CONFIG_NET_PICO_SUPPORT_IPV4),y)
+CPPFLAGS += -DPICO_SUPPORT_IPV4
+endif
+
+ifeq ($(CONFIG_NET_PICO_SUPPORT_ICMP4),y)
+CPPFLAGS += -DPICO_SUPPORT_ICMP4 -DPICO_SUPPORT_PING
+endif
+
+ifeq ($(CONFIG_NET_PICO_SUPPORT_IPFRAG),y)
+CPPFLAGS += -DPICO_SUPPORT_IPFRAG
+endif
+
+ifeq ($(CONFIG_NET_PICO_SUPPORT_UDP),y)
+CPPFLAGS += -DPICO_SUPPORT_UDP
+endif
+
+ifeq ($(CONFIG_NET_PICO_SUPPORT_ETH),y)
+CPPFLAGS += -DPICO_SUPPORT_ETH
+endif
+
+ifeq ($(CONFIG_NET_PICO_SUPPORT_DEVLOOP),y)
+CPPFLAGS += -DPICO_SUPPORT_DEVLOOP
+endif
+
+ifeq ($(CONFIG_NET_PICO_BIGENDIAN),y)
+CPPFLAGS += -DPICO_BIGENDIAN
+endif
+
+obj-y += modules/
+obj-y += stack/
diff --git a/net/picotcp/modules/Makefile b/net/picotcp/modules/Makefile
new file mode 100644
index 0000000..2fa2261
--- /dev/null
+++ b/net/picotcp/modules/Makefile
@@ -0,0 +1,8 @@
+obj-$(CONFIG_NET_PICO_SUPPORT_IPV4) += pico_ipv4.o
+obj-$(CONFIG_NET_PICO_SUPPORT_IPFRAG) += pico_fragments.o
+obj-$(CONFIG_NET_PICO_SUPPORT_ICMP4) += pico_icmp4.o
+obj-$(CONFIG_NET_PICO_SUPPORT_UDP) += pico_udp.o pico_socket_udp.o
+
+obj-$(CONFIG_NET_PICO_SUPPORT_ETH) += pico_arp.o
+obj-$(CONFIG_NET_PICO_SUPPORT_DEVLOOP) += pico_dev_loop.o
+obj-y += pico_dev_null.o
diff --git a/net/picotcp/stack/Makefile b/net/picotcp/stack/Makefile
new file mode 100644
index 0000000..13be8d0
--- /dev/null
+++ b/net/picotcp/stack/Makefile
@@ -0,0 +1,7 @@
+obj-y += pico_device.o
+obj-y += pico_frame.o
+obj-y += pico_protocol.o
+obj-y += pico_socket.o
+obj-y += pico_socket_multicast.o
+obj-y += pico_stack.o
+obj-y += pico_tree.o
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
