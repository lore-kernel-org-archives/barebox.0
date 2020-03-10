Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBd47-000226-4K
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 11:28:54 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 Mar 2020 20:28:16 +0900
Message-Id: <20200310112816.7415-5-masahiroy@kernel.org>
In-Reply-To: <20200310112816.7415-1-masahiroy@kernel.org>
References: <20200310112816.7415-1-masahiroy@kernel.org>
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
Subject: [PATCH 5/5] kbuild: replace barebox-all with BAREBOX_OBJS
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Replace $(barebox-all) with $(BAREBOX_OBJS), then delete barebox-all.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 40d146e511ac..c18244e761f9 100644
--- a/Makefile
+++ b/Makefile
@@ -585,7 +585,6 @@ export DEFAULT_COMPRESSION_SUFFIX
 
 BAREBOX_OBJS := $(common-y)
 export BAREBOX_PBL_OBJS := $(pbl-common-y)
-barebox-all    := $(BAREBOX_OBJS)
 BAREBOX_LDS    := $(lds-y)
 
 # Rule to link barebox
@@ -691,13 +690,13 @@ quiet_cmd_kallsyms = KSYM    $@
 	$(call cmd,kallsyms)
 
 # .tmp_barebox1 must be complete except kallsyms, so update barebox version
-.tmp_barebox1: $(BAREBOX_LDS) $(barebox-all) FORCE
+.tmp_barebox1: $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE
 	$(call if_changed_rule,ksym_ld)
 
-.tmp_barebox2: $(BAREBOX_LDS) $(barebox-all) .tmp_kallsyms1.o FORCE
+.tmp_barebox2: $(BAREBOX_LDS) $(BAREBOX_OBJS) .tmp_kallsyms1.o FORCE
 	$(call if_changed,barebox__)
 
-.tmp_barebox3: $(BAREBOX_LDS) $(barebox-all) .tmp_kallsyms2.o FORCE
+.tmp_barebox3: $(BAREBOX_LDS) $(BAREBOX_OBJS) .tmp_kallsyms2.o FORCE
 	$(call if_changed,barebox__)
 
 # Needs to visit scripts/ before $(KALLSYMS) can be used.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
