Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH3uu-00076P-Ns
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 06:19:25 +0000
Received: by mail-pa0-x22a.google.com with SMTP id qh10so93357pab.2
 for <barebox@lists.infradead.org>; Wed, 06 Jan 2016 22:19:04 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jan 2016 22:17:31 -0800
Message-Id: <1452147455-26524-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
References: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] rtc: ds1307: Fix a memory leak
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Several failure paths would result in control being transfered to
'exit' label, so instead of just returning error codes in those cases
we also need to free the memory allocated for 'ds1307'

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/rtc/rtc-ds1307.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 2b46ae5..e2d561b 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -17,6 +17,7 @@
 #include <init.h>
 #include <driver.h>
 #include <xfuncs.h>
+#include <malloc.h>
 #include <errno.h>
 #include <i2c/i2c.h>
 #include <rtc.h>
@@ -422,6 +423,8 @@ read_rtc:
 	err = rtc_register(&ds1307->rtc);

 exit:
+	if (err)
+		free(ds1307);
 	return err;
 }

--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
