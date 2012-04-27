Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNhXR-0006sN-Np
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 09:32:30 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXP-0000Fh-UU
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:27 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXP-0004Dq-T1
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:27 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 27 Apr 2012 11:32:19 +0200
Message-Id: <1335519145-12349-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
References: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/7] netX: add a few base addresses for non on chip devices
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-netx/include/mach/netx-regs.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-netx/include/mach/netx-regs.h b/arch/arm/mach-netx/include/mach/netx-regs.h
index 27b7b8f..8496f3a 100644
--- a/arch/arm/mach-netx/include/mach/netx-regs.h
+++ b/arch/arm/mach-netx/include/mach/netx-regs.h
@@ -20,6 +20,11 @@
 #ifndef __ASM_ARCH_NETX_REGS_H
 #define __ASM_ARCH_NETX_REGS_H
 
+#define NETX_SDRAM_BASE 0x80000000
+#define NETX_CS0_BASE 0xc0000000
+#define NETX_CS1_BASE 0xc8000000
+#define NETX_CS2_BASE 0xd0000000
+
 #define NETX_IO_PHYS 0x00100000
 #define io_p2v(x) (x)
 #define __REG(base,ofs)       (*((volatile unsigned long *)(io_p2v(base) + ofs)))
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
