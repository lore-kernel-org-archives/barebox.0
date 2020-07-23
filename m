Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyYXc-0000md-QP
 for barebox@lists.infradead.org; Thu, 23 Jul 2020 10:33:37 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 23 Jul 2020 12:33:19 +0200
Message-Id: <20200723103326.23226-5-o.rempel@pengutronix.de>
In-Reply-To: <20200723103326.23226-1-o.rempel@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 04/11] net: port nvmem_get_mac_address() from linux kernel
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Port nvmem help to read mac-address from nvmem cell linked to the
ethernet node. This function was ported from kernel 5.8-rc1.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/net.h |  4 ++++
 net/eth.c     | 38 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/include/net.h b/include/net.h
index 54db8a179a..a5bfe9e7f8 100644
--- a/include/net.h
+++ b/include/net.h
@@ -97,9 +97,13 @@ static inline void of_eth_register_ethaddr(struct device_node *node,
 		const char *ethaddr)
 {
 }
+static inline int nvmem_get_mac_address(struct device_d *dev, void *addrbuf)
+{
+}
 #else
 void eth_register_ethaddr(int ethid, const char *ethaddr);
 void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr);
+int nvmem_get_mac_address(struct device_d *dev, void *addrbuf);
 #endif
 /*
  *	Ethernet header
diff --git a/net/eth.c b/net/eth.c
index e3d0d06efe..b33ef5fe1f 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -29,6 +29,7 @@
 #include <globalvar.h>
 #include <environment.h>
 #include <linux/ctype.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/stat.h>
 
 static uint64_t last_link_check;
@@ -152,6 +153,43 @@ void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr)
 	list_add_tail(&addr->list, &ethaddr_list);
 }
 
+/**
+ * Obtain the MAC address from an nvmem cell named 'mac-address' associated
+ * with given device.
+ *
+ * @dev:	Device with which the mac-address cell is associated.
+ * @addrbuf:	Buffer to which the MAC address will be copied on success.
+ *
+ * Returns 0 on success or a negative error number on failure.
+ */
+int nvmem_get_mac_address(struct device_d *dev, void *addrbuf)
+{
+	struct nvmem_cell *cell;
+	const void *mac;
+	size_t len;
+
+	cell = nvmem_cell_get(dev, "mac-address");
+	if (IS_ERR(cell))
+		return PTR_ERR(cell);
+
+	mac = nvmem_cell_read(cell, &len);
+	nvmem_cell_put(cell);
+
+	if (IS_ERR(mac))
+		return PTR_ERR(mac);
+
+	if (len != ETH_ALEN || !is_valid_ether_addr(mac)) {
+		kfree(mac);
+		return -EINVAL;
+	}
+
+	memcpy(addrbuf, mac, ETH_ALEN);
+	kfree(mac);
+
+	return 0;
+}
+EXPORT_SYMBOL(nvmem_get_mac_address);
+
 struct eth_device *eth_get_byname(const char *ethname)
 {
 	struct eth_device *edev;
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
