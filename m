Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9m-0004KN-QX
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:00 +0200
Message-Id: <20170927120910.10516-3-s.hauer@pengutronix.de>
In-Reply-To: <20170927120910.10516-1-s.hauer@pengutronix.de>
References: <20170927120910.10516-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/12] file_list: Add function to get entry by its name
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/file-list.c  | 12 ++++++++++++
 include/file-list.h |  2 ++
 2 files changed, 14 insertions(+)

diff --git a/common/file-list.c b/common/file-list.c
index 010f8f0617..0b760c1aec 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -8,6 +8,18 @@
 #define PARSE_NAME	1
 #define PARSE_FLAGS	2
 
+struct file_list_entry *file_list_entry_by_name(struct file_list *files, const char *name)
+{
+	struct file_list_entry *entry;
+
+	file_list_for_each_entry(files, entry) {
+		if (!strcmp(entry->name, name))
+			return entry;
+	}
+
+	return NULL;
+}
+
 int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
 			unsigned long flags)
 {
diff --git a/include/file-list.h b/include/file-list.h
index ccdc2b5efd..1e02539d4d 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -23,6 +23,8 @@ void file_list_free(struct file_list *);
 int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
 			unsigned long flags);
 
+struct file_list_entry *file_list_entry_by_name(struct file_list *files, const char *name);
+
 #define file_list_for_each_entry(files, entry) \
 	list_for_each_entry(entry, &files->list, list)
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
