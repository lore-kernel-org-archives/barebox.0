Delivery-date: Mon, 14 Apr 2025 08:36:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQm-000X32-3C
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:36:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQm-0002pW-9q
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:36:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qsbdfz2FKtz1tYjW2Vc17OUZUYL9t7NAHQlYnwn2Ve0=; b=SRX5hS8RgcUT+XLRQtm0bjysa0
	F6ioyJ0bUyUgNK+NIzurQaYJHGLwR6qWEz/5UsMPdMlHdajmSc+TM9cithyq7YrJV2YwA73zv1kvg
	iDjdK4YoQvVj4fQdU3mFtMyuF5uE8dP0AEst+kU18OZY3GPNyGodwY4CqB/5QmkeKC6bBV/QbGUCa
	roXb20itnjyX1QI32QWcNXKONo4kT6bU6C/hrEHZiLSQWmVF5POceb9b3iJarXx+EArh3qD57a7wc
	w8uasAxgfHarRxQbbV1SBDFBgbxTSkNwkT8/TYZJkIPs9vO2y6yDXbRjOsXsCwJm73WKRHzROjiY5
	Zsf+LnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQP-00000000oxn-3pG2;
	Mon, 14 Apr 2025 06:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQI-00000000osh-1aEi
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:36:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-0002MF-3W; Mon, 14 Apr 2025 08:36:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQG-000Cmq-2x;
	Mon, 14 Apr 2025 08:36:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-2a;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:45 +0200
Message-Id: <20250414063152.2736649-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233602_417973_9107D4E1 
X-CRM114-Status: GOOD (  11.43  )
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
Subject: [PATCH 11/18] misc: storage-by-uuid: consider only first diskuuid match
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Multiple devices with the same disk UUID shouldn't happen and if it
does, the existing code is not equipped to handle that.

Change  it, so only the first _disk_ is considered. diskuuid is in a
union with partuuid and that could lead to cdev partition being taken as
backend storage instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/storage-by-uuid.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
index 8b8fd901685e..7bb987dffbec 100644
--- a/drivers/misc/storage-by-uuid.c
+++ b/drivers/misc/storage-by-uuid.c
@@ -143,10 +143,14 @@ static void check_exist(struct sbu *sbu)
 	struct cdev *cdev;
 
 	for_each_cdev(cdev) {
-		if (!strcmp(cdev->diskuuid, sbu->uuid)) {
-			dev_dbg(sbu->dev, "Found %s %s\n", cdev->name, cdev->diskuuid);
-			storage_by_uuid_add_partitions(sbu, cdev);
-		}
+		if (cdev_is_partition(cdev))
+			continue;
+		if (strcmp(cdev->diskuuid, sbu->uuid))
+			continue;
+
+		dev_dbg(sbu->dev, "Found %s %s\n", cdev->name, cdev->diskuuid);
+		storage_by_uuid_add_partitions(sbu, cdev);
+		return;
 	}
 }
 
-- 
2.39.5



