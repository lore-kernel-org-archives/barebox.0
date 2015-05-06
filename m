Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq545-0007qE-3x
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:33:07 +0000
Received: by pdbqd1 with SMTP id qd1so18580051pdb.2
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:32:07 -0700
Message-Id: <1430940733-4415-13-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 12/18] bootstrap: Fix potential memory leak in
 'read_image_head'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Original version of 'read_image_head' would not free the memory
allocated for barebox header in cases of any failure. Fix this by
adding a dedicated resourse de-allocation code path.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/bootstrap/devfs.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index 704680a..82c7d21 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -35,7 +35,7 @@ static void *read_image_head(const char *name)
 	cdev = cdev_open(name, O_RDONLY);
 	if (!cdev) {
 		bootstrap_err("failed to open partition\n");
-		return NULL;
+		goto free_header;
 	}
 
 	ret = cdev_read(cdev, header, BAREBOX_HEAD_SIZE, 0, 0);
@@ -43,10 +43,14 @@ static void *read_image_head(const char *name)
 
 	if (ret != BAREBOX_HEAD_SIZE) {
 		bootstrap_err("failed to read from partition\n");
-		return NULL;
+		goto free_header;
 	}
 
 	return header;
+
+free_header:
+	free(header);
+	return NULL;
 }
 
 static unsigned int get_image_size(void *head)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
