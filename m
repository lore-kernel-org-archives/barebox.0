Delivery-date: Mon, 31 May 2021 09:14:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7z-0002uk-Ng
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7x-0003i7-Nt
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kBGYxXnak8OTJIcS3dA3kd4s8pkp+H1eLOzL8vmTe0=; b=aVrQGXPca+x3Zy
	F2WiosrIkgLCkXUQZu4BnMQLxef0o5xwZwyHGRIhy/1gLzkLM7jSx4WcQuglA0Xi7jJHT4wmJtCmi
	QcORy7pjL8bmUSbcXVsJYUsZbzg5KNC090jEVo0MxQ3VDa7dp/KjADhEpHGEjZ4Q6iP+WmzWHCiFK
	P6br0KixRsyFeh/qYQlGFH5S/CIuPCwiQSkC587VOJjH3TAN5wqsTrAuXfCk7BnDtdMfZcRMp7ZX9
	yofap/kMWAG8krUe161QmQ4uTdg1FBUy3cIqSAxql8oyQYf6BYtiCnLGwFFoLzortS3b/dvTyqYQV
	3gXiWNjk5TELtfNi0qgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc6j-00B7hH-Vo; Mon, 31 May 2021 07:13:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6U-00B7aq-2A
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:12:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0003Dr-Q5; Mon, 31 May 2021 09:12:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-000801-DG; Mon, 31 May 2021 09:12:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:12:36 +0200
Message-Id: <20210531071239.30653-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531071239.30653-1-a.fatoum@pengutronix.de>
References: <20210531071239.30653-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001250_136562_CFA51651 
X-CRM114-Status: GOOD (  15.51  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] of: propagate errors inside barebox_register_{of,
 fdt} into initcalls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Errors during device tree registration, while uncommon, are really
annoying, because the system may limp along and it's not clear where
the misbehavior originates from.

Failing the initcall of the device tree would improve user experience in
that error case. There is intentionally no early exit on error cases
to give barebox a chance to probe the serial driver to actually report
errors when DEBUG_LL is disabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/qemu-virt/board.c |  3 +--
 arch/arm/cpu/dtb.c                |  4 +---
 arch/kvx/lib/dtb.c                |  4 +---
 arch/mips/boot/dtb.c              |  4 +---
 arch/openrisc/lib/dtb.c           |  4 +---
 arch/riscv/lib/dtb.c              |  5 +++--
 arch/sandbox/board/dtb.c          |  4 +---
 drivers/of/base.c                 | 16 +++++++++-------
 include/of.h                      |  4 ++--
 9 files changed, 20 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boards/qemu-virt/board.c b/arch/arm/boards/qemu-virt/board.c
index d0a7e3da4ff3..5ce1ecfc2461 100644
--- a/arch/arm/boards/qemu-virt/board.c
+++ b/arch/arm/boards/qemu-virt/board.c
@@ -40,9 +40,8 @@ static int replace_dtb(void) {
 
 	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start);
 	of_overlay_apply_tree(root, overlay);
-	barebox_register_of(root);
 
-	return 0;
+	return barebox_register_of(root);
 }
 
 pure_initcall(replace_dtb);
diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index 35f251d99a35..9aa979ca081c 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -26,8 +26,6 @@ static int of_arm_init(void)
 		return 0;
 	}
 
-	barebox_register_fdt(fdt);
-
-	return 0;
+	return barebox_register_fdt(fdt);
 }
 core_initcall(of_arm_init);
diff --git a/arch/kvx/lib/dtb.c b/arch/kvx/lib/dtb.c
index 09898017c9b5..3d65bd7bd45f 100644
--- a/arch/kvx/lib/dtb.c
+++ b/arch/kvx/lib/dtb.c
@@ -9,8 +9,6 @@
 
 static int of_kvx_init(void)
 {
-	barebox_register_fdt(boot_dtb);
-
-	return 0;
+	return barebox_register_fdt(boot_dtb);
 }
 core_initcall(of_kvx_init);
diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index 6fce4700cc9e..dbb6315d1f05 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -41,8 +41,6 @@ static int of_mips_init(void)
 	if (!fdt)
 		fdt = __dtb_start;
 
-	barebox_register_fdt(fdt);
-
-	return 0;
+	return barebox_register_fdt(fdt);
 }
 core_initcall(of_mips_init);
diff --git a/arch/openrisc/lib/dtb.c b/arch/openrisc/lib/dtb.c
index 61cf35ddf362..0507eed1d75b 100644
--- a/arch/openrisc/lib/dtb.c
+++ b/arch/openrisc/lib/dtb.c
@@ -28,8 +28,6 @@ static int of_openrisc_init(void)
 	if (root)
 		return 0;
 
-	barebox_register_fdt(__dtb_start);
-
-	return 0;
+	return barebox_register_fdt(__dtb_start);
 }
 core_initcall(of_openrisc_init);
diff --git a/arch/riscv/lib/dtb.c b/arch/riscv/lib/dtb.c
index 8c2f5b251883..aa287953870a 100644
--- a/arch/riscv/lib/dtb.c
+++ b/arch/riscv/lib/dtb.c
@@ -9,6 +9,7 @@
 static int of_riscv_init(void)
 {
 	void *fdt;
+	int ret;
 
 	/* See if we are provided a dtb in boarddata */
 	fdt = barebox_riscv_boot_dtb();
@@ -20,11 +21,11 @@ static int of_riscv_init(void)
 	pr_debug("using boarddata provided DTB\n");
 
 
-	barebox_register_fdt(fdt);
+	ret = barebox_register_fdt(fdt);
 
 	/* do it now, before clocksource drivers run postcore */
 	timer_init();
 
-	return 0;
+	return ret;
 }
 core_initcall(of_riscv_init);
diff --git a/arch/sandbox/board/dtb.c b/arch/sandbox/board/dtb.c
index 4a8cbfb26f32..98d2e774b89a 100644
--- a/arch/sandbox/board/dtb.c
+++ b/arch/sandbox/board/dtb.c
@@ -39,8 +39,6 @@ static int of_sandbox_init(void)
 	if (!dtb)
 		dtb = __dtb_sandbox_start;
 
-	barebox_register_fdt(dtb);
-
-	return 0;
+	return barebox_register_fdt(dtb);
 }
 core_initcall(of_sandbox_init);
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6fe02649ee53..b99201a50fd5 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1699,32 +1699,34 @@ int of_set_root_node(struct device_node *node)
 	return 0;
 }
 
-void barebox_register_of(struct device_node *root)
+int barebox_register_of(struct device_node *root)
 {
 	if (root_node)
-		return;
+		return -EBUSY;
 
 	of_set_root_node(root);
 	of_fix_tree(root);
 
 	if (IS_ENABLED(CONFIG_OFDEVICE))
-		of_probe();
+		return of_probe();
+
+	return 0;
 }
 
-void barebox_register_fdt(const void *dtb)
+int barebox_register_fdt(const void *dtb)
 {
 	struct device_node *root;
 
 	if (root_node)
-		return;
+		return -EBUSY;
 
 	root = of_unflatten_dtb(dtb);
 	if (IS_ERR(root)) {
 		pr_err("Cannot unflatten dtb: %pe\n", root);
-		return;
+		return PTR_ERR(root);
 	}
 
-	barebox_register_of(root);
+	return barebox_register_of(root);
 }
 
 /**
diff --git a/include/of.h b/include/of.h
index 645f429bdeed..66d1edcc5c0d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -261,8 +261,8 @@ extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 
 extern struct device_node *of_get_root_node(void);
 extern int of_set_root_node(struct device_node *node);
-extern void barebox_register_of(struct device_node *root);
-extern void barebox_register_fdt(const void *dtb);
+extern int barebox_register_of(struct device_node *root);
+extern int barebox_register_fdt(const void *dtb);
 
 extern struct device_d *of_platform_device_create(struct device_node *np,
 						struct device_d *parent);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

