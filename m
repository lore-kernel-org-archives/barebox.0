Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKQtb-0002mk-33
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 09:09:56 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 18 Apr 2012 11:09:20 +0200
Message-Id: <1334740160-19918-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1334740160-19918-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1334740160-19918-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] bootm: Align oftree
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Arm needs 64-Bit alignment of the oftree as mentioned in the documentation
Documentation/arm/Booting.

Other architectures may need a bigger alignment so align to 4K.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/bootm.c |   16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 4f4cbb3..c89a3cc 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -150,7 +150,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 static int bootm_open_oftree(struct image_data *data, char *oftree, int num)
 {
 	enum filetype ft;
-	struct fdt_header *fdt;
+	struct fdt_header *fdt, *fixfdt;
 	int ret;
 	size_t size;
 
@@ -201,21 +201,25 @@ static int bootm_open_oftree(struct image_data *data, char *oftree, int num)
 				file_type_to_string(ft));
 	}
 
-	fdt = xrealloc(fdt, size + 0x8000);
-	ret = fdt_open_into(fdt, fdt, size + 0x8000);
+	fixfdt = xmemalign(4096, size + 0x8000);
+	memcpy(fixfdt, fdt, size);
+
+	free(fdt);
+
+	ret = fdt_open_into(fixfdt, fixfdt, size + 0x8000);
 	if (ret) {
 		printf("unable to parse %s\n", oftree);
 		return -ENODEV;
 	}
 
-	ret = of_fix_tree(fdt);
+	ret = of_fix_tree(fixfdt);
 	if (ret)
 		return ret;
 
 	if (bootm_verbose(data) > 1)
-		fdt_print(fdt, "/");
+		fdt_print(fixfdt, "/");
 
-	data->oftree = fdt;
+	data->oftree = fixfdt;
 
 	return ret;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
