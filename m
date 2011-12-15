Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8aZ-0001ZT-7L
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:24 +0100
Message-Id: <1323945034-19687-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] filetype: Add oftree detection
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  |    3 +++
 include/filetype.h |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 5635d40..40faff3 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -36,6 +36,7 @@ static const char *filetype_str[] = {
 	[filetype_jffs2] = "JFFS2 image",
 	[filetype_gzip] = "gzip compressed",
 	[filetype_bzip2] = "bzip2 compressed",
+	[filetype_oftree] = "open firmware flat device tree",
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -69,6 +70,8 @@ enum filetype file_detect_type(void *_buf)
 	if (buf8[0] == 'B' && buf8[1] == 'Z' && buf8[2] == 'h' &&
 			buf8[3] > '0' && buf8[3] <= '9')
                 return filetype_bzip2;
+	if (buf[0] == be32_to_cpu(0xd00dfeed))
+		return filetype_oftree;
 
 	return filetype_unknown;
 }
diff --git a/include/filetype.h b/include/filetype.h
index 64d32ef..88f31df 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -14,6 +14,7 @@ enum filetype {
 	filetype_jffs2,
 	filetype_gzip,
 	filetype_bzip2,
+	filetype_oftree,
 };
 
 const char *file_type_to_string(enum filetype f);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
