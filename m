Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5De-0000xU-Kr
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:27:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5DF-0004KM-Qz
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:26:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:26:40 +0100
Message-Id: <20170301142641.6596-2-l.stach@pengutronix.de>
In-Reply-To: <20170301142641.6596-1-l.stach@pengutronix.de>
References: <20170301142641.6596-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: correctly identify ARMv6 K/Z
To: barebox@lists.infradead.org

The ARMv6 K/Z derivatives have a v7 compatible MMU, but all other parts
(including the cache handling) is still at v6. As we don't make use of
the more advanced features of the v7 MMU in Barebox, it's okay to just
override this to properly identify the CPU as ARMv6.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c             | 8 ++++++++
 arch/arm/include/asm/system_info.h | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 86e19d9780d5..175475b038dc 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -165,6 +165,14 @@ static int do_cpuinfo(int argc, char *argv[])
 	} else
 		cpu_arch = CPU_ARCH_UNKNOWN;
 
+	/*
+	 * Special case for ARMv6 (K/Z) (has v7 compatible MMU, but is v6
+	 * otherwise). The below check just matches all ARMv6, as done in the
+	 * Linux kernel.
+	 */
+	if ((mainid & 0x7f000) == 0x7b000)
+		cpu_arch = CPU_ARCH_ARMv6;
+
 	switch (cpu_arch) {
 	case CPU_ARCH_ARMv3:
 		architecture = "v3";
diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index 25fffd268177..a27b79e6dd08 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -188,6 +188,14 @@ static inline int arm_early_get_cpu_architecture(void)
 		cpu_arch = CPU_ARCH_UNKNOWN;
 #endif
 
+	/*
+	 * Special case for ARMv6 (K/Z) (has v7 compatible MMU, but is v6
+	 * otherwise). The below check just matches all ARMv6, as done in the
+	 * Linux kernel.
+	 */
+	if ((read_cpuid_id() & 0x7f000) == 0x7b000)
+		cpu_arch = CPU_ARCH_ARMv6;
+
 	return cpu_arch;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
