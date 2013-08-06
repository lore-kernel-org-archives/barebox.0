Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6gz9-0005cH-2G
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:07:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:07:03 +0200
Message-Id: <1375794428-29577-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
References: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] filetype: Add ubifs detection
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 2 ++
 include/filetype.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 13c7994..7507d85 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -203,6 +203,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_uimage;
 	if (buf[0] == 0x23494255)
 		return filetype_ubi;
+	if (buf[0] == le32_to_cpu(0x06101831))
+		return filetype_ubifs;
 	if (buf[0] == 0x20031985)
 		return filetype_jffs2;
 	if (buf8[0] == 0x1f && buf8[1] == 0x8b && buf8[2] == 0x08)
diff --git a/include/filetype.h b/include/filetype.h
index 1b90805..9a864da 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -27,6 +27,7 @@ enum filetype {
 	filetype_png,
 	filetype_ext,
 	filetype_gpt,
+	filetype_ubifs,
 	filetype_max,
 };
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
