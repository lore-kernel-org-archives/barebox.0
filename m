Delivery-date: Mon, 28 Apr 2025 16:16:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9PHY-000C68-0C
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 16:16:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9PHX-0000Ep-GD
	for lore@pengutronix.de; Mon, 28 Apr 2025 16:16:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JqPI+PI/KMc/BvW5qDokE/YccIne2yktGjshwUY5EhY=; b=kAks+uJXVctF/BJbaTX+xG2g/i
	n3YXtIKwrys+p5jb2PiEFsrTwVtjEKe9BEOidy9UvNocKdaFsK7LXXfCwiCAcIu9GrTDMWwPee4sv
	sBLQReIY5MTpqBPQJz/Ol8Mse+lFpmesWFVmFBXWp0gTtvUejyoXYdSlN3JTxsRPAuO45P79aFqC0
	ITSKUdk/vJsUyQ9IIkpEY8m9A116CEmN8jem2N+ehj/K45h+UzKywxKlS7IedA5jlvTO+damC4VYx
	NunFHZfi09E4X5fcsqBJJenR0JvT6WwFerN5DXUMAqNYeAMuDiM0fBghh1m5mgF0fOwU9SZJY1wEC
	jicc0r6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9PHH-00000006bDW-2rUs;
	Mon, 28 Apr 2025 14:16:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Nyf-00000006H8l-0BmN
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 12:52:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0003Un-Ek; Mon, 28 Apr 2025 14:52:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-00068j-0p;
	Mon, 28 Apr 2025 14:52:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0087Aw-24;
	Mon, 28 Apr 2025 14:52:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Apr 2025 14:52:17 +0200
Message-Id: <20250428125217.1931365-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
References: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_055253_124682_9F8CDEFD 
X-CRM114-Status: GOOD (  12.76  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] fastboot: factor out fb_file_getsize
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll add another user for stat on the fentry file name, so prepare for
that by factoring out the code into a helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 529d9690db79..e51a6b2027ec 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -80,15 +80,10 @@ static struct fb_variable *fb_addvar(struct fastboot *fb, struct list_head *list
 	return var;
 }
 
-static int fastboot_add_partition_variables(struct fastboot *fb, struct list_head *list,
-		struct file_list_entry *fentry)
+static loff_t fb_file_getsize(struct file_list_entry *fentry)
 {
 	struct stat s;
-	size_t size = 0;
-	int fd, ret;
-	struct mtd_info_user mtdinfo;
-	char *type = NULL;
-	struct fb_variable *var;
+	int ret;
 
 	ret = stat(fentry->filename, &s);
 	if (ret) {
@@ -96,7 +91,20 @@ static int fastboot_add_partition_variables(struct fastboot *fb, struct list_hea
 		ret = stat(fentry->filename, &s);
 	}
 
-	if (ret) {
+	return ret ? ret : s.st_size;
+}
+
+static int fastboot_add_partition_variables(struct fastboot *fb, struct list_head *list,
+		struct file_list_entry *fentry)
+{
+	loff_t size;
+	int fd, ret;
+	struct mtd_info_user mtdinfo;
+	char *type = NULL;
+	struct fb_variable *var;
+
+	size = fb_file_getsize(fentry);
+	if (size < 0) {
 		if (fentry->flags & FILE_LIST_FLAG_OPTIONAL) {
 			pr_info("skipping unavailable optional partition %s for fastboot gadget\n",
 				fentry->filename);
@@ -111,6 +119,7 @@ static int fastboot_add_partition_variables(struct fastboot *fb, struct list_hea
 			goto out;
 		}
 
+		ret = size;
 		goto out;
 	}
 
@@ -120,7 +129,6 @@ static int fastboot_add_partition_variables(struct fastboot *fb, struct list_hea
 		goto out;
 	}
 
-	size = s.st_size;
 
 	ret = ioctl(fd, MEMGETINFO, &mtdinfo);
 
-- 
2.39.5



