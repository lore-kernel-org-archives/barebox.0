Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRkF-0007K6-Av
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:40:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id f90so813198plb.10
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:40:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 22:40:19 -0800
Message-Id: <20190212064022.26154-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190212064022.26154-1-andrew.smirnov@gmail.com>
References: <20190212064022.26154-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/8] include: Add definitnion for HZ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add definitnion for HZ to simplify porting Linux kernel code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/clock.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/clock.h b/include/clock.h
index 5f2f53ab6..211748f3a 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -43,6 +43,8 @@ void mdelay_non_interruptible(unsigned long msecs);
 #define MSECOND ((uint64_t)(1000 * 1000))
 #define USECOND ((uint64_t)(1000))
 
+#define HZ	SECOND
+
 extern uint64_t time_beginning;
 
 /*
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
