Delivery-date: Wed, 03 Jan 2024 11:20:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyMt-001mlm-0W
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:20:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyMs-0004Jo-5F
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:20:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V9AEwBTx8PUw9w29bYcXDBNY0Tz9Gt9cxi4iYh+DfCQ=; b=lQOR8xy/yzr8x0DJmnD02woJeg
	PtKs5SVzXkUatEw66Z+d97mrfVx4erE6pbOPzZVQnx0E6rhdne4lMvPTz4Ujbn8dhXxmsfNi3G2Ks
	ce9/mJ/nMhTAxL1B95tyesMsa8Dgw30KDjwBKJbB+5VcMbb74smHMlORP1mIOVSpqoxxvHwpWNTxy
	+qV7GjmzhER84VcmHFWSIKb+nS9o02svEtTT5pSV3OkF0kgMCUZ0I6f0qI/Ioe0v3p0CRi1SnvF+l
	EOKIjlQrhXmQHwuA4122GwU+N/fPoUTppCAv90ON0CCwpm9c2c0z6uAgQ7rjYJ56kBGOi8o+tTrby
	UBwEUN9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyLu-00ANMx-1O;
	Wed, 03 Jan 2024 10:19:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyLo-00ANLw-1I
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:19:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyLm-000421-Uu; Wed, 03 Jan 2024 11:19:50 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyLm-0005x0-IF; Wed, 03 Jan 2024 11:19:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyLm-00B2JG-1X;
	Wed, 03 Jan 2024 11:19:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:19:47 +0100
Message-Id: <20240103101948.2630473-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021955_168190_31B54CB1 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] list: rename debugging hooks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux recently renamed the name of these helpers, so have barebox follow
suit before implementing them out of line when optional list debugging
is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/list.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/linux/list.h b/include/linux/list.h
index 1341806b59da..60b0111f467c 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -37,18 +37,18 @@ static inline void INIT_LIST_HEAD(struct list_head *list)
 }
 
 #ifdef CONFIG_DEBUG_LIST
-extern bool __list_add_valid(struct list_head *new,
-			      struct list_head *prev,
-			      struct list_head *next);
-extern bool __list_del_entry_valid(struct list_head *entry);
+extern bool __list_add_valid_or_report(struct list_head *new,
+				       struct list_head *prev,
+				       struct list_head *next);
+extern bool __list_del_entry_valid_or_report(struct list_head *entry);
 #else
-static inline bool __list_add_valid(struct list_head *new,
-				struct list_head *prev,
-				struct list_head *next)
+static inline bool __list_add_valid_or_report(struct list_head *new,
+					      struct list_head *prev,
+					      struct list_head *next)
 {
 	return true;
 }
-static inline bool __list_del_entry_valid(struct list_head *entry)
+static inline bool __list_del_entry_valid_or_report(struct list_head *entry)
 {
 	return true;
 }
@@ -64,7 +64,7 @@ static inline void __list_add(struct list_head *new,
 			      struct list_head *prev,
 			      struct list_head *next)
 {
-	if (!__list_add_valid(new, prev, next))
+	if (!__list_add_valid_or_report(new, prev, next))
 		return;
 
 	next->prev = new;
@@ -129,7 +129,7 @@ static inline void __list_del_clearprev(struct list_head *entry)
 
 static inline void __list_del_entry(struct list_head *entry)
 {
-	if (!__list_del_entry_valid(entry))
+	if (!__list_del_entry_valid_or_report(entry))
 		return;
 
 	__list_del(entry->prev, entry->next);
-- 
2.39.2



