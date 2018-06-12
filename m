Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-f65.google.com ([209.85.160.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSYXH-0007Vp-HM
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 01:57:02 +0000
Received: by mail-pl0-f65.google.com with SMTP id g20-v6so13410629plq.1
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 18:55:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Jun 2018 18:53:01 -0700
Message-Id: <20180612015326.26192-30-andrew.smirnov@gmail.com>
In-Reply-To: <20180612015326.26192-1-andrew.smirnov@gmail.com>
References: <20180612015326.26192-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 29/54] clocksource: armv8-timer: Make
 armv8_clocksource_read() static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There are no users of that function outside of the driver itself, so
re-declare it as static.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clocksource/armv8-timer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/armv8-timer.c b/drivers/clocksource/armv8-timer.c
index c5306dcd2..5e0b9ef3c 100644
--- a/drivers/clocksource/armv8-timer.c
+++ b/drivers/clocksource/armv8-timer.c
@@ -20,7 +20,7 @@
 #include <io.h>
 #include <asm/system.h>
 
-uint64_t armv8_clocksource_read(void)
+static uint64_t armv8_clocksource_read(void)
 {
 	return get_cntpct();
 }
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
