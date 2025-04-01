Delivery-date: Tue, 01 Apr 2025 13:05:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQn-006xuC-1A
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQm-00039a-50
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ph9YJXDGz44J03ap3F2ZNrF2DGSXDz26TBOdRtgWQj4=; b=tDEO/4VN6vA/2lL9jjj1DGSXQo
	ZtjRdZpHHAOB7BjeerkM6x5h/ye+XGKl1gwNB6YZNumEohD3OsxbkUKpc0rj7qZIYVvuCSMOnkiTG
	dyTicS1DJESmmGLncx94I92dUY7K3T6EETekuSTPcaf3/3ykAnizqaEZh47f6azLVmDXdGt/Vcuk5
	dqySUuL09dgRnkdEtgM5j6Igla/Dwrip6IGu5iYfJvAco1TOHNS5YPUZ5HmR4c2PCCgXHIpXG5BED
	ftZuAuQHbjxikM96B5nwVaJbhFmu857iXn6MWKWgKGXlLLjSi05dRZkkp3iKPvXl8jMlRQ3dCs1R9
	A9iR5a4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQD-00000002ijk-2r0p;
	Tue, 01 Apr 2025 11:04:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA8-00000002foX-3Ql6
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000Mk-J0; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWc-1F;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-0x;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:53 +0200
Message-Id: <20250401104806.3959859-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034808_991874_5CCB4864 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/16] blspec: remove unused blspec_scan_devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function is called nowhere and removing it simplifies the
incoming refactoring of the blspec code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c  | 29 -----------------------------
 include/blspec.h |  2 --
 2 files changed, 31 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 740726a571d2..c4e65906ad9f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -557,35 +557,6 @@ static int blspec_scan_cdev(struct bootentries *bootentries, struct cdev *cdev)
 	return found;
 }
 
-/*
- * blspec_scan_devices - scan all devices for child cdevs
- *
- * Iterate over all devices and collect child their cdevs.
- * Returns the number of entries found or a negative error code if some unexpected
- * error occurred.
- */
-int blspec_scan_devices(struct bootentries *bootentries)
-{
-	struct device *dev;
-	struct block_device *bdev;
-	int ret, found = 0;
-
-	for_each_device(dev)
-		device_detect(dev);
-
-	for_each_block_device(bdev) {
-		struct cdev *cdev;
-
-		list_for_each_entry(cdev, &bdev->dev->cdevs, devices_list) {
-			ret = blspec_scan_cdev(bootentries, cdev);
-			if (ret > 0)
-				found += ret;
-		}
-	}
-
-	return found;
-}
-
 /*
  * blspec_scan_device - scan a device for child cdevs
  *
diff --git a/include/blspec.h b/include/blspec.h
index affcea9a0ad5..cebc7a648703 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -18,8 +18,6 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 		const char *val);
 const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name);
 
-int blspec_scan_devices(struct bootentries *bootentries);
-
 int blspec_scan_device(struct bootentries *bootentries, struct device *dev);
 int blspec_scan_devicename(struct bootentries *bootentries, const char *devname);
 int blspec_scan_directory(struct bootentries *bootentries, const char *root);
-- 
2.39.5



