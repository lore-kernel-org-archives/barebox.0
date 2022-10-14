Delivery-date: Fri, 14 Oct 2022 18:37:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgk-008i5A-Ts
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:37:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgi-0005Pt-BS
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+0+OFlvozu/fC9BdUFNTel0M8DCJjGEaN5quEC+9kzY=; b=wESFCoo7P1EOc+BVaIHrnNr7o4
	9D5g1gh6V4pZbR87N0zeRqYni6e6pegaVLGY68VobMvo1svmMsZHkklUYW5RL9/uquODF6zgh3Myc
	j2HkH8hgbi0magf+zYpOTNAuVbZoUTUj1xxuMgBbvlwif3U/VZk1nYaLvpn2gHv3DFzKR1x3mPtkS
	Lsa+jjDys7T7LFNoyfODgIopFcrFb9YRO2ZCVTAkcA3ZT3s864sQSarSSWk0PgRWQPUmeT4nNZr9p
	5sXxNh3w6cCObQawHMQZ116DGl41fonN8vTW8B1kKoXZoj7jnCXpiiAGH8ebt5+MKdSIZOr+2NJwW
	Wmo25lxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNfI-00FNbx-GP; Fri, 14 Oct 2022 16:36:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNev-00FNSn-7W
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-0004xi-Fg
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNer-001WSY-Qr
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:37 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00Fzle-GD
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:32 +0200
Message-Id: <20221014163534.3812272-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093541_306659_DF36AF92 
X-CRM114-Status: GOOD (  14.86  )
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
Subject: [PATCH 6/8] state: factor out the backend property parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Move the backend parsing into a own subfunction. This is in preperation
of addding support for a new format which differs from the old one.

While on it introduce the state_of_find_path_by_node() wrapper define
which handles the different compile options: barebox build vs. dt-utils
build which makes the code easier to read. Also remove the unnecessary
ret initialization.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/state/state.c | 55 ++++++++++++++++++++++++++++++--------------
 1 file changed, 38 insertions(+), 17 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 6b8b701ba0..cee83ebde4 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -578,6 +578,42 @@ void state_release(struct state *state)
 	free(state);
 }
 
+#ifdef __BAREBOX__
+
+#define state_of_find_path_by_node(node, path, flags, offset, size) \
+	of_find_path_by_node(node, path, flags)
+
+#else
+
+#define state_of_find_path_by_node(node, path, flags, offset, size) \
+	of_get_devicepath(node, path, offset, size)
+
+#endif /* __BAREBOX__ */
+
+static int
+state_parse_old_backend_format(struct device_node *backend_node,
+			       struct state *state, off_t *offset, size_t *size)
+{
+	int ret;
+
+	ret = of_partition_ensure_probed(backend_node);
+	if (ret)
+		return ret;
+
+	ret = state_of_find_path_by_node(backend_node, &state->backend_dev_path,
+					 0, offset, size);
+	if (ret) {
+		if (ret != -EPROBE_DEFER)
+			dev_err(&state->dev, "state failed to parse path to backend: %s\n",
+			       strerror(-ret));
+		return ret;
+	}
+
+	state->backend_dts_dev_or_part = of_get_reproducible_name(backend_node);
+
+	return 0;
+}
+
 /*
  * state_new_from_node - create a new state instance from a device_node
  *
@@ -595,7 +631,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	const char *alias;
 	off_t offset = 0;
 	size_t size = 0;
-	int ret = 0;
+	int ret;
 
 	alias = of_alias_get(node);
 	if (!alias) {
@@ -614,25 +650,10 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 		goto out_release_state;
 	}
 
-#ifdef __BAREBOX__
-	ret = of_partition_ensure_probed(backend_node);
+	ret = state_parse_old_backend_format(backend_node, state, &offset, &size);
 	if (ret)
 		goto out_release_state;
 
-	ret = of_find_path_by_node(backend_node, &state->backend_dev_path, 0);
-#else
-	ret = of_get_devicepath(backend_node, &state->backend_dev_path, &offset, &size);
-#endif
-
-	if (ret) {
-		if (ret != -EPROBE_DEFER)
-			dev_err(&state->dev, "state failed to parse path to backend: %s\n",
-			       strerror(-ret));
-		goto out_release_state;
-	}
-
-	state->backend_dts_dev_or_part = of_get_reproducible_name(backend_node);
-
 	ret = of_property_read_string(node, "backend-type", &backend_type);
 	if (ret) {
 		dev_dbg(&state->dev, "Missing 'backend-type' property\n");
-- 
2.30.2



