Delivery-date: Mon, 13 Mar 2023 15:44:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjPG-006M69-7q
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 15:44:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjPF-0006kl-92
	for lore@pengutronix.de; Mon, 13 Mar 2023 15:44:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1I0dMGLyFCiLyzR7aiIw8aq8VbGJ8TgrTGWbrXVfg1A=; b=K3+/2JAP2ytZe0
	UYDCauXbbDAmFLGSPGuPHD9sGo43gV29xOFjBwP6bclwQWcdddxOHCgGZkZ/Dkk83elaxpXAZoFmf
	ABXsHgeN/GvWU4IxxpksXcbEnDugUhvPrNOfwYiNvCXj/yItqvBkubv2wDd3KzkTyt3vBLYt36EDm
	4MYtLqT4SL/dB1JO7F0bnuB9CqEv1/Lo/j2gVrD8abDTtrj2aYn8wzR1ND+cKyTqLz7CQ5bOnXamm
	Hj/HwFKrq4fslcNRqRvVnBNmU2OP4McJGAqAz3uFvwzlRh6XEo21TxjcaTeKZfAkufCXV1FXac7MP
	Jc7wLs5So4Dh/7OrWHcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjNk-006ASj-Kw; Mon, 13 Mar 2023 14:42:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjNa-006AQ2-LL
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:42:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNW-0006Mf-Ge; Mon, 13 Mar 2023 15:42:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNV-003s8Q-SG; Mon, 13 Mar 2023 15:42:21 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNV-0076kd-0X; Mon, 13 Mar 2023 15:42:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 13 Mar 2023 15:42:18 +0100
Message-Id: <20230313144220.1689252-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
References: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074226_738706_6CA63A02 
X-CRM114-Status: GOOD (  14.90  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Michael Riesch <michael.riesch@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/3] boards: qemu-virt: apply overlay at postcore_initcall level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Qemu board driver fixups should be applied very early to be able to
influence core components, even if they are controlled directly by
initcalls. For this reason, let's move the early board code into
the earliest possible initcall level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/board.c | 42 ++++++++++++++++++---------------
 1 file changed, 23 insertions(+), 19 deletions(-)

diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index d0f4412cdea5..7e0e63333c5c 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -36,33 +36,37 @@ static inline void arm_virt_init(void) {}
 
 extern char __dtb_overlay_of_flash_start[];
 
-static int virt_probe(struct device *dev)
+static const struct of_device_id virt_of_match[] = {
+	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
+	{ .compatible = "riscv-virtio" },
+	{ /* Sentinel */},
+};
+BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
+
+/*
+ * We don't have a dedicated qemu-virt device tree and instead rely
+ * on what Qemu passes us. To be able to get fundamental changes
+ * in very early, we forego having a board driver here and do this
+ * directly in the initcall.
+ */
+static int virt_board_driver_init(void)
 {
+	struct device_node *root = of_get_root_node();
 	struct device_node *overlay;
+	const struct of_device_id *id;
 	void (*init)(void);
 
-	init = device_get_match_data(dev);
-	if (init)
+	id = of_match_node(virt_of_match, root);
+	if (id && id->data) {
+		init = id->data;
 		init();
+	}
 
 	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
-	of_overlay_apply_tree(dev->of_node, overlay);
+	of_overlay_apply_tree(root, overlay);
+
 	/* of_probe() will happen later at of_populate_initcall */
 
 	return 0;
 }
-
-static const struct of_device_id virt_of_match[] = {
-	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
-	{ .compatible = "riscv-virtio" },
-	{ /* Sentinel */},
-};
-BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
-
-static struct driver virt_board_driver = {
-	.name = "board-qemu-virt",
-	.probe = virt_probe,
-	.of_compatible = virt_of_match,
-};
-
-postcore_platform_driver(virt_board_driver);
+postcore_initcall(virt_board_driver_init);
-- 
2.30.2



