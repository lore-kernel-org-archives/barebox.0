Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYR-0006Bx-T2
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:20 +0000
Received: by mail-pf0-x241.google.com with SMTP id q1-v6so4885861pff.13
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:02:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:49 -0700
Message-Id: <20180607130108.5339-34-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 33/52] clock: Use udelay() to implement mdelay()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/clock.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/clock.h b/include/clock.h
index 38b335c2c..8e40451a3 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -86,9 +86,7 @@ static inline void udelay(unsigned long usecs)
 
 static inline void mdelay(unsigned long msecs)
 {
-	uint64_t start = get_time_ns();
-
-	while(!is_timeout(start, msecs * MSECOND));
+	udelay(msecs * MSECOND / USECOND);
 }
 
 static inline void mdelay_non_interruptible(unsigned long msecs)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
