Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9j-0004GH-5H
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:01 +0200
Message-Id: <20170927120910.10516-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] file_list: Allow only unique names on list
To: Barebox List <barebox@lists.infradead.org>

The key to a file_list is it's name, so ensure it's unique.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/file-list.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/file-list.c b/common/file-list.c
index 0b760c1aec..e13d5af659 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -23,7 +23,13 @@ struct file_list_entry *file_list_entry_by_name(struct file_list *files, const c
 int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
 			unsigned long flags)
 {
-	struct file_list_entry *entry = xzalloc(sizeof(*entry));
+	struct file_list_entry *entry;
+
+	entry = file_list_entry_by_name(files, name);
+	if (entry)
+		return -EEXIST;
+
+	entry = xzalloc(sizeof(*entry));
 
 	entry->name = xstrdup(name);
 	entry->filename = xstrdup(filename);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
