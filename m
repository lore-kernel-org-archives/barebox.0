Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfrt-0004eO-2l
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 14:44:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Oct 2019 16:44:25 +0200
Message-Id: <20191002144430.14946-3-s.hauer@pengutronix.de>
In-Reply-To: <20191002144430.14946-1-s.hauer@pengutronix.de>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] ppc: remove unused variables from linker scripts
To: Barebox List <barebox@lists.infradead.org>

__initcall_entries and __exitcall_entries are unused. Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/pcm030/barebox.lds.S | 2 --
 arch/ppc/mach-mpc85xx/barebox.lds.S  | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 3b8bf3c0d0..12b551e685 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -115,12 +115,10 @@ SECTIONS
   __barebox_initcalls_start = .;
   .barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
-  __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start) >> 2;
 
   __barebox_exitcalls_start = .;
   .barebox_exitcalls : { EXITCALLS }
   __barebox_exitcalls_end = .;
-  __exitcall_entries = (__barebox_exitcalls_end - __barebox_exitcalls_start) >> 2;
 
   __usymtab_start = .;
   __usymtab : { BAREBOX_SYMS }
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index 0001972831..30a1c571d7 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -112,12 +112,10 @@ SECTIONS
   __barebox_initcalls_start = .;
   .barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
-  __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start)>>2;
 
   __barebox_exitcalls_start = .;
   .barebox_exitcalls : { EXITCALLS }
   __barebox_exitcalls_end = .;
-  __exitcall_entries = (__barebox_exitcalls_end - __barebox_exitcalls_start) >> 2;
 
   __usymtab_start = .;
   __usymtab : { BAREBOX_SYMS }
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
