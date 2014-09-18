Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUZCu-0007i9-M5
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 10:45:01 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu, 18 Sep 2014 12:44:29 +0200
Message-Id: <1411037069-1483-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] efi: use objcopy with CROSS_COMPILE prefix
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/efi/Makefile b/arch/efi/Makefile
index af28085..85cb655 100644
--- a/arch/efi/Makefile
+++ b/arch/efi/Makefile
@@ -24,7 +24,7 @@ cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@	\
 		$(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
 
 quiet_cmd_efi_image = EFI-IMG $@
-      cmd_efi_image = objcopy -j .text -j .sdata -j .data -j .dynamic \
+      cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
 		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
 		      -j __barebox_cmd -j .barebox_magicvar -j .bbenv.* \
 		      --target=$(TARGET) $< $@
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
