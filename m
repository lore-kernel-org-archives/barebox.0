Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22c.google.com ([2607:f8b0:400e:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTffD-0004V1-GX
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 03:44:46 +0000
Received: by mail-pf0-x22c.google.com with SMTP id b17-v6so4232803pfi.0
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 20:44:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 20:44:02 -0700
Message-Id: <20180615034409.22180-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180615034409.22180-1-andrew.smirnov@gmail.com>
References: <20180615034409.22180-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v7 03/10] clock: Use udelay() to implement mdelay()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/clock.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index f98176dd5..0c6cb399b 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -206,9 +206,11 @@ EXPORT_SYMBOL(udelay);
 
 void mdelay(unsigned long msecs)
 {
-	uint64_t start = get_time_ns();
-
-	while(!is_timeout(start, msecs * MSECOND));
+	/*
+	 * Parens around division below are needed to prevent ARM/EABI
+	 * toolchain from emitting a call to __aeabi_uldivmod.
+	 */
+	udelay(msecs * (MSECOND / USECOND));
 }
 EXPORT_SYMBOL(mdelay);
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
