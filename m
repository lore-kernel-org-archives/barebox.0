Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkJWN-0007nd-P2
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 18:32:52 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so3506438lbb.36
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2012 11:32:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2012 22:32:33 +0400
Message-Id: <1340908354-17895-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 4/5] MIPS: XBurst: fix the JZ4755's clocksource input
 frequency value
To: barebox@lists.infradead.org

The 40 KHz frequency value was used to parry
__lshrdi3() error on little-endian MIPS because
the __lshrdi3() function is used in clocksource code.

The true value of the JZ4755's external clock frequency is 24 MHz.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/csrc-jz4750.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mach-xburst/csrc-jz4750.c b/arch/mips/mach-xburst/csrc-jz4750.c
index f625b70..dc7135a 100644
--- a/arch/mips/mach-xburst/csrc-jz4750.c
+++ b/arch/mips/mach-xburst/csrc-jz4750.c
@@ -28,7 +28,7 @@
 #include <io.h>
 #include <mach/jz4750d_regs.h>
 
-#define JZ_TIMER_CLOCK 40000
+#define JZ_TIMER_CLOCK 24000000
 
 static uint64_t jz4750_cs_read(void)
 {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
