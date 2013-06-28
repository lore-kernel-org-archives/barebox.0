Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsdNC-0003gr-Cx
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 18:26:19 +0000
Received: by mail-ee0-f50.google.com with SMTP id d49so1205214eek.9
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2013 11:25:55 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 28 Jun 2013 20:25:42 +0200
Message-Id: <1372443947-12599-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/6] ARM: mvebu: move soc_init to core_initcall
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Clocks need to be accessed early for DT support, so move soc_init to
core_initcall instead of postcore_initcall.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/armada-370-xp.c |    2 +-
 arch/arm/mach-mvebu/dove.c          |    2 +-
 arch/arm/mach-mvebu/kirkwood.c      |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 2cdc3b0..1d64861 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -109,7 +109,7 @@ static int armada_370_xp_init_soc(void)
 	armada_370_xp_add_uart();
 	return 0;
 }
-postcore_initcall(armada_370_xp_init_soc);
+core_initcall(armada_370_xp_init_soc);
 
 void __noreturn reset_cpu(unsigned long addr)
 {
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 6e8e113..ee63917 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -132,7 +132,7 @@ static int dove_init_soc(void)
 
 	return 0;
 }
-postcore_initcall(dove_init_soc);
+core_initcall(dove_init_soc);
 
 void __noreturn reset_cpu(unsigned long addr)
 {
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 3e16f41..9e43dae 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -95,7 +95,7 @@ static int kirkwood_init_soc(void)
 
 	return 0;
 }
-postcore_initcall(kirkwood_init_soc);
+core_initcall(kirkwood_init_soc);
 
 void __noreturn reset_cpu(unsigned long addr)
 {
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
