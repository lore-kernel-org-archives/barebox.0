Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqJ1-0007EE-DG
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:20 +0000
Received: by mail-pl0-x230.google.com with SMTP id c41-v6so163827plj.10
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:49 -0700
Message-Id: <20180612205310.25745-34-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 33/54] clock: Use udelay() to implement mdelay()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/clock.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/lib/clock.c b/lib/clock.c
index b7cc49fa6..37e45489c 100644
--- a/lib/clock.c
+++ b/lib/clock.c
@@ -50,9 +50,11 @@ EXPORT_SYMBOL(udelay);
 
 void mdelay(unsigned long msecs)
 {
-	uint64_t start = get_time_ns();
-
-	while(!is_timeout(start, msecs * MSECOND));
+	/*
+	 * Parens around division below are needed to pervent ARM/EABI
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
