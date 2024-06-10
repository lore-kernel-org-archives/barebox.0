Delivery-date: Mon, 10 Jun 2024 10:12:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGa98-003afU-1M
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 10:12:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGa97-0006KJ-Pz
	for lore@pengutronix.de; Mon, 10 Jun 2024 10:12:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YcwxU3HvB38IIhI9d5uaHYS/EsUvyNuBGVZpxXRM7FE=; b=lRumboLCdRf99hekwTYf6kYlKV
	jPIVKIaa8syp53UeusqorTiZYmGYy84x0hwsl68vWA9nXe2vmwkD3eNUugN7/D9tTDO7stsBZmcLW
	JJVC1/mZrU1+M9P0lYTzHLF/lm4X9dzd7uFrDRyU7L2xhdGP+BSgp8vL6iDVwUf92lFauqqixYWaq
	+mb+9YB3nsgSLIPWNlkoaEST+2y1zNb+UiI6YyHOJ7+XPzSlmiFycCLQ4/3q2OU2FBOA34e5Duf6q
	jeAYtgXEEeaukjMKMAc5LP3k7k/Nyz9XYHKxIDe0dDkIPaSqeOMP/I8K9Sb5U991K6rV8Nk1jW6+6
	VsgdGpig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGa8g-00000004CAe-48ap;
	Mon, 10 Jun 2024 08:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGa8W-00000004C67-1lJd
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 08:12:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8V-00066H-6j; Mon, 10 Jun 2024 10:12:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8U-001G33-QC; Mon, 10 Jun 2024 10:12:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8U-003h57-2I;
	Mon, 10 Jun 2024 10:12:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 10:12:12 +0200
Message-Id: <20240610081213.858714-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610081213.858714-1-s.hauer@pengutronix.de>
References: <20240610081213.858714-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_011216_553358_C1D6FD14 
X-CRM114-Status: GOOD (  12.09  )
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
Subject: [PATCH 3/4] net: register eth class
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
index 26a36474f8..74386d6e7b 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -21,7 +21,7 @@
 #include <linux/ctype.h>
 #include <linux/stat.h>
 
-LIST_HEAD(netdev_list);
+DECLARE_CLASS(eth_class, "eth");
 
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



