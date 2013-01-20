Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvv-00043f-1v
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:19 +0100
Message-Id: <1358696119-18387-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
References: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] filetype: Make buf in file_detect_type const
To: barebox@lists.infradead.org

This function has no business changing the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  |   10 +++++-----
 include/filetype.h |    2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 748e364..5941ad2 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -106,12 +106,12 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 	return filetype_mbr;
 }
 
-enum filetype file_detect_type(void *_buf, size_t bufsize)
+enum filetype file_detect_type(const void *_buf, size_t bufsize)
 {
-	u32 *buf = _buf;
-	u64 *buf64 = _buf;
-	u8 *buf8 = _buf;
-	u16 *buf16 = _buf;
+	const u32 *buf = _buf;
+	const u64 *buf64 = _buf;
+	const u8 *buf8 = _buf;
+	const u16 *buf16 = _buf;
 	enum filetype type;
 
 	if (bufsize < 9)
diff --git a/include/filetype.h b/include/filetype.h
index 91139db..502b920 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -30,7 +30,7 @@ enum filetype {
 
 const char *file_type_to_string(enum filetype f);
 const char *file_type_to_short_string(enum filetype f);
-enum filetype file_detect_type(void *_buf, size_t bufsize);
+enum filetype file_detect_type(const void *_buf, size_t bufsize);
 enum filetype file_name_detect_type(const char *filename);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
