Delivery-date: Wed, 17 Apr 2024 08:20:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwyee-004XVU-1T
	for lore@lore.pengutronix.de;
	Wed, 17 Apr 2024 08:20:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwyed-00050k-Qt
	for lore@pengutronix.de; Wed, 17 Apr 2024 08:20:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UgQNWVevKRMU+K0C49fBF+hOXQEv0x5HdnzWPSx+gQA=; b=0BMGQifbnyijxN
	+l01f9jJ+cPP63B9NFsvRWodbb1Y6fwW3gSqg31DG6oX4XTogl4v4J5qfeobmoqIp96nchZZKyRcz
	a8VplP9RCq+ZUL1Wnu1sSFWX+IpFKvhlGupKBBaCvyrR4LaPKqOUEWNqxmbnWu24fWnWh334TMEef
	W1N4c+sLs76Q2qtWUST/R3a6WXyEM0U4pqaYy3//Eu6GgaYqp5cWoiWNzmqN1E3plxyMKP05gxcxo
	YrTjhpDphFzSju250xXvlwcNhhY5spEttCNO7J7u8Q5lRNE98n85xMlCx+HZlw/nMJjq4MIzQDXht
	CZpIH9bNzfgGdSFiUCQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwye2-0000000Eqrp-04fj;
	Wed, 17 Apr 2024 06:19:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwydy-0000000EqrB-3f8b
	for barebox@lists.infradead.org;
	Wed, 17 Apr 2024 06:19:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwydt-0004Lm-TM; Wed, 17 Apr 2024 08:19:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwydt-00Ck49-Gz; Wed, 17 Apr 2024 08:19:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwydt-00D1lK-1C;
	Wed, 17 Apr 2024 08:19:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 Apr 2024 08:19:36 +0200
Message-Id: <20240417061936.3104764-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_231942_934327_024078B0 
X-CRM114-Status: GOOD (  11.81  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] file-list: remove unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct file_list::num_entries is only ever used to check if a file list
is empty. Do this check with list_empty() instead and remove the unused
member.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/file-list.c  | 6 +-----
 include/file-list.h | 3 +--
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/common/file-list.c b/common/file-list.c
index 7ecc8d00bb..3867e79c09 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -194,8 +194,6 @@ struct file_list *file_list_parse(const char *str)
 			goto out;
 		}
 		str = endptr;
-
-		files->num_entries++;
 	}
 
 	return files;
@@ -244,11 +242,9 @@ struct file_list *file_list_dup(struct file_list *old)
 
 	new = file_list_new();
 
-	list_for_each_entry(old_entry, &old->list, list) {
+	list_for_each_entry(old_entry, &old->list, list)
 		(void)file_list_add_entry(new, old_entry->name, old_entry->filename,
 					  old_entry->flags); /* can't fail */
-		new->num_entries++;
-	}
 
 	return new;
 }
diff --git a/include/file-list.h b/include/file-list.h
index 79190b0f19..1625f116a0 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -21,7 +21,6 @@ struct file_list_entry {
 
 struct file_list {
 	struct list_head list;
-	int num_entries;
 };
 
 struct file_list *file_list_parse(const char *str);
@@ -47,7 +46,7 @@ struct file_list_entry *file_list_entry_by_name(struct file_list *files, const c
 
 static inline bool file_list_empty(struct file_list *files)
 {
-	return !files || !files->num_entries;
+	return !files || list_empty(&files->list);
 }
 
 #endif /* __FILE_LIST */
-- 
2.39.2



