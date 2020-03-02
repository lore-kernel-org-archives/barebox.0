Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8g58-0002bv-E2
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 08:05:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Mar 2020 09:05:39 +0100
Message-Id: <20200302080539.12295-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] firmware: Fix dependencies for firmware in PBL
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Rouven Czerwinski <r.czerwinski@pengutronix.de>

The object files for the PBL are not regenerated when the firmware files
are updated. The dependency from the pbl-*.gen.o to the firmware files
are missing, add them.

Reported-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/firmware/Makefile b/firmware/Makefile
index 9581ee6116..8e8ce83e06 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -50,6 +50,9 @@ $(patsubst %,$(obj)/%.gen.S, $(fw-external-y)): %: $(wordsize_deps) \
 # The .o files depend on the binaries directly; the .S files don't.
 $(patsubst %,$(obj)/%.gen.o, $(fw-external-y)): $(obj)/%.gen.o: $(fwdir)/%
 
+# The same for pbl:
+$(patsubst %,$(obj)/pbl-%.gen.o, $(fw-external-y)): $(obj)/pbl-%.gen.o: $(fwdir)/%
+
 obj-pbl-y			 += $(patsubst %,%.gen.o, $(fw-external-y))
 
 ifeq ($(KBUILD_SRC),)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
