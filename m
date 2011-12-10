Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RZMsc-0003AQ-8A
 for barebox@lists.infradead.org; Sat, 10 Dec 2011 13:22:18 +0000
Received: by eekc1 with SMTP id c1so1440495eek.36
 for <barebox@lists.infradead.org>; Sat, 10 Dec 2011 05:22:16 -0800 (PST)
From: franck.jullien@gmail.com
Date: Sat, 10 Dec 2011 14:22:20 +0100
Message-Id: <1323523340-28664-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] nios2: remove one "_" from etext an stext
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

common/memory.c now uses _etext and _stext. The nios2 linker
script defines __stext and __etext...

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/cpu/barebox.lds.S |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index 934eaf7..04bfdf8 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -41,7 +41,7 @@ SECTIONS
 	. = ALIGN(4);
 	.text      :
 	{
-		__stext = .;
+		_stext = .;
 		__text = .;
 		_text = .;
 		*(.text_entry)
@@ -68,7 +68,7 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	___usymtab_end = .;
 
-	__etext = .; /* End of text and rodata section */
+	_etext = .; /* End of text and rodata section */
 
 	/* INIT DATA sections - "Small" data (see the gcc -G option)
 	 * is always gp-relative. Here we make all init data sections
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
