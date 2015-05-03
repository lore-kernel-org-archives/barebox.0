Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22d.google.com ([2607:f8b0:400e:c02::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yp1rl-0004nc-73
 for barebox@lists.infradead.org; Sun, 03 May 2015 21:56:01 +0000
Received: by pdea3 with SMTP id a3so146520817pde.3
 for <barebox@lists.infradead.org>; Sun, 03 May 2015 14:55:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 May 2015 14:55:25 -0700
Message-Id: <1430690125-2257-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 7/8] bootstrap_read_devfs(): Remove all partitions upon
 function completion
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Bootstrap_read_devfs does not remove the devices it creates during the
course of its execution which might be considered as a resource
leak. Remedy that by adding the code to remove those devices upon
function completion.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since v1:

 - Fix a compile time error that snuck in during the time the diff was
   being split into multiple patches

 lib/bootstrap/devfs.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index df4840e..e9bd2bb 100644
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
@@ -138,6 +138,14 @@ free_memory:
 	free(header);
 	if (!result)
 		free(to);
-exit:
+
+	if (use_bb) {
+		dev_remove_bb_dev(partname);
+		partname = "x";
+	}
+
+delete_devfs_partition:
+	devfs_del_partition(partname);
+
 	return result;
 }
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
