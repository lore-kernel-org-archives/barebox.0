Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2eJM-0001Df-NZ
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 10:00:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2014 10:59:36 +0100
Message-Id: <1389607176-18335-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs ubifs: Use pr_* for printing messages
To: barebox@lists.infradead.org

Unline the printk(KERN_* the pr_* functions cooperate with the
barebox loglevel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/debug.h | 10 +++++-----
 fs/ubifs/ubifs.h |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/fs/ubifs/debug.h b/fs/ubifs/debug.h
index 62617b6..dbc7f18 100644
--- a/fs/ubifs/debug.h
+++ b/fs/ubifs/debug.h
@@ -85,7 +85,7 @@ struct ubifs_debug_info {
 
 #define ubifs_assert(expr) do {                                                \
 	if (unlikely(!(expr))) {                                               \
-		printk(KERN_CRIT "UBIFS assert failed in %s at %u (pid %d)\n", \
+		pr_crit("UBIFS assert failed in %s at %u (pid %d)\n", \
 		       __func__, __LINE__, 0);                      \
 		dbg_dump_stack();                                              \
 	}                                                                      \
@@ -94,7 +94,7 @@ struct ubifs_debug_info {
 #define ubifs_assert_cmt_locked(c) do {                                        \
 	if (unlikely(down_write_trylock(&(c)->commit_sem))) {                  \
 		up_write(&(c)->commit_sem);                                    \
-		printk(KERN_CRIT "commit lock is not locked!\n");              \
+		pr_crit("commit lock is not locked!\n");		      \
 		ubifs_assert(0);                                               \
 	}                                                                      \
 } while (0)
@@ -107,7 +107,7 @@ struct ubifs_debug_info {
 /* Generic debugging messages */
 #define dbg_msg(fmt, ...) do {                                                 \
 	spin_lock(&dbg_lock);                                                  \
-	printk(KERN_DEBUG "UBIFS DBG (pid %d): %s: " fmt "\n", 0,   \
+	pr_debug("UBIFS DBG (pid %d): %s: " fmt "\n", 0,   \
 	       __func__, ##__VA_ARGS__);                                       \
 	spin_unlock(&dbg_lock);                                                \
 } while (0)
@@ -310,7 +310,7 @@ void ubifs_debugging_exit(struct ubifs_info *c);
 /* Use "if (0)" to make compiler check arguments even if debugging is off */
 #define ubifs_assert(expr)  do {                                               \
 	if (0 && (expr))                                                       \
-		printk(KERN_CRIT "UBIFS assert failed in %s at %u (pid %d)\n", \
+		pr_crit("UBIFS assert failed in %s at %u (pid %d)\n", \
 		       __func__, __LINE__, 0);                      \
 } while (0)
 
@@ -321,7 +321,7 @@ void ubifs_debugging_exit(struct ubifs_info *c);
 
 #define dbg_msg(fmt, ...) do {                                                 \
 	if (0)                                                                 \
-		printk(KERN_DEBUG "UBIFS DBG (pid %d): %s: " fmt "\n",         \
+		pr_debug("UBIFS DBG (pid %d): %s: " fmt "\n",         \
 		       0, __func__, ##__VA_ARGS__);                 \
 } while (0)
 
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 1e6c0f5..fea1584 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -474,15 +474,15 @@ static inline ino_t parent_ino(struct dentry *dentry)
 #define ubifs_msg(fmt, ...)
 #else
 #define ubifs_msg(fmt, ...) \
-		printk(KERN_NOTICE "UBIFS: " fmt "\n", ##__VA_ARGS__)
+		pr_notice("UBIFS: " fmt "\n", ##__VA_ARGS__)
 #endif
 /* UBIFS error messages */
 #define ubifs_err(fmt, ...)                                                  \
-	printk(KERN_ERR "UBIFS error (pid %d): %s: " fmt "\n", 0, \
+	pr_err("UBIFS error (pid %d): %s: " fmt "\n", 0, \
 	       __func__, ##__VA_ARGS__)
 /* UBIFS warning messages */
 #define ubifs_warn(fmt, ...)                                         \
-	printk(KERN_WARNING "UBIFS warning (pid %d): %s: " fmt "\n", \
+	pr_warn("UBIFS warning (pid %d): %s: " fmt "\n", \
 	       0, __func__, ##__VA_ARGS__)
 
 /* UBIFS file system VFS magic number */
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
