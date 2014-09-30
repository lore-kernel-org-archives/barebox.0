Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYyP7-00046g-TP
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 14:27:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 16:22:05 +0200
Message-Id: <1412086926-27167-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412086926-27167-1-git-send-email-s.hauer@pengutronix.de>
References: <1412086926-27167-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] startup: Don't print multiple lines with pr_info
To: barebox@lists.infradead.org

Print the banner with pr_info, but the empty lines before and after
it with printf. This makes the banner show up in the log show up
properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/version.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/version.c b/common/version.c
index 51d4d48..f37cb55 100644
--- a/common/version.c
+++ b/common/version.c
@@ -12,6 +12,8 @@ EXPORT_SYMBOL(release_string);
 
 void barebox_banner (void)
 {
-	pr_info("\n\n%s\n\n", version_string);
+	printf("\n\n");
+	pr_info("%s", version_string);
+	printf("\n\n");
 	pr_info("Board: %s\n", barebox_get_model());
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
