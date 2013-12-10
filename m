Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqFUF-0003ar-9p
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 05:04:00 +0000
Received: by mail-la0-f47.google.com with SMTP id ep20so2247258lab.6
 for <barebox@lists.infradead.org>; Mon, 09 Dec 2013 21:03:36 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Dec 2013 09:10:55 +0400
Message-Id: <1386652255-31418-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: csrc-r4k: use CLOCKSOURCE_MASK() macro
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/csrc-r4k.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
index 2978fcf..c699f2b 100644
--- a/arch/mips/lib/csrc-r4k.c
+++ b/arch/mips/lib/csrc-r4k.c
@@ -32,7 +32,7 @@ static uint64_t c0_hpt_read(void)
 
 static struct clocksource cs = {
 	.read	= c0_hpt_read,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 };
 
 static int clocksource_init(void)
-- 
1.8.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
