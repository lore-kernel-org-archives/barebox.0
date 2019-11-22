Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4Oo-0006I5-Px
 for barebox@lists.infradead.org; Fri, 22 Nov 2019 08:34:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id f9so2826029plr.7
 for <barebox@lists.infradead.org>; Fri, 22 Nov 2019 00:34:41 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Fri, 22 Nov 2019 16:34:24 +0800
Message-Id: <1574411664-11733-1-git-send-email-duhuanpeng@loongson.cn>
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
Subject: [PATCH] MIPS: Makefile: minor codingstyle fix
To: barebox@lists.infradead.org
Cc: Du Huanpeng <duhuanpeng@loongson.cn>, Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

Signed-off-by: Du Huanpeng <duhuanpeng@loongson.cn>
---
 arch/mips/Makefile | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index ee465dc..1c10db5 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -52,9 +52,7 @@ cflags-$(CONFIG_CPU_MIPS32_R1) += $(call cc-option,-march=mips32,-mips32 -U_MIPS
 cflags-$(CONFIG_CPU_MIPS32_R2) += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
 cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64 -Wa,--trap
 cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
-cflags-$(CONFIG_CPU_LOONGSON1)	+= \
-	$(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) \
-	-Wa,-mips32r2 -Wa,--trap
+cflags-$(CONFIG_CPU_LOONGSON1) += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
 
 CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
