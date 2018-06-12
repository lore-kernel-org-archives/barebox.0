Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqIw-0001CX-D3
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:15 +0000
Received: by mail-pg0-x244.google.com with SMTP id w12-v6so142573pgc.6
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:45 -0700
Message-Id: <20180612205310.25745-30-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 29/54] clocksource: armv8-timer: Make
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
