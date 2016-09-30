Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpvBA-0002DI-3t
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 10:36:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bpvAm-0004az-Ea
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 12:36:08 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Sep 2016 12:36:03 +0200
Message-Id: <20160930103607.15791-6-l.stach@pengutronix.de>
In-Reply-To: <20160930103607.15791-1-l.stach@pengutronix.de>
References: <20160930103607.15791-1-l.stach@pengutronix.de>
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
Subject: [PATCH 06/10] arm(64): don't advertise stack_dumping capabilities for
 ARM64
To: barebox@lists.infradead.org

The unwind code to support this feature is not there yet.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/include/asm/barebox.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/barebox.h b/arch/arm/include/asm/barebox.h
index 31a8e1563050..5a6622235b82 100644
--- a/arch/arm/include/asm/barebox.h
+++ b/arch/arm/include/asm/barebox.h
@@ -2,8 +2,10 @@
 #define _BAREBOX_H_	1
 
 #ifdef CONFIG_ARM_UNWIND
+#ifndef CONFIG_CPU_V8
 #define ARCH_HAS_STACK_DUMP
 #endif
+#endif
 
 #ifdef CONFIG_ARM_EXCEPTIONS
 #define ARCH_HAS_DATA_ABORT_MASK
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
