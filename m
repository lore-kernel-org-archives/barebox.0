Delivery-date: Mon, 15 Apr 2024 07:35:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEzc-001ZKv-2i
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:35:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEzc-0004wy-A4
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:35:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/TOYBOBCERJPBoLf/cpJn8+7arw6f23YFjszriMrMb8=; b=GU3zRL+Pkw/6mjtcWqS4vUSYIq
	BfBYyC/UEBmKVZx73AJKHo37GLU0V73EBmcwSAkeSkNbnOyCb3tCFKzG6d1JY61Ye3xg7kIQiU6p5
	/ZRLD7GugpVUEUw7DnqaGgzPaIeK7OGUtZxh8PRez0MyKvkgTfquYWR3NEExXsDqmephXULPbOjS9
	jfAO9AAZHnXKogGF0QpC7BtU0gEr4+9AGiUmGaxFEANHCksvXvyeWuFB/m/qO4Lsf5NKJg0TM4g4n
	0yPf0IwzKx9VHV0EYxRsx/R+t9rw0BaYZbgqA2PpgtNtsGhuob4jZmvxWPUU1id/u8hhzjcQCXVR0
	Rlh05d9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEzE-000000071Dg-1FC5;
	Mon, 15 Apr 2024 05:34:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEzA-000000071D2-3J3f
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:34:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEz9-0004WA-G1; Mon, 15 Apr 2024 07:34:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEz9-00CMkh-3a; Mon, 15 Apr 2024 07:34:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEz9-001YH2-04;
	Mon, 15 Apr 2024 07:34:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:34:30 +0200
Message-Id: <20240415053430.370061-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223432_949909_97452FA1 
X-CRM114-Status: GOOD (  11.50  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: gadget: ums: add support for optional partition flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

File lists for fastboot support a 'o' flag to silently skip files that
don't exist at bind time. Add support for the same for USB mass storage
gadgets as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/function/f_mass_storage.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/gadget/function/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
index 2c934c621a18..e099123cea2b 100644
--- a/drivers/usb/gadget/function/f_mass_storage.c
+++ b/drivers/usb/gadget/function/f_mass_storage.c
@@ -2474,14 +2474,17 @@ static int fsg_common_init(struct fsg_common *common,
 		struct stat st;
 		int fd;
 
-		if (fentry->flags) {
-			pr_err("flags not supported\n");
-			rc = -ENOSYS;
-			goto close;
-		}
+		if (fentry->flags & ~FILE_LIST_FLAG_OPTIONAL)
+			pr_warn("some flags will be ignored\n");
 
 		fd = open(fentry->filename, flags);
 		if (fd < 0) {
+			if (fentry->flags & FILE_LIST_FLAG_OPTIONAL) {
+				pr_info("skipping unavailable optional partition %s\n",
+					fentry->filename);
+				continue;
+			}
+
 			pr_err("open('%s') failed: %pe\n",
 			       fentry->filename, ERR_PTR(fd));
 			rc = fd;
-- 
2.39.2



