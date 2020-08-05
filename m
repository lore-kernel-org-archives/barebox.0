Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3GTU-0005es-Uc
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 10:16:48 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  5 Aug 2020 12:16:21 +0200
Message-Id: <20200805101628.4698-7-o.rempel@pengutronix.de>
In-Reply-To: <20200805101628.4698-1-o.rempel@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 06/13] of: of_net: sync of_get_mac_address() with latest
 kernel version
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Sync of_get_mac_address() with kernel 5.8-rc1 do add nvmem cell support

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/of_net.c | 63 ++++++++++++++++++++++++++++++++++++---------
 1 file changed, 51 insertions(+), 12 deletions(-)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index cee4597195..946c4a4352 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -67,12 +67,45 @@ int of_get_phy_mode(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(of_get_phy_mode);
 
+static const void *of_get_mac_addr(struct device_node *np, const char *name)
+{
+	struct property *pp = of_find_property(np, name, NULL);
+
+	if (pp && pp->length == ETH_ALEN && is_valid_ether_addr(pp->value))
+		return pp->value;
+	return NULL;
+}
+
+static const void *of_get_mac_addr_nvmem(struct device_node *np)
+{
+	int ret;
+	const void *mac;
+	u8 nvmem_mac[ETH_ALEN];
+	struct device_d *dev = of_find_device_by_node(np);
+
+	if (!dev)
+		return ERR_PTR(-ENODEV);
+
+	ret = nvmem_get_mac_address(dev, &nvmem_mac);
+	if (ret) {
+		return ERR_PTR(ret);
+	}
+
+	mac = kmemdup(nvmem_mac, ETH_ALEN, GFP_KERNEL);
+	if (!mac)
+		return ERR_PTR(-ENOMEM);
+
+	return mac;
+}
+
 /**
  * Search the device tree for the best MAC address to use.  'mac-address' is
  * checked first, because that is supposed to contain to "most recent" MAC
  * address. If that isn't set, then 'local-mac-address' is checked next,
- * because that is the default address.  If that isn't set, then the obsolete
- * 'address' is checked, just in case we're using an old device tree.
+ * because that is the default address. If that isn't set, then the obsolete
+ * 'address' is checked, just in case we're using an old device tree. If any
+ * of the above isn't set, then try to get MAC address from nvmem cell named
+ * 'mac-address'.
  *
  * Note that the 'address' property is supposed to contain a virtual address of
  * the register set, but some DTS files have redefined that property to be the
@@ -84,19 +117,25 @@ EXPORT_SYMBOL_GPL(of_get_phy_mode);
  * addresses.  Some older U-Boots only initialized 'local-mac-address'.  In
  * this case, the real MAC is in 'local-mac-address', and 'mac-address' exists
  * but is all zeros.
+ *
+ * Return: Will be a valid pointer on success and ERR_PTR in case of error.
 */
 const void *of_get_mac_address(struct device_node *np)
 {
-	const void *p;
-	int len, i;
-	const char *str[] = { "mac-address", "local-mac-address", "address" };
-
-	for (i = 0; i < ARRAY_SIZE(str); i++) {
-		p = of_get_property(np, str[i], &len);
-		if (p && (len == 6) && is_valid_ether_addr(p))
-			return p;
-	}
+	const void *addr;
 
-	return NULL;
+	addr = of_get_mac_addr(np, "mac-address");
+	if (addr)
+		return addr;
+
+	addr = of_get_mac_addr(np, "local-mac-address");
+	if (addr)
+		return addr;
+
+	addr = of_get_mac_addr(np, "address");
+	if (addr)
+		return addr;
+
+	return of_get_mac_addr_nvmem(np);
 }
 EXPORT_SYMBOL(of_get_mac_address);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
