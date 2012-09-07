Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9yK2-0002do-HD
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 13:10:12 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 95D0FFF9469
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 15:17:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 15:10:23 +0200
Message-Id: <1347023425-22462-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347023425-22462-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120907130700.GS20330@game.jcrosoft.org>
 <1347023425-22462-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/11] filetype: add PNG support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  |    3 +++
 include/filetype.h |    1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 5710394..0eaf119 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -71,6 +71,7 @@ static int is_fat(u8 *buf)
 enum filetype file_detect_type(void *_buf)
 {
 	u32 *buf = _buf;
+	u64 *buf64 = _buf;
 	u8 *buf8 = _buf;
 
 	if (strncmp(buf8, "#!/bin/sh", 9) == 0)
@@ -103,6 +104,8 @@ enum filetype file_detect_type(void *_buf)
 		return filetype_fat;
 	if (strncmp(buf8, "BM", 2) == 0)
 		return filetype_bmp;
+	if (buf64[0] == le64_to_cpu(0x0a1a0a0d474e5089ull))
+		return filetype_png;
 
 	return filetype_unknown;
 }
diff --git a/include/filetype.h b/include/filetype.h
index 6c97159..2924032 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -20,6 +20,7 @@ enum filetype {
 	filetype_mips_barebox,
 	filetype_fat,
 	filetype_bmp,
+	filetype_png,
 };
 
 const char *file_type_to_string(enum filetype f);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
