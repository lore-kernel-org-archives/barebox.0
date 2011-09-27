Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001mo-DS
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:19 +0200
Message-Id: <1317112109-23311-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] ppc mpc5200: add function to determine configured sdram
	size
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/cpu.c                  |   17 +++++++++++++++++
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h |    3 +++
 2 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 391c705..cf2ca2f 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -113,3 +113,20 @@ int cpu_init_board_data(bd_t *bd)
 	bd->bi_pcifreq = get_pci_clock();
 	return 0;
 }
+
+unsigned long mpc5200_get_sdram_size(unsigned int cs)
+{
+	unsigned long size;
+
+	if (cs > 1)
+		return 0;
+
+	/* retrieve size of memory connected to SDRAM CS0 */
+	size = *(vu_long *)(MPC5XXX_SDRAM_CS0CFG + (cs * 4)) & 0xFF;
+	if (size >= 0x13)
+		size = (1 << (size - 0x13)) << 20;
+	else
+		size = 0;
+
+	return size;
+}
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
index d7d0811..aad2418 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -779,6 +779,9 @@ struct mpc5xxx_mscan {
 /* function prototypes */
 void loadtask(int basetask, int tasks);
 
+/* retrieve configured sdram size connected to a chipselect */
+unsigned long mpc5200_get_sdram_size(unsigned int cs);
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASMPPC_MPC5XXX_H */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
