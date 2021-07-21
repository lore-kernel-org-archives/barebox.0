Delivery-date: Wed, 21 Jul 2021 10:42:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m67ns-0003w3-Bo
	for lore@lore.pengutronix.de; Wed, 21 Jul 2021 10:42:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m67nr-0000DM-6L
	for lore@pengutronix.de; Wed, 21 Jul 2021 10:42:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GTNDNUCMQDm1/IZa6F34/FDWi7YFzbSK2kq/cjTnqtU=; b=pXBun7dH+E9Lnb
	Akes5Gji9kzVEzaOpKLPX8E5/bH2ZTpULCzmfgHe3OAK9mY3cEyStCpE5iQC9DxXiA9Nax8X/inWg
	TqtBah1z2ZdnXmL0cbzBFxMTA/pOCogRbBbr82GB8xjfRKEpVBwfKaJVgBVz5wi/s5rqUCcj3LjMF
	G+vyLSRR7riFmyfqKNJ+REcwF5Tz6TWU+F4SFPj20KxGvr4ztFObPgl0kNxFYyQMNy4s9Tk2LuXZx
	POMwQKSb3yyMC2BXCllQiT8Ke6aHt27JUkbE09+2fJECwzhf4ud2n8dDzuJGpovjRo+TJh+oMSxbw
	PVgNpR/7UgERnpXVCVPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m67mU-00Ewhs-By; Wed, 21 Jul 2021 08:40:43 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m67mA-00Ewa5-Rz
 for barebox@lists.infradead.org; Wed, 21 Jul 2021 08:40:24 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id E55DF88A51; Wed, 21 Jul 2021 10:40:19 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:2179:3a02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id C90BD88A24;
 Wed, 21 Jul 2021 10:40:18 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 21 Jul 2021 10:40:16 +0200
Message-Id: <20210721084017.401081-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_014023_121178_774A64E5 
X-CRM114-Status: GOOD (  13.36  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] file_list: add file_list_parse_null()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Move the usbgadget parse() function to file_list and rename it to
file_list_parse_null() which will return a NULL pointer instead of an
error. Also adjust the callers in the usbgadget code.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/file-list.c  | 16 ++++++++++++++++
 common/usbgadget.c  | 22 +++-------------------
 include/file-list.h |  1 +
 3 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/common/file-list.c b/common/file-list.c
index 05f44514fb..407b312833 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -158,6 +158,22 @@ out:
 	return ERR_PTR(ret);
 }
 
+struct file_list *file_list_parse_null(const char *files)
+{
+	struct file_list *list;
+
+	if (!files)
+		return NULL;
+
+	list = file_list_parse(files);
+	if (IS_ERR(list)) {
+		pr_err("Parsing file list \"%s\" failed: %pe\n", files, list);
+		return NULL;
+	}
+
+	return list;
+}
+
 void file_list_free(struct file_list *files)
 {
 	struct file_list_entry *entry, *tmp;
diff --git a/common/usbgadget.c b/common/usbgadget.c
index d4437b5169..2d7323282d 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -23,26 +23,10 @@ static int autostart;
 static int acm;
 static char *dfu_function;
 
-static struct file_list *parse(const char *files)
-{
-	struct file_list *list;
-
-	if (!files)
-		return NULL;
-
-	list = file_list_parse(files);
-	if (IS_ERR(list)) {
-		pr_err("Parsing file list \"%s\" failed: %pe\n", files, list);
-		return NULL;
-	}
-
-	return list;
-}
-
 static inline struct file_list *get_dfu_function(void)
 {
 	if (dfu_function && *dfu_function)
-		return file_list_parse(dfu_function);
+		return file_list_parse_null(dfu_function);
 	if (!system_partitions_empty())
 		return system_partitions_get();
 	return NULL;
@@ -60,7 +44,7 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 	opts->release = usb_multi_opts_release;
 
 	if (dfu) {
-		opts->dfu_opts.files = parse(dfu_opts);
+		opts->dfu_opts.files = file_list_parse_null(dfu_opts);
 		if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && file_list_empty(opts->dfu_opts.files)) {
 			file_list_free(opts->dfu_opts.files);
 			opts->dfu_opts.files = get_dfu_function();
@@ -68,7 +52,7 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 	}
 
 	if (fastboot) {
-		opts->fastboot_opts.files = parse(fastboot_opts);
+		opts->fastboot_opts.files = file_list_parse_null(fastboot_opts);
 		if (IS_ENABLED(CONFIG_FASTBOOT_BASE) && file_list_empty(opts->fastboot_opts.files)) {
 			file_list_free(opts->fastboot_opts.files);
 			opts->fastboot_opts.files = get_fastboot_partitions();
diff --git a/include/file-list.h b/include/file-list.h
index 7e2a4d9205..5090313739 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -22,6 +22,7 @@ struct file_list {
 };
 
 struct file_list *file_list_parse(const char *str);
+struct file_list *file_list_parse_null(const char *str);
 char *file_list_to_str(const struct file_list *files);
 void file_list_free(struct file_list *);
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

