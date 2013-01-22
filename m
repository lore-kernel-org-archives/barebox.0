Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Txf3G-0006xS-5e
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 14:42:14 +0000
Received: from mail170.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 7EB26DC137B
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2013 15:51:56 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 22 Jan 2013 15:40:36 +0100
Message-Id: <1358865645-22631-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130122143833.GM26329@game.jcrosoft.org>
References: <20130122143833.GM26329@game.jcrosoft.org>
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
Subject: [PATCH 01/10] filetype: add is_barebox_mips_head support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  |    2 +-
 include/filetype.h |   16 ++++++++++++++++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index 748e364..bafdc31 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -145,7 +145,7 @@ enum filetype file_detect_type(void *_buf, size_t bufsize)
 		return filetype_aimage;
 	if (buf64[0] == le64_to_cpu(0x0a1a0a0d474e5089ull))
 		return filetype_png;
-	if (strncmp(buf8 + 0x10, "barebox", 7) == 0)
+	if (is_barebox_mips_head(_buf))
 		return filetype_mips_barebox;
 
 	if (bufsize < 64)
diff --git a/include/filetype.h b/include/filetype.h
index 91139db..c2af917 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -50,4 +50,20 @@ static inline int is_barebox_arm_head(const char *head)
 }
 #endif
 
+#define MIPS_HEAD_SIZE			0x20
+#define MIPS_HEAD_MAGICWORD_OFFSET	0x10
+#define MIPS_HEAD_SIZE_OFFSET		0x1C
+
+#ifdef CONFIG_MIPS
+static inline int is_barebox_mips_head(const char *head)
+{
+	return !strcmp(head + MIPS_HEAD_MAGICWORD_OFFSET, "barebox");
+}
+#else
+static inline int is_barebox_mips_head(const char *head)
+{
+	return 0;
+}
+#endif
+
 #endif /* __FILE_TYPE_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
