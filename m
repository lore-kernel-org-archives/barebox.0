Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo178.mail-out.ovh.net ([46.105.76.150])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clAdx-0001GC-Gv
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 08:38:55 +0000
Received: from player728.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id DA8FE2F5B4
 for <barebox@lists.infradead.org>; Tue,  7 Mar 2017 09:38:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  7 Mar 2017 09:44:26 +0100
Message-Id: <1488876266-9845-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488876266-9845-1-git-send-email-plagnioj@jcrosoft.com>
References: <1488876266-9845-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] x86: efi: fix logo support
To: barebox@lists.infradead.org

we need to copy the logo section too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index e837a2df9..6921b10a7 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -85,7 +85,7 @@ quiet_cmd_efi_image = EFI-IMG $@
       cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
 		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
 		      -j __barebox_cmd -j .barebox_magicvar -j .bbenv.* \
-		      --target=$(TARGET) $< $@
+		      -j .bblogo.* --target=$(TARGET) $< $@
 
 KBUILD_BINARY := barebox
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
