Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdbdf-0007gS-HH
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 14:00:25 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Dec 2018 22:59:18 +0900
Message-Id: <1546178368-26182-2-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 01/11] kbuild: filter-out PHONY targets from "targets"
To: barebox@lists.infradead.org

Linux commit 591f66899784ae0afa13ff9a3eb5ce0a4358e48b

The variable "targets" contains object paths for which existing .*.cmd
files should be included.

scripts/Makefile.build automatically adds $(MAKECMDGOALS) to "targets"
as follows:

  targets += $(extra-y) $(MAKECMDGOALS) $(always)

The $(MAKECMDGOALS) is a PHONY target in several places.  PHONY targets
never create .*.cmd files.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 56ee072..883435b 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -377,7 +377,7 @@ $(multi-used-m): FORCE
 $(call multi_depend, $(multi-used-m), .o, -objs -y)
 
 targets += $(multi-used-y) $(multi-used-m)
-
+targets := $(filter-out $(PHONY), $(targets))
 
 # Descending
 # ---------------------------------------------------------------------------
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
