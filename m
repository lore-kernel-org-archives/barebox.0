Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x235.google.com ([2607:f8b0:400e:c01::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5u-0000d6-PU
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:31 +0000
Received: by mail-pl0-x235.google.com with SMTP id 6-v6so4127358plb.0
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:17 -0700
Message-Id: <20180615041136.23492-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/27] console: Make use of __console_putc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/common/console.c b/common/console.c
index d64a7be25..0c098c5eb 100644
--- a/common/console.c
+++ b/common/console.c
@@ -503,9 +503,7 @@ void console_putc(unsigned int ch, char c)
 	case CONSOLE_INIT_FULL:
 		for_each_console(cdev) {
 			if (cdev->f_active & ch) {
-				if (c == '\n')
-					cdev->putc(cdev, '\r');
-				cdev->putc(cdev, c);
+				__console_putc(cdev, c);
 			}
 		}
 		return;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
