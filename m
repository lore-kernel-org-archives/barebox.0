Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV9pa-0007tL-4v
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:09:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:09:15 +0200
Message-Id: <20180619060915.13141-6-s.hauer@pengutronix.de>
In-Reply-To: <20180619060915.13141-1-s.hauer@pengutronix.de>
References: <20180619060915.13141-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] dtc: Disable some warnings
To: Barebox List <barebox@lists.infradead.org>

Disable the dtc warnings that are disabled in the kernel aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3024b068ee..3b13086050 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -254,6 +254,12 @@ cmd_xzmisc = (cat $(filter-out FORCE,$^) | \
 # DTC
 # ---------------------------------------------------------------------------
 
+DTC_FLAGS += -Wno-unit_address_vs_reg \
+	 -Wno-unit_address_format \
+	 -Wno-avoid_unnecessary_addr_size \
+	 -Wno-alias_paths \
+	 -Wno-pci_device_reg
+
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
 cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD) > $@
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
