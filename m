Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLpzx-00063W-FZ
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 07:47:02 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 22D2A102AC03
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 09:46:38 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 09:47:44 +0200
Message-Id: <1379404064-6100-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] Fix lseek on fat filesystems.
To: barebox@lists.infradead.org
Cc: Fargier Sylvain <sylvain.fargier@somfy.com>

From: Fargier Sylvain <sylvain.fargier@somfy.com>

FILE object was not updated properly when seeking.

Signed-off-by: Fargier Sylvain <sylvain.fargier@somfy.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fat/fat.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 871fe4b..15879c4 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -277,6 +277,7 @@ static loff_t fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	if (ret)
 		return ret;
 
+	f->pos = pos;
 	return pos;
 }
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
