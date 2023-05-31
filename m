Delivery-date: Wed, 31 May 2023 17:01:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJv-004O3l-LV
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJr-0000qo-KX
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d0q+oJf3w7OQ5v+aLPWcfHMlSd5ezV3nkfCsYofq5eU=; b=vSti2y0taAnkIEi5L6Iq0v9jDP
	SLyAiy8AToiX7k+wPB5YcD+QhEcsoeYBi6PtiXhHrr98f0hcWV736N6FY62pHJucv0c164FKIt+cb
	SJL39OEtzjBtYzeudtNPK+G9XWzF5OeO9LVWLN/co7Wqtr3bQyGvQGsRSaKaJcTGZZJq+PPoSyG5T
	uQTB3jmCrbEzzhaTn6Cf0kIU8stE34gjV00771msfZl7QflHZsyjDCfS2E7L1BBCJdx1TqmslCj1z
	ac8PjUl0N4qJbr0T8eF1k0gG3tIKdrWDkaQ07U7tS+1nzFv9gOIvTbxJEOyJ6R4hKeZzKtV8qxrnC
	BtCEIrHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIi-000Bxd-25;
	Wed, 31 May 2023 14:59:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIb-000BsN-1g
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008E8-5P; Wed, 31 May 2023 16:59:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIS-0048H9-AC; Wed, 31 May 2023 16:59:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sDO-9q; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:24 +0200
Message-Id: <20230531145927.1399282-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Subject: [PATCH 15/18] state: factor device path lookup into helper function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The #ifdef __BAREBOX__ is meant for easier synchronization with
dt-utils. We'll keep that intact, but move it out of the function to not
break reading flow. After sync, dt-utils would now need to implement

  of_cdev_find
  cdev_to_devpath

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/state.c | 30 +++++++++++++++++++++++-------
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 11cc86ff73be..88e246198fb8 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -581,6 +581,20 @@ void state_release(struct state *state)
 	free(state);
 }
 
+#ifdef __BAREBOX__
+static char *cdev_to_devpath(struct cdev *cdev, off_t *offset, size_t *size)
+{
+	/*
+	 * We only accept partitions exactly mapping the barebox-state,
+	 * but dt-utils may need to set non-zero values here
+	 */
+	*offset = 0;
+	*size = 0;
+
+	return basprintf("/dev/%s", cdev->name);
+}
+#endif
+
 /*
  * state_new_from_node - create a new state instance from a device_node
  *
@@ -597,8 +611,9 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	const char *alias;
 	uint32_t stridesize;
 	struct device_node *partition_node;
-	off_t offset = 0;
-	size_t size = 0;
+	struct cdev *cdev;
+	off_t offset;
+	size_t size;
 
 	alias = of_alias_get(node);
 	if (!alias) {
@@ -617,11 +632,8 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 		goto out_release_state;
 	}
 
-#ifdef __BAREBOX__
-	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
-#else
-	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
-#endif
+	cdev = of_cdev_find(partition_node);
+	ret = PTR_ERR_OR_ZERO(cdev);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
 			dev_err(&state->dev, "state failed to parse path to backend: %s\n",
@@ -629,6 +641,10 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 		goto out_release_state;
 	}
 
+	state->backend_path = cdev_to_devpath(cdev, &offset, &size);
+
+	pr_debug("%s: backend resolved to %s\n", node->full_name, state->backend_path);
+
 	state->backend_reproducible_name = of_get_reproducible_name(partition_node);
 
 	ret = of_property_read_string(node, "backend-type", &backend_type);
-- 
2.39.2



