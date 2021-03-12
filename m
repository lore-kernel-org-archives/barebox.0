Delivery-date: Fri, 12 Mar 2021 12:41:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKgAb-0004Ql-M7
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 12:41:29 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKgAa-0004CM-Tw
	for lore@pengutronix.de; Fri, 12 Mar 2021 12:41:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C81n+xQB/k6iCZAD8MKwYQtzWHjo3C/qUGqtrxabWmo=; b=VSSY9MjJRXlixYZVXX9vdhU7J0
	BXoi5g6fiShKdrvwXNIRu7yvPAt7CVwABIsk0SariyVydqZZ9/5ywqhnS3yakjk+k63Zqq2yuj0ZK
	rWm3wxgNcHmqQpMylBAgrlszk3jzzJSjJhp0Qb9QPPzdLrRPQ9YyupDVm/sW8B971uZcxo794BH5j
	UNxzyyvFvfkowNJUbhZUSub3cvIFuMUHbP2VBYQn9UCNPtg8n9bnsjehJ+hoRtfTitOuu5FYNqP7I
	eBsCQnkzVJpd7fzp1hFfH3xwH+YX+nPMwc5Qt6fttX3HGTsN9HeCOmL/TP/u7xtOcuIdJ/XIA+lfI
	NJlRRPFg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKg9l-00BJMC-HW; Fri, 12 Mar 2021 11:40:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKg9e-00BJKv-Ju
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 11:40:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lKg9d-0003vB-8N; Fri, 12 Mar 2021 12:40:29 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lKg9c-0005wv-VV; Fri, 12 Mar 2021 12:40:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Mar 2021 12:40:27 +0100
Message-Id: <20210312114027.22734-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_114031_146642_49E63942 
X-CRM114-Status: UNSURE (   8.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fs: delete unused members in <linux/stat.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most of the struct is stuff we don't use and likely won't any
time soon. Drop them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c              |  1 -
 include/linux/stat.h | 12 ------------
 2 files changed, 13 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 3db24b7b6822..a5dbc3aac478 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -909,7 +909,6 @@ EXPORT_SYMBOL(readdir);
 
 static void stat_inode(struct inode *inode, struct stat *s)
 {
-	s->st_dev = 0;
 	s->st_ino = inode->i_ino;
 	s->st_mode = inode->i_mode;
 	s->st_uid = inode->i_uid;
diff --git a/include/linux/stat.h b/include/linux/stat.h
index 87fe06839671..f5043d8bcea7 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -45,8 +45,6 @@ extern "C" {
 #define S_IRWXUGO	(S_IRWXU|S_IRWXG|S_IRWXO)
 
 struct stat {
-	unsigned short st_dev;
-	unsigned short __pad1;
 	unsigned long st_ino;
 	unsigned short st_mode;
 	unsigned short st_nlink;
@@ -55,16 +53,6 @@ struct stat {
 	unsigned short st_rdev;
 	unsigned short __pad2;
 	loff_t  st_size;
-	unsigned long  st_blksize;
-	unsigned long  st_blocks;
-	unsigned long  st_atime;
-	unsigned long  __unused1;
-	unsigned long  st_mtime;
-	unsigned long  __unused2;
-	unsigned long  st_ctime;
-	unsigned long  __unused3;
-	unsigned long  __unused4;
-	unsigned long  __unused5;
 };
 
 #ifdef __cplusplus
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

