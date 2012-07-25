Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StwPd-0002mU-78
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 07:53:42 +0000
Date: Wed, 25 Jul 2012 09:53:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120725075337.GM30009@pengutronix.de>
References: <1343202453-16279-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343202453-16279-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/4] vsprintf: fix EXPORT_SYMBOL typo on simple_strtoull
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 25, 2012 at 09:47:30AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

I had the same patches locally already, but didn't come along posting
them. Applied all.

btw you'll need the following for using modules with data cache enabled.
I haven't posted it yet because using dma_* functions doesn't look right.
Maybe we need some flush_dcache_range and flush_icache_range functions

Sascha


From 23fda4644ca033f001f96eef86bd6a7c4349d18e Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Jul 2012 23:54:39 +0200
Subject: [PATCH] ARM module: flush caches

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/insmod.c |    2 ++
 common/module.c   |    7 ++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/commands/insmod.c b/commands/insmod.c
index f547e9d..da0bb47 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -21,6 +21,8 @@ static int do_insmod(int argc, char *argv[])
 	}
 
 	module = load_module(buf, len);
+	/* flush I-cache before jumping to the copied binary */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
 
 	free(buf);
 
diff --git a/common/module.c b/common/module.c
index c0ff0f2..af98422 100644
--- a/common/module.c
+++ b/common/module.c
@@ -25,6 +25,7 @@
 #include <xfuncs.h>
 #include <command.h>
 #include <fs.h>
+#include <dma.h>
 #include <kallsyms.h>
 #include <linux/list.h>
 
@@ -257,7 +258,7 @@ struct module * load_module(void *mod_image, unsigned long len)
 	   special cases for the architectures. */
 	layout_sections(module, ehdr, sechdrs, secstrings);
 
-	ptr = xzalloc(module->core_size);
+	ptr = dma_alloc(module->core_size);
 	module->module_core = ptr;
 
 	/* Transfer each section which specifies SHF_ALLOC */
@@ -310,6 +311,10 @@ struct module * load_module(void *mod_image, unsigned long len)
 		}
 	}
 
+#ifdef CONFIG_MMU
+	dma_flush_range((unsigned long)ptr,
+			(unsigned long)ptr + module->core_size);
+#endif
 	list_add_tail(&module->list, &module_list);
 
 	return module;
-- 
1.7.10.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
