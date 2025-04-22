Delivery-date: Tue, 22 Apr 2025 10:38:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799Q-003yXK-2n
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799J-0001fG-Tw
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sr0ub32TtE939uKujls9FZexscINUsFhX2uHj33A+BM=; b=D40uWhjTKBJU/CLD26z1mrvdQ2
	oMaaObzNP1JchchpxmnQcMZ9PCYhr4kFE9UXLnfG07yRMOimnxJaVHBC80b+OZGIvp88X3aU3rRA6
	dDmBv908ozbNjkHa/bg8MkIDiGJpq+SYJD9Y77yElWX8S3BLnmibd6/MWdbopbdbB9yCnBKvVLoUF
	Y04gKDgC3OzD8VUpROtV0hgXT+GK2B93touyRk+pG6On2F/h0hgY4MoJpTy+exrCJ99SZLE30OIig
	H688Dj91XO8zTVA9SOcNwBQ+U90xKDDNt5IUGMwfffr5O8xH5PrXZjXrS1fA20te3fJgePR+dvBNG
	nBG20SdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798k-00000006MD0-16Px;
	Tue, 22 Apr 2025 08:38:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78UL-00000006CKa-0ghI
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UK-0000eY-2b
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:16 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UJ-001Vvr-2r
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UJ-000vGy-2a
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:15 +0200
Message-Id: <20250422075615.220139-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075615.220139-1-a.fatoum@pengutronix.de>
References: <20250422075615.220139-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005617_201720_92B7F346 
X-CRM114-Status: GOOD (  15.40  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] restart: make warm reboot a callback argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

This simplifies handling of the existing warm reboot support and allow
for simple addition of more flags in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/dts/imx7.dtsi   |  2 +-
 commands/reset.c         |  4 ++--
 common/restart.c         |  6 ++++--
 drivers/watchdog/imxwd.c | 35 +++++++++++------------------------
 include/restart.h        |  2 +-
 5 files changed, 19 insertions(+), 30 deletions(-)

diff --git a/arch/arm/dts/imx7.dtsi b/arch/arm/dts/imx7.dtsi
index 1c67bdc54620..d0f6b253ed86 100644
--- a/arch/arm/dts/imx7.dtsi
+++ b/arch/arm/dts/imx7.dtsi
@@ -28,7 +28,7 @@ ca7_reset: cortex-a7-reboot {
 		/* This is not fit for use as general purpose reset */
 		restart-priority = <5>;
 		/*
-		 * Can't use imxwd-warm due to errata e10574:
+		 * Can't use imxwd without fsl,ext-reset-output due to errata e10574:
 		 * Watchdog: A watchdog timeout or software trigger will
 		 * not reset the SOC
 		 */
diff --git a/commands/reset.c b/commands/reset.c
index e97b5668bacb..ccd8291f5353 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -26,7 +26,7 @@ static int cmd_reset(int argc, char *argv[])
 			restart_handlers_print();
 			return 0;
 		case 'w':
-			flags |= RESTART_FLAG_WARM_BOOTROM;
+			flags |= RESTART_WARM;
 			break;
 		case 'r':
 			name = optarg;
@@ -47,7 +47,7 @@ static int cmd_reset(int argc, char *argv[])
 
 	if (rst) {
 		console_flush();
-		rst->restart(rst, 0);
+		rst->restart(rst, flags);
 	}
 
 	hang();
diff --git a/common/restart.c b/common/restart.c
index dce7e974f64a..d0ceeab7acd0 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -32,7 +32,7 @@ int restart_handler_register(struct restart_handler *rst)
 				     &rst->priority);
 		if (of_property_read_bool(rst->of_node,
 					  "barebox,restart-warm-bootrom"))
-			rst->flags |= RESTART_FLAG_WARM_BOOTROM;
+			rst->flags |= RESTART_WARM;
 	}
 
 	list_add_tail(&rst->list, &restart_handler_list);
