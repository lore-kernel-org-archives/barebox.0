Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vgepw-0008Dn-Uu
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 18:06:45 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 13 Nov 2013 18:05:33 +0000
Message-Id: <1384365934-7693-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1384365934-7693-1-git-send-email-renaud.barbier@ge.com>
References: <1384365934-7693-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/2] ppc: mpc85xx: add fsl,mpic node frequency property
To: barebox@lists.infradead.org

The clock frequency property of the device tree node fsl,mpic is
added as it is needed by the PCI driver to function in newer
Linux version.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/fdt.c                     |    5 +++++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |    3 +++
 2 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/fdt.c b/arch/ppc/mach-mpc85xx/fdt.c
index fd919a5..b1da144 100644
--- a/arch/ppc/mach-mpc85xx/fdt.c
+++ b/arch/ppc/mach-mpc85xx/fdt.c
@@ -132,6 +132,11 @@ static int fdt_cpu_setup(struct device_node *blob, void *unused)
 		node = of_find_compatible_node(node, NULL, "ns16550");
 	}
 
+	node = of_find_compatible_node(blob, NULL, "fsl,mpic");
+	if (node)
+		of_property_write_u32(node, "clock-frequency",
+				sysinfo.freqSystemBus);
+
 	fdt_stdout_setup(blob);
 
 	return 0;
diff --git a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
index ff3a312..d5a9c97 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
@@ -158,5 +158,8 @@
 #define I2C1_BASE_ADDR		(CFG_IMMR + 0x3000)
 #define I2C2_BASE_ADDR		(CFG_IMMR + 0x3100)
 
+/* Global Timer Registers */
+#define MPC8xxx_PIC_TFRR_OFFSET		0x10F0
+
 #define PCI1_BASE_ADDR		(CFG_IMMR + MPC85xx_PCI1_OFFSET)
 #endif /*__IMMAP_85xx__*/
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
