Delivery-date: Thu, 25 Nov 2021 17:12:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMa-0001ib-Fv
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:12:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMY-0001dU-IF
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:12:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIi4sicZXRngK4B2oBem0nV7p0uqmtpc3wD5KtceqP4=; b=SOG0yuh7J6tuEq
	t7BKJoicVyg5Y9qMQLGtVDlJbiiyWSturJZnN0yjZI/J9OZ45UbWb54mjU6PazldWW9pFD+T5stMu
	A5h9SMbdJj2hwrGrKFUoP/lom5gKMkFtzIfbuh2XqnWentiRIabtS6DilWfb+lGALHyfGhME6B5Hi
	nY6MAQdpul83Gr8uASdL/8bvbpaiRS0WnYBpK1YxvoRVrIKicugr3IEavwVCw2SeTTU1LPaOEx1eF
	NW1ekW8rwzHa4w8M3/lW/jlT7ImiM6LgyQn4jQrZCVjDdDFr3cJnITQAIVYE0EWc4bb5agymaLKQX
	BvBMi5jyR4vArzBXeRKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHL0-008DZf-0y; Thu, 25 Nov 2021 16:11:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHKh-008DPn-4x
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:10:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKf-0000bm-15; Thu, 25 Nov 2021 17:10:45 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKd-00G4XB-Vp; Thu, 25 Nov 2021 17:10:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:10:41 +0100
Message-Id: <20211125161042.3829996-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_081047_281225_47387784 
X-CRM114-Status: GOOD (  13.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] common: boards: qemu-virt: genericize to support non-ARM
 architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In preparation for extending support to RISC-V, sprinkle around some
preprocessor directives.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/board.c              | 25 ++++++++++++++++----
 common/boards/qemu-virt/overlay-of-flash.dts |  8 +++++--
 2 files changed, 26 insertions(+), 7 deletions(-)

diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 1333687918e1..f10608e30343 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -7,7 +7,6 @@
 #include <init.h>
 #include <of.h>
 #include <deep-probe.h>
-#include <asm/system_info.h>
 
 #ifdef CONFIG_64BIT
 #define MACHINE "virt64"
@@ -15,12 +14,12 @@
 #define MACHINE "virt"
 #endif
 
-extern char __dtb_overlay_of_flash_start[];
+#ifdef CONFIG_ARM
+#include <asm/system_info.h>
 
-static int virt_probe(struct device_d *dev)
+static inline void arm_virt_init(void)
 {
 	const char *hostname = MACHINE;
-	struct device_node *overlay;
 
 	if (cpu_is_cortex_a7())
 		hostname = "virt-a7";
@@ -29,6 +28,22 @@ static int virt_probe(struct device_d *dev)
 
 	barebox_set_model("ARM QEMU " MACHINE);
 	barebox_set_hostname(hostname);
+}
+
+#else
+static inline void arm_virt_init(void) {}
+#endif
+
+extern char __dtb_overlay_of_flash_start[];
+
+static int virt_probe(struct device_d *dev)
+{
+	struct device_node *overlay;
+	void (*init)(void);
+
+	init = device_get_match_data(dev);
+	if (init)
+		init();
 
 	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
 	of_overlay_apply_tree(dev->device_node, overlay);
@@ -38,7 +53,7 @@ static int virt_probe(struct device_d *dev)
 }
 
 static const struct of_device_id virt_of_match[] = {
-	{ .compatible = "linux,dummy-virt" },
+	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
 	{ /* Sentinel */},
 };
 BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
index e00dc5d7e233..ed6ad0072b55 100644
--- a/common/boards/qemu-virt/overlay-of-flash.dts
+++ b/common/boards/qemu-virt/overlay-of-flash.dts
@@ -1,8 +1,12 @@
 /dts-v1/;
 /plugin/;
+
+#define PARTS_TARGET_PATH	"/flash@0"
+#define ENV_DEVICE_PATH		"/flash@0/partitions/partition@3c00000"
+
 / {
 	fragment@0 {
-		target-path = "/flash@0";
+		target-path = PARTS_TARGET_PATH;
 		__overlay__ {
 			partitions {
 				compatible = "fixed-partitions";
@@ -32,7 +36,7 @@
 			chosen {
 				environment {
 					compatible = "barebox,environment";
-					device-path = "/flash@0/partitions/partition@3c00000";
+					device-path = ENV_DEVICE_PATH;
 				};
 			};
 			aliases {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

