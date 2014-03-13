Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOA6H-0001dU-Sz
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 18:11:29 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Mar 2014 18:10:02 +0000
Message-Id: <1394734204-8181-6-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
References: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 5/7] ppc: mpc85xx: add stashing support
To: barebox@lists.infradead.org

The eTSEC 2.0 devices found on the 85xx family of SoCs support stashing
buffer descriptors in the L2 cache. This updates the device tree fixup
for these devices to ensure that the stashing related properties used
by Linux are initialised correctly.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/fdt.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/ppc/mach-mpc85xx/fdt.c b/arch/ppc/mach-mpc85xx/fdt.c
index b1da144..1a2d780 100644
--- a/arch/ppc/mach-mpc85xx/fdt.c
+++ b/arch/ppc/mach-mpc85xx/fdt.c
@@ -54,6 +54,14 @@ static void fdt_add_enet_stashing(void *fdt)
 		of_property_write_u32(node, "rx-stash-idx", 0);
 		node = of_find_compatible_node(node, NULL, "gianfar");
 	}
+
+	node = of_find_compatible_node(fdt, NULL, "fsl,etsec2");
+	while (node) {
+		of_set_property(node, "bd-stash", NULL, 0, 1);
+		of_property_write_u32(node, "rx-stash-len", 96);
+		of_property_write_u32(node, "rx-stash-idx", 0);
+		node = of_find_compatible_node(node, NULL, "fsl,etsec2");
+	}
 }
 
 static int fdt_stdout_setup(struct device_node *blob)
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
