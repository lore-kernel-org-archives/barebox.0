Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzvOX-0000MF-9P
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 20:01:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 22:01:02 +0200
Message-Id: <1344628865-32574-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] ARM Makefile: generate a barebox-flash-image link
To: barebox@lists.infradead.org

Depending on the SoC a barebox.bin, barebox.netx, barebox.s5p, MLO image
is generated. With pbl support there now is an additional
arch/arm/pbl/zbarebox.bin image.

To help the user to determine which image should be flashed to his device,
generate a barebox-flash-image link.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 63bc9be..9d9247f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -217,7 +217,10 @@ zbarebox.S zbarebox.bin zbarebox: barebox.bin
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
-all: $(KBUILD_BINARY)
+barebox-flash-image: $(KBUILD_BINARY)
+	$(Q)ln -sf $(KBUILD_BINARY) barebox-flash-image
+
+all: barebox-flash-image
 
 archprepare: maketools
 maketools:
@@ -242,4 +245,4 @@ common-y += arch/arm/lib/ arch/arm/cpu/
 
 lds-y	:= arch/arm/lib/barebox.lds
 
-CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds
+CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds barebox-flash-image
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
