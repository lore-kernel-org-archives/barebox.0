Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4CYJ-0007y5-5F
 for barebox@lists.infradead.org; Wed, 22 Aug 2012 15:09:07 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 22 Aug 2012 16:08:51 +0100
Message-Id: <1345648133-31721-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
References: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/3] mpc85xx: i2c frequency
To: barebox@lists.infradead.org

To prepare for the introduction of the Freescale I2C driver, a function
that returns the system bus frequency used to compute the i2c bus frequency
is added.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/include/mach/clocks.h |    1 +
 arch/ppc/mach-mpc85xx/speed.c               |    9 +++++++++
 2 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/include/mach/clocks.h b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
index 2ab367b..e20d685 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/clocks.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
@@ -12,5 +12,6 @@ struct sys_info {
 
 unsigned long fsl_get_bus_freq(ulong dummy);
 unsigned long fsl_get_timebase_clock(void);
+unsigned long fsl_get_i2c_freq(void);
 void fsl_get_sys_info(struct sys_info *sysInfo);
 #endif /* __ASM_ARCH_CLOCKS_H */
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
index 40d3664..fff2d22 100644
--- a/arch/ppc/mach-mpc85xx/speed.c
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -102,3 +102,12 @@ unsigned long fsl_get_timebase_clock(void)
 
 	return (sysinfo.freqSystemBus + 4UL)/8UL;
 }
+
+unsigned long fsl_get_i2c_freq(void)
+{
+	struct sys_info sysinfo;
+
+	fsl_get_sys_info(&sysinfo);
+
+	return sysinfo.freqSystemBus / 2;
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
