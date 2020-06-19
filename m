Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBhf-0001ve-NE
 for barebox@lists.infradead.org; Fri, 19 Jun 2020 07:44:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 19 Jun 2020 09:44:20 +0200
Message-Id: <20200619074427.17289-15-s.hauer@pengutronix.de>
In-Reply-To: <20200619074427.17289-1-s.hauer@pengutronix.de>
References: <20200619074427.17289-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/21] fastboot: Warn when cb_download is called with file
 still open
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Warn when we are about to open a new download file without having
closed the old one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/fastboot.c b/common/fastboot.c
index c800e89a65..7f5b8b6f03 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -337,6 +337,7 @@ int fastboot_handle_download_data(struct fastboot *fb, const void *buffer,
 void fastboot_download_finished(struct fastboot *fb)
 {
 	close(fb->download_fd);
+	fb->download_fd = 0;
 
 	printf("\n");
 
@@ -356,6 +357,11 @@ static void cb_download(struct fastboot *fb, const char *cmd)
 
 	init_progression_bar(fb->download_size);
 
+	if (fb->download_fd > 0) {
+		pr_err("%s called and %s is still opened\n", __func__, fb->tempname);
+		close(fb->download_fd);
+	}
+
 	fb->download_fd = open(fb->tempname, O_WRONLY | O_CREAT | O_TRUNC);
 	if (fb->download_fd < 0) {
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "internal error");
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
