Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajzN-0007D4-Dy
 for barebox@lists.infradead.org; Mon, 18 May 2020 17:55:47 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 02:54:58 +0900
Message-Id: <20200518175458.178943-2-masahiroy@kernel.org>
In-Reply-To: <20200518175458.178943-1-masahiroy@kernel.org>
References: <20200518175458.178943-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/2] kbuild: build modules by 'make'
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

In Linux, 'make' and 'make all' work equivalently; it builds both
vmlinux and modules.

In barebox, strangely, 'make all' builds both barebox and modules,
but 'make' builds only barebox because KBUILD_MODULES is unset.

The check for 'ifeq ($(MAKECMDGOALS),)' is missing since the day-one.

Fixes: b02e0966412c ("add additional linking stage for modules")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Makefile b/Makefile
index d477494d6..9f30fafdd 100644
--- a/Makefile
+++ b/Makefile
@@ -533,6 +533,10 @@ ifneq ($(filter all _all modules,$(MAKECMDGOALS)),)
   KBUILD_MODULES := 1
 endif
 
+ifeq ($(MAKECMDGOALS),)
+  KBUILD_MODULES := 1
+endif
+
 export KBUILD_MODULES KBUILD_BUILTIN
 
 ifdef need-config
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
