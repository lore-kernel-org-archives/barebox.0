Delivery-date: Sat, 19 Jun 2021 05:47:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwj-0003OU-5K
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:47:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwh-0002ef-Sz
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:47:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaCI5HZQI4n/UXBIg2eOGNXbtNUeJBTpsqaONgMm0AA=; b=gBamBPYA0lSRnb
	MIIQxp27Geq2t8INVu7em7yNkIAuPTqbkbvwPtMAwy3qRu/ZLuI0aar4nz3QyWlukrx/B5vAJ32PQ
	sArb8e5emRrmB7WwVgxu0yh3CiH6dN+HEImB/4nL8U5EXc9cL7z2rlqHIpyGd2+8/MiHtqSy4Y5bm
	k9faJNE47HFQzCs068OhxycHDk3XDE5cEGRlsaxVnykFbXB0P0IMJ5tEupk5zLQPUGfHemLyQVLQv
	Rfu9A/Yzzj5gTNuF1urrPT3VucLgQqRSbKTAQ0+tzPYoLPt793dH0zmSlV5y/VEaiZ8G296tuZkqE
	RkL6u9T3l3aDBFPp86SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvU-00GC7l-FC; Sat, 19 Jun 2021 03:45:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRv7-00GBxs-90
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv6-0001vB-0y; Sat, 19 Jun 2021 05:45:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-00029u-0b; Sat, 19 Jun 2021 05:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:14 +0200
Message-Id: <20210619034516.6737-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204521_420562_11F59813 
X-CRM114-Status: GOOD (  21.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/13] of: of_net: sync of_get_mac_address with Linux for
 NVMEM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't use of_get_mac_address anywhere, but it can come in handy as a
last resort before barebox generates a random MAC address. With the
existing implementation, that MAC address is written literally into the
DT, so it's mainly useful when barebox is booted with an external device
tree. The kernel implementation adds support for parsing the MAC address
out of a revered mac-address nvmem cell, which is much more prevalent.

Sync the implementation with Linux v5.13 in preparation for using it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/of_net.c | 78 +++++++++++++++++++++++++++++++++++++--------
 include/of_net.h    | 21 +++++++++++-
 2 files changed, 84 insertions(+), 15 deletions(-)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index cee45971950b..67015160e230 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -9,6 +9,7 @@
 #include <net.h>
 #include <of_net.h>
 #include <linux/phy.h>
+#include <linux/nvmem-consumer.h>
 
 /**
  * It maps 'enum phy_interface_t' found in include/linux/phy.h
@@ -67,12 +68,55 @@ int of_get_phy_mode(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(of_get_phy_mode);
 
+static int of_get_mac_addr(struct device_node *np, const char *name, u8 *addr)
+{
+	struct property *pp = of_find_property(np, name, NULL);
+
+	if (pp && pp->length == ETH_ALEN && is_valid_ether_addr(pp->value)) {
+		memcpy(addr, pp->value, ETH_ALEN);
+		return 0;
+	}
+	return -ENODEV;
+}
+
+int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
+{
+	struct nvmem_cell *cell;
+	const void *mac;
+	size_t len;
+
+	if (!IS_ENABLED(CONFIG_NVMEM))
+		return -ENODEV;
+
+	cell = of_nvmem_cell_get(np, "mac-address");
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
+	memcpy(addr, mac, ETH_ALEN);
+	kfree(mac);
+
+	return 0;
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
@@ -85,18 +129,24 @@ EXPORT_SYMBOL_GPL(of_get_phy_mode);
  * this case, the real MAC is in 'local-mac-address', and 'mac-address' exists
  * but is all zeros.
 */
-const void *of_get_mac_address(struct device_node *np)
+int of_get_mac_address(struct device_node *np, u8 *addr)
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
+	int ret;
+
+	if (!np)
+		return -ENODEV;
+
+	ret = of_get_mac_addr(np, "mac-address", addr);
+	if (!ret)
+		return 0;
+
+	ret = of_get_mac_addr(np, "local-mac-address", addr);
+	if (!ret)
+		return 0;
+
+	ret = of_get_mac_addr(np, "address", addr);
+	if (!ret)
+		return 0;
 
-	return NULL;
+	return of_get_mac_addr_nvmem(np, addr);
 }
-EXPORT_SYMBOL(of_get_mac_address);
diff --git a/include/of_net.h b/include/of_net.h
index f37af58303a5..36f1058cbae8 100644
--- a/include/of_net.h
+++ b/include/of_net.h
@@ -6,8 +6,27 @@
 #ifndef __LINUX_OF_NET_H
 #define __LINUX_OF_NET_H
 
+#include <linux/types.h>
 #include <of.h>
+
+#ifdef CONFIG_OFDEVICE
+int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr);
+int of_get_mac_address(struct device_node *np, u8 *addr);
 int of_get_phy_mode(struct device_node *np);
-const void *of_get_mac_address(struct device_node *np);
+#else
+static inline int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
+{
+	return -ENOSYS;
+}
+static inline int of_get_mac_address(struct device_node *np, u8 *addr)
+{
+	return -ENOSYS;
+}
+
+static inline int of_get_phy_mode(struct device_node *np)
+{
+	return -ENOSYS;
+}
+#endif
 
 #endif /* __LINUX_OF_NET_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

