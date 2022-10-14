Delivery-date: Fri, 14 Oct 2022 18:38:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNhP-008i8p-3E
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:38:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNhM-0005eq-VL
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:38:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wQQmRIpiH5P2SRBVkWnAHt8dMzqAcMa+OxkXsONgzmA=; b=f2VK/NiWktcz5d3XAfUL1qq87H
	B1vEYM/720fwBkyrOj5lUywq1hl8J1+oQkZFuBzJsDM0TvMrYbaK24rgrwiV9fJ+jLKixR+U+aFGv
	efcIOtOCRQQo2pb5NZ2igxltAgurhtEB178BpesY8cJVchVJ3rB1rHrLarI0jFiTNtJIT9OSTm6M8
	xShErbsKytFlJNPShBw43OPFf/w8u0AVEyo6CzFLH50WptHIpfZ6CGGxrvwzXDp+00ka69MOaiQXE
	5+eDVlxrDVQexf8xs02wVIAnpLQAw3fHxA8gwWQE3AEnU5+z2i0NhG8oRMbecEO39Vt3tc7XSyK8t
	g039irPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNfz-00FNw7-JN; Fri, 14 Oct 2022 16:36:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNev-00FNT0-Ru
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNet-0004y3-1K
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-001WSn-D5
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00FzlV-EF
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:29 +0200
Message-Id: <20221014163534.3812272-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093541_939612_6E11E810 
X-CRM114-Status: GOOD (  10.89  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] state: rename partition_node to backend_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rename the local variable in preparation of addding support for backends
stored within a partition table. This also aligns the name with the name
used by of_state_fixup().

No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/state/state.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index a614c849c7..d954f0d453 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -593,7 +593,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	const char *storage_type = NULL;
 	const char *alias;
 	uint32_t stridesize;
-	struct device_node *partition_node;
+	struct device_node *backend_node;
 	off_t offset = 0;
 	size_t size = 0;
 
@@ -607,21 +607,21 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	if (IS_ERR(state))
 		return state;
 
-	partition_node = of_parse_phandle(node, "backend", 0);
-	if (!partition_node) {
+	backend_node = of_parse_phandle(node, "backend", 0);
+	if (!backend_node) {
 		dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
 		ret = -EINVAL;
 		goto out_release_state;
 	}
 
 #ifdef __BAREBOX__
-	ret = of_partition_ensure_probed(partition_node);
+	ret = of_partition_ensure_probed(backend_node);
 	if (ret)
 		goto out_release_state;
 
-	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
+	ret = of_find_path_by_node(backend_node, &state->backend_path, 0);
 #else
-	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
+	ret = of_get_devicepath(backend_node, &state->backend_path, &offset, &size);
 #endif
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
@@ -630,7 +630,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 		goto out_release_state;
 	}
 
-	state->backend_reproducible_name = of_get_reproducible_name(partition_node);
+	state->backend_reproducible_name = of_get_reproducible_name(backend_node);
 
 	ret = of_property_read_string(node, "backend-type", &backend_type);
 	if (ret) {
-- 
2.30.2



