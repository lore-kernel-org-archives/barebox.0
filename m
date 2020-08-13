Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6DVV-0003mJ-DD
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 13:43:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Aug 2020 15:42:51 +0200
Message-Id: <20200813134257.24627-15-s.hauer@pengutronix.de>
In-Reply-To: <20200813134257.24627-1-s.hauer@pengutronix.de>
References: <20200813134257.24627-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/20] fastboot: Add fastboot_abort()
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Add fastboot_abort() to allow aborting the current session.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c  | 12 ++++++++++++
 include/fastboot.h |  2 ++
 2 files changed, 14 insertions(+)

diff --git a/common/fastboot.c b/common/fastboot.c
index 7f5b8b6f03..10ebb8b2a9 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -347,6 +347,18 @@ void fastboot_download_finished(struct fastboot *fb)
 	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 }
 
+void fastboot_abort(struct fastboot *fb)
+{
+	if (fb->download_fd > 0) {
+		close(fb->download_fd);
+		fb->download_fd = 0;
+	}
+
+	fb->active = false;
+
+	unlink(fb->tempname);
+}
+
 static void cb_download(struct fastboot *fb, const char *cmd)
 {
 	fb->download_size = simple_strtoul(cmd, NULL, 16);
diff --git a/include/fastboot.h b/include/fastboot.h
index 8619dcd34e..7718390ae5 100644
--- a/include/fastboot.h
+++ b/include/fastboot.h
@@ -66,4 +66,6 @@ int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
 void fastboot_start_download_generic(struct fastboot *fb);
 void fastboot_download_finished(struct fastboot *fb);
 void fastboot_exec_cmd(struct fastboot *fb, const char *cmdbuf);
+void fastboot_abort(struct fastboot *fb);
+
 #endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
