Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdbdf-0007gQ-Ge
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 14:00:27 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Dec 2018 22:59:22 +0900
Message-Id: <1546178368-26182-6-git-send-email-yamada.masahiro@socionext.com>
In-Reply-To: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 05/11] treewide: remove blank texts
To: barebox@lists.infradead.org

These should be fixed before the Kconfig resync because Linux 4.16 or
later warns it.

Refer to Linux commit 1b9eda2e4892 ("kconfig: Warn if help text is
blank").

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/mips/Kconfig      | 1 -
 drivers/crypto/Kconfig | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 7c40991..6a2b7a0 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -136,7 +136,6 @@ config CPU_BIG_ENDIAN
 config CPU_LITTLE_ENDIAN
 	bool "Little endian"
 	depends on SYS_SUPPORTS_LITTLE_ENDIAN
-	help
 
 endchoice
 
diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 9f02c17..d1687e3 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -1,7 +1,6 @@
 
 menuconfig CRYPTO_HW
 	bool "Hardware crypto devices"
-	help
 
 if CRYPTO_HW
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
