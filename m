Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1UCS5f-0004Zb-KH
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:34 +0100
Message-Id: <1362390820-10333-32-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 31/37] ARM: bootm: rework concatenated oftree
To: barebox@lists.infradead.org

Without compiled in devicetree support we used to copy the
concatenated devicetree directly behind the zImage. This is
unnecessary, even if we do not have devicetree support we can
copy the devicetree whereever we like and pass the kernel a
pointer to it. This makes the code a bit easier.
While at it, add the missing free calls in the error case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c |   36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 234f3e0..2a7d0f5 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -131,8 +131,6 @@ struct zimage_header {
 static int do_bootz_linux_fdt(int fd, struct image_data *data)
 {
 	struct fdt_header __header, *header;
-	struct resource *r = data->os_res;
-	struct resource *of_res = data->os_res;
 	void *oftree;
 	int ret;
 
@@ -151,21 +149,10 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 
 	end = be32_to_cpu(header->totalsize);
 
-	if (IS_BUILTIN(CONFIG_OFTREE)) {
-		oftree = malloc(end + 0x8000);
-		if (!oftree) {
-			perror("zImage: oftree malloc");
-			return -ENOMEM;
-		}
-	} else {
-
-		of_res = request_sdram_region("oftree", r->start + resource_size(r), end);
-		if (!of_res) {
-			perror("zImage: oftree request_sdram_region");
-			return -ENOMEM;
-		}
-
-		oftree = (void*)of_res->start;
+	oftree = malloc(end + 0x8000);
+	if (!oftree) {
+		perror("zImage: oftree malloc");
+		return -ENOMEM;
 	}
 
 	memcpy(oftree, header, sizeof(*header));
@@ -174,10 +161,11 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 
 	ret = read_full(fd, oftree + sizeof(*header), end);
 	if (ret < 0)
-		return ret;
+		goto err_free;
 	if (ret < end) {
 		printf("premature end of image\n");
-		return -EIO;
+		ret = -EIO;
+		goto err_free;
 	}
 
 	if (IS_BUILTIN(CONFIG_OFTREE)) {
@@ -186,15 +174,23 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 		node = of_unflatten_dtb(NULL, oftree);
 		if (!node) {
 			pr_err("unable to unflatten devicetree\n");
-			return -EINVAL;
+			ret = -EINVAL;
+			goto err_free;
 		}
 
 		data->oftree = of_get_fixed_tree(node);
+	} else {
+		data->oftree = oftree;
 	}
 
 	pr_info("zImage: concatenated oftree detected\n");
 
 	return 0;
+
+err_free:
+	free(oftree);
+
+	return ret;
 }
 
 static int do_bootz_linux(struct image_data *data)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
