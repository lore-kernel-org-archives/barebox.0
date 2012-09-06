Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9VCr-00079X-Pt
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 06:04:51 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 654F8FF8C5E
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 08:12:24 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  6 Sep 2012 08:04:58 +0200
Message-Id: <1346911500-12902-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/12] filetype: add PNG support
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
