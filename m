Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebB-0000qZ-6c
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:29 +0100
Message-Id: <1357910676-4231-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/16] of: remove unused barebox_fdt
To: barebox@lists.infradead.org

barebox_fdt should once become the pointer to the barebox internal
devicetree. Since barebox has its own internal devicetree format
this was never used. remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c |    9 +--------
 common/oftree.c   |    2 --
 include/of.h      |    2 --
 3 files changed, 1 insertion(+), 12 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index b9d3c7b..17af9eb 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -62,8 +62,6 @@ static int do_oftree(int argc, char *argv[])
 			}
 			break;
 		case 'f':
-			free(barebox_fdt);
-			barebox_fdt = NULL;
 			return 0;
 		case 'n':
 			node = optarg;
@@ -88,12 +86,7 @@ static int do_oftree(int argc, char *argv[])
 			fdt_print(fdt, node);
 			free(fdt);
 		} else {
-			if (barebox_fdt) {
-				fdt_print(barebox_fdt, node);
-				return 0;
-			} else {
-				return 1;
-			}
+			return 1;
 		}
 		return 0;
 	}
diff --git a/common/oftree.c b/common/oftree.c
index 0dd6d5c..d699cb6 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -246,8 +246,6 @@ int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
 	return nodeoffset;
 }
 
-struct fdt_header *barebox_fdt;
-
 static int of_fixup_bootargs(struct fdt_header *fdt)
 {
 	int nodeoffset;
diff --git a/include/of.h b/include/of.h
index 80ec447..e1a778d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -5,8 +5,6 @@
 #include <errno.h>
 #include <asm/byteorder.h>
 
-extern struct fdt_header *barebox_fdt;
-
 int fdt_print(struct fdt_header *working_fdt, const char *pathp);
 
 struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
