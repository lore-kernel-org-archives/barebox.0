Delivery-date: Tue, 22 Apr 2025 10:39:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79AF-003yct-0f
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79A8-0002ZH-3p
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NY5eSG2xXBHOxCo86dZrV6fxf2xZeK80t5ap5b9HOEw=; b=B5uELceELumHFuX5Fwx3Rjfrqn
	fgDjz8bqbiKaOanrLDeu8VcUbS/RNOLg6aVnGaC2howU7V0Mq0klhTON4NAhHR9YkA33Dj3s6R3+2
	c5il+JbrkoV8PvFKTdHuYOaG6/0TrXyxbSAlvYJmC6ZURtIX9jk7yRkeKJJVTjrTRQhM1OG7VpsAF
	rrUDHFK7jCQzw52Yk5nTTc6EYoQGYLMJ7q/komdtqyHr7dyc8ej86uillZb0SZ+p9+s9FQtk7B6oW
	eG0ecSKZk6xr7WeDFfmEr47oNR9OgmWQ1G2jBSdpld+b8ZMJpX4eladZKobAA1jh9Aat0rFh2w8m6
	E727ZgAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u799D-00000006MpV-1FWx;
	Tue, 22 Apr 2025 08:38:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Us-00000006CVf-2Nr1
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ur-0000kJ-Fh
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ur-001VwW-0x
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ur-000vVM-0f
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:48 +0200
Message-Id: <20250422075648.220966-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005650_603487_46C2554D 
X-CRM114-Status: GOOD (  12.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: add support for NOTIFY_BAD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

When notified, returning NOTIFY_BAD or NOTIFY_STOP can be used stop
further calls and inform the original notification site.

Provide the same in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/notifier.h | 16 ++++++++++++++++
 lib/notifier.c     | 10 +++++++---
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/include/notifier.h b/include/notifier.h
index 093fedb0e8e4..822f8a3d6103 100644
--- a/include/notifier.h
+++ b/include/notifier.h
@@ -37,5 +37,21 @@ int clock_notifier_call_chain(void);
 
 #define NOTIFY_DONE		0x0000		/* Don't care */
 #define NOTIFY_OK		0x0001		/* Suits me */
+#define NOTIFY_STOP_MASK	0x8000		/* Don't call further */
+#define NOTIFY_BAD		(NOTIFY_STOP_MASK|0x0002)
+						/* Bad/Veto action */
+/*
+ * Clean way to return from the notifier and stop further calls.
+ */
+#define NOTIFY_STOP		(NOTIFY_OK|NOTIFY_STOP_MASK)
+
+/* Encapsulate (negative) errno value (in particular, NOTIFY_BAD <=> EPERM). */
+static inline int notifier_from_errno(int err)
+{
+	if (err)
+		return NOTIFY_STOP_MASK | (NOTIFY_OK - err);
+
+	return NOTIFY_OK;
+}
 
 #endif /* __NOTIFIER_H */
diff --git a/lib/notifier.c b/lib/notifier.c
index 3ca557f76df2..775619d3c06f 100644
--- a/lib/notifier.c
+++ b/lib/notifier.c
@@ -19,11 +19,15 @@ int notifier_chain_unregister(struct notifier_head *nh, struct notifier_block *n
 int notifier_call_chain(struct notifier_head *nh, unsigned long val, void *v)
 {
 	struct notifier_block *entry, *tmp;
+	int ret = NOTIFY_DONE;
 
-	list_for_each_entry_safe(entry, tmp, &nh->blocks, list)
-		entry->notifier_call(entry, val, v);
+	list_for_each_entry_safe(entry, tmp, &nh->blocks, list) {
+		ret = entry->notifier_call(entry, val, v);
+		if (ret & NOTIFY_STOP_MASK)
+			break;
+	}
 
-	return 0;
+	return ret;
 }
 
 /*
-- 
2.39.5



