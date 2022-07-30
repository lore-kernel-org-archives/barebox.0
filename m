Delivery-date: Sat, 30 Jul 2022 11:47:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHj4g-004qy4-M0
	for lore@lore.pengutronix.de; Sat, 30 Jul 2022 11:47:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHj4f-0006yj-Cx
	for lore@pengutronix.de; Sat, 30 Jul 2022 11:47:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1PmYp7YCERXr9rkgMSROSmlWCcyCeKdXswPOLvsikY0=; b=mqr+m2SwnXlnL4Z2gApCYOPZRx
	KB1SCODyH163fSKpOMqTUT3P2MzhNSFdpefLlpXuZSv9gj224p9iXbEl7q86v3/UWAshyTOGOlFhO
	bvgAd9UXR/Bj5Oqp36KE67Ffa9owjiMvQQ2CDaojNWNQthCEvSR2GzbiNnxRr+sFf0rgX6Q8V5Xk4
	1xXb3aZ3D363rtHpICqOlkdkccmb7U1uSbrUBMUdMITMJLoDYHhgnJ2RpaZFKh7RYcnfkKcgWKdok
	azQpqfhMOYo7nydhPn9LuavUdmAtlemTSUNYbBr1Euav7KvN3H5aJkhVP4deFEAmTsafmKNhP1r3R
	mcRTDk2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHj3C-00H6Uc-BP; Sat, 30 Jul 2022 09:46:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHj37-00H6Sg-QF
	for barebox@lists.infradead.org; Sat, 30 Jul 2022 09:46:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj34-0006jk-AE; Sat, 30 Jul 2022 11:46:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj33-000gOP-KL; Sat, 30 Jul 2022 11:46:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj32-007OOs-MO; Sat, 30 Jul 2022 11:46:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Jul 2022 11:46:14 +0200
Message-Id: <20220730094615.1762042-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_024621_893299_27C42EB9 
X-CRM114-Status: GOOD (  12.62  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] file_list: factor out file_list_new
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have the sequence for creating a new file_list at two places and
follow-up commit will add a third one outside of the file, so it's a
good occasion to use a common helper. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/file-list.c  | 19 +++++++++++++------
 include/file-list.h |  1 +
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/common/file-list.c b/common/file-list.c
index 407b31283373..11db7c6e44c7 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -130,16 +130,25 @@ static const char *flags_to_str(int flags)
 	return str;
 }
 
-struct file_list *file_list_parse(const char *str)
+struct file_list *file_list_new(void)
 {
 	struct file_list *files;
-	int ret;
-	const char *endptr;
 
 	files = xzalloc(sizeof(*files));
 
 	INIT_LIST_HEAD(&files->list);
 
+	return files;
+}
+
+struct file_list *file_list_parse(const char *str)
+{
+	struct file_list *files;
+	int ret;
+	const char *endptr;
+
+	files = file_list_new();
+
 	while (*str) {
 		ret = file_list_parse_one(files, str, &endptr);
 		if (ret) {
@@ -195,9 +204,7 @@ struct file_list *file_list_dup(struct file_list *old)
 	struct file_list_entry *old_entry;
 	struct file_list *new;
 
-	new = xzalloc(sizeof(*new));
-
-	INIT_LIST_HEAD(&new->list);
+	new = file_list_new();
 
 	list_for_each_entry(old_entry, &old->list, list) {
 		(void)file_list_add_entry(new, old_entry->name, old_entry->filename,
diff --git a/include/file-list.h b/include/file-list.h
index 5090313739b8..af0dd7bbf108 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -29,6 +29,7 @@ void file_list_free(struct file_list *);
 int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
 			unsigned long flags);
 
+struct file_list *file_list_new(void);
 struct file_list *file_list_dup(struct file_list *old);
 
 int file_list_detect_all(const struct file_list *files);
-- 
2.30.2



