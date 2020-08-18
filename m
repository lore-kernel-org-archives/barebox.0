Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7zHW-0007Rt-6o
 for barebox@lists.infradead.org; Tue, 18 Aug 2020 10:55:56 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Aug 2020 19:55:16 +0900
Message-Id: <20200818105520.32326-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/5] scripts: remove redundant setupmbr addition to subdir-
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

This has already been added to subdir-$(CONFIG_X86) a few lines above.
'make mrproper' correctly descends into scripts/setupmbr/.

Remove the redundant addition.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index 75e68822d..238460fe2 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -52,4 +52,4 @@ subdir-$(CONFIG_DTC)		+= dtc
 subdir-$(CONFIG_ARCH_TEGRA)	+= tegra
 
 # Let clean descend into subdirs
-subdir-	+= basic kconfig setupmbr
+subdir-	+= basic kconfig
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
