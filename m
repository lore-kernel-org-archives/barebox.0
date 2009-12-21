Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMh2w-0006yP-HB
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 12:07:34 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMh2v-0005jn-69
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 07:07:29 -0500
Date: Mon, 21 Dec 2009 07:07:04 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210703550.14660@localhost>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Remove/adjust erroneous references to CONFIG_MODULE.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


The correct config variable is CONFIG_MODULES, so tweak any references
to the incorrect CONFIG_MODULE.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  can someone verify that this looks correct, as there are only three
references to CONFIG_MODULE throughout the tree:

  * a superfluous one in common/Makefile that's already covered by
    a test to CONFIG_MODULES
  * a test in arch/ppc/Makefile
  * a comment in include/module.h

so i want to make sure i tweaked all that appropriately.


diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 2c9c535..c24d3c3 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -17,7 +17,7 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
 CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE) -P

 # Add cleanup flags
-ifndef CONFIG_MODULE
+ifndef CONFIG_MODULES
 CPPFLAGS += -fdata-sections -ffunction-sections
 endif

diff --git a/common/Makefile b/common/Makefile
index d7a024b..0c075a9 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -2,7 +2,6 @@ obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
 obj-$(CONFIG_OF_FLAT_TREE)	+= ft_build.o
-obj-$(CONFIG_MODULE)		+= module.o
 obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
diff --git a/include/module.h b/include/module.h
index 03b226a..9d0e803 100644
--- a/include/module.h
+++ b/include/module.h
@@ -71,7 +71,7 @@ int apply_relocate_add(Elf_Shdr *sechdrs,
 		       struct module *mod);
 #else
 #define EXPORT_SYMBOL(sym)
-#endif /* CONFIG_MODULE */
+#endif /* CONFIG_MODULES */

 extern struct list_head module_list;


========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
