Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22b.google.com ([2607:f8b0:400e:c02::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yp1rj-0004na-TR
 for barebox@lists.infradead.org; Sun, 03 May 2015 21:56:00 +0000
Received: by pdbqd1 with SMTP id qd1so146550196pdb.2
 for <barebox@lists.infradead.org>; Sun, 03 May 2015 14:55:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 May 2015 14:55:23 -0700
Message-Id: <1430690125-2257-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430690125-2257-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430690125-2257-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 3/8] bootstrap_read_devfs(): Check for errors from
 devfs_add_partition()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Check for errors returned by devfs_add_partition() and bail if there
are any.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since v1:

 - Fix a compile time error that snuck in during the time the diff was
   being split into multiple patches

 lib/bootstrap/devfs.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index 82c7d21..ff0540f 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -82,10 +82,17 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 	int ret;
 	int size = 0;
 	void *to, *header;
-	struct cdev *cdev;
+	struct cdev *cdev, *partition;
 	char *partname = "x";

-	devfs_add_partition(devname, offset, max_size, DEVFS_PARTITION_FIXED, partname);
+	partition = devfs_add_partition(devname, offset, max_size,
+					DEVFS_PARTITION_FIXED, partname);
+	if (IS_ERR_OR_NULL(partition)) {
+		bootstrap_err("%s: failed to add partition (%ld)\n",
+			      devname, PTR_ERR(partition));
+		return NULL;
+	}
+
 	if (use_bb) {
 		dev_add_bb_dev(partname, "bbx");
 		partname = "bbx";
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
