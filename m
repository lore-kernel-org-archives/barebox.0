Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAPPL-0001GW-Dx
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 18:05:28 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CAABCFF8B3B
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 20:13:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Sep 2012 20:05:35 +0200
Message-Id: <1347127542-11981-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120908180310.GH20330@game.jcrosoft.org>
 <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/11] filetype: add BMP support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  |    2 ++
 include/filetype.h |    1 +
 2 files changed, 3 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index e736d43..5710394 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -101,6 +101,8 @@ enum filetype file_detect_type(void *_buf)
 		return filetype_mips_barebox;
 	if (is_fat(buf8))
 		return filetype_fat;
+	if (strncmp(buf8, "BM", 2) == 0)
+		return filetype_bmp;
 
 	return filetype_unknown;
 }
diff --git a/include/filetype.h b/include/filetype.h
index 179ec0f..6c97159 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -19,6 +19,7 @@ enum filetype {
 	filetype_sh,
 	filetype_mips_barebox,
 	filetype_fat,
+	filetype_bmp,
 };
 
 const char *file_type_to_string(enum filetype f);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
