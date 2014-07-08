Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6n-0006Vl-Ty
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:08 +0200
Message-Id: <1404809417-21477-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/21] filetype: Add DOS EXE file detection support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 508a2b5..a1640ff 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -53,6 +53,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
 	[filetype_bpk] = { "Binary PacKage", "bpk" },
 	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
+	[filetype_dos] = { "MS-DOS executable", "dos" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -231,6 +232,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 64)
 		return filetype_unknown;
 
+	if (buf8[0] == 'M' && buf8[1] == 'Z')
+		return filetype_dos;
+
 	if (is_barebox_arm_head(_buf))
 		return filetype_arm_barebox;
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
diff --git a/include/filetype.h b/include/filetype.h
index c20a4f9..db2db35 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -30,6 +30,7 @@ enum filetype {
 	filetype_ubifs,
 	filetype_bpk,
 	filetype_barebox_env,
+	filetype_dos,
 	filetype_max,
 };
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
