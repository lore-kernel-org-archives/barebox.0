Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z0mPs-0001Fo-Hr
 for barebox@lists.infradead.org; Fri, 05 Jun 2015 07:51:49 +0000
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 5 Jun 2015 09:51:25 +0200
Message-Id: <1433490685-27486-2-git-send-email-s.christ@phytec.de>
In-Reply-To: <1433490685-27486-1-git-send-email-s.christ@phytec.de>
References: <1433490685-27486-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH v2] barebox update: add note after successful update
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Some users of the barebox_update command forget to erase the external
barebox environment after updating the barebox. Using an old barebox
environment leads to various problems if there were major changes.

So add a gentle reminder after the successful update.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
v2: Add explanation howto to clean up the environment
---
 common/bbu.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index 7fb154a..d23b864 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -113,8 +113,15 @@ int barebox_update(struct bbu_data *data)
 	if (ret == -EINTR)
 		printf("update aborted\n");
 
-	if (!ret)
+	if (!ret) {
 		printf("update succeeded\n");
+		if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
+			printf("You maybe want to erase the barebox environment now.\n");
+			printf("After booting the flashed barebox you can use\n");
+			printf("    $ saveenv -z; loadenv\n");
+			printf("to do that.\n");
+		}
+	}
 
 	return ret;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
