Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x229.google.com ([2607:f8b0:400e:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg5y-0004zd-67
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:48:14 +0000
Received: by mail-pg0-x229.google.com with SMTP id k2-v6so3680262pgc.1
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:47:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:37 -0700
Message-Id: <20180526204451.16530-35-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 34/48] clock: Use udelay() to implement mdelay()
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
