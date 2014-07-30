Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCQzt-00070Z-Vz
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 10:20:39 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XCQzQ-0003cX-KP
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 12:20:08 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <jbe@pengutronix.de>)
 id 1XCQzQ-0006zs-CC
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 12:20:08 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 30 Jul 2014 12:20:05 +0200
Message-Id: <1406715606-6821-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/3] saveenv: change API to be able to forward special flags
 into the envfs superblock
To: barebox@lists.infradead.org

In order to be able to mark an stored envfs image with special features
(intentional ignore for example), we now can feed forward these flags.
By forwarding a '0' for the flags nothing changes because the envfs superblock
was already allocated with xzalloc.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 commands/saveenv.c   |  2 +-
 common/environment.c | 24 +++++++++++++++---------
 include/envfs.h      |  2 +-
 scripts/bareboxenv.c |  2 +-
 4 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 54b6fa1..41f111d 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -37,7 +37,7 @@ static int do_saveenv(int argc, char *argv[])
 	else
 		filename = argv[1];
 
-	ret = envfs_save(filename, dirname);
+	ret = envfs_save(filename, dirname, 0);
 
 	return ret;
 }
diff --git a/common/environment.c b/common/environment.c
index a38e966..e135b0b 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -167,26 +167,29 @@ out:
  * Make the current environment persistent
  * @param[in] filename where to store
  * @param[in] dirname what to store (all files in this dir)
+ * @param[in] flags superblock flags (refer ENVFS_FLAGS_* macros)
  * @return 0 on success, anything else in case of failure
  *
  * Note: This function will also be used on the host! See note in the header
  * of this file.
  */
-int envfs_save(const char *filename, const char *dirname)
+int envfs_save(const char *filename, const char *dirname, unsigned flags)
 {
 	struct envfs_super *super;
-	int envfd, size, ret;
+	int envfd, size = 0, ret;
 	struct action_data data;
 	void *buf = NULL, *wbuf;
 
 	data.writep = NULL;
 	data.base = dirname;
 
-	/* first pass: calculate size */
-	recursive_action(dirname, ACTION_RECURSE, file_size_action,
-			 NULL, &data, 0);
+	if (!(flags & ENVFS_FLAGS_PLACEHOLDER)) {
+		/* first pass: calculate size */
+		recursive_action(dirname, ACTION_RECURSE, file_size_action,
+				NULL, &data, 0);
 
-	size = (unsigned long)data.writep;
+		size = (unsigned long)data.writep;
+	}
 
 	buf = xzalloc(size + sizeof(struct envfs_super));
 	data.writep = buf + sizeof(struct envfs_super);
@@ -196,10 +199,13 @@ int envfs_save(const char *filename, const char *dirname)
 	super->major = ENVFS_MAJOR;
 	super->minor = ENVFS_MINOR;
 	super->size = ENVFS_32(size);
+	super->flags = ENVFS_32(flags);
 
-	/* second pass: copy files to buffer */
-	recursive_action(dirname, ACTION_RECURSE, file_save_action,
-			 NULL, &data, 0);
+	if (!(flags & ENVFS_FLAGS_PLACEHOLDER)) {
+		/* second pass: copy files to buffer */
+		recursive_action(dirname, ACTION_RECURSE, file_save_action,
+				NULL, &data, 0);
+	}
 
 	super->crc = ENVFS_32(crc32(0, buf + sizeof(struct envfs_super), size));
 	super->sb_crc = ENVFS_32(crc32(0, buf, sizeof(struct envfs_super) - 4));
diff --git a/include/envfs.h b/include/envfs.h
index edb559f..1bbf8b0 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -93,7 +93,7 @@ struct envfs_super {
 
 #define ENV_FLAG_NO_OVERWRITE	(1 << 0)
 int envfs_load(const char *filename, const char *dirname, unsigned flags);
-int envfs_save(const char *filename, const char *dirname);
+int envfs_save(const char *filename, const char *dirname, unsigned flags);
 int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags);
 
 /* defaults to /dev/env0 */
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index da420db..ec6ccfe 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -181,7 +181,7 @@ int main(int argc, char *argv[])
 		if (verbose)
 			printf("saving contents of %s to file %s\n", dirname, filename);
 
-		err = envfs_save(filename, dirname);
+		err = envfs_save(filename, dirname, 0);
 
 		if (verbose && err)
 			printf("saving env failed: %d\n", err);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
