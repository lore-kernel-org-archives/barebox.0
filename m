Delivery-date: Mon, 11 Sep 2023 18:00:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjLF-00BfSm-BA
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 18:00:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjLC-0004Md-UD
	for lore@pengutronix.de; Mon, 11 Sep 2023 18:00:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xTet5CbSDnZkFakQkw1/yY9vXOwhHuikG2/jsqUvrgQ=; b=eOhdLIV+BKGOgYjaK4hEtRUT8Y
	I8gNQzOkT+1UD5+YWNJQo538mAiycy/DviqcjHsBwVdO90oIyVYoKNU2V2f7nZW2lsCawnpkktJ8z
	t6VzYdrCDfnLDsEUvlxxP5B69UhEbMfseJryLoObPkZenv277L+6qB8z0PNDOcLh0sW/Dcc4n9ExB
	yNyFFirk+64bcmFQwZdggggg9JawlZzqHta/uuA+OPLS5JnqmIQKG0LxIRCy4hOOyekDpSktVdqLt
	UYvYDUx7enc87jXV0E3G2MiqkDBbmXTU5bESDULcFgrT+xLABlMMJzhG6+vZ5GFUVeBI9yT6l/4VA
	5loiqwlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjK7-000xLb-39;
	Mon, 11 Sep 2023 15:59:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjK1-000xIU-1w
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:59:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjK0-0003yh-3O; Mon, 11 Sep 2023 17:59:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjJz-005aH5-DW; Mon, 11 Sep 2023 17:59:31 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjJy-00Ft0W-2k;
	Mon, 11 Sep 2023 17:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:59:27 +0200
Message-Id: <20230911155927.3786335-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_085933_641515_C55F7069 
X-CRM114-Status: GOOD (  18.80  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] net: add generic MAC address derivation from machine ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Especially during development, devices often lack a MAC address. While a
MAC address can be easily added to the environment:

  nv dev.eth0.ethaddr="aa:bb:cc:dd:ee:ff"

It's easily lost when flashing complete new images, e.g. from CI.
Make the development experience neater by deriving a stable MAC address
if possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h |  2 ++
 net/Kconfig   | 17 +++++++++++++++++
 net/eth.c     | 11 ++++++++++-
 net/net.c     | 49 +++++++++++++++++++++++++++++++++++++++++++++++--
 4 files changed, 76 insertions(+), 3 deletions(-)

diff --git a/include/net.h b/include/net.h
index a0ef8bee0404..de43c29f74ac 100644
--- a/include/net.h
+++ b/include/net.h
@@ -418,6 +418,8 @@ static inline int is_broadcast_ether_addr(const u8 *addr)
 #define ETH_ALEN	6	/* Octets in an Ethernet address */
 #define ETH_HLEN	14	/* Total octets in header.*/
 
