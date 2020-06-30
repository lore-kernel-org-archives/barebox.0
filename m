Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jq4NY-0007jG-OT
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 00:44:05 +0000
Received: by mail-qk1-x741.google.com with SMTP id j80so17117917qke.0
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2020 17:44:04 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Mon, 29 Jun 2020 20:38:33 -0400
Message-Id: <20200630003838.7745-4-dgienda125@gmail.com>
In-Reply-To: <20200630003838.7745-1-dgienda125@gmail.com>
References: <20200630003838.7745-1-dgienda125@gmail.com>
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
Subject: [PATCH v2 3/8] module: Fix adding module to list after layout
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

During load_module(), the 'this_module' section is relocated, but the
pointer to the module struct isn't updated to account account for the
move. Do so before adding the module to the module_list.

As a side effect of properly pointing to the relocated module struct, we
no longer need to manually search for and fixup the init_module symbol,
so remove that code.

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 common/module.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/common/module.c b/common/module.c
index 829c12000..5ace544e0 100644
--- a/common/module.c
+++ b/common/module.c
@@ -297,13 +297,8 @@ struct module * load_module(void *mod_image, unsigned long len)
 		}
 	}
 
-	for (i = 0; i < numsyms; i++) {
-		if (!strcmp(strtab + sym[i].st_name, MODULE_SYMBOL_PREFIX "init_module")) {
-			printf("found init_module() at 0x%08x\n", sym[i].st_value);
-			module->init = (void *)sym[i].st_value;
-		}
-	}
-
+	/* Module has been moved */
+	module = (void *)sechdrs[modindex].sh_addr;
 	list_add_tail(&module->list, &module_list);
 
 	return module;
@@ -311,8 +306,6 @@ struct module * load_module(void *mod_image, unsigned long len)
 cleanup:
 	if (ptr)
 		free(ptr);
-	if (module)
-		free(module);
 
 	return NULL;
 }
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
