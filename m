Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHrSr-0002rR-Mi
 for barebox@lists.infradead.org; Wed, 11 Apr 2012 06:55:38 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 70063FF8CBB
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2012 08:56:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Apr 2012 08:38:18 +0200
Message-Id: <1334126298-29923-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH v2] arm: fix zImage support when a oftree is concatenated
To: barebox@lists.infradead.org

When a oftree is concatenated,the zImage is bigger than the size specified in
the zImage header. Detect it and copy it too.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c |   49 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 49 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index defc89b..dc379d8 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -123,6 +123,51 @@ struct zimage_header {
 
 #define ZIMAGE_MAGIC 0x016F2818
 
+static int do_bootz_linux_fdt(int fd, struct image_data *data)
+{
+	struct fdt_header __header, *header;
+	struct resource *r = data->os_res;
+	struct resource *of_res = data->os_res;
+	void *oftree;
+	int ret;
+
+	u32 end;
+
+	header = &__header;
+	ret = read(fd, header, sizeof(*header));
+	if (ret < sizeof(*header))
+		return ret;
+
+	if (file_detect_type(header) != filetype_oftree)
+		return -ENXIO;
+
+	end = be32_to_cpu(header->totalsize);
+
+	of_res = request_sdram_region("oftree", r->start + r->size, end);
+	if (!of_res) {
+		perror("zImage: oftree request_sdram_region");
+		return -ENOMEM;
+	}
+
+	oftree = (void*)of_res->start;
+
+	memcpy(oftree, header, sizeof(*header));
+
+	end -= sizeof(*header);
+
+	ret = read_full(fd, oftree + sizeof(*header), end);
+	if (ret < 0)
+		return ret;
+	if (ret < end) {
+		printf("premature end of image\n");
+		return -EIO;
+	}
+
+	pr_info("zImage: concatenated oftree detected\n");
+
+	return 0;
+}
+
 static int do_bootz_linux(struct image_data *data)
 {
 	int fd, ret, swap = 0;
@@ -196,6 +241,10 @@ static int do_bootz_linux(struct image_data *data)
 			*(u32 *)ptr = swab32(*(u32 *)ptr);
 	}
 
+	ret = do_bootz_linux_fdt(fd, data);
+	if (ret && ret != -ENXIO)
+		return ret;
+
 	return __do_bootm_linux(data, swap);
 
 err_out:
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
