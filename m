Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22a.google.com ([2607:f8b0:400e:c02::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq54C-0001EG-Dq
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:33:13 +0000
Received: by pdbnk13 with SMTP id nk13so18664473pdb.0
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:32:11 -0700
Message-Id: <1430940733-4415-17-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 16/18] bootstrap_read_devfs(): Check for errors from
 dev_add_bb_dev()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Check for errors returned by dev_add_bb_dev() and bail if there
are any.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/bootstrap/devfs.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index 576f151..48b74f9 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -94,7 +94,14 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 	}
 
 	if (use_bb) {
-		dev_add_bb_dev(partname, "bbx");
+		ret = dev_add_bb_dev(partname, "bbx");
+		if (ret) {
+			bootstrap_err(
+				"%s: failed to add bad block aware partition (%d)\n",
+				devname, ret);
+			goto exit;
+		}
+
 		partname = "bbx";
 	}
 
@@ -131,6 +138,6 @@ free_memory:
 	free(header);
 	if (!result)
 		free(to);
-
+exit:
 	return result;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
