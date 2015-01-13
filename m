Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAwcw-0000lp-Ig
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 08:15:03 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0D8Ee3m029533
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 17:14:40 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili16) with ESMTP id t0D8EfM14404
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 17:14:41 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 17:14:36 +0900
Message-Id: <1421136876-1688-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH v2] kbuild: add KBUILD_DEFCONFIG
To: barebox@lists.infradead.org

This allows "make ARCH=... defconfig".

Fox example, you can type "make defconfig" instead of
"make sandbox_defconfig".

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

Changes in v2:
  - Add it only to sandbox, x86, efi.

 arch/efi/Makefile     | 2 ++
 arch/sandbox/Makefile | 1 +
 arch/x86/Makefile     | 2 ++
 3 files changed, 5 insertions(+)

diff --git a/arch/efi/Makefile b/arch/efi/Makefile
index 85cb655..b078bd0 100644
--- a/arch/efi/Makefile
+++ b/arch/efi/Makefile
@@ -1,3 +1,5 @@
+KBUILD_DEFCONFIG := efi_defconfig
+
 CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
 
 ifeq ($(CONFIG_X86_32),y)
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index ed5d3a3..e3fb039 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -1,3 +1,4 @@
+KBUILD_DEFCONFIG := sandbox_defconfig
 
 CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing
 
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index a78fa22..da17d70 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -1,3 +1,5 @@
+KBUILD_DEFCONFIG := generic_defconfig
+
 CPPFLAGS += -D__X86__ -fno-strict-aliasing
 
 board-y := x86_generic
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
