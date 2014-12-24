Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3dUP-0001VE-1y
 for barebox@lists.infradead.org; Wed, 24 Dec 2014 04:24:01 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 sBO4NijC027096
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:23:44 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id sBO4NiA10304
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:23:44 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 24 Dec 2014 13:23:26 +0900
Message-Id: <1419395007-31582-2-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1419395007-31582-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1419395007-31582-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 1/2] kbuild: add ./Kbuild file to fix "make clean"
To: barebox@lists.infradead.org

"make clean/mrproper/distclean" has not been working correctly.

When "make clean" is run, Kbuild descends into the directories
that are listed in "clean-dirs" variable, which includes $(srctree).

It intends descending into "./Kbuild", not "./Makefile".
(Note "Kbuild" takes precedence over "Makefile" in each directory.)

If Kbuild descends into "./Makefile", Kconfig is invoked via
"make silentoldconfig", which is not our intention.

Let's add "Kbuild" file at the top directory like Linux.

Update TODO list too.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 Kbuild | 2 ++
 TODO   | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)
 create mode 100644 Kbuild

diff --git a/Kbuild b/Kbuild
new file mode 100644
index 0000000..0c3f408
--- /dev/null
+++ b/Kbuild
@@ -0,0 +1,2 @@
+# This does nothing, but some (dummy) comments here.
+# If this file gets empty, it is removed by "make distclean".
diff --git a/TODO b/TODO
index 6350799..8527e57 100644
--- a/TODO
+++ b/TODO
@@ -4,7 +4,6 @@ TODO
 [ ] ask jbe about:
     ./commands/Makefile:40:obj-$(CONFIG_SIMPLE_PARSER)      += setenv.o
 [ ] bark on partition not ending on flash sector boundaries
-[ ] distclean doesn't work without a config
 [ ] Every driver should have a remove function.
     (It must have. Currently there is no provision to given to remove my
     interrupt handlers and to reset all hardware in use, before the target
@@ -108,3 +107,4 @@ DONE
     countdown -m msg -t timeout -x [ctrl-c|anykey|string]
     If done, remove the corresponding stuff from common/main.c
 [X] Board support should go to arch/*/boards/*
+[X] distclean doesn't work without a config
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
