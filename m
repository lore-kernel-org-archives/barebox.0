Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPHVT-00007c-3c
 for barebox@lists.infradead.org; Sat, 11 May 2019 02:13:00 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 11 May 2019 11:12:25 +0900
Message-Id: <1557540745-11523-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH] .gitignore: import some updates from Linux
To: barebox@lists.infradead.org

[1] sort the normal rule alphabetically again

[2] add leading and trailing slashes to generated directories
   (based on Linux commit 1e35663e41360adf564a91811b29cc7e56ee9c39)

[3] add more Kconfig presets
   (based on Linux commit 7fb1fc420f3b1cb27cce5aa1050eb5d9161d0944)

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .gitignore | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/.gitignore b/.gitignore
index f6aff49..7fa2948 100644
--- a/.gitignore
+++ b/.gitignore
@@ -14,6 +14,7 @@
 *.bbenv
 *.bbenv.*
 *.bct
+*.bin.gen.S
 *.dcd
 *.dcd.S
 *.elf
@@ -32,7 +33,6 @@
 *.so.dbg
 *.symtypes
 *.tab.[ch]
-*.bin.gen.S
 Module.symvers
 
 #
@@ -52,8 +52,8 @@ Module.symvers
 #
 # Generated include files
 #
-include/config
-include/generated
+/include/config/
+/include/generated/
 
 # Generated files
 Documentation/commands/*.rst
@@ -81,4 +81,9 @@ GTAGS
 \#*\#
 
 # Kconfig presets
-all.config
+/all.config
+/alldef.config
+/allmod.config
+/allno.config
+/allrandom.config
+/allyes.config
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
