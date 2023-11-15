Delivery-date: Wed, 15 Nov 2023 10:04:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Box-00CJFO-24
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 10:04:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Box-0002v3-GQ
	for lore@pengutronix.de; Wed, 15 Nov 2023 10:04:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yGVDH0nA2YLPW8m0BD9QPBIueqYAMLVEM7GzcUmtlHY=; b=DoIRKwZQkPSqpI6NyX22gGPWLP
	j9bxgpbBbYPyH0FG8sq8g6XRTm2LcL7rULCsf24PmH3yoci611/f9gCiTmI3r4TB4J8knhwLwhnfG
	3Bu3UWovmPO8KXT0rIrgPiXCPvmPnac1eQJITh4qS8d+pNRD8ena6WtjL9YwPWCTlpAxJS0vsS9eL
	rcj3cCV0AVoRYxl59/7mzYG+w3Lu4JvsqmYU2JGCx6T1mgnLY6QNDUFRqUEkGbw+1OYFlarewilTt
	nIRqMsQ/GW+KfMWghAlGy1fw2bOKI5iwI7xB+nd5HU4Q6xytINwmcoZp6L6YxvJN+SkARnio7JLZC
	+ZsGqgjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3BnW-000Hrf-2d;
	Wed, 15 Nov 2023 09:02:58 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3BnQ-000Hp9-0b
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 09:02:55 +0000
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id CBAB0B80419; Wed, 15 Nov 2023 10:02:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1700038966;
	bh=LguRF5s5uRK8R6wp6VROnE6tgTDfvDqqOQ6LucuAwQw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eAqTaLm9+xw2DfCfWkf6Pl65qcBzYK/VYil83SiuCD0q4mDbThWZF72HyiiHTNc9t
	 JgkLd7nDCgbduglBwPocRi40eiEWIENgBH48C4Ar9ulBbeHD85dtYyf+H+NQYsDNhF
	 9WUzQenXjxthzlr6M1QNYEIbCSIoQNRqAVDMta7tGo5irctq8d9r8NL4wls2YC7b6S
	 wEQNSu2yR5xZxJLS0rSb1JLQcLfC7svYZ4Xrl2ECRVTU6U85CsW0u6XM2UifJ/WTf/
	 8I114iWHRwIEt9P8EJ3THBP6s9mLviuoJV11lMm1wOuJXd/RVfGKtpclkQIPH7IK3t
	 CFkX0CtwxzYPw==
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	Thorsten Scherer <T.Scherer@eckelmann.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	barebox@lists.infradead.org
Date: Wed, 15 Nov 2023 10:02:41 +0100
Message-ID: <20231115090238.399200-3-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.42.0.586.gbc5204569f7d.dirty
In-Reply-To: <20231115090238.399200-1-uwe@kleine-koenig.org>
References: <20231115090238.399200-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5752; i=uwe@kleine-koenig.org; h=from:subject; bh=7kXRwEsIBK2DgI3SxtnMFcCJLbBDu37vU7RPMOQsnEg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlVIkxU0v6gVhcnpRLll5A/Bqez4HVygB0Gx1C4 v//uhWiYDaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZVSJMQAKCRCPgPtYfRL+ Th1AB/46yJJ8K/J6qwYlCySGjxgRbiGXotEXEoOMQbY2E8MakB0KJTiHjJHgDCext3D+OdFcmvZ uSGj6BcFkFfrtRNBk+rcr5kp+l4ioyPtAav3wd82dq1+G8S+EEy9cXU/wUAHsSS7UOtOl2Qsmkr yLb76mtkNhCgT+C4wUXPDZsR89SqDX51C5CBwVlhMKcGkJ5ZRby0oQx6bwHBb2bdjWrp1q3D/8e wV+ZaLYdL2V8ZByPqbG7FeNR6oOebyOFX55X4Xf+DqQRDtksEF9p73+q19+mUdtPnQIiMpjHop7 qrooYGCxvvXUnzzbvF9Fb8nOn8o4jP7j51J1N2dk8tBy6D3d
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_010252_390036_0B41EB26 
X-CRM114-Status: GOOD (  18.64  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] net: add generic MAC address derivation from machine ID
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
 net/eth.c     | 15 ++++++++++++---
 net/net.c     | 49 +++++++++++++++++++++++++++++++++++++++++++++++--
 4 files changed, 78 insertions(+), 5 deletions(-)

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
index 59f14c23cba2..07e623670e22 100644
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
+	  alongside the hostname to generate MAC addresses that are unlikely
+	  to change between subsequent runs of barebox.
+
+	  This is not recommended for use in production as it may leak
+	  information about the machine ID.
+
 config NET_NFS
 	bool
 	prompt "nfs support"
diff --git a/net/eth.c b/net/eth.c
index ccac5e2a6488..d1474ec57df3 100644
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
@@ -554,10 +555,11 @@ void eth_open_all(void)
 	}
 }
 
-static int of_populate_ethaddr(void)
+static int populate_ethaddr(void)
 {
 	char str[sizeof("xx:xx:xx:xx:xx:xx")];
 	struct eth_device *edev;
+	bool generated = false;
 	int ret;
 
 	list_for_each_entry(edev, &netdev_list, list) {
@@ -566,14 +568,21 @@ static int of_populate_ethaddr(void)
 
 		ret = of_get_mac_addr_nvmem(edev->parent->of_node,
 					    edev->ethaddr);
+		if (IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID) && ret) {
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
 
 	return 0;
 }
-postenvironment_initcall(of_populate_ethaddr);
+postenvironment_initcall(populate_ethaddr);
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
2.42.0.586.gbc5204569f7d.dirty



