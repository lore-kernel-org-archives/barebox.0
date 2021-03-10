Delivery-date: Wed, 10 Mar 2021 14:30:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuW-0001Rl-3A
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:00 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuV-0004Ei-1a
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:29:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZKieBUQWOInBxyu81bAKuxZ9jzdfHkmEhInpmW9k6IY=; b=boAD2vfGy9bkC5lVQUz6hZzZn
	MWOweXIVD5GPbNd53hOM8P3L0u0hl9EvySLfXxrAz8jvnVknI5lwjekIh4papP58PCsn4BNhKwwM6
	EB9ne+iPaWUePLvRRz1VlFjAXQAYUhS5WB7z1/t7vvdFIeW60qRHRyEeXZ6oEjLyheqfOT1fb6uTL
	aqxcVPwoX4j0hXEdoAdx1SNdracXqfv5ODqbbch/c26pWuVoTr8KioMWZIwLdzfzQgPbR9Uyi59TP
	z1LOKlW41uRvJocJ7CUr+Xdb/z6cUGOc18db51IKsO7IwX3bolib++w9dHnZzTQnKJUiyvuS4NWAi
	K4X4bP9HA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJytJ-006utC-G3; Wed, 10 Mar 2021 13:28:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unW-FE
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fy-VZ; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006ce-OR; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:29 +0100
Message-Id: <20210310132829.7662-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132835_651565_6E27EE54 
X-CRM114-Status: GOOD (  14.98  )
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
Subject: [PATCH 17/17] of_firmware: Fix handling of firmware-name property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The fpga-region binding states that the firmware-name property must be
in the same node as the fpga-region compatible, so checking for this
compatible when walking up the parents is wrong. Instead, only test for
it in the target node. Also, when the current node is not a fpga-region
we must return successfully.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_firmware.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index d66f0ae7ce..cf288a0a88 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -11,11 +11,9 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 	struct device_node *mgr_node;
 
 	do {
-		if (of_device_is_compatible(np, "fpga-region")) {
-			mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
-			if (mgr_node)
-				return firmwaremgr_find_by_node(mgr_node);
-		}
+		mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
+		if (mgr_node)
+			return firmwaremgr_find_by_node(mgr_node);
 	} while ((np = of_get_parent(np)) != NULL);
 
 	return NULL;
@@ -39,6 +37,9 @@ static int load_firmware(struct device_node *target,
 	if (!target)
 		return -EINVAL;
 
+	if (!of_device_is_compatible(target, "fpga-region"))
+		return 0;
+
 	mgr = of_node_get_mgr(target);
 	if (!mgr)
 		return -EINVAL;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

