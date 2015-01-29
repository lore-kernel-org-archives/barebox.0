Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGeqD-0001BG-E9
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:28:22 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0T2S33G023708
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:28:03 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id t0T2S3i09646
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:28:03 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:27:54 +0900
Message-Id: <1422498476-28986-4-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 3/5] gitignore: sync with Linux's .gitignore
To: barebox@lists.infradead.org

The top .gitignore is getting close to Linux's one.
I am inclined to sync it more.

 - Add a missing comment block
 - Add missing patterns that have no impact (*.o.*, *.so.dbg)
 - Add prefix "/" to top-level generic files
 - Arrange the order for easier diff

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 .gitignore | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/.gitignore b/.gitignore
index 4f8769a..ce2be8a 100644
--- a/.gitignore
+++ b/.gitignore
@@ -3,37 +3,41 @@
 # subdirectories here. Add them in the ".gitignore" file
 # in that subdirectory instead.
 #
+# NOTE! Please use 'git ls-files -i --exclude-standard'
+# command after changing this file, to see if there are
+# any tracked files which get ignored after the change.
+#
 # Normal rules
 #
-*~
 .*
-\#*\#
 *.o
+*.o.*
 *.a
 *.s
 *.ko
 *.so
+*.so.dbg
 *.mod.c
 *.i
 *.lst
 *.symtypes
 *.elf
+*.patch
 *.mcp
-*.orig
 *.bct
 *.dcd
 *.dcd.S
 *.bbenv
 *.bbenv.*
+Module.symvers
 
 #
 # Top-level generic files
 #
-tags
-TAGS
+/tags
+/TAGS
 /barebox*
-System.map
-Module.symvers
+/System.map
 
 #
 # git files that we don't want to ignore even it they are dot-files
@@ -68,8 +72,9 @@ GRTAGS
 GSYMS
 GTAGS
 
-# patches
-*.patch
+*.orig
+*~
+\#*\#
 
 # Kconfig presets
 all.config
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
