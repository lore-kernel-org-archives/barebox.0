Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3Y8-0007mE-9K
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 18:59:47 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 25 Apr 2020 03:59:21 +0900
Message-Id: <20200424185924.705754-3-masahiroy@kernel.org>
In-Reply-To: <20200424185924.705754-1-masahiroy@kernel.org>
References: <20200424185924.705754-1-masahiroy@kernel.org>
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
Subject: [PATCH 3/6] kbuild: swap the include order of arch Makefile and
 auto.conf.cmd
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Include

  include/config/auto.conf
  arch/$(ARCH)/Makefile
  include/config/auto.conf.cmd

in this order, which is the same as the current Linux does.

auto.conf.cmd contains the environment variables that were referenced
from Kconfig files. If an environment variable defined in arch Makefile
is referenced from Kconfig files, Kbuild would end up with eternal
synconfig loop.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 797ed214a..e01a7491a 100644
--- a/Makefile
+++ b/Makefile
@@ -445,12 +445,16 @@ PHONY += scripts
 scripts: scripts_basic
 	$(Q)$(MAKE) $(build)=$(@)
 
+ifeq ($(dot-config),1)
+include include/config/auto.conf
+endif
+
 # Objects we will link into barebox / subdirs we need to visit
 common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
 
-ifeq ($(dot-config),1)
-include include/config/auto.conf
+include $(srctree)/arch/$(ARCH)/Makefile
 
+ifeq ($(dot-config),1)
 # Read in dependencies to all Kconfig* files, make sure to run syncconfig if
 # changes are detected. This should be included after arch/$(SRCARCH)/Makefile
 # because some architectures define CROSS_COMPILE there.
@@ -476,8 +480,6 @@ $(KCONFIG_CONFIG):
 	$(Q)$(MAKE) -f $(srctree)/Makefile syncconfig
 endif # $(dot-config)
 
-include $(srctree)/arch/$(ARCH)/Makefile
-
 KBUILD_CFLAGS		+= -ggdb3
 
 # Force gcc to behave correct even for buggy distributions
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
