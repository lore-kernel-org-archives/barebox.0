Delivery-date: Wed, 10 Mar 2021 14:31:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvx-0001Wn-1f
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:31:29 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvw-000565-54
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:31:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qgdtItDT2P2LoH2HkmhPHuTvOBTVwDzNMr/AFvigYQU=; b=dTpCENJW1gxsVgJwp6Y4Hc3z8
	8/5TLzAPKPsCHIHgKcx5+WpO02zjkumEkRLpsOJEDM7X5vI23MxxIKZ+MQ7mHF8YpOtRWbhDFXfFZ
	yhlFZ38/Ma2yxT4750TWa8jR99k7AIljfCuJYKYzQEWkPmjL0JXegXlAv3uh07yLBmaa41Wm2p/DT
	BpFlSsioqiuisjjc96YmZyENk6YmQq4wPtWQiP08NCnc7Rm+YYRK2xYNa56gqtn8MDuMeZ+dLTq9L
	1PjUCWz3EPEdqHzAnQ4sD1AYmD4lnflvy9cPo79rfEfVUiM68TPf8CwBljidUJgleESHhZujtQX65
	X7GYwLDWw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyua-006vbi-16; Wed, 10 Mar 2021 13:30:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJytO-006uuY-EE
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:55 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fo-Un; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006c5-KL; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:19 +0100
Message-Id: <20210310132829.7662-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132852_275096_B17A3F5D 
X-CRM114-Status: GOOD (  15.62  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/17] firmware: recognize by reproducible name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

firmwaremgr_find_by_node() matches the device node pointers to find the
firmware manager associated to a node. This function is called by the
of_overlay code when it finds a firmware-name property to find a firmware
manager for this node. This works when the overlay is applied to the
live tree, but not when it's applied to the tree we are going to load
the kernel with. To overcome this limitation match by the nodes
reproducible name instead of pointers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/firmware.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index fce1f4b596..fc8ccd768c 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -66,10 +66,22 @@ struct firmware_mgr *firmwaremgr_find(const char *id)
 struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
 	struct firmware_mgr *mgr;
+	char *na, *nb;
 
-	list_for_each_entry(mgr, &firmwaremgr_list, list)
-		if (mgr->handler->device_node == np)
+	na = of_get_reproducible_name(np);
+
+	list_for_each_entry(mgr, &firmwaremgr_list, list) {
+		nb = of_get_reproducible_name(mgr->handler->device_node);
+		if (!strcmp(na, nb)) {
+			free(na);
+			free(nb);
 			return mgr;
+		}
+
+		free(nb);
+	}
+
+	free(na);
 
 	return NULL;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

