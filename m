Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3dgN-0006NP-Gs
 for barebox@lists.infradead.org; Wed, 24 Dec 2014 04:36:24 +0000
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 24 Dec 2014 13:35:55 +0900
Message-Id: <1419395755-2773-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] kbuild: create a build directory automatically for
 out-of-tree build
To: barebox@lists.infradead.org
Cc: Michal Marek <mmarek@suse.cz>

Kbuild supports saving output files in a separate directory.
But the build directory must be created beforehand. For example,

  $ mkdir -p dir/to/store/output/files
  $ make O=dir/to/store/output/files defconfig

Creating a build directory automatically would be useful.

[ imported from Linux Kernel, commit 1c9e70a55b08 ]
Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Michal Marek <mmarek@suse.cz>
---

 Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 5676b29..92889b3 100644
--- a/Makefile
+++ b/Makefile
@@ -112,9 +112,10 @@ ifneq ($(KBUILD_OUTPUT),)
 # Invoke a second make in the output directory, passing relevant variables
 # check that the output directory actually exists
 saved-output := $(KBUILD_OUTPUT)
-KBUILD_OUTPUT := $(shell cd $(KBUILD_OUTPUT) && /bin/pwd)
+KBUILD_OUTPUT := $(shell mkdir -p $(KBUILD_OUTPUT) && cd $(KBUILD_OUTPUT) \
+								&& /bin/pwd)
 $(if $(KBUILD_OUTPUT),, \
-     $(error output directory "$(saved-output)" does not exist))
+     $(error failed to create output directory "$(saved-output)"))
 
 PHONY += $(MAKECMDGOALS)
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
