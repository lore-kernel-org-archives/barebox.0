Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lqY-0005qz-29
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:50:19 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 91438DC0FC6
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:55:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:50:15 +0200
Message-Id: <1345783818-28784-15-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 15/18] evnfs: introduce major and minor
To: barebox@lists.infradead.org

they are store in the super block at byte 16th and 17th.

set the verison at 0.1

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/environment.c |    2 ++
 include/envfs.h      |    7 ++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/environment.c b/common/environment.c
index 52ce0de..257f35f 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -125,6 +125,8 @@ int envfs_save(char *filename, char *dirname)
 
 	super = (struct envfs_super *)buf;
 	super->magic = ENVFS_32(ENVFS_MAGIC);
+	super->major = ENVFS_32(ENVFS_MAJOR);
+	super->minor = ENVFS_32(ENVFS_MINOR);
 	super->size = ENVFS_32(size);
 
 	/* second pass: copy files to buffer */
diff --git a/include/envfs.h b/include/envfs.h
index ba976d6..c6df8c5 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -5,6 +5,9 @@
 #include <asm/byteorder.h>
 #endif
 
+#define ENVFS_MAJOR		0
+#define ENVFS_MINOR		1
+
 #define ENVFS_MAGIC		    0x798fba79	/* some random number */
 #define ENVFS_INODE_MAGIC	0x67a8c78d
 #define ENVFS_END_MAGIC		0x6a87d6cd
@@ -29,8 +32,10 @@ struct envfs_super {
 	uint32_t priority;
 	uint32_t crc;			/* crc for the data */
 	uint32_t size;			/* size of data */
+	uint8_t major;			/* major */
+	uint8_t minor;			/* minor */
+	uint16_t future;		/* reserved for future use */
 	uint32_t flags;			/* feature flags */
-	uint32_t future;		/* reserved for future use */
 	uint32_t sb_crc;		/* crc for the superblock */
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
