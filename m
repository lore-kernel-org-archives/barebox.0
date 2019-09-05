Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pMg-00074b-KC
 for barebox@lists.infradead.org; Thu, 05 Sep 2019 10:51:47 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  5 Sep 2019 12:51:36 +0200
Message-Id: <20190905105142.13681-2-m.tretter@pengutronix.de>
In-Reply-To: <20190905105142.13681-1-m.tretter@pengutronix.de>
References: <20190905105142.13681-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 1/7] dtc: add -@ option to enable __symbols__
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
index fc5fe3d7e8..292dc938d9 100644
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
