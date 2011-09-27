Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001my-D9
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:26 +0200
Message-Id: <1317112109-23311-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
References: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] mpc5200: hardcode internal sram for initram
To: barebox@lists.infradead.org

Why should we use other ram? No need to configure this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/start.S |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index d619460..dc53c8a 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -102,9 +102,8 @@ setup_mbar:
 	/*--------------------------------------------------------------*/
 
 	/* set up stack in on-chip SRAM */
-	lis	r3, (CFG_INIT_RAM_ADDR + CFG_INIT_RAM_SIZE)@h
-	ori	r3, r3, (CFG_INIT_RAM_ADDR + CFG_INIT_RAM_SIZE)@l
-	subi	r1, r3, CONFIG_EARLY_INITDATA_SIZE
+	lis	r1, (MPC5XXX_SRAM + MPC5XXX_SRAM_SIZE)@h
+	ori	r1, r1, (MPC5XXX_SRAM + MPC5XXX_SRAM_SIZE)@l
 	li	r0, 0			/* Make room for stack frame header and	*/
 	stwu	r0, -4(r1)		/* clear final stack frame so that	*/
 	stwu	r0, -4(r1)		/* stack backtraces terminate cleanly	*/
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
