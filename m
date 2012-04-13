Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIdtW-0005R1-Vc
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 10:38:23 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 97E5BFF9361
 for <barebox@lists.infradead.org>; Fri, 13 Apr 2012 12:31:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 13 Apr 2012 12:12:26 +0200
Message-Id: <1334311946-13962-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120413101046.GF11079@game.jcrosoft.org>
References: <20120413101046.GF11079@game.jcrosoft.org>
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
Subject: [PATCH 2/2 v3] arm: bootm: zImage allow to use the concataned oftree
To: barebox@lists.infradead.org

This will allow to update it with fixup if the oftree support is builtin.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:

	use the oftree only if oftree is enabled

Best Regards,
J.
 arch/arm/lib/bootm.c |   32 ++++++++++++++++++++++++++------
 1 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 813927a..26053dc 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -14,6 +14,7 @@
 #include <sizes.h>
 #include <libbb.h>
 #include <magicvar.h>
+#include <libfdt.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -144,13 +145,22 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 
 	end = be32_to_cpu(header->totalsize);
 
-	of_res = request_sdram_region("oftree", r->start + r->size, end);
-	if (!of_res) {
-		perror("zImage: oftree request_sdram_region");
-		return -ENOMEM;
-	}
+	if (IS_BUILTIN(CONFIG_OFTREE)) {
+		oftree = malloc(end + 0x8000);
+		if (!oftree) {
+			perror("zImage: oftree malloc");
+			return -ENOMEM;
+		}
+	} else {
 
-	oftree = (void*)of_res->start;
+		of_res = request_sdram_region("oftree", r->start + r->size, end);
+		if (!of_res) {
+			perror("zImage: oftree request_sdram_region");
+			return -ENOMEM;
+		}
+
+		oftree = (void*)of_res->start;
+	}
 
 	memcpy(oftree, header, sizeof(*header));
 
@@ -164,6 +174,16 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 		return -EIO;
 	}
 
+	if (IS_BUILTIN(CONFIG_OFTREE)) {
+		fdt_open_into(oftree, oftree, end + 0x8000);
+
+		ret = of_fix_tree(oftree);
+		if (ret)
+			return ret;
+
+		data->oftree = oftree;
+	}
+
 	pr_info("zImage: concatenated oftree detected\n");
 
 	return 0;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
