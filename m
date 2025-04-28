Delivery-date: Mon, 28 Apr 2025 15:08:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODs-000Ajb-0o
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 15:08:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODr-0002Oa-8t
	for lore@pengutronix.de; Mon, 28 Apr 2025 15:08:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i8DunT7jtAqWcqBTSN7BKwvSH8q/TfIvgK0Qu7jMjqs=; b=uBHlaD23QA3f0r2XDnUMk7SNSg
	8K+nl2l34jbilTX4YKzZJZcvretIuZEsfnjIxX699vKTHJXx/E1Ajy54hvolJNETUfXjcBVfLn0oC
	aEywc/UH0IBE2o+trv4LccNHwC8EJlUOXw9jK0aH6AIKNVKFjQ1vgGafpitDxn74XnVyWSWi1Tz6N
	Zx1LZX9pY3mRBCYSVaf2+sbTOP5zMEavvwDuHhMCX2JZQjvMXLCjnc+ap1cKCZVd0XcnDulsY3ai3
	JKRoV/Dh7J2sl17r3iHPt7EEh8LtA24pdnm0PnaVztJxsb60+zNvvKRE5XYLtQsowD1YTwuUlR0/V
	/WvH1DmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ODH-00000006No8-1aWz;
	Mon, 28 Apr 2025 13:07:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Nyf-00000006H8n-0BXy
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 12:52:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0003Uy-GO; Mon, 28 Apr 2025 14:52:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-00068n-0z;
	Mon, 28 Apr 2025 14:52:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0087Aw-2C;
	Mon, 28 Apr 2025 14:52:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Apr 2025 14:52:18 +0200
Message-Id: <20250428125217.1931365-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
References: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_055253_120871_890B5093 
X-CRM114-Status: GOOD (  15.89  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] fastboot: check for file existence before flashing/erasing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We used to have an init time check for whether exported files exist or
not, but this went away and was replaced by a check in getvar.

If a client omits getvar and directly calls flash for a non-existent
file, barebox will create it automatically, thereby turning every
partition as if it had the create flag set.

Add an explicit check for whether a file exists into flash/erase
and proceed only if it does or the create flag is set.

The optional flag needs not to be checked here as it's only relevant
when enumerating available partitions.

Fixes: 6a191155be4e ("fastboot: evaluate fastboot partitions when used")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index e51a6b2027ec..56bc4e82c4fe 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -94,6 +94,20 @@ static loff_t fb_file_getsize(struct file_list_entry *fentry)
 	return ret ? ret : s.st_size;
 }
 
+static int fb_file_available(struct file_list_entry *fentry)
+{
+	loff_t size;
+
+	size = fb_file_getsize(fentry);
+	if (size >= 0)
+		return 1;
+
+	if (fentry->flags & FILE_LIST_FLAG_CREATE)
+		return 0;
+
+	return size;
+}
+
 static int fastboot_add_partition_variables(struct fastboot *fb, struct list_head *list,
 		struct file_list_entry *fentry)
 {
@@ -682,13 +696,24 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		goto out;
 	}
 
-	/* Check if board-code registered a vendor-specific handler */
+	/* Check if board-code registered a vendor-specific handler
+	 * We intentionally do this before the fb_file_available check
+	 * to afford board core more flexibility.
+	 */
 	if (fb->cmd_flash) {
 		ret = fb->cmd_flash(fb, fentry, fb->tempname, fb->download_size);
 		if (ret != FASTBOOT_CMD_FALLTHROUGH)
 			goto out;
 	}
 
+	ret = fb_file_available(fentry);
+	if (ret < 0) {
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
+				  "file %s doesn't exist", fentry->filename);
+		ret = -ENOENT;
+		goto out;
+	}
+
 	filename = fentry->filename;
 
 	if (filetype == filetype_android_sparse) {
@@ -801,6 +826,13 @@ static void cb_erase(struct fastboot *fb, const char *cmd)
 		return;
 	}
 
+	ret = fb_file_available(fentry);
+	if (ret < 0) {
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
+				  "file %s doesn't exist", fentry->filename);
+		return;
+	}
+
 	fd = open(filename, O_RDWR);
 	if (fd < 0)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, strerror(-fd));
-- 
2.39.5



