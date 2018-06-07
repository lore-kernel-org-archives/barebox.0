Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQrRS-0004l3-Ec
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 09:42:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fQrRD-00055A-6l
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 11:42:35 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  7 Jun 2018 11:42:35 +0200
Message-Id: <20180607094235.29848-2-l.stach@pengutronix.de>
In-Reply-To: <20180607094235.29848-1-l.stach@pengutronix.de>
References: <20180607094235.29848-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: throw out no-MMU vector base fixup when ARMv7 isn't
 selected
To: barebox@lists.infradead.org

May save some code space, but more importantly fixes the ARMv8 build.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/no-mmu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
index 7268fa9b9d78..eff4cdcba4be 100644
--- a/arch/arm/cpu/no-mmu.c
+++ b/arch/arm/cpu/no-mmu.c
@@ -37,7 +37,8 @@ static int nommu_v7_vectors_init(void)
 	void *vectors;
 	u32 cr;
 
-	if (cpu_architecture() < CPU_ARCH_ARMv7)
+	if (!IS_ENABLED(CONFIG_CPU_32v7) ||
+	    (cpu_architecture() < CPU_ARCH_ARMv7))
 		return 0;
 
 	/*
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
