Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwvGW-0001Yd-Um
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:39:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:39:44 +0100
Message-Id: <1299584385-6016-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
References: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] module: CONFIG_COMMAND does not exist anymore,
	remove ifdefs
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/module.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/common/module.c b/common/module.c
index 29f3eb7..c0ff0f2 100644
--- a/common/module.c
+++ b/common/module.c
@@ -294,7 +294,6 @@ struct module * load_module(void *mod_image, unsigned long len)
 	numsyms = sechdrs[symindex].sh_size / sizeof(Elf32_Sym);
 	sym = (void *)sechdrs[symindex].sh_addr;
 
-#ifdef CONFIG_COMMAND
 	cmdindex = find_sec(ehdr, sechdrs, secstrings, ".barebox_cmd");
 	if (cmdindex) {
 		struct command *cmd =(struct command *)sechdrs[cmdindex].sh_addr;
@@ -303,7 +302,6 @@ struct module * load_module(void *mod_image, unsigned long len)
 			cmd++;
 		}
 	}
-#endif
 
 	for (i = 0; i < numsyms; i++) {
 		if (!strcmp(strtab + sym[i].st_name, MODULE_SYMBOL_PREFIX "init_module")) {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
