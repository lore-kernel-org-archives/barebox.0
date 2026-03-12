Delivery-date: Thu, 12 Mar 2026 15:44:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hGc-00ArMX-0l
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:44:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hGb-000412-Px
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:44:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8b3L2/6lrWWpWE9Wi01e7L78IYbFnpREqICrQXIMWh4=; b=wPjyO72AxXsAt7QIBh1gyv86bk
	iX2sIgNBJajOq+z9/Nau2a250WBYfYsvcurgObaisfXQk6UXCV9CC9KH5TKpOh49z2AeKbp9vFOtI
	sgm0rzIGH//Wv41PWCsmPVIlDRSbtPGTBVPSBk4ysc6xHciZbw8+ZknakdVwd9BSYqlyP0tF36ROc
	/8XA9Ab7vYIPDWdtb6l3yYlQ1HJQKgHF8hyhzUuQIF8BzCaK6K+cGNRBUwAhea9JrJCDSxS2V9tjj
	/bIURMErAyKs9wH1/fKTuIPDbWZV+7HCUbP5Ol0wbd90LDdgGK8exw9/fnijSWwTDlZajiNJJ3T98
	LpM7cWAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hG9-0000000EEIj-36rd;
	Thu, 12 Mar 2026 14:43:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hG6-0000000EEH9-1yOt
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:43:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hG3-0003s0-AZ; Thu, 12 Mar 2026 15:43:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hG1-0052NQ-2X;
	Thu, 12 Mar 2026 15:43:27 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hG3-000000093Gt-08Gj;
	Thu, 12 Mar 2026 15:43:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:43:15 +0100
Message-ID: <20260312144325.2157379-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074330_505526_9CBDE334 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] globalvar: propagate dev_set_param return value from globalvar_set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_set_param() already returns an error code, which can be useful
for non-simple globalvars. Propagate it out of globalvar_set as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/globalvar.c  | 4 ++--
 include/globalvar.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 876379b2538e..c2b0d5b4bbad 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -456,9 +456,9 @@ void globalvar_set_match(const char *match, const char *val)
 	}
 }
 
-void globalvar_set(const char *name, const char *val)
+int globalvar_set(const char *name, const char *val)
 {
-	dev_set_param(&global_device, name, val);
+	return dev_set_param(&global_device, name, val);
 }
 
 static int globalvar_simple_set(struct bobject *bobj, struct param_d *p,
diff --git a/include/globalvar.h b/include/globalvar.h
index e369616c632a..413cf72002a0 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -22,7 +22,7 @@ int globalvar_add_simple(const char *name, const char *value);
 void globalvar_remove(const char *name);
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
-void globalvar_set(const char *name, const char *val);
+int globalvar_set(const char *name, const char *val);
 
 int globalvar_add_simple_string(const char *name, char **value);
 int globalvar_add_simple_int(const char *name, int *value,
@@ -124,7 +124,7 @@ static inline char *globalvar_get_match(const char *match, const char *separator
 
 static inline void globalvar_set_match(const char *match, const char *val) {}
 
-static inline void globalvar_set(const char *name, const char *val) {}
+static inline int globalvar_set(const char *name, const char *val) { return 0; }
 
 static inline int nvvar_load(void)
 {
-- 
2.47.3



