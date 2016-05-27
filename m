Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6E8r-0004We-AZ
 for barebox@lists.infradead.org; Fri, 27 May 2016 09:33:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1b6E8T-00064N-Tq
 for barebox@lists.infradead.org; Fri, 27 May 2016 11:32:53 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <jbe@pengutronix.de>) id 1b6E8T-0002ex-Lw
 for barebox@lists.infradead.org; Fri, 27 May 2016 11:32:53 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 27 May 2016 11:32:50 +0200
Message-Id: <1464341571-22552-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1464341571-22552-1-git-send-email-jbe@pengutronix.de>
References: <1464341571-22552-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/4] PPC/MPC5XXX/reginfo: fix a bunch of compiler warnings
To: barebox@lists.infradead.org

This change fixes a bunch of compiler warnings of this type:

arch/ppc/mach-mpc5xxx/reginfo.c: In function 'reginfo':
arch/ppc/mach-mpc5xxx/reginfo.c:14:3: warning: format '%X' expects argument of type 'unsigned int', but argument 2 has type 'ulong' [-Wformat=]
   (*(volatile ulong*)MPC5XXX_ADDECR & 0x00010000) ? 1 : 0);
   ^

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/reginfo.c | 77 +++++++++++++++++++++--------------------
 1 file changed, 39 insertions(+), 38 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/reginfo.c b/arch/ppc/mach-mpc5xxx/reginfo.c
index 92a1b59..e41d235 100644
--- a/arch/ppc/mach-mpc5xxx/reginfo.c
+++ b/arch/ppc/mach-mpc5xxx/reginfo.c
@@ -1,6 +1,7 @@
 #include <stdio.h>
 #include <config.h>
 #include <mach/mpc5xxx.h>
+#include <asm/io.h>
 
 void reginfo(void)
 {
@@ -8,52 +9,52 @@ void reginfo(void)
 	printf ("MBAR=%08x\n", CFG_MBAR);
 	puts ("Memory map registers\n");
 	printf ("\tCS0: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_CS0_START,
-		*(volatile ulong*)MPC5XXX_CS0_STOP,
-		*(volatile ulong*)MPC5XXX_CS0_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x00010000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_CS0_START),
+		in_be32((void*)MPC5XXX_CS0_STOP),
+		in_be32((void*)MPC5XXX_CS0_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x00010000 ? 1 : 0);
 	printf ("\tCS1: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_CS1_START,
-		*(volatile ulong*)MPC5XXX_CS1_STOP,
-		*(volatile ulong*)MPC5XXX_CS1_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x00020000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_CS1_START),
+		in_be32((void*)MPC5XXX_CS1_STOP),
+		in_be32((void*)MPC5XXX_CS1_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x00020000 ? 1 : 0);
 	printf ("\tCS2: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_CS2_START,
-		*(volatile ulong*)MPC5XXX_CS2_STOP,
-		*(volatile ulong*)MPC5XXX_CS2_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x00040000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_CS2_START),
+		in_be32((void*)MPC5XXX_CS2_STOP),
+		in_be32((void*)MPC5XXX_CS2_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x00040000 ? 1 : 0);
 	printf ("\tCS3: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_CS3_START,
-		*(volatile ulong*)MPC5XXX_CS3_STOP,
-		*(volatile ulong*)MPC5XXX_CS3_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x00080000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_CS3_START),
+		in_be32((void*)MPC5XXX_CS3_STOP),
+		in_be32((void*)MPC5XXX_CS3_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x00080000 ? 1 : 0);
 	printf ("\tCS4: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_CS4_START,
-		*(volatile ulong*)MPC5XXX_CS4_STOP,
-		*(volatile ulong*)MPC5XXX_CS4_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x00100000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_CS4_START),
+		in_be32((void*)MPC5XXX_CS4_STOP),
+		in_be32((void*)MPC5XXX_CS4_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x00100000 ? 1 : 0);
 	printf ("\tCS5: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_CS5_START,
-		*(volatile ulong*)MPC5XXX_CS5_STOP,
-		*(volatile ulong*)MPC5XXX_CS5_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x00200000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_CS5_START),
+		in_be32((void*)MPC5XXX_CS5_STOP),
+		in_be32((void*)MPC5XXX_CS5_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x00200000 ? 1 : 0);
 	printf ("\tCS6: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_CS6_START,
-		*(volatile ulong*)MPC5XXX_CS6_STOP,
-		*(volatile ulong*)MPC5XXX_CS6_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x04000000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_CS6_START),
+		in_be32((void*)MPC5XXX_CS6_STOP),
+		in_be32((void*)MPC5XXX_CS6_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x04000000 ? 1 : 0);
 	printf ("\tCS7: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_CS7_START,
-		*(volatile ulong*)MPC5XXX_CS7_STOP,
-		*(volatile ulong*)MPC5XXX_CS7_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x08000000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_CS7_START),
+		in_be32((void*)MPC5XXX_CS7_STOP),
+		in_be32((void*)MPC5XXX_CS7_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x08000000 ? 1 : 0);
 	printf ("\tBOOTCS: start %08X\tstop %08X\tconfig %08X\ten %d\n",
-		*(volatile ulong*)MPC5XXX_BOOTCS_START,
-		*(volatile ulong*)MPC5XXX_BOOTCS_STOP,
-		*(volatile ulong*)MPC5XXX_BOOTCS_CFG,
-		(*(volatile ulong*)MPC5XXX_ADDECR & 0x02000000) ? 1 : 0);
+		in_be32((void*)MPC5XXX_BOOTCS_START),
+		in_be32((void*)MPC5XXX_BOOTCS_STOP),
+		in_be32((void*)MPC5XXX_BOOTCS_CFG),
+		in_be32((void*)MPC5XXX_ADDECR) & 0x02000000 ? 1 : 0);
 	printf ("\tSDRAMCS0: %08X\n",
-		*(volatile ulong*)MPC5XXX_SDRAM_CS0CFG);
+		in_be32((void*)MPC5XXX_SDRAM_CS0CFG));
 	printf ("\tSDRAMCS1: %08X\n",
-		*(volatile ulong*)MPC5XXX_SDRAM_CS1CFG);
+		in_be32((void*)MPC5XXX_SDRAM_CS1CFG));
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
