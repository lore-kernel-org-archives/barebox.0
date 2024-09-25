Delivery-date: Wed, 25 Sep 2024 16:01:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaT-002cNa-0m
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:01:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaT-0002m9-JL
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:01:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z6UKk56XItinkQH69z7/GYVo5m4QIR8Lz9iIeamk0E4=; b=bSBRoKdZcrK05RDnvjhSV9pV3R
	az1GL74U0VrCLcpFnIlJr+TqjNIQCT9Icw94QQBuKM5Zv5uXoyhafDoXC98h8nHzeDRW+onbZ1tbu
	PmNxSzVw16/IbnoG07ZP0uYy1SKeLWbnsNXdW3XbG2h3DV8ipasQiRqrqMF1t1Vd+CRINRpjKrXHS
	BhjWOsPl/wVzKOCeVbBVJHQknNExSOo6G7hSzlf5kutioKFAvhI1/ntSdaBBM2BOKZ/NLo2BmZtSN
	A37evcPjNAzpyottJ/SPeHh4RIec3uSeCNslOpGZp9ewxwVepJrBj6Yrx54RJBYupmpdOeoUEBYr+
	fJx5IRng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZx-00000005VZi-1yeT;
	Wed, 25 Sep 2024 14:01:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZu-00000005VWd-0331
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:01:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-0002JK-MP; Wed, 25 Sep 2024 16:01:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-001SlF-6u; Wed, 25 Sep 2024 16:01:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-00DCyS-1w;
	Wed, 25 Sep 2024 16:01:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:01:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-of-graph-fixes-v1-1-c0a3ac989b0c@pengutronix.de>
References: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
In-Reply-To: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272872; l=1090;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=R+Dis2Xd4n5tZienXZ3Gg0OzDK+ZcWXmctCsnpb2lxA=;
 b=mLBtrlCDW4qTU+IFK9GKSfk/g2kAb5Rr1oGPno1XKmokKXBf017qUOb8XwpnH2P/W1o/l6eP1
 qUkQ9pN4GMKA0WIKPP4r3KRBe+uRW9UJVRXghp6mDWqavRRRsV3V1Lg
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070114_203822_B87421BC 
X-CRM114-Status: GOOD (  12.48  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] of: fix of_get_next_child() for prev->parent != node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_get_next_child() is supposed to return the next sibling of 'prev' and
the function does exactly that. It expects that 'node' is always the
same parent node. of_graph_get_next_endpoint() breaks this expectation,
it walks further down the tree and then calls of_get_next_child() with
'node' being some subnode of the original node. Fix this by retrieving
'node' always from 'prev' and use 'node' only on initial entry when
'prev' is NULL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 62d84786ae..6fd69e7d7d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2054,6 +2054,9 @@ EXPORT_SYMBOL(of_get_next_available_child);
 struct device_node *of_get_next_child(const struct device_node *node,
 	struct device_node *prev)
 {
+	if (prev)
+		node = prev->parent;
+
 	prev = list_prepare_entry(prev, &node->children, parent_list);
 	list_for_each_entry_continue(prev, &node->children, parent_list)
 		return prev;

-- 
2.39.5



