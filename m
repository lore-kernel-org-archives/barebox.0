Delivery-date: Fri, 16 Apr 2021 11:59:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLG3-0001Ai-5R
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 11:59:27 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLG1-0006pD-Gf
	for lore@pengutronix.de; Fri, 16 Apr 2021 11:59:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cssFaIm4XO+qCpn8Ex6GskREmxuOdkAcZfN72jVVsMM=; b=T/Sy5mnLpt0qxyBY951YgI5VO
	t3Jyvg2jccvG8Sg4GTsD91O4VAnSyNKBZFlyqWDP/648NIgfEbzwCvrK87LtnwEmhOvVRMnJSVJVF
	DksPi9Ynsrm671LqtfP7PZyj1YIf7a1cCU/MFn4fq5eUqY2Vud7j8SDpPQ0StGJwJfvRTQBTbxp8/
	/YKhYNhNf9afXdZFufn6EWAjBdq4LBSilWFh8t/2TeejB1uXT1fpb+bYqHQOuK3mseD4Brmbk3aIf
	bl/w695vBi29cDFyC5jugZMIOQXWlum/vqujXjTn5FatSSeG3Gz7iB1dOQrADczKzPNX7/4aLDnhe
	aMSSEoWhA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLE9-001eCa-4a; Fri, 16 Apr 2021 09:57:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7P-001cV4-Uq
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=8G3OGr0oTa8DhiDd5cl3gMh3ZgGTFVkpVtB7/Dv5m1s=; b=MANk2DrewmAcU1zHr2xkRjMz58
 +lgMFmimbom8wBOr6RRggll1En/tpWQKGNJHJNtDzIOANU6L8txS3fecioAgj1XUoT3COpyyonMoy
 3mWHNoNChwsjw+d61pazoO7ijPVXNbdDP9qO9CoZiFlHOMxPIJda0QnVeFpp1EPVt1L7VSVzPhEBZ
 sKyDcQ8Lr+yCI9AF1n9YVm1kJQZ9JWsUvr7CqIy7bfRAs4HHW9TnzmUMoN6SoZq5LlVGNBoAf9OUe
 Z154oHwU955ZCfdAMKssYgrWLHbbQ1AZeJbnRLOZaedpymyD36W4WsnbZ8XUU5H6HcDIGic1WalzK
 KN0Uw8Bw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7N-009FyZ-FX
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:30 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7D-00051L-W5; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001Da-RK; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:32 +0200
Message-Id: <20210416094943.3648-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025029_536233_AB3151B2 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/17] of: Set of_chosen and of_model earlier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_chosen and of_model can be set once we have the device tree root node,
no need to wait until we probe the tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7b3cfa8393..1518854d2e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1682,6 +1682,9 @@ int of_modalias_node(struct device_node *node, char *modalias, int len)
 }
 EXPORT_SYMBOL_GPL(of_modalias_node);
 
+static struct device_node *of_chosen;
+static const char *of_model;
+
 struct device_node *of_get_root_node(void)
 {
 	return root_node;
@@ -1694,6 +1697,12 @@ int of_set_root_node(struct device_node *node)
 
 	root_node = node;
 
+	of_chosen = of_find_node_by_path("/chosen");
+	of_property_read_string(root_node, "model", &of_model);
+
+	if (of_model)
+		barebox_set_model(of_model);
+
 	of_alias_scan();
 
 	return 0;
@@ -2263,9 +2272,6 @@ int of_add_memory(struct device_node *node, bool dump)
 	return 0;
 }
 
-static struct device_node *of_chosen;
-static const char *of_model;
-
 const char *of_get_model(void)
 {
 	return of_model;
@@ -2325,12 +2331,6 @@ int of_probe(void)
 	if(!root_node)
 		return -ENODEV;
 
-	of_chosen = of_find_node_by_path("/chosen");
-	of_property_read_string(root_node, "model", &of_model);
-
-	if (of_model)
-		barebox_set_model(of_model);
-
 	firmware = of_find_node_by_path("/firmware");
 	if (firmware)
 		of_platform_populate(firmware, NULL, NULL);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

