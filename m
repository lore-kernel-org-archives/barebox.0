Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008Hf-7F
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003Oi-0J
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0004DK-Um
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:08 +0200
Message-Id: <1412691738-11145-10-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 09/19] arch/MPC5xxx: just use macros instead of anonymous
 digits
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/include/mach/mpc5200.h |  1 +
 arch/ppc/mach-mpc5xxx/start.S                | 12 ++++++------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5200.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5200.h
index 35762a1..28dfa6e 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5200.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5200.h
@@ -37,6 +37,7 @@
 #define EXC_OFF_SYS_RESET	0x0100
 #define _START_OFFSET		EXC_OFF_SYS_RESET
 
+#define DEFAULT_MBAR 0x80000000
 #define CFG_MBAR 0xf0000000
 
 /* useful macros for manipulating CSx_START/STOP */
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 8402345..810a5bb 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -75,18 +75,18 @@ _base:
 _start:
 	/*
 	 * Reset entry. When entered here we assume that MBAR is at reset default
-	 * 0x80000000.
+	 * DEFAULT_MBAR.
 	 */
-	lis	r4, 0x80000000@h
-	ori	r4, r4, 0x80000000@l
+	lis	r4, DEFAULT_MBAR@h
+	ori	r4, r4, DEFAULT_MBAR@l
 
 setup_mbar:
 	/* r4 == current MBAR */
 	mfmsr	r5			/* save msr contents		*/
 
-	/* Switch MBAR to 0xf0000000 */
-	lis	r3, 0xf0000000@h
-	ori	r3, r3, 0xf0000000@l
+	/* Switch MBAR to its new destination */
+	lis	r3, CFG_MBAR@h
+	ori	r3, r3, CFG_MBAR@l
 	mtspr	MBAR, r3
 	rlwinm	r3, r3, 16, 16, 31
 	stw	r3, 0(r4)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
