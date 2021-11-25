Delivery-date: Thu, 25 Nov 2021 17:12:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMQ-0001hs-BP
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:12:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMO-0001b2-FA
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:12:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qx+XKo25m2NjqLSWYDeWRwJfFVqaVPCGyRgBZPDO82A=; b=gNWhGdubEj5DXA
	q0C4PeNswTBkyzD8cwvLGX+69+ft7zSJ5vk/pZZP/6hos5gc0fJvBxeNYBu3Y7iJsglbjaev9rBg8
	uwGioWo1dKZryXU4+PrzyUxxlSvD05w8MwqvmYKHC3isJVOyu7YXCDIFKhlT0ZUWZFZHIgHZvEEhA
	yOFSSXjT9sb34aX83oKpZO24XazoJV4mA1HY+x7hPFLkK70sSySSyidFJGxoW0OmmC43ZEflqyIVH
	dD8LVTCXvf9r1VK+3m6cPmIfJ5vaoEZtaDqemLZS+nQ/a0c99IuBWRiovUBVWU3XbE91hyN8Ulelm
	+Vm6t7wnZdLlAMFt0CsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHKr-008DUK-Nl; Thu, 25 Nov 2021 16:10:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHKg-008DPj-So
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:10:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKe-0000bj-PT; Thu, 25 Nov 2021 17:10:44 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKd-00G4X5-TF; Thu, 25 Nov 2021 17:10:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 25 Nov 2021 17:10:39 +0100
Message-Id: <20211125161042.3829996-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_081046_980964_9241F4D8 
X-CRM114-Status: GOOD (  17.42  )
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
Subject: [PATCH 4/7] ARM: qemu: enable deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's a bug to call barebox_register_of at pure_initcall level, because
device tree probe may depend on other initialization done at pure_initcall.
For example, if the QEMU-supplied Virt device tree had a model, barebox
would attempt to register a new global variable before the global device
is even initialized. With the move to deep probe we can just do overlay
fixup in the board driver at safe postcore level.

Fixes: ff8b098a4ad2 ("ARM: qemu: support for state & env via DT overlay")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/qemu-virt/board.c | 37 ++++++-------------------------
 1 file changed, 7 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boards/qemu-virt/board.c b/arch/arm/boards/qemu-virt/board.c
index b2a3cb29ab09..1333687918e1 100644
--- a/arch/arm/boards/qemu-virt/board.c
+++ b/arch/arm/boards/qemu-virt/board.c
@@ -6,8 +6,8 @@
 #include <common.h>
 #include <init.h>
 #include <of.h>
+#include <deep-probe.h>
 #include <asm/system_info.h>
-#include <asm/barebox-arm.h>
 
 #ifdef CONFIG_64BIT
 #define MACHINE "virt64"
@@ -17,38 +17,10 @@
 
 extern char __dtb_overlay_of_flash_start[];
 
-static int replace_dtb(void) {
-	struct device_node *overlay;
-	void *fdt;
-	struct device_node *root;
-
-	fdt = barebox_arm_boot_dtb();
-	if (fdt)
-		pr_debug("using boarddata provided DTB\n");
-
-	if (!fdt) {
-		pr_debug("No DTB found\n");
-		return 0;
-	}
-
-	root = of_unflatten_dtb(fdt, INT_MAX);
-
-	if (!of_device_is_compatible(root, "linux,dummy-virt")) {
-		of_delete_node(root);
-		return 0;
-	}
-
-	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
-	of_overlay_apply_tree(root, overlay);
-
-	return barebox_register_of(root);
-}
-
-pure_initcall(replace_dtb);
-
 static int virt_probe(struct device_d *dev)
 {
 	const char *hostname = MACHINE;
+	struct device_node *overlay;
 
 	if (cpu_is_cortex_a7())
 		hostname = "virt-a7";
@@ -58,6 +30,10 @@ static int virt_probe(struct device_d *dev)
 	barebox_set_model("ARM QEMU " MACHINE);
 	barebox_set_hostname(hostname);
 
+	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
+	of_overlay_apply_tree(dev->device_node, overlay);
+	/* of_probe() will happen later at of_populate_initcall */
+
 	return 0;
 }
 
@@ -65,6 +41,7 @@ static const struct of_device_id virt_of_match[] = {
 	{ .compatible = "linux,dummy-virt" },
 	{ /* Sentinel */},
 };
+BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
 
 static struct driver_d virt_board_driver = {
 	.name = "board-qemu-virt",
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

