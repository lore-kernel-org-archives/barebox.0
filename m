Delivery-date: Wed, 28 Sep 2022 10:57:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odSt7-00HCrS-Q8
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 10:57:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odSt6-00060f-F8
	for lore@pengutronix.de; Wed, 28 Sep 2022 10:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZyUDSTUX+T+RLixfCeRce9+eW/ZhdZYM5k+2FiUUD9I=; b=D+ZWxsXjomm3nDAvkLZVfVfrsQ
	xFODYIYwJcINtwrd9mJXSS1uKRnMNR1qwOvQq5ADqmK0K2X1jJHEyagL3qUzZSlacRQW6EKMcsRHX
	voUGbpfkrMGG1XTwsWkzHsHvcwaxKcFYzWAS/Uajbu8hW4t6BEZO5GWx09ldFvwsC91vEcdwwntKJ
	mzIl4C89mcqGE5WoCwDVIrcsmPBajwnW4lDZHbAdb2bhEHxxEMzZRojR+knCJjLa1Sxd5NI8ZF/UP
	9nhmHXRXJGNp1STCXQ+p4ihkEUvdJHoQPfYJr56ur7VaM0ei3/BrsFTHRJrN0PWRKIIMvWeCdW8tf
	jBaGTCYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odSrl-00F23x-M9; Wed, 28 Sep 2022 08:56:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odSrh-00F22p-Tt
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 08:56:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1odSrg-0005ub-CC; Wed, 28 Sep 2022 10:56:24 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1odSrh-003NmE-4L; Wed, 28 Sep 2022 10:56:23 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1odSrf-00BEXy-0u; Wed, 28 Sep 2022 10:56:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jzi@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Sep 2022 10:56:22 +0200
Message-Id: <20220928085622.2677478-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_015625_980305_F5A582B9 
X-CRM114-Status: GOOD (  11.80  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] bbu: fix exporting i.MX NAND bbu handler over fastboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

handler->devicefile for i.MX NAND is nand0.barebox, which lacks a /dev/
prefix. This is ok for detection, as device_detect_by_name expects the
cdev name and devpath_to_name() will strip a /dev/ if available.

For stat() however, we need to add back /dev/, otherwise the file can't
be found. Rework the code to do that.

This fixes an issue where usbgadget -A '' -b would not export a i.MX
NAND barebox update handler.

Fixes: 726a802456bc ("common: bbu: only add available handlers")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bbu.c | 37 ++++++++++++++++++-------------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index d243ac89dd9f..3ec17216cb15 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -24,43 +24,42 @@
 
 static LIST_HEAD(bbu_image_handlers);
 
-static void append_bbu_entry(struct bbu_handler *handler, struct file_list *files)
+static void append_bbu_entry(const char *_name,
+			     const char *devicefile,
+			     struct file_list *files)
 {
 	char *name;
 
-	name = basprintf("bbu-%s", handler->name);
+	name = basprintf("bbu-%s", _name);
 
-	if (file_list_add_entry(files, name, handler->devicefile, 0))
+	if (file_list_add_entry(files, name, devicefile, 0))
 		pr_warn("duplicate partition name %s\n", name);
 
 	free(name);
 }
 
-static bool bbu_handler_is_available(struct bbu_handler *handler)
-{
-	struct stat s;
-	int ret;
-
-	device_detect_by_name(devpath_to_name(handler->devicefile));
-
-	ret = stat(handler->devicefile, &s);
-	if (ret)
-		return false;
-
-	return true;
-}
-
 void bbu_append_handlers_to_file_list(struct file_list *files)
 {
 	struct bbu_handler *handler;
 
 	list_for_each_entry(handler, &bbu_image_handlers, list) {
-		if (bbu_handler_is_available(handler)) {
-			append_bbu_entry(handler, files);
+		const char *cdevname;
+		struct stat s;
+		char *devpath;
+
+		cdevname = devpath_to_name(handler->devicefile);
+		device_detect_by_name(cdevname);
+
+		devpath = basprintf("/dev/%s", cdevname);
+
+		if (stat(devpath, &s) == 0) {
+			append_bbu_entry(handler->name, devpath, files);
 		} else {
 			pr_info("Skipping unavailable handler bbu-%s\n",
 				handler->name);
 		}
+
+		free(devpath);
 	}
 }
 
-- 
2.30.2