+int generate_ether_addr(u8 *addr, int ethid);
+
 /**
  * random_ether_addr - Generate software assigned random Ethernet address
  * @addr: Pointer to a six-byte array containing the Ethernet address
diff --git a/net/Kconfig b/net/Kconfig
index 59f14c23cba2..04fcdcbe5bd5 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -6,6 +6,23 @@ menuconfig NET
 
 if NET
 
+config NET_ETHADDR_FROM_MACHINE_ID
+	bool
+	prompt "generate stable Ethernet address"
+	depends on MACHINE_ID && HAVE_DIGEST_SHA256 && HAVE_DIGEST_HMAC
+	help
+	  By default, barebox will generate random Ethernet addresses for
+	  interfaces that had no explicit Ethernet address set via
+	  either board code or NVMEM properties in device tree.
+
+	  Say y here, to randomize Ethernet addresses only if no machine ID
+	  is available. Should barebox have a machine ID, it will be used
+	  alonside the hostname to generate MAC addresses that are unlikely
+	  to change between subsequent runs of barebox.
+
+	  This is not recommended for use in production as it may leak
+	  information about the machine ID.
+
 config NET_NFS
 	bool
 	prompt "nfs support"
diff --git a/net/eth.c b/net/eth.c
index ccac5e2a6488..e74c00e74a9a 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -10,6 +10,7 @@
 #include <dhcp.h>
 #include <net.h>
 #include <dma.h>
+#include <machine_id.h>
 #include <of.h>
 #include <of_net.h>
 #include <linux/phy.h>
@@ -558,6 +559,7 @@ static int of_populate_ethaddr(void)
 {
 	char str[sizeof("xx:xx:xx:xx:xx:xx")];
 	struct eth_device *edev;
+	bool generated = false;
 	int ret;
 
 	list_for_each_entry(edev, &netdev_list, list) {
@@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
 
 		ret = of_get_mac_addr_nvmem(edev->parent->of_node,
 					    edev->ethaddr);
+		if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)) {
+			ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
+			generated = true;
+		}
 		if (ret)
 			continue;
 
 		ethaddr_to_string(edev->ethaddr, str);
-		dev_info(&edev->dev, "Got preset MAC address from device tree: %s\n", str);
+		if (generated)
+			dev_notice(&edev->dev, "Generated MAC address from unique id: %s\n", str);
+		else
+			dev_info(&edev->dev, "Got preset MAC address from NVMEM: %s\n", str);
 		eth_set_ethaddr(edev, edev->ethaddr);
 	}
 
diff --git a/net/net.c b/net/net.c
index bf2117ff7ec2..e38179491d7a 100644
--- a/net/net.c
+++ b/net/net.c
@@ -25,6 +25,7 @@
 #include <init.h>
 #include <globalvar.h>
 #include <magicvar.h>
+#include <machine_id.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
 
@@ -365,6 +366,43 @@ IPaddr_t net_get_gateway(void)
 
 static LIST_HEAD(connection_list);
 
+/**
+ * generate_ether_addr - Generates stable software assigned Ethernet address
+ * @addr: Pointer to a six-byte array to contain the Ethernet address
+ * @ethid: index of the Ethernet interface
+ *
+ * Derives an Ethernet address (MAC) from the machine ID, that's stable
+ * per board that is not multicast and has the local assigned bit set.
+ *
+ * Return 0 if an address could be generated or a negative error code otherwise.
+ */
+int generate_ether_addr(u8 *ethaddr, int ethid)
+{
+	const char *hostname;
+	uuid_t id;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID))
+		return -ENOSYS;
+
+	hostname = barebox_get_hostname();
+	if (!hostname)
+		return -EINVAL;
+
+	ret = machine_id_get_app_specific(&id, ARRAY_AND_SIZE("barebox-macaddr:"),
+					  hostname, strlen(hostname), NULL);
+	if (ret)
+		return ret;
+
+	memcpy(ethaddr, &id.b, ETH_ALEN);
+	eth_addr_add(ethaddr, ethid);
+
+	ethaddr[0] &= 0xfe;	/* clear multicast bit */
+	ethaddr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
+
+	return 0;
+}
+
 static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
 				      rx_handler_f *handler, void *ctx)
 {
@@ -381,9 +419,16 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
 
 	if (!is_valid_ether_addr(edev->ethaddr)) {
 		char str[sizeof("xx:xx:xx:xx:xx:xx")];
-		random_ether_addr(edev->ethaddr);
+
+		ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
+		if (ret)
+			random_ether_addr(edev->ethaddr);
+
 		ethaddr_to_string(edev->ethaddr, str);
-		dev_warn(&edev->dev, "No MAC address set. Using random address %s\n", str);
+
+		dev_warn(&edev->dev, "No MAC address set. Using %s %s\n",
+			 ret == 1 ? "address computed from unique ID" : "random address",
+			 str);
 		eth_set_ethaddr(edev, edev->ethaddr);
 	}
 
-- 
2.39.2



