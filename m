Delivery-date: Tue, 11 Jun 2024 07:13:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGtp3-0044fp-32
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 07:13:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGtp3-0007yq-Bp
	for lore@pengutronix.de; Tue, 11 Jun 2024 07:13:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ND/hH2O6kJFW9sZRhcRiHmOloRmXyWCgTrJaKraOBI=; b=SOJCHxnRxXQwX4qNEWF/F8GJtI
	hSA/KyGyAQsVJD9GwIKrb597BG21q53VhsBioLOse8OB0botMq88+Rfl66tqdmdC973kseL58ZS99
	auymuLV3A/0CG+Y8asLy2ijto4YQqBtad57v2hJFNI4DxescaR+/vRR0mOy9sXfDwb3z+Kcr3eSUH
	k3iTy/Vk9KuRsS7WbWjd6/c9asi4L3K36eb9lLSgpXr6BR0spwKyWFuibCQsjwOyaTpGiHfvorG3w
	fD5URTAxQu+WkNjQGFYIyALm+ZoNVYwBsj1ck6EhD4yHf7IhW8g8c5GCwzLVc4Xv+46hEsGNwGN/M
	wZ+EwXzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGtoR-00000007Q4d-2LCI;
	Tue, 11 Jun 2024 05:12:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGtoI-00000007Q2H-1yok
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 05:12:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoG-0007nr-13; Tue, 11 Jun 2024 07:12:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-001TFo-Kd; Tue, 11 Jun 2024 07:12:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-00HJc3-1j;
	Tue, 11 Jun 2024 07:12:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 11 Jun 2024 07:12:36 +0200
Message-Id: <20240611051237.4126918-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611051237.4126918-1-s.hauer@pengutronix.de>
References: <20240611051237.4126918-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_221242_579301_3D79DF30 
X-CRM114-Status: GOOD (  11.88  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/4] net: register eth class
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Register network devices as class devices. This allows us to implement
for_each_netdev() by iterating over the network class devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h | 4 ++--
 net/eth.c     | 6 ++++--
 net/ifup.c    | 2 +-
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/include/net.h b/include/net.h
index 5a6dd9ca7b..edfea0d105 100644
--- a/include/net.h
+++ b/include/net.h
@@ -599,8 +599,8 @@ void ifdown_edev(struct eth_device *edev);
 int ifdown(const char *name);
 void ifdown_all(void);
 
-extern struct list_head netdev_list;
+#define for_each_netdev(netdev) list_for_each_entry(netdev, &eth_class.devices, dev.class_list)
 
-#define for_each_netdev(netdev) list_for_each_entry(netdev, &netdev_list, list)
+extern struct class eth_class;
 
 #endif /* __NET_H__ */
diff --git a/net/eth.c b/net/eth.c
index 26a36474f8..9d7b5994a2 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -21,7 +21,7 @@
 #include <linux/ctype.h>
 #include <linux/stat.h>
 
-LIST_HEAD(netdev_list);
+DEFINE_DEV_CLASS(eth_class, "eth");
 
 struct eth_ethaddr {
 	struct list_head list;
@@ -445,7 +445,7 @@ int eth_register(struct eth_device *edev)
 	if (edev->init)
 		edev->init(edev);
 
-	list_add_tail(&edev->list, &netdev_list);
+	class_add_device(&eth_class, &edev->dev);
 
 	ret = eth_get_registered_ethaddr(edev, ethaddr);
 	if (!ret)
@@ -512,6 +512,8 @@ void eth_unregister(struct eth_device *edev)
 	if (IS_ENABLED(CONFIG_OFDEVICE))
 		free(edev->nodepath);
 
+	class_remove_device(&eth_class, &edev->dev);
+
 	free(edev->devname);
 
 	unregister_device(&edev->dev);
diff --git a/net/ifup.c b/net/ifup.c
index 5b92ee794d..41c1942670 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -358,7 +358,7 @@ int ifup_all(unsigned flags)
 	closedir(dir);
 
 	if ((flags & IFUP_FLAG_FORCE) || net_ifup_force_detect ||
-	    list_empty(&netdev_list))
+	    list_empty(&eth_class.devices))
 		device_detect_all();
 
 	/*
-- 
2.39.2



