Delivery-date: Wed, 15 May 2024 17:24:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7GV0-00Fy0A-17
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 17:24:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7GUz-0001rd-Nq
	for lore@pengutronix.de; Wed, 15 May 2024 17:24:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LRlmoysioy4stMrhFpFoXGYru7tPQq27U6h4UGC8p4c=; b=rWrTl9FNHB4nukNZONgnUE9QCI
	6iL0VpFjhdMWC6xbyAlBLZOhSb/kDnApH1HtPw2yF0YVnQNgHD41AA1/meGkouwf93YCStku1EHCD
	H7CYbgtCGRi1nqNF/YUfES2VQ5lEEQ08+ofuTK45LD3cqgGUe0zcyvxgwPiM29LQoLfwZMbQ7LAVl
	jcW6LANEEWt5U8CAW7W37onybC/UZmk/V+slGxjHRlKEFN802intaSdZXEwQYzcEmN4BbqO5+adLK
	pjH72wJCfFVbSpwD8vVMmVyLMKSCKIkZxKBxKY6M7ltwIZok98IX6GkjlT5HRrY25I6ftB1/iSTl7
	MTRHIZ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7GUN-00000001wuI-16Lf;
	Wed, 15 May 2024 15:24:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7GUK-00000001wtb-2LLO
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 15:24:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7GUI-0001YB-K7; Wed, 15 May 2024 17:24:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7GUI-001Ycg-7M; Wed, 15 May 2024 17:24:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7GUI-00ECuz-0S;
	Wed, 15 May 2024 17:24:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 17:24:10 +0200
Message-Id: <20240515152410.3386237-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_082416_623531_C7522339 
X-CRM114-Status: GOOD (  12.16  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: ramfs: allocate once instead of twice per ramfs chunk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no reason to maintain two allocations per chunk, so just collect
them both into the same calloc call.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I didn't test thoroughly what performance improvement this might bring,
but it looks like a sensible thing to do.
---
 fs/ramfs.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 117e69b70c0c..3223beba7212 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -28,10 +28,10 @@
 #define CHUNK_SIZE	(4096 * 2)
 
 struct ramfs_chunk {
-	char *data;
 	unsigned long ofs;
 	int size;
 	struct list_head list;
+	char data[];
 };
 
 struct ramfs_inode {
@@ -98,19 +98,14 @@ static struct inode *ramfs_get_inode(struct super_block *sb, const struct inode
 
 static struct ramfs_chunk *ramfs_get_chunk(unsigned long size)
 {
-	struct ramfs_chunk *data = malloc(sizeof(struct ramfs_chunk));
-
-	if (!data)
-		return NULL;
+	struct ramfs_chunk *data;
 
 	if (size < MIN_SIZE)
 		size = MIN_SIZE;
 
-	data->data = calloc(size, 1);
-	if (!data->data) {
-		free(data);
+	data = calloc(struct_size(data, data, size), 1);
+	if (!data)
 		return NULL;
-	}
 
 	data->size = size;
 
@@ -119,7 +114,6 @@ static struct ramfs_chunk *ramfs_get_chunk(unsigned long size)
 
 static void ramfs_put_chunk(struct ramfs_chunk *data)
 {
-	free(data->data);
 	free(data);
 }
 
-- 
2.39.2



