Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqix-0006bj-1F
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:42 +0200
Message-Id: <1377500163-28962-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/22] console: fix console without CONFIG_PARAMETER
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

If CONFIG_PARAMETER is not set, dev_set_param() does not call the setter
function. Call it directly instead in this case.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 common/console.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index 402dcf5..1518ed8 100644
--- a/common/console.c
+++ b/common/console.c
@@ -171,8 +171,12 @@ int console_register(struct console_device *newcdev)
 
 	list_add_tail(&newcdev->list, &console_list);
 
-	if (activate)
-		dev_set_param(dev, "active", "ioe");
+	if (activate) {
+		if (IS_ENABLED(CONFIG_PARAMETER))
+			dev_set_param(dev, "active", "ioe");
+		else
+			console_std_set(dev, NULL, "ioe");
+	}
 
 	return 0;
 }
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
