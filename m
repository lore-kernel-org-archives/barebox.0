Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8f-0002fH-1C
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:22:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:37 +0100
Message-Id: <1329294165-12089-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/12] fs: make locally used function get_mtab_entry_by_path
 static
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      |    2 +-
 include/fs.h |    1 -
 2 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 3dfbaaa..afa0198 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -170,7 +170,7 @@ EXPORT_SYMBOL(normalise_path);
 LIST_HEAD(mtab_list);
 static struct mtab_entry *mtab_root;
 
-struct mtab_entry *get_mtab_entry_by_path(const char *_path)
+static struct mtab_entry *get_mtab_entry_by_path(const char *_path)
 {
 	struct mtab_entry *e = NULL;
 	char *path, *tok;
diff --git a/include/fs.h b/include/fs.h
index dd10677..d31fb20 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -150,7 +150,6 @@ char *mkmodestr(unsigned long mode, char *str);
  * Note that we only support mounting on directories lying
  * directly in / and of course the root directory itself
  */
-struct mtab_entry *get_mtab_entry_by_path(const char *path);
 const char *fsdev_get_mountpoint(struct fs_device_d *fsdev);
 
 /*
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
