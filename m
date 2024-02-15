Delivery-date: Thu, 15 Feb 2024 08:48:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUG-007AV1-0L
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 08:48:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUF-0001Qv-BR
	for lore@pengutronix.de; Thu, 15 Feb 2024 08:48:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Az7svAPaTN031DsHBfAdrgO38DoU9Ew9737sBlO/i6s=; b=RNV4wpA8jCUvzPhn6OWxZTzgaE
	1qk3aMW+wabzlEOKijV0AHhiEu1YCsQ29pLOX8A9LOd2l+ct8p0g1PJFi2FL9kRU0OODh3PUMOzGN
	/O9MS+T237irvh42w/9kWJK/M6eIOYedzIigybI7RD6UprcZSAU8pBq5ZFj27E3fmw5UVVEn1Ae7I
	poT8xrnTx1HKmTBN5IQgaRyT+Ww5UeP/t7I58L27pqL2NmCWXI6Mro6ag9sWyJ3iJ6xGqmfoc1Ske
	kQVUxKPyQMyesq150aKJZt4RPIwALlWMrHkXfQ8CEw0xSPnLwd9SMO4PaMpqqaerAuc4ee+U3brNn
	aQc2Gk8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTc-0000000FGBo-14Pr;
	Thu, 15 Feb 2024 07:48:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTU-0000000FG8O-1KMJ
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 07:48:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-00017p-R7; Thu, 15 Feb 2024 08:47:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000qCM-EQ; Thu, 15 Feb 2024 08:47:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-0041pl-17;
	Thu, 15 Feb 2024 08:47:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Feb 2024 08:47:57 +0100
Message-Id: <20240215074757.960200-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_234804_435869_B49B7C00 
X-CRM114-Status: GOOD (  13.15  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/7] fastboot: evaluate fastboot partitions when used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we have evaluated the fastboot partition description during
initialization of the fastboot gadget. Let's make this more flexible
and parse it when actually needed.
This gives us the possibility to first write an image including a
partition table to a disk and afterwards write an image to a single
partition created by the first whole disk write.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c | 40 +++++++++++++++++++++++++---------------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index f41c02a576..acf138af8a 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -80,7 +80,7 @@ static struct fb_variable *fb_addvar(struct fastboot *fb, struct list_head *list
 	return var;
 }
 
-static int fastboot_add_partition_variables(struct fastboot *fb,
+static int fastboot_add_partition_variables(struct fastboot *fb, struct list_head *list,
 		struct file_list_entry *fentry)
 {
 	struct stat s;
@@ -152,9 +152,9 @@ static int fastboot_add_partition_variables(struct fastboot *fb,
 	if (ret)
 		return ret;
 
-	var = fb_addvar(fb, &fb->variables, "partition-size:%s", fentry->name);
+	var = fb_addvar(fb, list, "partition-size:%s", fentry->name);
 	fb_setvar(var, "%08zx", size);
-	var = fb_addvar(fb, &fb->variables, "partition-type:%s", fentry->name);
+	var = fb_addvar(fb, list, "partition-type:%s", fentry->name);
 	fb_setvar(var, "%s", type);
 
 	return ret;
@@ -162,8 +162,6 @@ static int fastboot_add_partition_variables(struct fastboot *fb,
 
 int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 {
-	int ret;
-	struct file_list_entry *fentry;
 	struct fb_variable *var;
 
 	INIT_LIST_HEAD(&fb->variables);
@@ -186,12 +184,6 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 	if (export_bbu)
 		bbu_append_handlers_to_file_list(fb->files);
 
-	file_list_for_each_entry(fb->files, fentry) {
-		ret = fastboot_add_partition_variables(fb, fentry);
-		if (ret)
-			return ret;
-	}
-
 	return 0;
 }
 
@@ -305,26 +297,44 @@ static int strcmp_l1(const char *s1, const char *s2)
 static void cb_getvar(struct fastboot *fb, const char *cmd)
 {
 	struct fb_variable *var;
+	LIST_HEAD(partition_list);
+	struct file_list_entry *fentry;
+
+	file_list_for_each_entry(fb->files, fentry)
+		fastboot_add_partition_variables(fb, &partition_list, fentry);
 
 	pr_debug("getvar: \"%s\"\n", cmd);
 
 	if (!strcmp_l1(cmd, "all")) {
-		list_for_each_entry(var, &fb->variables, list) {
+		list_for_each_entry(var, &fb->variables, list)
 			fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s: %s",
 					  var->name, var->value);
-		}
+
+		list_for_each_entry(var, &partition_list, list)
+			fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s: %s",
+					  var->name, var->value);
+
 		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
-		return;
+		goto out;
 	}
 
 	list_for_each_entry(var, &fb->variables, list) {
 		if (!strcmp(cmd, var->name)) {
 			fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, var->value);
-			return;
+			goto out;
+		}
+	}
+
+	list_for_each_entry(var, &partition_list, list) {
+		if (!strcmp(cmd, var->name)) {
+			fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, var->value);
+			goto out;
 		}
 	}
 
 	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
+out:
+	fastboot_free_variables(&partition_list);
 }
 
 int fastboot_handle_download_data(struct fastboot *fb, const void *buffer,
-- 
2.39.2



