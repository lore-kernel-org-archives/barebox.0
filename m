Delivery-date: Wed, 04 Feb 2026 21:02:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4m-008rmL-3C
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:02:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4k-0005tQ-0P
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:02:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+LhrkFuVZS0Vyf8gGnzpz0QwWWR7z3FEyPLZXnex5RU=; b=u+kmuwAYXjFGavqVeYXwteobEh
	zlUJBZCBRS/8g7QGdhAJJq+Oj5HaPgU31fA+IbTuSUXu8GGrDrdosnBufJrjzj/03lqQ0gSIoMJ58
	3++qDDSPRt9kYCP1f3rilrRUXSDrrHmzezABzScvOOmo/+sunusjRi3SyFQQTOacmnRZm+U/PrNrl
	WfE530wDqNSbv4b1q3E9RFY4nHfOuk1dHBY2K1EateGqv22yCGbkVHiBO8LQF48Tikl+isHarx2Cc
	T0gHDMqJMwSXCW2IeRRl/S0auDN6ljy0aOyUZMujB++0fG6fAL1a6QHDgR9pJ8JqSMbd+9AiVxelT
	tudUHE+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4A-0000000914m-1OJ4;
	Wed, 04 Feb 2026 20:01:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj42-000000090yw-3shI
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:01:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnj41-0005Eh-3G; Wed, 04 Feb 2026 21:01:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 04 Feb 2026 21:01:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-v2025-09-0-topic-optee-of-handling-v2-12-da075e6818e0@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_120127_031788_418DD125 
X-CRM114-Status: GOOD (  10.80  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/15] security: optee: add helpers to register OF
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add two helpers to make the OP-TEE overlay handling more convenient.

The first helper registers an optional OF overlay provided by
barebox-pbl.
The second helper can be used to query the status of the OF overlay, e.g
registered or not-registered.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/tee/optee/of_fixup.c | 41 +++++++++++++++++++++++++++++++++++++++++
 include/tee/optee.h          | 11 +++++++++++
 2 files changed, 52 insertions(+)

diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index 152322901a7e6af9c83da4c6a2d43f6e2c9af329..dbcc168201828d350f4545a07ce5f2676f18d09e 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -1,7 +1,10 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
+#define pr_fmt(fmt) "OP-TEE OF: " fmt
+
 #include <of.h>
 #include <linux/ioport.h>
+#include <linux/printk.h>
 #include <asm/barebox-arm.h>
 #include <tee/optee.h>
 
@@ -64,3 +67,41 @@ int of_optee_fixup(struct device_node *root, void *_data)
 
 	return of_fixup_reserved_memory(root, &res_shm);
 }
+
+static bool optee_ovl_registered;
+
+void optee_register_overlay(void)
+{
+	struct device_node *overlay;
+	size_t size = 0;
+	void *fdto;
+	int err;
+
+	if (optee_ovl_registered) {
+		pr_warn("overlay already registered, skip\n");
+		return;
+	}
+
+	fdto = handoff_data_get_entry(HANDOFF_DATA_TEE_DT_OVL, &size);
+	if (!fdto || size == 0)
+		return;
+
+	overlay = of_unflatten_dtb(fdto, size);
+	if (IS_ERR(overlay)) {
+		pr_warn("failed to unflatten overlay: %pe\n", overlay);
+		return;
+	}
+
+	err = of_register_overlay(overlay);
+	if (err) {
+		pr_warn("failed to register overlay: %pe\n", ERR_PTR(err));
+		return;
+	}
+
+	optee_ovl_registered = true;
+}
+
+bool optee_overlay_registered(void)
+{
+	return optee_ovl_registered;
+}
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 7126e3c6e24bbf0f37aee7827dc3b4d9619d3bc3..0c9a6e5e64723ca743d53b8cd1ffdefae5bd3c6f 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -38,6 +38,8 @@ int optee_verify_header (const struct optee_header *hdr);
 void optee_set_membase(const struct optee_header *hdr);
 int optee_get_membase(u64 *membase);
 void optee_handoff_overlay(void *ovl, unsigned int ovl_sz);
+void optee_register_overlay(void);
+bool optee_overlay_registered(void);
 
 #else
 
@@ -54,6 +56,15 @@ void optee_handoff_overlay(void *ovl, unsigned int ovl_sz)
 {
 }
 
+static inline void optee_register_overlay(void)
+{
+}
+
+static inline bool optee_overlay_registered(void)
+{
+	return false;
+}
+
 #endif /* CONFIG_HAVE_OPTEE */
 
 #ifdef __PBL__

-- 
2.47.3



