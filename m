Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebJ-0000zI-4H
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:27 +0100
Message-Id: <1357910676-4231-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/16] of: rename of_parse_dtb to of_unflatten_dtb
To: barebox@lists.infradead.org

The process of unflatten the device tree is known from the kernel,
so rename the function, because that's what it does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c |    2 +-
 drivers/of/base.c |    2 +-
 include/of.h      |    1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 7404db5..b9d3c7b 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -108,7 +108,7 @@ static int do_oftree(int argc, char *argv[])
 			return 1;
 		}
 
-		ret = of_parse_dtb(fdt);
+		ret = of_unflatten_dtb(fdt);
 		if (ret) {
 			printf("parse oftree: %s\n", strerror(-ret));
 			return 1;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 69fbf9a..cb1989d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -833,7 +833,7 @@ int of_probe(void)
  * Parse a flat device tree binary blob and store it in the barebox
  * internal tree format,
  */
-int of_parse_dtb(struct fdt_header *fdt)
+int of_unflatten_dtb(struct fdt_header *fdt)
 {
 	const void *nodep;	/* property node pointer */
 	int  nodeoffset;	/* node offset from libfdt */
diff --git a/include/of.h b/include/of.h
index 4054917..7682503 100644
--- a/include/of.h
+++ b/include/of.h
@@ -108,6 +108,7 @@ void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 void of_free(struct device_node *node);
+int of_unflatten_dtb(struct fdt_header *fdt);
 
 int of_property_read_string(struct device_node *np, const char *propname,
 				const char **out_string);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
