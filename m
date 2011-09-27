Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001ml-DM
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:20 +0200
Message-Id: <1317112109-23311-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] ppc mpc5200: add function to configure a chipselect
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/cpu.c                  |   70 ++++++++++++++++++++++++++
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h |    4 ++
 2 files changed, 74 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index cf2ca2f..649f08a 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -30,6 +30,7 @@
 #include <mach/mpc5xxx.h>
 #include <asm/processor.h>
 #include <asm/byteorder.h>
+#include <asm/io.h>
 #include <init.h>
 #include <types.h>
 #include <mach/clocks.h>
@@ -130,3 +131,72 @@ unsigned long mpc5200_get_sdram_size(unsigned int cs)
 
 	return size;
 }
+
+struct mpc5200_cs {
+	void *start;
+	void *stop;
+	void *cfg;
+	unsigned int addecr;
+};
+
+static struct mpc5200_cs chipselects[] = {
+	{
+		.start = (void *)MPC5XXX_CS0_START,
+		.stop = (void *)MPC5XXX_CS0_STOP,
+		.cfg = (void *)MPC5XXX_CS0_CFG,
+		.addecr = 1 << 16,
+	}, {
+		.start = (void *)MPC5XXX_CS1_START,
+		.stop = (void *)MPC5XXX_CS1_STOP,
+		.cfg = (void *)MPC5XXX_CS1_CFG,
+		.addecr = 1 << 17,
+	}, {
+		.start = (void *)MPC5XXX_CS2_START,
+		.stop = (void *)MPC5XXX_CS2_STOP,
+		.cfg = (void *)MPC5XXX_CS2_CFG,
+		.addecr = 1 << 18,
+	}, {
+		.start = (void *)MPC5XXX_CS3_START,
+		.stop = (void *)MPC5XXX_CS3_STOP,
+		.cfg = (void *)MPC5XXX_CS3_CFG,
+		.addecr = 1 << 19,
+	}, {
+		.start = (void *)MPC5XXX_CS4_START,
+		.stop = (void *)MPC5XXX_CS4_STOP,
+		.cfg = (void *)MPC5XXX_CS4_CFG,
+		.addecr = 1 << 20,
+	}, {
+		.start = (void *)MPC5XXX_CS5_START,
+		.stop = (void *)MPC5XXX_CS5_STOP,
+		.cfg = (void *)MPC5XXX_CS5_CFG,
+		.addecr = 1 << 21,
+	}, {
+		.start = (void *)MPC5XXX_CS6_START,
+		.stop = (void *)MPC5XXX_CS6_STOP,
+		.cfg = (void *)MPC5XXX_CS6_CFG,
+		.addecr = 1 << 26,
+	}, {
+		.start = (void *)MPC5XXX_CS7_START,
+		.stop = (void *)MPC5XXX_CS7_STOP,
+		.cfg = (void *)MPC5XXX_CS7_CFG,
+		.addecr = 1 << 27,
+	}, {
+		.start = (void *)MPC5XXX_BOOTCS_START,
+		.stop = (void *)MPC5XXX_BOOTCS_STOP,
+		.cfg = (void *)MPC5XXX_CS0_CFG,
+		.addecr = 1 << 25,
+	},
+};
+
+void mpc5200_setup_cs(int cs, unsigned long start, unsigned long size, u32 cfg)
+{
+	u32 addecr;
+
+	out_be32(chipselects[cs].start, START_REG(start));
+	out_be32(chipselects[cs].stop, STOP_REG(start, size));
+	out_be32(chipselects[cs].cfg, cfg);
+
+	addecr = in_be32((void *)MPC5XXX_ADDECR);
+	addecr |= chipselects[cs].addecr | 1;
+	out_be32((void *)MPC5XXX_ADDECR, addecr);
+}
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
index aad2418..558f331 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -782,6 +782,10 @@ void loadtask(int basetask, int tasks);
 /* retrieve configured sdram size connected to a chipselect */
 unsigned long mpc5200_get_sdram_size(unsigned int cs);
 
+/* configure a local plus bus chip select */
+#define MPC5200_BOOTCS 8
+void mpc5200_setup_cs(int cs, unsigned long start, unsigned long size, u32 cfg);
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASMPPC_MPC5XXX_H */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
