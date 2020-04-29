Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqbm-0000Ve-8J
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 17:34:55 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 02:34:15 +0900
Message-Id: <20200429173419.681074-2-masahiroy@kernel.org>
In-Reply-To: <20200429173419.681074-1-masahiroy@kernel.org>
References: <20200429173419.681074-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/5] ppc: remove unneeded -D CONFIG_PPC
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

CONFIG_PPC is defined by arch/ppc/Kconfig.

There is no need to define it explicitly.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/ppc/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 10f8ae3fe..276b1f6bf 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -1,7 +1,7 @@
 KBUILD_DEFCONFIG := p2020rdb_defconfig
 
 KBUILD_CPPFLAGS += -ffixed-r14 -m32 	\
-	-meabi -D __PPC__ -D CONFIG_PPC \
+	-meabi -D __PPC__ \
 	-fno-strict-aliasing -mno-spe -mspe=no
 
 ifdef CONFIG_RELOCATABLE
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
