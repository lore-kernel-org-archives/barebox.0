Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9tBi-0001E6-8i
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 07:41:15 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id DA3D6FF907D
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 09:48:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 09:41:30 +0200
Message-Id: <1347003690-1786-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] fs/nfs: fix read when size < 1024
To: barebox@lists.infradead.org

Currently we always request 1024.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/nfs.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 4a880cd..797e3bd 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -819,7 +819,11 @@ static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 		insize -= now;
 
 		if (insize) {
-			now = 1024;
+			/* do not use min as insize is a size_t */
+			if (insize < 1024)
+				now = insize;
+			else
+				now = 1024;
 
 			if (pos + now > file->size)
 				now = file->size - pos;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
