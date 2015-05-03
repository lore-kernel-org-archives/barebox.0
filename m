Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22e.google.com ([2607:f8b0:400e:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yp0HL-0001vJ-Vv
 for barebox@lists.infradead.org; Sun, 03 May 2015 20:14:20 +0000
Received: by pabsx10 with SMTP id sx10so142941311pab.3
 for <barebox@lists.infradead.org>; Sun, 03 May 2015 13:13:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 May 2015 13:13:18 -0700
Message-Id: <1430683999-5910-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430683999-5910-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430683999-5910-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/8] bootstrap_read_devfs(): Remove all partitions upon
 function completion
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Bootstrap_read_devfs does not remove the devices it creates during the
course of its execution which might be considered as a resource
leak. Remedy that by adding the code to remove those devices upon
function completion.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/bootstrap/devfs.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index 359981e..d7b5185 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -99,7 +99,7 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 			bootstrap_err(
 				"%s: failed to add bad block aware partition (%d)\n",
 				devname, ret);
-			goto exit;
+			goto delete_devfs_partition;
 		}

 		partname = "bbx";
@@ -138,6 +138,15 @@ free_memory:
 	free(header);
 	if (!result)
 		free(to);
+
+	if (use_bb) {
+		dev_remove_bb_dev(partname);
+		partname = "x";
+	}
+
+delete_devfs_partition:
+	devfs_del_partition(partname);
+
 exit:
 	return result;
 }
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
