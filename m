Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOq0Y-00044S-VC
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:47:17 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 7C3E61050636
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:48:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Apr 2012 14:26:03 +0200
Message-Id: <1335788764-30430-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120430122334.GE2992@game.jcrosoft.org>
References: <20120430122334.GE2992@game.jcrosoft.org>
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
Subject: [PATCH 10/11] complete: add delpart complete support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/partition.c |    2 ++
 fs/devfs-core.c      |   19 +++++++++++++++++++
 include/complete.h   |    1 +
 3 files changed, 22 insertions(+), 0 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index 4892261..6cce042 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -32,6 +32,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <driver.h>
 #include <malloc.h>
 #include <partition.h>
@@ -225,5 +226,6 @@ BAREBOX_CMD_START(delpart)
 	.cmd = do_delpart,
 	.usage = "delete partition(s)",
 	BAREBOX_CMD_HELP(cmd_delpart_help)
+	BAREBOX_CMD_COMPLETE(devfs_partition_complete)
 BAREBOX_CMD_END
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 3014d0e..ff6a976 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -20,6 +20,7 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  */
 #include <common.h>
+#include <complete.h>
 #include <driver.h>
 #include <errno.h>
 #include <malloc.h>
@@ -29,6 +30,24 @@
 
 LIST_HEAD(cdev_list);
 
+#ifdef CONFIG_AUTO_COMPLETE
+int devfs_partition_complete(struct string_list *sl, char *instr)
+{
+	struct cdev *cdev;
+	int len;
+
+	len = strlen(instr);
+
+	list_for_each_entry(cdev, &cdev_list, list) {
+		if (cdev->flags & DEVFS_IS_PARTITION &&
+		    !strncmp(instr, cdev->name, len)) {
+			string_list_add_asprintf(sl, "%s ", cdev->name);
+		}
+	}
+	return COMPLETE_CONTINUE;
+}
+#endif
+
 struct cdev *cdev_by_name(const char *filename)
 {
 	struct cdev *cdev;
diff --git a/include/complete.h b/include/complete.h
index 1365803..8248c64 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -16,6 +16,7 @@ int device_complete(struct string_list *sl, char *instr);
 int empty_complete(struct string_list *sl, char *instr);
 int eth_complete(struct string_list *sl, char *instr);
 int cammand_var_complete(struct string_list *sl, char *instr);
+int devfs_partition_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
