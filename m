Delivery-date: Fri, 10 Feb 2023 15:57:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUpq-0038My-5O
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:57:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUpn-0007W7-4O
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:57:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2i+IPTemRo/HXAuLQ/Dvea1wzZHA0zkm5JMQbCHxJ7k=; b=AlAsQpZiWjG6bw
	gHbFCiQV3WwBJbl/qNKGtaWUuhSznMQH6doRzL5o+RIz2/M5AQj4wjDnG0NHclZ/5lLcKhLWIwtqT
	oAa35WZ4SlfqnGgfFUrdenmh6nIrNcKv197QhZEK2mZTydB57gn4QaP/WL2P613pvxHsl3ZuaSmqO
	o8K+ennss3YziE/rWSPwiJ3PNTl0Pq81AYgHcie2AGwq/0s/7+LbbLDmDPrVOxlFckyQqfiyYRLLZ
	eqSICfCQIgKiqCNxFiIC6I7yfY9MDPYdlwb9cMB0UBJtRubCfXzPtZQUpxx+5dttt4dO10xTGSTAJ
	yc4MZbGUa/ge177e706Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUp1-0067xC-0B; Fri, 10 Feb 2023 14:56:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUos-0067ve-Qs
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:56:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pQUop-0007AV-Bd; Fri, 10 Feb 2023 15:56:07 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQUon-0040Gb-Gy; Fri, 10 Feb 2023 15:56:06 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQUon-006fto-Vq; Fri, 10 Feb 2023 15:56:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 15:56:04 +0100
Message-Id: <20230210145604.1589875-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210145604.1589875-1-a.fatoum@pengutronix.de>
References: <20230210145604.1589875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_065610_884592_2820BAA6 
X-CRM114-Status: GOOD (  15.18  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] boards: qemu-virt: support passing in FIT public key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FIT public key is usually passed in via board DT. Usual way to use
barebox with QEMU Virt however is to use DT supplied by Qemu and apply
overlay to it. mkimage doesn't generate overlay DTB though. To make
barbebox Qemu Virt behave like other boards, let's define a dummy DT
that includes CONFIG_BOOTM_FITIMAGE_PUBKEY, which is merged with the
barebox live device tree.

Suggested-by: Jan Lübbe <jlu@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/Makefile            | 2 +-
 common/boards/qemu-virt/board.c             | 7 ++++++-
 common/boards/qemu-virt/fitimage-pubkey.dts | 7 +++++++
 3 files changed, 14 insertions(+), 2 deletions(-)
 create mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 88184e9a7969..00bfdfbda696 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += board.o
-obj-y += overlay-of-flash.dtb.o
+obj-y += overlay-of-flash.dtb.o fitimage-pubkey.dtb.o
 ifeq ($(CONFIG_RISCV),y)
 DTC_CPP_FLAGS_overlay-of-flash.dtb := -DRISCV_VIRT=1
 endif
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index d0f4412cdea5..e1202034f50c 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -35,10 +35,11 @@ static inline void arm_virt_init(void) {}
 #endif
 
 extern char __dtb_overlay_of_flash_start[];
+extern char __dtb_fitimage_pubkey_start[];
 
 static int virt_probe(struct device *dev)
 {
-	struct device_node *overlay;
+	struct device_node *overlay, *pubkey;
 	void (*init)(void);
 
 	init = device_get_match_data(dev);
@@ -47,6 +48,10 @@ static int virt_probe(struct device *dev)
 
 	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
 	of_overlay_apply_tree(dev->of_node, overlay);
+
+	pubkey = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
+	of_merge_nodes(dev->of_node, pubkey);
+
 	/* of_probe() will happen later at of_populate_initcall */
 
 	return 0;
diff --git a/common/boards/qemu-virt/fitimage-pubkey.dts b/common/boards/qemu-virt/fitimage-pubkey.dts
new file mode 100644
index 000000000000..497799fa4b60
--- /dev/null
+++ b/common/boards/qemu-virt/fitimage-pubkey.dts
@@ -0,0 +1,7 @@
+/dts-v1/;
+
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
+
+/{ };
-- 
2.30.2



