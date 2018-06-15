Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5t-0000dj-8W
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:25 +0000
Received: by mail-pl0-x244.google.com with SMTP id f1-v6so4668068plt.6
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:18 -0700
Message-Id: <20180615041136.23492-13-andrew.smirnov@gmail.com>
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/27] console: Fix console_get_first_active()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Fix if condition in console_get_first_active() to actually check that
both bit are set.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/console_common.c b/common/console_common.c
index 00e020bd3..0131a1190 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -301,12 +301,13 @@ EXPORT_SYMBOL(console_get_by_name);
 struct console_device *console_get_first_active(void)
 {
 	struct console_device *cdev;
+	const unsigned char active = CONSOLE_STDIN | CONSOLE_STDOUT;
 	/*
 	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
 	 * same output console
 	 */
 	for_each_console(cdev) {
-		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
+		if ((cdev->f_active & active) == active)
 			return cdev;
 	}
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
