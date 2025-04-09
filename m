Delivery-date: Wed, 09 Apr 2025 16:40:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbg-00ARop-35
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:40:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbg-0003K7-Aa
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:40:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gBp9mFgaVLV4W1RRiM583+UzuMZyqWIPOH1GbgT6bU8=; b=jZid9mIeNpCpMI7lABqIk3/hNN
	z/1bT1s8v2sLjkNYkIeL38RvhuWfbj99RLBBhL6KNVFRcyBxcwaINL+P1tC+UBlNVhvmooh+cJdzK
	/SQSmfXs+y3RNj+FjF8dc5D2Dpuoj5mDtkxoQt558ssG3sR6BwyKB5q3+mHeibyGUlUBGYa8dVj3M
	8HNdYumiQ0MvkmoIbq97ZJhkrJdrqT4GyFleRafsoEAW4FJINDFxstfJO/BwQycUtzfhBs/w9JKVf
	x1w8whzNJsBQnxhEBXZJBEEjfRhZuRlZG9ow3X4kEg0mJAeBCDy7b42/uAQs/AN2HdWxTneUNrBmp
	DCrwkQaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WbD-00000007Ur0-0h2j;
	Wed, 09 Apr 2025 14:40:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Vzo-00000007NXm-0FTh
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 14:01:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-0004q9-Ks; Wed, 09 Apr 2025 16:01:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-004705-1P;
	Wed, 09 Apr 2025 16:01:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-008jBv-16;
	Wed, 09 Apr 2025 16:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 16:01:30 +0200
Message-Id: <20250409140134.2079552-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
References: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_070140_114544_59A1BB33 
X-CRM114-Status: GOOD (  12.29  )
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
Subject: [PATCH 2/7] fip: mark predefined toc_entries array const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is no use case for modifying these mapping structure used by the
fiptool command, so mark them appropriately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/fiptool.c | 4 ++--
 include/fiptool.h  | 4 ++--
 lib/fip.c          | 2 +-
 lib/tbbr_config.c  | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/commands/fiptool.c b/commands/fiptool.c
index 46b5ed29c317..ccf99491bf66 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -115,9 +115,9 @@ static int info_cmd(struct fip_state *fip, int argc, char *argv[])
 
 static int uuid_cmd(struct fip_state *fip, int argc, char *argv[])
 {
-	for (toc_entry_t *t = toc_entries; t->cmdline_name != NULL; t++)
+	for (const toc_entry_t *t = toc_entries; t->cmdline_name != NULL; t++)
 		printf("%pU\t%-16s\t%s\n", &t->uuid, t->cmdline_name, t->name);
-	for (toc_entry_t *t = plat_def_toc_entries; t->cmdline_name != NULL; t++)
+	for (const toc_entry_t *t = plat_def_toc_entries; t->cmdline_name != NULL; t++)
 		printf("%pU\t%-16s\t%s\n", &t->uuid, t->cmdline_name, t->name);
 	return 0;
 }
diff --git a/include/fiptool.h b/include/fiptool.h
index 1b70824a8694..1a0dbe0e6975 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -91,8 +91,8 @@ typedef struct toc_entry {
 	char         *cmdline_name;
 } toc_entry_t;
 
-extern toc_entry_t toc_entries[];
-extern toc_entry_t plat_def_toc_entries[];
+extern const toc_entry_t toc_entries[];
+extern const toc_entry_t plat_def_toc_entries[];
 
 #define fip_for_each_desc(fip, e) \
         list_for_each_entry(e, &(fip)->descs, list)
diff --git a/lib/fip.c b/lib/fip.c
index f3754bdc29af..9470aa5d3398 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -105,7 +105,7 @@ void fip_free(struct fip_state *fip)
 
 void fip_fill_image_descs(struct fip_state *fip)
 {
-	toc_entry_t *toc_entry;
+	const toc_entry_t *toc_entry;
 
 	for (toc_entry = toc_entries;
 	     toc_entry->cmdline_name != NULL;
diff --git a/lib/tbbr_config.c b/lib/tbbr_config.c
index 3d777e5648a9..9e5f51029beb 100644
--- a/lib/tbbr_config.c
+++ b/lib/tbbr_config.c
@@ -5,7 +5,7 @@
 #include <fiptool.h>
 
 /* The images used depends on the platform. */
-toc_entry_t toc_entries[] = {
+const toc_entry_t toc_entries[] = {
 	{
 		.name = "SCP Firmware Updater Configuration FWU SCP_BL2U",
 		.uuid = UUID_TRUSTED_UPDATE_FIRMWARE_SCP_BL2U,
@@ -187,7 +187,7 @@ toc_entry_t toc_entries[] = {
 	}
 };
 
-toc_entry_t plat_def_toc_entries[] = {
+const toc_entry_t plat_def_toc_entries[] = {
 #ifdef CONFIG_ARCH_STM32MP
 	{
 		.name = "STM32MP CONFIG CERT",
-- 
2.39.5



