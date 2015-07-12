Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEECr-00041l-T6
 for barebox@lists.infradead.org; Sun, 12 Jul 2015 10:09:58 +0000
Received: by lblf12 with SMTP id f12so41451475lbl.2
 for <barebox@lists.infradead.org>; Sun, 12 Jul 2015 03:09:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 Jul 2015 13:09:17 +0300
Message-Id: <1436695758-20331-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! exitcall: Add exitcall infrastructure
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

---
fix whitespaces
---
 arch/ppc/boards/pcm030/barebox.lds.S | 2 +-
 arch/ppc/mach-mpc85xx/barebox.lds.S  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index dc71464..0e08e05 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -111,7 +111,7 @@ SECTIONS
   .barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
   __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start) >> 2;
-  
+
   __barebox_exitcalls_start = .;
   .barebox_exitcalls : { EXITCALLS }
   __barebox_exitcalls_end = .;
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index f0894a1..1f7f52c 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -108,11 +108,11 @@ SECTIONS
   .barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
   __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start)>>2;
-  
+
   __barebox_exitcalls_start = .;
   .barebox_exitcalls : { EXITCALLS }
   __barebox_exitcalls_end = .;
-  __exitcall_entries = (__barebox_exitcalls_end - __barebox_exitcalls_start)>>2;
+  __exitcall_entries = (__barebox_exitcalls_end - __barebox_exitcalls_start) >> 2;
 
   __usymtab_start = .;
   __usymtab : { BAREBOX_SYMS }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
