Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg012.nifty.com ([202.248.44.38]
 helo=conuserg012-v.nifty.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zp6e3-0004Nz-Cv
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 03:34:28 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 22 Oct 2015 12:34:07 +0900
Message-Id: <1445484848-32599-2-git-send-email-yamada.masahiro@socionext.com>
In-Reply-To: <1445484848-32599-1-git-send-email-yamada.masahiro@socionext.com>
References: <1445484848-32599-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 2/2] kbuild: Don't assume dts files live in arch/*/boot/dts
To: barebox@lists.infradead.org

Barebox has not adopted arch/$(SRCARCH)/dts/$(VENDOR)/ directory
to contain device trees yet, but it is possible in the future.
(you can see that in ARM64 Linux)

It is better to use $(dir $<) rather than hardcoding the particular
include path (and this is the way used in Linux).

Refer commit ad06156876c0e55a01e13e1f2dd5c7f9262b1dfa ("kbuild: Don't
assume dts files live in arch/*/boot/dts") of Linux.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index c529d15..46ced28 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -257,7 +257,7 @@ $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
 quiet_cmd_dtc = DTC     $@
 cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
 	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
-		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
+		-i $(dir $<) $(DTC_FLAGS) \
 		-i $(srctree)/dts/src/ \
 		-d $(depfile).dtc $(dtc-tmp) ; \
 	cat $(depfile).pre $(depfile).dtc > $(depfile)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
