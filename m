Delivery-date: Thu, 12 Dec 2024 08:54:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLe26-0076aZ-2r
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 08:54:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLe26-0006PG-R6
	for lore@pengutronix.de; Thu, 12 Dec 2024 08:54:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=52y4d5YaLixG1jIhkxgcDlnAsbkbYWygFYvLqr/0qTo=; b=LhiB0NiJwmFPpo5LmvHNLlQu8r
	r9quptpnDqWn9hLce8MyQN+pkrjR9BVZkRn0xQJk7BB8l2SyEG3Po0YVC7V/v8jYNk7OIeDqzwvOl
	23Y7ZPDIkxa86TCQtuSeq8DRwcMa9KitGpMbRcxjwSaXSJnWML02WMUU/mewrwC5MlnuDiGUrPg2X
	AoQ3DCNrTrioE6nVQLyXOpdkkLU/rhPmNT1kfahIE9Y5J4ISzMNAHUrhZybiwHubLzTWAvtzZINgn
	nVOXDxPiVN3gk4JeiY5z0V/g2Z6uSuWUH7h5VEh4Q2lfEmOphGdGnwxCQP7GcUmFu8o8Ae/Uwtc7c
	r9lFAveA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLe1X-0000000HCyB-1y6w;
	Thu, 12 Dec 2024 07:54:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLe0W-0000000HCp1-3mFW
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 07:53:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLe0V-000683-0N; Thu, 12 Dec 2024 08:53:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLe0T-002zuW-0S;
	Thu, 12 Dec 2024 08:53:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLe0T-00AUKP-2f;
	Thu, 12 Dec 2024 08:53:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 08:53:07 +0100
Message-Id: <20241212075308.2499846-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_235312_934538_15E2B3B1 
X-CRM114-Status: GOOD (  11.83  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] bbu: fix bbu_register_std_file_update regression for file systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code used to handle any path equally well, but then it was broken
for paths that don't start with /dev, i.e. anything in a filesystem.

Add an explicit /dev check before going into the newer code, so
bbu_register_std_file_update can once again be called with paths
that start with /mnt for example. Previously, this resulted in following
error message:

  bbu: Skipping handler bbu-MLO.fat.emmc: /dev//mnt/mmc1.0/barebox.bin unavailable

Fixes: df22a22f84b6 ("bbu: fix exporting i.MX NAND bbu handler over fastboot")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bbu.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 9ea8a1a3f247..ba550f925608 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -43,14 +43,18 @@ void bbu_append_handlers_to_file_list(struct file_list *files)
 	struct bbu_handler *handler;
 
 	list_for_each_entry(handler, &bbu_image_handlers, list) {
-		const char *cdevname;
+		const char *cdevname, *devpath;
+		char *buf = NULL;
 		struct stat s;
-		char *devpath;
 
-		cdevname = devpath_to_name(handler->devicefile);
-		device_detect_by_name(cdevname);
+		devpath = handler->devicefile;
 
-		devpath = basprintf("/dev/%s", cdevname);
+		if (strstarts(devpath, "/dev/")) {
+			cdevname = devpath_to_name(devpath);
+			device_detect_by_name(cdevname);
+
+			devpath = buf = basprintf("/dev/%s", cdevname);
+		}
 
 		if (stat(devpath, &s) == 0) {
 			append_bbu_entry(handler->name, devpath, files);
@@ -59,7 +63,7 @@ void bbu_append_handlers_to_file_list(struct file_list *files)
 				handler->name, devpath);
 		}
 
-		free(devpath);
+		free(buf);
 	}
 }
 
-- 
2.39.5



