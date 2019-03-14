Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4UVj-0005HR-Tn
 for barebox@lists.infradead.org; Thu, 14 Mar 2019 17:51:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Mar 2019 18:51:14 +0100
Message-Id: <20190314175114.18814-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] dtc: disable noisy warnings
To: Barebox List <barebox@lists.infradead.org>

Disable the following warnings from dtc:

-Wno-alias_paths
-Wno-graph_child_address
-Wno-simple_bus_reg
-Wno-unique_unit_address

This syncs the warning flags with the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f5dcec4dcb..def9248841 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -278,6 +278,10 @@ DTC_FLAGS += -Wno-unit_address_vs_reg \
 	 -Wno-unit_address_format \
 	 -Wno-avoid_unnecessary_addr_size \
 	 -Wno-alias_paths \
+	 -Wno-alias_paths \
+	 -Wno-graph_child_address \
+	 -Wno-simple_bus_reg \
+	 -Wno-unique_unit_address \
 	 -Wno-pci_device_reg
 
 # Generate an assembly file to wrap the output of the device tree compiler
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
