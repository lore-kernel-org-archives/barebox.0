Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaaEM-0007qg-AQ
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 08:02:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Nov 2020 09:02:45 +0100
Message-Id: <20201105080245.21325-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] firmware: Fix dependencies for PBL
To: Barebox List <barebox@lists.infradead.org>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The firmware object files for PBL have the name %.gen-pbl.o, not
pbl-%.gen.o. Fix The dependencies so that the object files for PBL
get rebuilt when the firmware changes.

Fixes: ff047395b9 ("kbuild: rename pbl object pbl-*.o to *.pbl.o")
Reported-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 0d1b445783..cc28c0fc39 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -55,7 +55,7 @@ $(patsubst %,$(obj)/%.gen.S, $(fw-external-y)): %: $(wordsize_deps) \
 $(patsubst %,$(obj)/%.gen.o, $(fw-external-y)): $(obj)/%.gen.o: $(fwdir)/%
 
 # The same for pbl:
-$(patsubst %,$(obj)/pbl-%.gen.o, $(fw-external-y)): $(obj)/pbl-%.gen.o: $(fwdir)/%
+$(patsubst %,$(obj)/%.gen.pbl.o, $(fw-external-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
 
 obj-pbl-y			 += $(patsubst %,%.gen.o, $(fw-external-y))
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
