Delivery-date: Mon, 12 Jun 2023 14:52:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1q-003q2t-Sc
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:52:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1o-0005qW-FF
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:52:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvDn/CkvGY1azK540eg+tTrFbWWTotBSaWQg34MHrpc=; b=ampKc9ognVFvo2
	3u68AoKpDiC58h5Q7oSOpnUu9FzQposWfa2yU15dDhoZAMGteyDafpkuzpRSQJn0NLNO+UOqw5BwS
	zJjjhBKGYun1eVbl34mrS2ObE4vsDOjY48H5bpeH7EwMrGq4WfzzxXSzO44ViwTkL7hpH5GkjRpQ5
	xkR6GOs1BKZP4uXXo2P2tFpC+EnCnkoAbYcXI++HQsbzKydi58tFCCFsdEdJdy5BbHN+hClrj1XPi
	6UWZXF0vTNlyYT2jLF2pAu9G9Wm1hrGtfErapbBDCBRVDPTgaC6T6h33WXU97jjantwqMZouUnCG/
	c4P+nd++dLumlVG3o/Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0s-0044KW-0u;
	Mon, 12 Jun 2023 12:51:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0m-0044Hz-3C
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:51:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-0005Rf-Py; Mon, 12 Jun 2023 14:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-006tSb-4d; Mon, 12 Jun 2023 14:51:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0j-004XjQ-SE; Mon, 12 Jun 2023 14:51:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Jun 2023 14:51:02 +0200
Message-Id: <20230612125104.1082800-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
References: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055109_035343_AAE4EC7A 
X-CRM114-Status: GOOD (  15.48  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 4/6] boards: qemu-virt: support passing in FIT public key
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
 common/boards/qemu-virt/board.c             | 6 +++++-
 common/boards/qemu-virt/fitimage-pubkey.dts | 7 +++++++
 3 files changed, 13 insertions(+), 2 deletions(-)
 create mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index d280e5ebdd2b..b6883ff7672e 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += board.o
-obj-y += qemu-virt-flash.dtbo.o
+obj-y += qemu-virt-flash.dtbo.o fitimage-pubkey.dtb.o
 ifeq ($(CONFIG_RISCV),y)
 DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DRISCV_VIRT=1
 endif
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index ea29783d6056..4c6df5e30252 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -35,6 +35,7 @@ static inline void arm_virt_init(void) {}
 #endif
 
 extern char __dtbo_qemu_virt_flash_start[];
+extern char __dtb_fitimage_pubkey_start[];
 
 static const struct of_device_id virt_of_match[] = {
 	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
@@ -52,7 +53,7 @@ BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
 static int virt_board_driver_init(void)
 {
 	struct device_node *root = of_get_root_node();
-	struct device_node *overlay;
+	struct device_node *overlay, *pubkey;
 	const struct of_device_id *id;
 	void (*init)(void);
 
@@ -68,6 +69,9 @@ static int virt_board_driver_init(void)
 	overlay = of_unflatten_dtb(__dtbo_qemu_virt_flash_start, INT_MAX);
 	of_overlay_apply_tree(root, overlay);
 
+	pubkey = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
+	of_merge_nodes(root, pubkey);
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
2.39.2



