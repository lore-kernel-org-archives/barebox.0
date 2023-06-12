Delivery-date: Mon, 12 Jun 2023 14:52:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1v-003q3P-BL
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:52:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h1s-0005s0-Me
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:52:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qL1AkvVOROB8j/VhEZwI7eN/9qD66Yq1UW19fD3K4zU=; b=C9eG3ZEv7/xyPBTVYoegl6d539
	lT1meFMym4s4OhFXHb5qJRYUmmI0fgCVg3ARX2WBeFu5lt3kE+s7RFG4egqomFj7uUDYpGKRyr1t6
	hnw98ixbPH6vDBonxhWfz+8lGrnMzjYkH721CbE4m1lg1rUA/Z7+A5hGR4DLD/cXpgZ4FVWl1wl5l
	CbUIDDo5M1u2IMesa7TP4GA+Vim7biM028XYZKL9c7t0MV6hSbJM95bqgicK+gaGcjYJ1t49Y5sUF
	0pLjqAVw/nTziLJ53blov4ai6pVelV4Ft/+VVGx8m395fQjR1B3YkEYbBl3DeG5Kkg33G2rRdoHjf
	FVxda11g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0v-0044MQ-11;
	Mon, 12 Jun 2023 12:51:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h0n-0044I1-0M
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:51:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-0005S8-Uc; Mon, 12 Jun 2023 14:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-006tSn-Ae; Mon, 12 Jun 2023 14:51:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0j-004XjE-RE; Mon, 12 Jun 2023 14:51:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:50:59 +0200
Message-Id: <20230612125104.1082800-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
References: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055109_150528_C32E76D3 
X-CRM114-Status: GOOD (  15.78  )
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
Subject: [PATCH v4 1/6] boards: qemu-virt: apply overlay at postcore_initcall level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Qemu board driver fixups should be applied very early to be able to
influence core components, even if they are controlled directly by
initcalls. For this reason, let's move the early board code into
the earliest possible initcall level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/board.c | 51 +++++++++++++++++++--------------
 1 file changed, 29 insertions(+), 22 deletions(-)

diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index d0f4412cdea5..19d995aa508e 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -36,22 +36,6 @@ static inline void arm_virt_init(void) {}
 
 extern char __dtb_overlay_of_flash_start[];
 
-static int virt_probe(struct device *dev)
-{
-	struct device_node *overlay;
-	void (*init)(void);
-
-	init = device_get_match_data(dev);
-	if (init)
-		init();
-
-	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
-	of_overlay_apply_tree(dev->of_node, overlay);
-	/* of_probe() will happen later at of_populate_initcall */
-
-	return 0;
-}
-
 static const struct of_device_id virt_of_match[] = {
 	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
 	{ .compatible = "riscv-virtio" },
@@ -59,10 +43,33 @@ static const struct of_device_id virt_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
 
-static struct driver virt_board_driver = {
-	.name = "board-qemu-virt",
-	.probe = virt_probe,
-	.of_compatible = virt_of_match,
-};
+/*
+ * We don't have a dedicated qemu-virt device tree and instead rely
+ * on what Qemu passes us. To be able to get fundamental changes
+ * in very early, we forego having a board driver here and do this
+ * directly in the initcall.
+ */
+static int virt_board_driver_init(void)
+{
+	struct device_node *root = of_get_root_node();
+	struct device_node *overlay;
+	const struct of_device_id *id;
+	void (*init)(void);
 
-postcore_platform_driver(virt_board_driver);
+	id = of_match_node(virt_of_match, root);
+	if (!id)
+		return 0;
+
+	if (id->data) {
+		init = id->data;
+		init();
+	}
+
+	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
+	of_overlay_apply_tree(root, overlay);
+
+	/* of_probe() will happen later at of_populate_initcall */
+
+	return 0;
+}
+postcore_initcall(virt_board_driver_init);
-- 
2.39.2



