Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x232.google.com ([2607:f8b0:400e:c02::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yp0HJ-0001ux-61
 for barebox@lists.infradead.org; Sun, 03 May 2015 20:14:17 +0000
Received: by pdbqd1 with SMTP id qd1so145219744pdb.2
 for <barebox@lists.infradead.org>; Sun, 03 May 2015 13:13:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 May 2015 13:13:15 -0700
Message-Id: <1430683999-5910-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/8] bootstrap_read_devfs(): Close file after we are done with
 it
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/bootstrap/devfs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index de274a0..4176819 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -120,6 +120,8 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 	}

 	ret = cdev_read(cdev, to, size, 0, 0);
+	cdev_close(cdev);
+
 	if (ret != size) {
 		bootstrap_err("%s: failed to read from %s\n", devname, partname);
 		return NULL;
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
