Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-f44.google.com ([209.85.216.44])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGgGt-0003sz-W0
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 02:23:12 +0000
Received: by mail-qa0-f44.google.com with SMTP id w8so1035436qac.3
 for <barebox@lists.infradead.org>; Mon, 02 Sep 2013 19:22:50 -0700 (PDT)
From: Darren Garnier <dgarnier@reinrag.net>
Message-Id: <0EC48711-FFBD-438E-A85A-1FB2A466A613@reinrag.net>
Date: Mon, 2 Sep 2013 22:22:49 -0400
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
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
Subject: [PATCH 3/4] small tweeks to build system for compatibility on MacOS X
To: barebox@lists.infradead.org

Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
---
Makefile       | 6 +++---
scripts/genenv | 3 ++-
2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 397c54a..ff17d8f 100644
--- a/Makefile
+++ b/Makefile
@@ -577,7 +577,7 @@ define rule_barebox__
	$(cmd_sysmap) $@ System.map;                                         \
	if [ $$? -ne 0 ]; then                                               \
		rm -f $@;                                                    \
-		/bin/false;                                                  \
+		false;                                                       \
	fi;
endef

@@ -614,7 +614,7 @@ define verify_kallsyms
	$(Q)cmp -s System.map .tmp_System.map ||                             \
		(echo Inconsistent kallsyms data;                            \
		 echo Try setting CONFIG_KALLSYMS_EXTRA_PASS;                \
-		 rm .tmp_kallsyms* ; /bin/false )
+		 rm .tmp_kallsyms* ; false )
endef

# Update barebox version before link
@@ -782,7 +782,7 @@ ifneq ($(KBUILD_SRC),)
	$(Q)if [ -f $(srctree)/.config -o -d $(srctree)/include/config ]; then \
		echo "  $(srctree) is not clean, please run 'make mrproper'";\
		echo "  in the '$(srctree)' directory.";\
-		/bin/false; \
+		false; \
	fi;
	$(Q)if [ ! -d include2 ]; then mkdir -p include2; fi;
	$(Q)if [ -e $(srctree)/include/asm-$(SRCARCH)/barebox.h ]; then  \
diff --git a/scripts/genenv b/scripts/genenv
index 374db6d..b3b6ec5 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -24,7 +24,8 @@ for i in $*; do
done
)

-find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
+#find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
+find $tempdir -name '.svn' -o -name '*~' -delete

$objtree/scripts/bareboxenv -s $tempdir $target

-- 
1.8.3.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
