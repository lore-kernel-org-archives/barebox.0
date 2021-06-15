Delivery-date: Tue, 15 Jun 2021 23:10:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltGKp-0007gI-1e
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 23:10:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltGKn-0003Zw-Uz
	for lore@pengutronix.de; Tue, 15 Jun 2021 23:10:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NDwue6xmDCj39hAlmq/Zvdfi3Suc/c37Iryxc2czV4k=; b=GBBjXpl+32NbcX
	sD+yy875TW6xtHbAkIBsvnom5pLDPcZ76z3wJgoNgT/KjoeWrwMEcpAFaZrD/AHpDylEzIHI1m599
	ElfiKdb9X+/Y6CPblmWyiewLFmLvUSg1UbsEDpxZD+Ybyc0m4h5AZal2bqpkb5WJAdV2HEnDFV8am
	pPe/xbOOAkXRyrEXSRARonRrYumX/0aj7UmLsQ4UgOnwQ7iCsiDIZnPCluTL8c3gZypvNMxKGerT5
	naSMOPhqqp7vVo4GXQRq/v346qYXUVmztF52wbAJxHTdCEj5zNaSX9G2r1pwe655V6YeJJH9C7e2h
	i86C9Y4qfANLqscgFrBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltGJC-0031c6-8k; Tue, 15 Jun 2021 21:09:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltCgy-001fTm-C3
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 17:17:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1ltCgw-0000M2-GB
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 19:17:34 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1ltCgw-0000Wd-7X
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 19:17:34 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 15 Jun 2021 19:17:33 +0200
Message-Id: <20210615171733.1973-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_101736_449588_9B349750 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net/eth: read default mac-address default from dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since we have the function of_get_mac_address we can
use it to set the default mac address vom the dts.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 net/eth.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/net/eth.c b/net/eth.c
index 84f99d3aa8..baebf89d89 100644
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
@@ -431,6 +432,14 @@ int eth_register(struct eth_device *edev)
 	if (!ret)
 		found = 1;
 
+	if (!found && edev->parent) {
+		const u8 *maddr = of_get_mac_address(edev->parent->device_node);
+		if (maddr) {
+			memcpy(ethaddr, maddr, ETH_ALEN);
+			found = 1;
+		}
+	}
+
 	if (!found) {
 		ret = edev->get_ethaddr(edev, ethaddr);
 		if (!ret)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

