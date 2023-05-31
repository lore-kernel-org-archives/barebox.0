Delivery-date: Wed, 31 May 2023 17:01:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJv-004O3o-8z
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJr-0000r7-SC
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SC3MiO9Jktt5cvtFq7hFN9FG1ZIXfDR8WS4P2gafWNc=; b=ssuCfjo6bBqxcmxeo1POupYclv
	ZIEOeDK4UBdJmFVFl3wpoKEZLPNiqXN4wB+yVPZb74P+0aLWkUOJx0xXPHVdMZuRFKN8oJSRSib13
	hLcdyQRAjXh0nm9LLJ5czhpNT/QQvtGQZVBGgNWq4faTskt9V1bc7OZwbaMAuiUNrS8okDsifVPOb
	exuRC4ehh1XDXsaHcRsUdK7M3a3LDZDgdOzjutBmZ1HJ4wO/7m39wNRLCTZWJAv2T635PvmLzM5+M
	nD70Gbu8f2AT6W2t0vBP74SZ39q8yb2uf7pjtI1jhZQ3kxTCXKHJK2nouF4XZEtHbzGMg35NGZ/fi
	r55T+zow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIl-000Bz8-01;
	Wed, 31 May 2023 14:59:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIb-000BsV-1h
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008F9-RQ; Wed, 31 May 2023 16:59:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0048Hi-75; Wed, 31 May 2023 16:59:34 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sCk-6p; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:14 +0200
Message-Id: <20230531145927.1399282-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_075941_659791_8DC8284A 
X-CRM114-Status: GOOD (  12.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/18] of: of_path: always call of_partition_ensure_probed before resolving
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_find_path may be called on a partition, whose parent device is not
yet probed. state code solves that by calling of_partition_ensure_probed
before of_find_path_by_nde, but really we should be doing that for all
calls to of_find_path. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/state.c | 4 ----
 drivers/of/of_path.c | 2 ++
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 6b4acbb32bcc..11cc86ff73be 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -618,10 +618,6 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	}
 
 #ifdef __BAREBOX__
-	ret = of_partition_ensure_probed(partition_node);
-	if (ret)
-		goto out_release_state;
-
 	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
 #else
 	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 1268cf36ee5b..059690e9b8e8 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -43,6 +43,8 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 	struct cdev *cdev;
 	bool add_bb = false;
 
+	of_partition_ensure_probed(node);
+
 	dev = of_find_device_by_node_path(node->full_name);
 	if (!dev) {
 		int ret;
-- 
2.39.2



