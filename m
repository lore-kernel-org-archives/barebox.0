Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3Y8-0007mB-9M
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 18:59:47 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 25 Apr 2020 03:59:19 +0900
Message-Id: <20200424185924.705754-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/6] kbuild: remove meaningless headers_check from help target
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

This is never shown because include/asm-$(ARCH)/Kbuild does not exist.

headers_check does not make any sense for barebox.

Linux also deprecated headers_check by commit 7ecaf069da52 ("kbuild:
move headers_check rule to usr/include/Makefile").

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Makefile b/Makefile
index 626318624..797ed214a 100644
--- a/Makefile
+++ b/Makefile
@@ -1077,9 +1077,6 @@ help:
 	@echo  'Static analysers'
 	@echo  '  checkstack      - Generate a list of stack hogs'
 	@echo  '  namespacecheck  - Name space analysis on compiled kernel'
-	@if [ -r include/asm-$(ARCH)/Kbuild ]; then \
-	 echo  '  headers_check   - Sanity check on exported headers'; \
-	 fi
 	@echo  ''
 	@echo  'Architecture specific targets ($(ARCH)):'
 	@$(if $(archhelp),$(archhelp),\
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
