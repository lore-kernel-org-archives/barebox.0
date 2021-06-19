Delivery-date: Sat, 19 Jun 2021 05:46:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwc-0003Nc-2p
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:46:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwa-0002bf-IV
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:46:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWwIXApUFd6gznsd+pCH/uv656iJOqsIxEu9fRlKVMk=; b=bHa96vt7z6FAP2
	Zkle3kSOhIcUrJo2xPZ1WLODj45iYP2IEHQLmUoTLWTyH9p7k2oCc9NZseWMIP3c+KU0L9zqLkMle
	t7mPG33huhKnBJftbtdgq/xi7Lx70WsgzsKlDmPABT4RQQODGmdvJo8b/vgnerC7eBqEKdkm3NPPS
	ej+f2MBwTbGAUNKKvYk872b0vgJ77ObxO6WqcSpDTJ61u8XgW+RJFgyC2bnM+MKepXrPFVLokbEcR
	RkcL22erXz6SXSZH6N+uz0xwBTMC4EEAlJHKQ9tnlPCBLeodyvTqugaKPbtBd5F1Z3QPFuZ0DziCz
	TSA2mhHAS2aTf/64M4wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvM-00GC3i-AU; Sat, 19 Jun 2021 03:45:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRv7-00GBxt-8w
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-0001vC-U3; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-00029x-12; Sat, 19 Jun 2021 05:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 05:45:15 +0200
Message-Id: <20210619034516.6737-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204521_451334_1244F791 
X-CRM114-Status: GOOD (  13.21  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 12/13] net: consult device tree for ethernet address in NVMEM
 as fall-back
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While barebox fixes up the mac-address into the device tree, it doesn't
care much for extracting a mac address _from_ the device tree, whether
it be from local-mac-address property or from a mac-address nvmem cell.

Fix the latter by calling of_get_mac_addr_nvmem for each Ethernet adapter.
We do this in a very late initcall, because we don't want to enforce a
probe a probe order between nvmem providers and network devices. We
can't do it at randomization time, because we need to fixup Ethernet mac
addresses, even when barebox itself doesn't ifup the netdev.

of_get_mac_addr_nvmem could be replaced by of_get_mac_address to also
parse local-mac-address and brethern, but justifying this change is left
as a future exercise.

Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/eth.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/net/eth.c b/net/eth.c
index 84f99d3aa822..762c5dfb8aa8 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -11,6 +11,7 @@
 #include <net.h>
 #include <dma.h>
 #include <of.h>
+#include <of_net.h>
 #include <linux/phy.h>
 #include <errno.h>
 #include <malloc.h>
@@ -504,3 +505,26 @@ void led_trigger_network(enum led_trigger trigger)
 	led_trigger(trigger, TRIGGER_FLASH);
 	led_trigger(LED_TRIGGER_NET_TXRX, TRIGGER_FLASH);
 }
+
+static int of_populate_ethaddr(void)
+{
+	char str[sizeof("xx:xx:xx:xx:xx:xx")];
+	struct eth_device *edev;
+	int ret;
+
+	list_for_each_entry(edev, &netdev_list, list) {
+		if (!edev->parent || is_valid_ether_addr(edev->ethaddr))
+			continue;
+
+		ret = of_get_mac_addr_nvmem(edev->parent->device_node, edev->ethaddr);
+		if (ret)
+			continue;
+
+		ethaddr_to_string(edev->ethaddr, str);
+		dev_info(&edev->dev, "Got preset MAC address from device tree: %s\n", str);
+		eth_set_ethaddr(edev, edev->ethaddr);
+	}
+
+	return 0;
+}
+postenvironment_initcall(of_populate_ethaddr);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

