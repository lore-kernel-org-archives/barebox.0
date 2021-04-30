Delivery-date: Fri, 30 Apr 2021 15:31:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEt-0004zr-6D
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:31:27 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTEr-0006w0-R3
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:31:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dJCVdLwcxI05/d8k5bdwUjZ6vZ0oO+yBoEmRm3ULx+E=; b=GMbwntxfb9iK6KjYKZQA80/vi
	bhUs4flx/h/B6K15bjpZhBrEbm6np3lx6kpEBdmLptMlgQYny8w5aLMrMxU82hff4fJ38RAC3arrL
	uFOJ6lAtQFINmZB5lj/ptxt9pywvFlYRuCAQIcVGfJYEMqZG+g34aSzgC6m1mvVAJeZM0RK1bkWRD
	W35l9LAvAb1F1Rp3/vVQ24n47M3vju1RsyZcriHHinN1hKoOAlAT8p98MoUhyj4cFMhdv6nNhRAI3
	B3G19/JtvZTaSRkLcBMh9SuwLyskBHbbt9EwufvHOsqqXQCB4NHjjBmmCvG8bDE0rIg8RPTCwkuxT
	YxSliOBAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTDx-007ue2-I9; Fri, 30 Apr 2021 13:30:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDW-007uYT-EF
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=cmbCGdw7XL8lxgreAqyDZfnmOUicnSpVfG1BKD5OBYw=; b=VzXhEItHLg0xRS+mQkTUZRgoOl
 86kRJQCv5caPur4Xclyq6Y4qlJI9vkFCqVJ3juhfeICpuhHEp4zrrbsiCwdpSbD4dCPD4BWHRHYcM
 h8XwxH3WvINZHA47JewIRhP3s9cXNn8KSXRahOTxX1PMFHnjw5aNds3CQ/lILOHisIulD+MYamWsV
 gh6XwCaw+9wS3UQQMJOXmsEwfDEHfTC4TQR2ISaS7DaEqhW3CrJIhgEtbsrLVaAULFRL/gUsuIk7Z
 1ByiLKBZNQCdSnm/MS5oXUTMZ+enjuxaT7KMsvarQhiOl5Ukn15Ftwkk2NrLzM7Q0F9UU+WUy/q2Q
 iZTNonpA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDS-001PHT-BC
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:30:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDO-00069x-8t; Fri, 30 Apr 2021 15:29:54 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-0003rX-6Q; Fri, 30 Apr 2021 15:29:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:29:46 +0200
Message-Id: <20210430132949.14617-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-1-a.fatoum@pengutronix.de>
References: <20210430132949.14617-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_062958_485067_87741121 
X-CRM114-Status: GOOD (  15.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/15] bbu: add function to directly add handlers into
 file_list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bbu_handlers_iterate() is only used for merging handlers into a
file_list. This can be useful for other update mechanisms as well.

Export a bbu_append_handlers_to_file_list that does this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bbu.c      | 24 +++++++++++++++---------
 common/fastboot.c | 21 ++-------------------
 include/bbu.h     | 10 +++++++++-
 3 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index ee9f78ecc91c..1a1edda96b6c 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -16,22 +16,28 @@
 #include <malloc.h>
 #include <linux/stat.h>
 #include <image-metadata.h>
+#include <file-list.h>
 
 static LIST_HEAD(bbu_image_handlers);
 
-int bbu_handlers_iterate(int (*fn)(struct bbu_handler *, void *), void *ctx)
+static void append_bbu_entry(struct bbu_handler *handler, struct file_list *files)
 {
-	struct bbu_handler *handler;
+	char *name;
 
-	list_for_each_entry(handler, &bbu_image_handlers, list) {
-		int ret;
+	name = basprintf("bbu-%s", handler->name);
 
-		ret = fn(handler, ctx);
-		if (ret)
-			return ret;
-	}
+	if (file_list_add_entry(files, name, handler->devicefile, 0))
+		pr_warn("duplicate partition name %s\n", name);
 
-	return 0;
+	free(name);
+}
+
+void bbu_append_handlers_to_file_list(struct file_list *files)
+{
+	struct bbu_handler *handler;
+
+	list_for_each_entry(handler, &bbu_image_handlers, list)
+		append_bbu_entry(handler, files);
 }
 
 int bbu_force(struct bbu_data *data, const char *fmt, ...)
diff --git a/common/fastboot.c b/common/fastboot.c
index dc80b66e6720..75f6691b08b6 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -150,23 +150,6 @@ out:
 	return ret;
 }
 
-static int fastboot_add_bbu_variables(struct bbu_handler *handler, void *ctx)
-{
-	struct fastboot *fb = ctx;
-	char *name;
-	int ret;
-
-	name = basprintf("bbu-%s", handler->name);
-
-	ret = file_list_add_entry(fb->files, name, handler->devicefile, 0);
-	if (ret)
-		pr_warn("duplicate partition name %s\n", name);
-
-	free(name);
-
-	return 0;
-}
-
 int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 {
 	int ret;
@@ -188,8 +171,8 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 	if (!fb->tempname)
 		return -ENOMEM;
 
-	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && export_bbu)
-		bbu_handlers_iterate(fastboot_add_bbu_variables, fb);
+	if (export_bbu)
+		bbu_append_handlers_to_file_list(fb->files);
 
 	file_list_for_each_entry(fb->files, fentry) {
 		ret = fastboot_add_partition_variables(fb, fentry);
diff --git a/include/bbu.h b/include/bbu.h
index 3b9d2f4bf151..3128339068ee 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -48,7 +48,7 @@ struct bbu_handler *bbu_find_handler_by_device(const char *devicepath);
 
 void bbu_handlers_list(void);
 
-int bbu_handlers_iterate(int (*fn)(struct bbu_handler *, void *), void *);
+struct file_list;
 
 #ifdef CONFIG_BAREBOX_UPDATE
 
@@ -57,6 +57,8 @@ int bbu_register_handler(struct bbu_handler *);
 int bbu_register_std_file_update(const char *name, unsigned long flags,
 		const char *devicefile, enum filetype imagetype);
 
+void bbu_append_handlers_to_file_list(struct file_list *files);
+
 #else
 
 static inline int bbu_register_handler(struct bbu_handler *unused)
@@ -69,6 +71,12 @@ static inline int bbu_register_std_file_update(const char *name, unsigned long f
 {
 	return -ENOSYS;
 }
+
+static inline void bbu_append_handlers_to_file_list(struct file_list *files)
+{
+	/* none could be registered, so nothing to do */
+}
+
 #endif
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

