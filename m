Delivery-date: Fri, 14 Oct 2022 18:37:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgs-008i7L-9X
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:37:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgp-0005TA-GR
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:37:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K5IxexRi71HQW2VIMPpoUGyzhi44UnMtiKxsbL8+UtM=; b=qqB2w9DhiXwj6szTR04urW5VO7
	TfwdM+H3DLjzNEdarCOOKQ3GOt7uq4Yi/r88x7DBMuASc5UreN4zfPTmz86bK1zPvlJ2nMRQ86yof
	zfXoav6uYdG9ZTCVZ6nkvSZA8tbJ3EKAP9MXyu7rGm+ncCybI7Yvq71A9MC1aSTf9tcQViRegx5sM
	YnqnFXORartcx4SLlxsaSQHalLSl84JMwJ30UjgWwiqmzp3EZ3FSVvNRfRP9ezNLJZg/WLQxWYeGD
	kdiuuOhC3muAjNg67YikdrYNobV7BeUVajLyombmNEpkvCkkH4a2iPxCOSY0Ecz3zHCt8FLi5njT7
	rPgwxefw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNfW-00FNhx-Hk; Fri, 14 Oct 2022 16:36:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNev-00FNT1-PF
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNet-0004xy-0z
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-001WSi-BE
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00Fzlb-Fg
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:31 +0200
Message-Id: <20221014163534.3812272-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093541_842792_AD8B3728 
X-CRM114-Status: GOOD (  13.18  )
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
Subject: [PATCH 5/8] state: rename backend members
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rename backend members to drop the assumption that the backend always
points to a partition. This is preperation work for the upcoming
state partition table support which allows us to store the state within
a MBR/GPT partition.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/state/state.c | 17 +++++++++--------
 common/state/state.h |  4 ++--
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 65e47524a3..6b8b701ba0 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -493,7 +493,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 
 	/* backend phandle */
 	backend_node = of_find_node_by_reproducible_name(root,
-						state->backend_reproducible_name);
+						state->backend_dts_dev_or_part);
 	if (!backend_node) {
 		ret = -ENODEV;
 		goto out;
@@ -572,8 +572,8 @@ void state_release(struct state *state)
 	unregister_device(&state->dev);
 	state_storage_free(&state->storage);
 	state_format_free(state->format);
-	free(state->backend_path);
-	free(state->backend_reproducible_name);
+	free(state->backend_dev_path);
+	free(state->backend_dts_dev_or_part);
 	free(state->of_path);
 	free(state);
 }
@@ -619,10 +619,11 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	if (ret)
 		goto out_release_state;
 
-	ret = of_find_path_by_node(backend_node, &state->backend_path, 0);
+	ret = of_find_path_by_node(backend_node, &state->backend_dev_path, 0);
 #else
-	ret = of_get_devicepath(backend_node, &state->backend_path, &offset, &size);
+	ret = of_get_devicepath(backend_node, &state->backend_dev_path, &offset, &size);
 #endif
+
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
 			dev_err(&state->dev, "state failed to parse path to backend: %s\n",
@@ -630,7 +631,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 		goto out_release_state;
 	}
 
-	state->backend_reproducible_name = of_get_reproducible_name(backend_node);
+	state->backend_dts_dev_or_part = of_get_reproducible_name(backend_node);
 
 	ret = of_property_read_string(node, "backend-type", &backend_type);
 	if (ret) {
@@ -653,7 +654,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	if (ret)
 		goto out_release_state;
 
-	ret = state_storage_init(state, state->backend_path, offset,
+	ret = state_storage_init(state, state->backend_dev_path, offset,
 				 size, stridesize, storage_type);
 	if (ret)
 		goto out_release_state;
@@ -766,7 +767,7 @@ void state_info(void)
 		if (state->format)
 			printf("(backend: %s, path: %s)\n",
 			       state->format->name,
-			       state->backend_path);
+			       state->backend_dev_path);
 		else
 			printf("(no backend)\n");
 	}
diff --git a/common/state/state.h b/common/state/state.h
index 0545cf6ac1..83a7fae4a5 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -119,8 +119,8 @@ struct state {
 
 	struct state_backend_format *format;
 	struct state_backend_storage storage;
-	char *backend_path;
-	char *backend_reproducible_name;
+	char *backend_dev_path;
+	char *backend_dts_dev_or_part;
 };
 
 enum state_convert {
-- 
2.30.2



