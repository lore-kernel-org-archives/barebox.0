Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHtsl-0004mt-Bz
 for barebox@lists.infradead.org; Wed, 11 Apr 2012 09:30:32 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6074EFF914C
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2012 11:31:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Apr 2012 11:13:08 +0200
Message-Id: <1334135588-26117-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1334126298-29923-1-git-send-email-plagnioj@jcrosoft.com>
References: <1334126298-29923-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] arm: bootm: zImage allow to use the concataned oftree
To: barebox@lists.infradead.org

This will allow to update it with fixup.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c |   19 ++++++++++++-------
 1 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 813927a..213f136 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -14,6 +14,7 @@
 #include <sizes.h>
 #include <libbb.h>
 #include <magicvar.h>
+#include <libfdt.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -127,8 +128,6 @@ struct zimage_header {
 static int do_bootz_linux_fdt(int fd, struct image_data *data)
 {
 	struct fdt_header __header, *header;
-	struct resource *r = data->os_res;
-	struct resource *of_res = data->os_res;
 	void *oftree;
 	int ret;
 
@@ -144,14 +143,12 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 
 	end = be32_to_cpu(header->totalsize);
 
-	of_res = request_sdram_region("oftree", r->start + r->size, end);
-	if (!of_res) {
-		perror("zImage: oftree request_sdram_region");
+	oftree = malloc(end + 0x8000);
+	if (!oftree) {
+		perror("zImage: oftree malloc");
 		return -ENOMEM;
 	}
 
-	oftree = (void*)of_res->start;
-
 	memcpy(oftree, header, sizeof(*header));
 
 	end -= sizeof(*header);
@@ -164,6 +161,14 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 		return -EIO;
 	}
 
+	fdt_open_into(oftree, oftree, end + 0x8000);
+
+	ret = of_fix_tree(oftree);
+	if (ret)
+		return ret;
+
+	data->oftree = oftree;
+
 	pr_info("zImage: concatenated oftree detected\n");
 
 	return 0;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
