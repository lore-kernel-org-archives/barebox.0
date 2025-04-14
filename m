Delivery-date: Mon, 14 Apr 2025 08:36:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQq-000X4Q-2X
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:36:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQp-0002sw-Oj
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:36:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JU/Ya57SIAsPUao1eB0cpYnyyXIr57L/kuNVjucHR0o=; b=uVUaf2o/jiNEgCF3cMlfPESI+M
	AkksczBUUIwlBuKwqM3DtVM/jZoqcyP8q1BqGzawdzv1k7NZg/pze6y6I42fRJXwP4e/Cm8LdBXQT
	ZbcgvTOTXUyBduOi6tZNs2PRl0WAt+upQPk1p4EkMFlmlXf342965r0kGxyP+rtxZxKaOU+/xfVNr
	aR1buKTY/38txTx2TBYMtg11iUI5BL7gm/N/62qV+vdvm4yg4DEnfH8l4Yq16FfX7tQIzcqF+gfWW
	9HKbnn76ajVbGYvBrjfCU3axiqKITwETKLoH3WeohEP+qXGt69N86gewite+QgflXKOApFgG79nLX
	LxCdITSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQP-00000000oxJ-1kol;
	Mon, 14 Apr 2025 06:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQI-00000000osl-2KxI
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:36:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-0002Mc-Bs; Mon, 14 Apr 2025 08:36:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-000Cn0-0W;
	Mon, 14 Apr 2025 08:36:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-32;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:48 +0200
Message-Id: <20250414063152.2736649-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233602_596505_8CA11443 
X-CRM114-Status: GOOD (  14.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/18] misc: storage-by-alias: switch over to using cdev aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This makes it easy to support referencing further cdev aliases
from the device tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/boot.c                 |  1 +
 common/cdev-alias.c             | 31 +++++++++++++++++++++++++++++++
 drivers/misc/storage-by-alias.c | 25 +++++++++----------------
 3 files changed, 41 insertions(+), 16 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 502ad19e5e75..97c574b4a0a3 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -184,6 +184,7 @@ BAREBOX_CMD_HELP_TEXT("- \"bootchooser\": boot with barebox bootchooser")
 #endif
 #ifdef CONFIG_BOOT_DEFAULTS
 BAREBOX_CMD_HELP_TEXT("- \"bootsource\": boot from the device barebox has been started from")
+BAREBOX_CMD_HELP_TEXT("- \"diskuuid.*\": boot from disk with specified diskuuid")
 #endif
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Multiple bootsources may be given which are probed in order until")
diff --git a/common/cdev-alias.c b/common/cdev-alias.c
index 09e6770f5dea..4ce79d0ba4a7 100644
--- a/common/cdev-alias.c
+++ b/common/cdev-alias.c
@@ -35,8 +35,39 @@ static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
 	return fn(cdev, data);
 }
 
+static int cdev_alias_resolve_diskuuid(struct cdev_alias *cdev_alias,
+				       const char *uuid,
+				       cdev_alias_processor_t fn,
+				       void *data)
+{
+	struct cdev *cdev;
+	char *arg;
+
+	arg = xstrdup(uuid);
+	uuid = strsep(&arg, ".");
+	if (!uuid || !*uuid)
+		return -EINVAL;
+
+	for_each_cdev(cdev) {
+		if (cdev_is_partition(cdev))
+			continue;
+
+		if (strcasecmp(cdev->diskuuid, uuid))
+			continue;
+
+		cdev = cdev_find_partition(cdev, arg);
+		if (!cdev)
+			return -ENODEV;
+
+		return fn(cdev, data);
+	}
+
+	return 0;
+}
+
 static struct cdev_alias cdev_alias_aliases[] = {
 	{ "bootsource", cdev_alias_resolve_bootsource },
+	{ "diskuuid", cdev_alias_resolve_diskuuid },
 	{ /* sentinel */}
 };
 
diff --git a/drivers/misc/storage-by-alias.c b/drivers/misc/storage-by-alias.c
index 2795ff93c07c..0bf0059ad41c 100644
--- a/drivers/misc/storage-by-alias.c
+++ b/drivers/misc/storage-by-alias.c
@@ -119,12 +119,15 @@ static struct cdev_operations sba_ops = {
 	.truncate = sba_truncate,
 };
 
-static void sba_add_partitions(struct sba *sba, struct cdev *rcdev)
+static int sba_add_partitions(struct cdev *rcdev, void *data)
 {
+	struct sba *sba = data;
 	int ret;
 
+	dev_dbg(sba->dev, "Adding %s -> %s\n", sba->alias, rcdev->name);
+
 	if (sba->rcdev)
-		return;
+		return 0;
 
 	sba->rcdev = rcdev;
 	sba->cdev.name = sba->alias;
@@ -139,26 +142,16 @@ static void sba_add_partitions(struct sba *sba, struct cdev *rcdev)
 	ret = devfs_create(&sba->cdev);
 	if (ret) {
 		dev_err(sba->dev, "Failed to create cdev: %s\n", strerror(-ret));
-		return;
+		return 0;
 	}
 
 	of_parse_partitions(&sba->cdev, sba->dev->of_node);
+	return 0;
 }
 
 static void check_exist(struct sba *sba)
 {
-	struct cdev *cdev;
-
-	for_each_cdev(cdev) {
-		if (cdev_is_partition(cdev))
-			continue;
-		if (strcmp(cdev->diskuuid, sba->alias))
-			continue;
-
-		dev_dbg(sba->dev, "Found %s %s\n", cdev->name, cdev->diskuuid);
-		sba_add_partitions(sba, cdev);
-		return;
-	}
+	cdev_alias_resolve_for_each(sba->alias, sba_add_partitions, sba);
 }
 
 static int sba_detect(struct device *dev)
@@ -181,7 +174,7 @@ static int storage_by_uuid_init(struct sba *sba)
 	if (ret)
 		return ret;
 
-	sba->alias = xstrdup(uuid);
+	sba->alias = xasprintf("diskuuid.%s", uuid);
 
 	return 0;
 }
-- 
2.39.5



