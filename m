Delivery-date: Mon, 14 Apr 2025 08:36:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQm-000X30-35
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:36:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQl-0002oe-U9
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:36:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TJaFHwP0jAA+z5rpvQdhDl2u9z9e/loFOwSx1OrbocE=; b=npMMiXF/E71iFMrFSqTWZFTg5P
	4/JyOay3bw/BuXBt3TcnqDYsl1A2CDZbbD3NrKQ05CwGLw014iNqCqDr2LI92Q+kvYvJC7mK6g7EP
	f+K4CXyATUPh2jsJns//dBaIob8M1C7Y7Ti81PlKRb46iiRF3j7wg+7a+m8YGnNuzifmWfF5NrcrD
	R/9x17BXVW4VQpCDXl1JZaT67Mv3+acR5/wXXL4UK43jSQPy96VBce3VLtQ/D2ZNL8E8kf8ti/bZo
	+tRHl+tdFHCNvTUFf3RDEJDwMd14G//jj+nnPxFCN96vD+pIpAeAzbmvd8jA+eaCQEmspWdBGGa2V
	lQJ37BLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQL-00000000ovM-3dQX;
	Mon, 14 Apr 2025 06:36:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQI-00000000osi-1a2s
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:36:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-0002ME-0g; Mon, 14 Apr 2025 08:36:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQG-000Cmn-2h;
	Mon, 14 Apr 2025 08:36:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-3B;
	Mon, 14 Apr 2025 08:31:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:49 +0200
Message-Id: <20250414063152.2736649-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233602_417906_EF8F8D9F 
X-CRM114-Status: GOOD (  12.57  )
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
Subject: [PATCH 15/18] misc: storage-by-alias: add support barebox,bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is useful as state backend that need not hardcode a specific device
at compile time and instead uses the bootsource device at runtime.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/Kconfig            |  5 +++++
 drivers/misc/storage-by-alias.c | 12 ++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 73814f36bf9c..e235646ee551 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -60,6 +60,11 @@ config STORAGE_BY_ALIAS
 
 	  Following compatibles are supported:
 
+	  - "barebox,bootsource"
+
+	  Alias the device barebox was booted from. This is useful to have
+	  barebox-state come from the same device as barebox itself.
+
 	  - "barebox,storage-by-uuid"
 
 	  Look for a storage device matching the given DISKUUID and when found
diff --git a/drivers/misc/storage-by-alias.c b/drivers/misc/storage-by-alias.c
index 0bf0059ad41c..ece5929d60ce 100644
--- a/drivers/misc/storage-by-alias.c
+++ b/drivers/misc/storage-by-alias.c
@@ -7,6 +7,9 @@
  * - barebox,storage-by-uuid
  *   Useful for referencing existing EFI disks and their partition
  *   from device tree by offset
+ * - barebox,bootsource
+ *   Reference the boot medium indicated by barebox $bootsource
+ *   and $bootsource_instance variable
  */
 #include <common.h>
 #include <init.h>
@@ -179,6 +182,12 @@ static int storage_by_uuid_init(struct sba *sba)
 	return 0;
 }
 
+static int storage_by_bootsource_init(struct sba *sba)
+{
+	sba->alias = xasprintf("bootsource");
+	return 0;
+}
+
 static int sba_probe(struct device *dev)
 {
 	int (*init)(struct sba *);
@@ -209,6 +218,9 @@ static struct of_device_id sba_dt_ids[] = {
 	{
 		.compatible = "barebox,storage-by-uuid",
 		.data = storage_by_uuid_init
+	}, {
+		.compatible = "barebox,bootsource",
+		.data = storage_by_bootsource_init
 	}, {
 		/* sentinel */
 	}
-- 
2.39.5



