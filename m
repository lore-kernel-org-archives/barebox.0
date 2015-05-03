Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yp1rk-0004nb-7Y
 for barebox@lists.infradead.org; Sun, 03 May 2015 21:56:00 +0000
Received: by pdea3 with SMTP id a3so146520624pde.3
 for <barebox@lists.infradead.org>; Sun, 03 May 2015 14:55:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 May 2015 14:55:24 -0700
Message-Id: <1430690125-2257-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 5/8] bootstrap_read_devfs(): Fix potential memory leak
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In case of a failure in one of the cdev_* functions original version
of bootstrap_read_devfs would not release memory allocated for barebox
header or memory allocated for the image. This commit fixes this by
adding resource deallocation code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since v1:

 - Fix a compile time error that snuck in during the time the diff was
   being split into multiple patches

 lib/bootstrap/devfs.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index 3c4276f..05a6346 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -81,7 +81,7 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 {
 	int ret;
 	int size = 0;
-	void *to, *header;
+	void *to, *header, *result = NULL;
 	struct cdev *cdev, *partition;
 	char *partname = "x";

@@ -116,16 +116,21 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 	cdev = cdev_open(partname, O_RDONLY);
 	if (!cdev) {
 		bootstrap_err("%s: failed to open %s\n", devname, partname);
-		return NULL;
+		goto free_memory;
 	}

 	ret = cdev_read(cdev, to, size, 0, 0);
 	cdev_close(cdev);

-	if (ret != size) {
+	if (ret != size)
 		bootstrap_err("%s: failed to read from %s\n", devname, partname);
-		return NULL;
-	}
+	else
+		result = to;
+
+free_memory:
+	free(header);
+	if (!result)
+		free(to);

-	return to;
+	return result;
 }
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
