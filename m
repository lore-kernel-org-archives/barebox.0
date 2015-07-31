Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL6Ek-0005aR-Bo
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZL4N8-0007NP-JM
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:50 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZL6EN-0004KO-KW
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 11:03:55 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 31 Jul 2015 11:03:51 +0200
Message-Id: <1438333432-10118-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
References: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/6] PPC/MPC5200: re-use the IMX I2C master driver for MPC5200
To: barebox@lists.infradead.org

This IP core is shared between many FSL SoCs. The MPC5200 provides this
core as well.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/include/mach/clock.h | 4 ++++
 drivers/i2c/busses/Kconfig                 | 9 +++++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/include/mach/clock.h b/arch/ppc/mach-mpc5xxx/include/mach/clock.h
index 4e1a903..b19686f 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/clock.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/clock.h
@@ -6,5 +6,9 @@ unsigned long get_cpu_clock(void);
 unsigned long get_ipb_clock(void);
 unsigned long get_pci_clock(void);
 unsigned long get_timebase_clock(void);
+static inline unsigned long fsl_get_i2c_freq(void)
+{
+	return get_ipb_clock();
+}
 
 #endif /* __ASM_ARCH_CLOCKS_H */
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 3962286..181321b 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -17,8 +17,13 @@ config I2C_AT91
 	depends on ARCH_AT91
 
 config I2C_IMX
-	bool "MPC85xx/i.MX I2C Master driver"
-	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX
+	bool "MPC85xx/MPC5200/i.MX I2C Master driver"
+	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX || ARCH_MPC5200
+	help
+	  If you say yes to this option, support will be included for many
+	  built-in I2C master controllers found in Freescale SoCs. This is true
+	  for many i.MX ARM based SoCs, for MPC85xx and MPC5200 PowerPC based
+	  SoCs.
 
 config I2C_MV64XXX
 	bool "Marvell mv64xxx I2C Controller"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
