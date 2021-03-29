Delivery-date: Mon, 29 Mar 2021 21:51:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQxvZ-0006Iv-V8
	for lore@lore.pengutronix.de; Mon, 29 Mar 2021 21:51:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQxvY-0002TK-OL
	for lore@pengutronix.de; Mon, 29 Mar 2021 21:51:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/SgabBN24wBPHCHCJoZmFTre2aEtec9f3t+QnjVWKZg=; b=LXm6zrQeT23EnQVNlxioSNLdSx
	sIjPdB8DEM5rA26VIuA+Nt3Kiwi+kPba1y8NtRFC6VFaqgwlpbnvSHQCnDEY7J0zkchYHX/KyoCz/
	wxgyglF+j2Xlw30INFB/hPGzu53gjjSa5C8qhgbgIKgMGrLUGApOmsEXggng40GbRTmb6m4c5xhK2
	bxiZhWAtZhZB/Nb8mIypdeIw/44qam1aILHzDXBzp8KMRfasAut2xrYZMlMJtZNa1/hEqpFiDlDBg
	KUc0qk2pUMptKnTcupG1CE8NKKUC6tPIYAe7T00oDGLOU2de13onP6X+O2bfxZyrI/+CRi+JL+BRi
	p3UtSPPA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQxtn-001JZJ-0R; Mon, 29 Mar 2021 19:50:07 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQrfP-000fUN-U0
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 13:10:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1617023451; x=1619615451;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IQkDaybq0nLKCNgwalxVP9Pwt8mOVycNsioGwrwg7SM=;
 b=eMzX6pI+czwXjyAJNLucSPsDc1J0CdBvTvDAYeOwFGZCrpPFtqpyz/CLfUbl2A9G
 m1UXtLP3bEhTACoqJowprM508WU7hzSczUnxfDyo1yC4BVaK2uTvCbCtwBAwgmqW
 QznuCxWninfvbwpouBqJATUjOl7C0Mgg/m74j3KITU8=;
X-AuditID: c39127d2-85cb770000001c91-29-6061d1dbb111
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 24.6B.07313.BD1D1606;
 Mon, 29 Mar 2021 15:10:51 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021032915105134-253878 ;
 Mon, 29 Mar 2021 15:10:51 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 29 Mar 2021 15:10:48 +0200
Message-Id: <20210329131048.66199-1-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 29.03.2021 15:10:51,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.03.2021 15:10:51
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKJMWRmVeSWpSXmKPExsWyRoCBS/f2xcQEg6XtohYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJWx+SFLwWL+ijmL5zM1MB7h6WLk5JAQMJG4f3kCWxcjF4eQwDZG
 iQ9H77NCONcYJb7v6GMBqWITMJJYMK2RCcQWEZCXmLu/jRXEZhYwkLjesBosLizgJzH71V5m
 EJtFQFXi9ZMORhCbV8BGYsWEL0wQ2+QlZl76zg4RF5Q4OfMJC8gyCYErjBIPzq5mgSgSkji9
 +CwzxAJtiWULXzNPYOSbhaRnFpLUAkamVYxCuZnJ2alFmdl6BRmVJanJeimpmxiBQXN4ovql
 HYx9czwOMTJxMB5ilOBgVhLhFT6QmCDEm5JYWZValB9fVJqTWnyIUZqDRUmcdwNvSZiQQHpi
 SWp2ampBahFMlomDU6qBkTO/z/yZTa1Q3Oa8iuPHZwVMsvy2ZM0k8Yzba99+CbVSFTvqEXnI
 wOrej0ln7zVU6Hi6b+VUCIj8teC3+J/QwH+uoR0ds5iEmbKehR1ptojxV7555E7a/scSOyfL
 /H5laOx+fgWP5NwFSU+zJyp3n/dQmiL4PsuuLZSL4+wCGyPJd9vTJxS4KrEUZyQaajEXFScC
 APS/1E4IAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_141052_121561_648795BB 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: eth: of_fixup_node: Use reproducible node name for fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To be able to fixup older devicetrees, prior to v4.15 where leading
zeros of the unit addresses were removed, use the reproducible name to
find the corresponding nodes.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 net/eth.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 626b35d5cc65..84f99d3aa822 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -304,7 +304,8 @@ static void eth_of_fixup_node(struct device_node *root,
 			      const char *node_path, int ethid,
 			      const u8 ethaddr[ETH_ALEN])
 {
-	struct device_node *node;
+	struct device_node *bb_node, *fixup_node;
+	char *name;
 	int ret;
 
 	if (!is_valid_ether_addr(ethaddr)) {
@@ -314,22 +315,25 @@ static void eth_of_fixup_node(struct device_node *root,
 	}
 
 	if (node_path) {
-		node = of_find_node_by_path_from(root, node_path);
+		bb_node = of_find_node_by_path_from(0, node_path);
+		name = of_get_reproducible_name(bb_node);
+		fixup_node = of_find_node_by_reproducible_name(root, name);
+		free(name);
 	} else {
 		char eth[12];
 		sprintf(eth, "ethernet%d", ethid);
-		node = of_find_node_by_alias(root, eth);
+		fixup_node = of_find_node_by_alias(root, eth);
 	}
 
-	if (!node) {
+	if (!fixup_node) {
 		pr_debug("%s: no node to fixup\n", __func__);
 		return;
 	}
 
-	ret = of_set_property(node, "mac-address", ethaddr, ETH_ALEN, 1);
+	ret = of_set_property(fixup_node, "mac-address", ethaddr, ETH_ALEN, 1);
 	if (ret)
 		pr_err("Setting mac-address property of %s failed with: %s\n",
-		       node->full_name, strerror(-ret));
+		       fixup_node->full_name, strerror(-ret));
 }
 
 static int eth_of_fixup(struct device_node *root, void *unused)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

