Delivery-date: Thu, 11 Dec 2025 16:19:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTiRc-00AL0u-1I
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 16:19:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTiRb-0002rG-RJ
	for lore@pengutronix.de; Thu, 11 Dec 2025 16:19:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8Gp1rSuKilXhwzegRL17Z5uJxrhnc+BZrrthJJp52Tk=; b=lkS2H04p40h8TAaLDb786aybtm
	54wO4IQJcdqNuFOiuLz8Ueth0gUrd5oMc8Q+PW4PuY/N4RmPmEyBrj9epMa99WW+lVcnIZrCluU/I
	zZ5YUcn+sEN0vJZSZF7Cm8h5ldEbJok83MgErJjyKvcq8JKao1DObyNlua6hqpnKee18/kaFzgZmR
	yON417wC19YiAdQaJ2X1jl1hSod4umXol+taN2LPDW2QX5j1wNuIxQj3MH0dkpayZ8lzjXtoJvAe3
	Gz/uFH6JDfe46pxY/qSkrLi2HU4Pe+4/utT0zr5ZH6bcS/M4haa0Z7Rvu1o29ojvtmm/r+jT4PQcG
	7E43ez8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTiR0-0000000GlKH-3PNX;
	Thu, 11 Dec 2025 15:18:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTiQx-0000000GlJ9-0WMA
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 15:18:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0002fe-Dw; Thu, 11 Dec 2025 16:18:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0059M3-0m;
	Thu, 11 Dec 2025 16:18:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0000000Fe1B-0ar6;
	Thu, 11 Dec 2025 16:18:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 16:18:14 +0100
Message-ID: <20251211151820.3726093-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_071823_158872_60AC5BCF 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] bbu: detect devices when devicefile has no /dev/ prefix as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Functions like imx6_bbu_internal_mmcboot_register_handler() are called
with devicefile either being the cdev name or with a full path.

There is no harm in trying to detect the devicefile in the former case
as well, so do it unconditionally and simplify the function as a result.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bbu.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 39db87e823d9..00d415bcf826 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -43,27 +43,19 @@ void bbu_append_handlers_to_file_list(struct file_list *files)
 	struct bbu_handler *handler;
 
 	list_for_each_entry(handler, &bbu_image_handlers, list) {
-		const char *cdevname, *devpath;
-		char *buf = NULL;
+		const char *devicefile;
 		struct stat s;
 
-		devpath = handler->devicefile;
+		devicefile = handler->devicefile;
 
-		if (strstarts(devpath, "/dev/")) {
-			cdevname = devpath_to_name(devpath);
-			device_detect_by_name(cdevname);
+		device_detect_by_name(devpath_to_name(devicefile));
 
-			devpath = buf = basprintf("/dev/%s", cdevname);
-		}
-
-		if (stat(devpath, &s) == 0) {
-			append_bbu_entry(handler->name, devpath, files);
+		if (stat(devicefile, &s) == 0) {
+			append_bbu_entry(handler->name, devicefile, files);
 		} else {
 			pr_info("Skipping handler bbu-%s: %s unavailable\n",
-				handler->name, devpath);
+				handler->name, devicefile);
 		}
-
-		free(buf);
 	}
 }
 
-- 
2.47.3



