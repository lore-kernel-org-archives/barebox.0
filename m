Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001mv-Dg
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:24 +0200
Message-Id: <1317112109-23311-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] ppc: hardcode sdram base to 0x0
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/lib/board_data.c        |    2 +-
 arch/ppc/mach-mpc5xxx/cpu_init.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/lib/board_data.c b/arch/ppc/lib/board_data.c
index b28830f..ff9f0d0 100644
--- a/arch/ppc/lib/board_data.c
+++ b/arch/ppc/lib/board_data.c
@@ -4,7 +4,7 @@ int init_board_data(bd_t *bd)
 {
 	cpu_init_board_data(bd);
 
-	bd->bi_memstart  = CFG_SDRAM_BASE;	/* start of  DRAM memory	*/
+	bd->bi_memstart  = 0;	/* start of  DRAM memory	*/
 //	bd->bi_memsize   = gd->ram_size;	/* size  of  DRAM memory in bytes */ /* FIXME */
 
 #ifdef CONFIG_IP860
diff --git a/arch/ppc/mach-mpc5xxx/cpu_init.c b/arch/ppc/mach-mpc5xxx/cpu_init.c
index bf0a5bd..021091e 100644
--- a/arch/ppc/mach-mpc5xxx/cpu_init.c
+++ b/arch/ppc/mach-mpc5xxx/cpu_init.c
@@ -142,7 +142,7 @@ int cpu_init(void)
 
 	/* Enable snooping for RAM */
 	*(vu_long *)(MPC5XXX_XLBARB + 0x40) |= (1 << 15);
-	*(vu_long *)(MPC5XXX_XLBARB + 0x70) = CFG_SDRAM_BASE | 0x1d;
+	*(vu_long *)(MPC5XXX_XLBARB + 0x70) = 0 | 0x1d;
 
 # if defined(CFG_IPBSPEED_133)
 	/* Motorola reports IPB should better run at 133 MHz. */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
