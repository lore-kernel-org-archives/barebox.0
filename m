Delivery-date: Wed, 22 Nov 2023 18:42:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFJ-004epi-1e
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:42:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFJ-0002pu-Fq
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:42:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X38pfYynhXuFUFibxfC/lB9ptEstkj/yqfo9dIiYCHA=; b=M1x/7Rh8aZnzgYELr7Fn1ogpGE
	nGOftZ0vFzZzSXMN5RxSXAPWsaNlhLTfuJt06k+kt/SyBhdkIx7KFNO6vSOD83QelEx3yZmEuyZLP
	M8V4vJ5lQm8+jaDU0cMkrEwvL6uxwRQ4LXjSphREFXyfOjA2KT5V2B2JELY284ykt3IVK8Sl6B4KC
	1EOR3s4YfPFga4IAQd+gYurx585SWAe2P02lgM9z+4PyB5EBNZBn7bI6K/UtqnaNVkQFqzwN+z94o
	u1BRfBtbg9oYge+GEoBOLZGMRdg01nROX6cDLwJoia851xXIiJnsYm+nw4eJY3sZ11I6g5NhFWFuP
	Rnh6PkeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rE7-002hl3-2w;
	Wed, 22 Nov 2023 17:41:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rE2-002hgp-1t
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:41:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE1-0002BJ-FC; Wed, 22 Nov 2023 18:41:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE1-00ArWy-2O; Wed, 22 Nov 2023 18:41:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-001lAy-1E;
	Wed, 22 Nov 2023 18:30:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:47 +0100
Message-Id: <20231122172951.376531-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_094122_624145_4E69B2F7 
X-CRM114-Status: GOOD (  12.49  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 16/20] include: add blocking notifier aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All notifiers are blocking in barebox, but to avoid needless mechanical
fixups during porting, just provide the stubs in a new
<linux/notifier.h> header. While at it, also provide NOTIFY_DONE and
NOTIFY_OK for use in the notifier callbacks.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typo in commit message (Sascha)
---
 include/linux/notifier.h | 16 ++++++++++++++++
 include/notifier.h       |  3 +++
 2 files changed, 19 insertions(+)
 create mode 100644 include/linux/notifier.h

diff --git a/include/linux/notifier.h b/include/linux/notifier.h
new file mode 100644
index 000000000000..25f4921a3e80
--- /dev/null
+++ b/include/linux/notifier.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __LINUX_NOTIFIER_H
+#define __LINUX_NOTIFIER_H
+
+#include <notifier.h>
+
+#define BLOCKING_NOTIFIER_HEAD			NOTIFIER_HEAD
+
+#define blocking_notifier_call_chain		notifier_call_chain
+
+#define blocking_notifier_head			notifier_head
+
+#define blocking_notifier_chain_register	notifier_chain_register
+#define blocking_notifier_chain_unregister	notifier_chain_unregister
+
+#endif
diff --git a/include/notifier.h b/include/notifier.h
index 432b66c4ca5a..093fedb0e8e4 100644
--- a/include/notifier.h
+++ b/include/notifier.h
@@ -35,4 +35,7 @@ int clock_notifier_call_chain(void);
 		.blocks = LIST_HEAD_INIT((name).blocks),	\
 	};
 
+#define NOTIFY_DONE		0x0000		/* Don't care */
+#define NOTIFY_OK		0x0001		/* Suits me */
+
 #endif /* __NOTIFIER_H */
-- 
2.39.2



