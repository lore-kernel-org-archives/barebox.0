Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001n0-Cp
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:28 +0200
Message-Id: <1317112109-23311-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] ppc mpc5200: remove bus clock switching from generic
	code
To: barebox@lists.infradead.org

The only user (pcm030) already setups the bus clocks in
its board code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/cpu_init.c |   15 ---------------
 1 files changed, 0 insertions(+), 15 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/cpu_init.c b/arch/ppc/mach-mpc5xxx/cpu_init.c
index 021091e..0c17d95 100644
--- a/arch/ppc/mach-mpc5xxx/cpu_init.c
+++ b/arch/ppc/mach-mpc5xxx/cpu_init.c
@@ -144,21 +144,6 @@ int cpu_init(void)
 	*(vu_long *)(MPC5XXX_XLBARB + 0x40) |= (1 << 15);
 	*(vu_long *)(MPC5XXX_XLBARB + 0x70) = 0 | 0x1d;
 
-# if defined(CFG_IPBSPEED_133)
-	/* Motorola reports IPB should better run at 133 MHz. */
-	*(vu_long *)MPC5XXX_ADDECR |= 1;
-	/* pci_clk_sel = 0x02, ipb_clk_sel = 0x00; */
-	addecr = *(vu_long *)MPC5XXX_CDM_CFG;
-	addecr &= ~0x103;
-#  if defined(CFG_PCISPEED_66)
-	/* pci_clk_sel = 0x01 -> IPB_CLK/2 */
-	addecr |= 0x01;
-#  else
-	/* pci_clk_sel = 0x02 -> XLB_CLK/4 = IPB_CLK/4 */
-	addecr |= 0x02;
-#  endif /* CFG_PCISPEED_66 */
-	*(vu_long *)MPC5XXX_CDM_CFG = addecr;
-# endif	/* CFG_IPBSPEED_133 */
 	/* Configure the XLB Arbiter */
 	*(vu_long *)MPC5XXX_XLBARB_MPRIEN = 0xff;
 	*(vu_long *)MPC5XXX_XLBARB_MPRIVAL = 0x11111111;
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
