Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTtHF-0001Z4-CS
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 11:49:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 12:49:32 +0100
Message-Id: <1351770573-30009-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351770573-30009-1-git-send-email-s.hauer@pengutronix.de>
References: <1351770573-30009-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] bootm: Add a define for the additional devicetree size
To: barebox@lists.infradead.org

The fixed devicetree may need more space than the original one.
We used to use 0x8000 here. Add a define for it to have the
space defined at a single place.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 20b49f0..d14ec2b 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -49,6 +49,11 @@
 
 static LIST_HEAD(handler_list);
 
+/*
+ * Additional oftree size for the fixed tree
+ */
+#define OFTREE_SIZE_INCREASE	0x8000
+
 int register_image_handler(struct image_handler *handler)
 {
 	list_add_tail(&handler->list, &handler_list);
@@ -184,12 +189,14 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 				file_type_to_string(ft));
 	}
 
-	fixfdt = xmemalign(4096, size + 0x8000);
+	fixfdt = xmemalign(4096, size + OFTREE_SIZE_INCREASE);
 	memcpy(fixfdt, fdt, size);
 
+
+	ret = fdt_open_into(fdt, fixfdt, size + OFTREE_SIZE_INCREASE);
+
 	free(fdt);
 
-	ret = fdt_open_into(fixfdt, fixfdt, size + 0x8000);
 	if (ret) {
 		printf("unable to parse %s\n", oftree);
 		return -ENODEV;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