@@ -127,8 +127,10 @@ void restart_handlers_print(void)
 	list_for_each_entry(tmp, &restart_handler_list, list) {
 		printf("%-20s %-20s %6d ",
 		       tmp->name, tmp->dev ? dev_name(tmp->dev) : "", tmp->priority);
-		if (tmp->flags & RESTART_FLAG_WARM_BOOTROM)
+		if (tmp->flags & RESTART_WARM)
 			putchar('W');
 		putchar('\n');
 	}
+
+	printf("\nW: Warm restart capable\n");
 }
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 10d94645fae6..35c688fc2701 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -30,7 +30,6 @@ struct imx_wd {
 	struct device *dev;
 	const struct imx_wd_ops *ops;
 	struct restart_handler restart;
-	struct restart_handler restart_warm;
 	bool ext_reset;
 	bool bigendian;
 	bool suspend_in_lpm;
@@ -176,6 +175,9 @@ static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst,
 {
 	struct imx_wd *priv = container_of(rst, struct imx_wd, restart);
 
+	if (flags & RESTART_WARM)
+		priv->ext_reset = false;
+
 	priv->ops->soc_reset(priv);
 
 	mdelay(1000);
@@ -183,15 +185,6 @@ static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst,
 	hang();
 }
 
-static void __noreturn imxwd_force_soc_reset_internal(struct restart_handler *rst,
-						      unsigned long flags)
-{
-	struct imx_wd *priv = container_of(rst, struct imx_wd, restart_warm);
-
-	priv->ext_reset = false;
-	imxwd_force_soc_reset(&priv->restart, flags);
-}
-
 static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 {
 	u16 val = imxwd_read(priv, IMX21_WDOG_WSTR);
@@ -232,13 +225,7 @@ static int imx21_wd_init_no_warm_reset(struct imx_wd *priv)
 
 static int imx21_wd_init(struct imx_wd *priv)
 {
-	priv->restart_warm.name = "imxwd-warm";
-	priv->restart_warm.restart = imxwd_force_soc_reset_internal;
-	priv->restart_warm.priority = RESTART_DEFAULT_PRIORITY - 10;
-	priv->restart_warm.flags = RESTART_FLAG_WARM_BOOTROM;
-
-	restart_handler_register(&priv->restart_warm);
-
+	priv->restart.flags = RESTART_WARM;
 	return imx21_wd_init_no_warm_reset(priv);
 }
 
@@ -295,6 +282,13 @@ static int imx_wd_probe(struct device *dev)
 		}
 	}
 
+	dev->priv = priv;
+
+	priv->restart.name = "imxwd";
+	priv->restart.restart = imxwd_force_soc_reset;
+	priv->restart.priority = RESTART_DEFAULT_PRIORITY;
+	priv->restart.dev = &priv->wd.dev;
+
 	if (priv->ops->init) {
 		ret = priv->ops->init(priv);
 		if (ret) {
@@ -304,13 +298,6 @@ static int imx_wd_probe(struct device *dev)
 		}
 	}
 
-	dev->priv = priv;
-
-	priv->restart.name = "imxwd";
-	priv->restart.restart = imxwd_force_soc_reset;
-	priv->restart.priority = RESTART_DEFAULT_PRIORITY;
-	priv->restart.dev = &priv->wd.dev;
-
 	restart_handler_register(&priv->restart);
 
 	return 0;
diff --git a/include/restart.h b/include/restart.h
index 9707a2f40f14..5414fc1fcb69 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -9,6 +9,7 @@
 struct device_node;
 
 void restart_handlers_print(void);
+#define RESTART_WARM			BIT(0)
 void __noreturn restart_machine(unsigned long restart_flags);
 struct restart_handler *restart_handler_get_by_name(const char *name, int flags);
 
@@ -17,7 +18,6 @@ struct device_node;
 struct restart_handler {
 	void (*restart)(struct restart_handler *, unsigned long);
 	int priority;
-#define RESTART_FLAG_WARM_BOOTROM	BIT(0)
 	int flags;
 	struct device_node *of_node;
 	const char *name;
-- 
2.39.5



