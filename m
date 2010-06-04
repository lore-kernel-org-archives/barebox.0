Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034y-Cv
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:09 +0200
Message-Id: <1275645309-9756-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/13] add netconsole support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/users_manual.dox |    1 +
 Doxyfile                       |    3 +-
 net/Kconfig                    |    7 ++
 net/Makefile                   |    1 +
 net/netconsole.c               |  228 ++++++++++++++++++++++++++++++++++++++++
 5 files changed, 239 insertions(+), 1 deletions(-)
 create mode 100644 net/netconsole.c

diff --git a/Documentation/users_manual.dox b/Documentation/users_manual.dox
index 5467bee..cd2b99c 100644
--- a/Documentation/users_manual.dox
+++ b/Documentation/users_manual.dox
@@ -11,5 +11,6 @@ work easier.
 @li @subpage command_reference
 @li @subpage partitions
 @li @subpage x86_bootloader
+@li @subpage net_netconsole
 
 */
diff --git a/Doxyfile b/Doxyfile
index 94dd6ae..40bcb2f 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -485,7 +485,8 @@ INPUT                  = Documentation \
                          common \
                          board \
                          lib \
-                         scripts/setupmbr
+                         scripts/setupmbr \
+			 net
 
 # This tag can be used to specify the character encoding of the source files that
 # doxygen parses. Internally doxygen uses the UTF-8 encoding, which is also the default
diff --git a/net/Kconfig b/net/Kconfig
index a110bec..faf2c28 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -18,4 +18,11 @@ config NET_PING
 config NET_TFTP
 	bool
 	prompt "tftp support"
+
+config NET_NETCONSOLE
+	bool
+	prompt "network console support"
+	help
+	  This option adds support for a simple udp based network console.
+
 endif
diff --git a/net/Makefile b/net/Makefile
index bba6f0e..e42a484 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_NET)	+= net.o
 obj-$(CONFIG_NET_NFS)	+= nfs.o
 obj-$(CONFIG_NET_TFTP)	+= tftp.o
 obj-$(CONFIG_NET_PING)	+= ping.o
+obj-$(CONFIG_NET_NETCONSOLE) += netconsole.o
diff --git a/net/netconsole.c b/net/netconsole.c
new file mode 100644
index 0000000..07e6a6c
--- /dev/null
+++ b/net/netconsole.c
@@ -0,0 +1,228 @@
+/*
+ * netconsole.c - network console support
+ *
+ * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <linux/stat.h>
+#include <errno.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <stringlist.h>
+#include <net.h>
+#include <kfifo.h>
+#include <init.h>
+#include <linux/err.h>
+
+/**
+ * @file
+ * @brief Network console support
+ */
+
+struct nc_priv {
+	struct console_device cdev;
+	struct kfifo *fifo;
+	int busy;
+	struct net_connection *con;
+
+	uint16_t port;
+	IPaddr_t ip;
+};
+
+static struct nc_priv *g_priv;
+
+static void nc_handler(char *pkt, unsigned len)
+{
+	struct nc_priv *priv = g_priv;
+	unsigned char *packet = net_eth_to_udp_payload(pkt);
+
+	kfifo_put(priv->fifo, packet, net_eth_to_udplen(pkt));
+}
+
+static int nc_init(void)
+{
+	struct nc_priv *priv = g_priv;
+
+	if (priv->con)
+		net_unregister(priv->con);
+
+	priv->con = net_udp_new(priv->ip, priv->port, nc_handler);
+	if (IS_ERR(priv->con)) {
+		int ret = PTR_ERR(priv->con);
+		priv->con = NULL;
+		return ret;
+	}
+
+	net_udp_bind(priv->con, priv->port);
+	priv->cdev.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	return 0;
+}
+
+static int nc_getc(struct console_device *cdev)
+{
+	struct nc_priv *priv = container_of(cdev,
+					struct nc_priv, cdev);
+	unsigned char c;
+
+	while (!kfifo_len(priv->fifo))
+		net_poll();
+
+	kfifo_getc(priv->fifo, &c);
+
+	return c;
+}
+
+static int nc_tstc(struct console_device *cdev)
+{
+	struct nc_priv *priv = container_of(cdev,
+					struct nc_priv, cdev);
+
+	if (priv->busy)
+		return kfifo_len(priv->fifo) ? 1 : 0;
+
+	net_poll();
+
+	return kfifo_len(priv->fifo) ? 1 : 0;
+}
+
+static void nc_putc(struct console_device *cdev, char c)
+{
+	struct nc_priv *priv = container_of(cdev,
+					struct nc_priv, cdev);
+	unsigned char *packet;
+
+	if (!priv->con)
+		return;
+
+	if (priv->busy)
+		return;
+
+	packet = net_udp_get_payload(priv->con);
+	*packet = c;
+
+	priv->busy = 1;
+	net_udp_send(priv->con, 1);
+	priv->busy = 0;
+}
+
+static int nc_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	return 0;
+}
+
+static int nc_port_set(struct device_d *dev, struct param_d *param,
+		const char *val)
+{
+	struct nc_priv *priv = g_priv;
+	char portstr[16];
+	int port;
+
+	if (!val)
+		dev_param_set_generic(dev, param, NULL);
+
+	port = simple_strtoul(val, NULL, 10);
+	if (port > 65535)
+		return -EINVAL;
+
+	priv->port = port;
+	nc_init();
+
+	sprintf(portstr, "%d", port);
+	dev_param_set_generic(dev, param, portstr);
+
+	return 0;
+}
+
+static int nc_remoteip_set(struct device_d *dev, struct param_d *param,
+		const char *val)
+{
+	struct nc_priv *priv = g_priv;
+	IPaddr_t ip;
+	int ret;
+
+	if (!val)
+		dev_param_set_generic(dev, param, NULL);
+
+	if (string_to_ip(val, &ip))
+		return -EINVAL;
+
+	priv->ip = ip;
+	ret = nc_init();
+	if (ret)
+		return ret;
+
+	dev_param_set_generic(dev, param, val);
+
+	return 0;
+}
+
+static int netconsole_init(void)
+{
+	struct nc_priv *priv;
+	struct console_device *cdev;
+
+	priv = xzalloc(sizeof(*priv));
+	cdev = &priv->cdev;
+	cdev->tstc = nc_tstc;
+	cdev->putc = nc_putc;
+	cdev->getc = nc_getc;
+	cdev->setbrg = nc_setbaudrate;
+
+	g_priv = priv;
+
+	priv->fifo = kfifo_alloc(1024);
+
+	console_register(cdev);
+
+	dev_add_param(&cdev->class_dev, "ip", nc_remoteip_set, NULL, 0);
+	dev_add_param(&cdev->class_dev, "port", nc_port_set, NULL, 0);
+	dev_set_param(&cdev->class_dev, "port", "6666");
+
+	printf("registered netconsole as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
+
+	return 0;
+}
+
+device_initcall(netconsole_init);
+
+/** @page net_netconsole Network console
+
+@section net_netconsole Using an UDP based network console
+
+If enabled barebox supports a console via udp networking. There is only
+one network console supported registered during init time. It is deactivated
+by default because it opens great security holes, so use with care.
+
+To use the network console you have to configure the remote ip and the local
+and remote ports. Assuming the network console is registered as cs1, it can be
+configured with:
+
+@code
+cs1.ip=<remotehost>
+cs1.port=<port>
+cs1.active=ioe
+@endcode
+
+On the remote host call scripts/netconsole with bareboxes ip and port as
+parameters. port is initialized to 6666 by default.
+
+*/
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
