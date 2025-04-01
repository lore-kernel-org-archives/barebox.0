Delivery-date: Tue, 01 Apr 2025 13:05:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQm-006xtf-2j
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQl-000390-JR
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bBtVysKcMCWWZpdaRC9zFThg/n7i8CEhUF2zaHNv9q0=; b=fsl+rdN1QbQKmSaVk6DLvMS7Hx
	i+YOjlTu873C7G8s+JFQkYhV52MIkVf3I51XcRyvF2eRnF59lp5piFuXiSFw2VofLzobP8mxwB0jw
	JFtMOmDK+QcC5kGTEYwJRJRT3kRSe0tXNz7xQ9S0+JHHKpuLc85R8mMv3lasWAguAEvteTZZmh5R5
	ApWJwgkvHUFOZ3DAFwKdlJybtiwlG9GNNrZsAlKx+LRrJP0KBcXxpVCSuleVmcJ1YJuHrHn7Q2s42
	lmu5xvcIwqKlTHwBtansQkRxDtnzVTGiOWYOqWy2kHu0OG+WHLlLksteXPo1QmrN5JqPjjgQ98gSH
	EBi5BRRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQI-00000002img-2Sxy;
	Tue, 01 Apr 2025 11:04:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA9-00000002fod-069q
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000NA-QP; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWp-1q;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-1X;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:57 +0200
Message-Id: <20250401104806.3959859-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034809_308222_7D8A34BA 
X-CRM114-Status: GOOD (  12.04  )
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
Subject: [PATCH 07/16] blspec: support boot /dev/virtioblkX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The device backing /dev/virtioblkX is called virtioY. The way the
bootloader spec code was written this results in the following working:

 - boot -l /dev/virtioblk0.1
 - boot -l virtio0
 - boot -l /mnt/virtioblk0.1

But not:

 - boot -l /dev/virtioblk0

Fix this by implementing the new .scan_disk callback. As scan_device is
just the fallback, remove the blspec_scan_disk call from it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index b58efc06338b..9f25fa63c8e7 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -549,15 +549,6 @@ static int blspec_scan_device(struct bootscanner *scanner,
 
 	pr_debug("%s: %s\n", __func__, dev_name(dev));
 
-	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
-		if (cdev_is_partition(cdev))
-			continue;
-
-		ret = blspec_scan_disk(scanner, bootentries, cdev);
-		if (ret)
-			return ret;
-	}
-
 	/* Try child devices */
 	device_for_each_child(dev, child) {
 		ret = blspec_scan_device(scanner, bootentries, child);
@@ -582,6 +573,7 @@ static struct bootscanner blspec_scanner = {
 	.name		= "blspec",
 	.scan_file	= blspec_scan_file,
 	.scan_directory	= blspec_scan_directory,
+	.scan_disk	= blspec_scan_disk,
 	.scan_device	= blspec_scan_device,
 };
 
-- 
2.39.5



