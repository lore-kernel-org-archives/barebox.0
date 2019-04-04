Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hC3k6-0007e7-1C
 for barebox@lists.infradead.org; Thu, 04 Apr 2019 14:53:29 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  4 Apr 2019 16:53:15 +0200
Message-Id: <20190404145320.11465-3-m.tretter@pengutronix.de>
In-Reply-To: <20190404145320.11465-1-m.tretter@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
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
Subject: [RFC PATCH 2/7] dtc: add -@ option to enable __symbols__
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The devicetree overlay driver requires the __symbols__ node to resolve
phandles to the base devicetree. As Barebox applies the overlay to the
live devicetree, the build-in devicetree must be built with the
__symbols__ node.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 8c07a54d05..6152bc6211 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -292,7 +292,7 @@ $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
 
 quiet_cmd_dtc = DTC     $@
 cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
-	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
+	$(objtree)/scripts/dtc/dtc -@ -O dtb -o $@ -b 0 \
 		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
 		-i $(srctree)/dts/src/$(SRCARCH) \
 		-d $(depfile).dtc $(dtc-tmp) ; \
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
