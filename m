Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asRV3-00009L-5s
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 08:59:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 10:58:48 +0200
Message-Id: <1461056328-2180-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] filetype: Fix booting ARM Linux Kernels with CONFIG_EFI
 enabled
To: Barebox List <barebox@lists.infradead.org>
Cc: mgr@pengutronix.de

When an ARM kernel is built with CONFIG_EFI enabled, then the
kernel image also looks like a EXE file. Move ARM zImage detection
before EXE detection so that the kernel is still detected as zImage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 74baf51..a8666a1 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -291,8 +291,6 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 64)
 		return filetype_unknown;
 
-	if (buf8[0] == 'M' && buf8[1] == 'Z')
-		return filetype_exe;
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
 		return filetype_mxs_bootstream;
 
@@ -301,6 +299,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
 		return filetype_arm_zimage;
 
+	if (buf8[0] == 'M' && buf8[1] == 'Z')
+		return filetype_exe;
+
 	if (bufsize < 512)
 		return filetype_unknown;
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
