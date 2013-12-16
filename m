Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x229.google.com ([2607:f8b0:400e:c02::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsWeQ-0000VR-DD
 for barebox@lists.infradead.org; Mon, 16 Dec 2013 11:47:55 +0000
Received: by mail-pd0-f169.google.com with SMTP id v10so5229089pde.14
 for <barebox@lists.infradead.org>; Mon, 16 Dec 2013 03:47:32 -0800 (PST)
From: u74147@gmail.com
Date: Mon, 16 Dec 2013 19:47:22 +0800
Message-Id: <1387194442-2607-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] Makefile: fix endless make when 'make barebox.s'
To: barebox@lists.infradead.org

From: Du Huanpeng <u74147@gmail.com>

add the same target barebox.s (with a lowercase 's')
to make both work with barebox.S and barebox.s.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 Makefile |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 5e17a49..d7b5d23 100644
--- a/Makefile
+++ b/Makefile
@@ -701,7 +701,7 @@ barebox.uimage: $(KBUILD_BINARY) FORCE
 	$(call if_changed,barebox_mkimage)
 
 ifdef CONFIG_X86
-barebox.S: barebox
+barebox.S barebox.s: barebox
 ifdef CONFIG_X86_HDBOOT
 	@echo "-------------------------------------------------" > barebox.S
 	@echo " * MBR content" >> barebox.S
@@ -723,7 +723,7 @@ endif
 	@echo " * Init Calls content" >> barebox.S
 	$(Q)$(OBJDUMP) -j .barebox_initcalls -d barebox >> barebox.S
 else
-barebox.S: barebox FORCE
+barebox.S barebox.s: barebox FORCE
 	$(call if_changed,disasm)
 endif
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
