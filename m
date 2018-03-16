Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qN-CP
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:46 +0100
Message-Id: <20180316125354.23462-71-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 70/78] bootm: provide handlers the start of the OS image
To: Barebox List <barebox@lists.infradead.org>

The bootm code needs to read the beginning of the OS image in order to
determine the filetype. If it does so already, then we can provide the
handlers the buffer. This can help the handlers to find some image
metadata before loading the full image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c  | 10 +++++++++-
 include/bootm.h |  7 +++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 3e48ca1d88..5ff6683fe7 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -529,6 +529,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	struct image_handler *handler;
 	int ret;
 	enum filetype os_type;
+	size_t size;
 
 	if (!bootm_data->os_file) {
 		printf("no image given\n");
@@ -548,7 +549,13 @@ int bootm_boot(struct bootm_data *bootm_data)
 	data->os_address = bootm_data->os_address;
 	data->os_entry = bootm_data->os_entry;
 
-	os_type = file_name_detect_type(data->os_file);
+	ret = read_file_2(data->os_file, &size, &data->os_header, PAGE_SIZE);
+	if (ret < 0 && ret != -EFBIG)
+		goto err_out;
+	if (size < PAGE_SIZE)
+		goto err_out;
+
+	os_type = file_detect_type(data->os_header, PAGE_SIZE);
 	if ((int)os_type < 0) {
 		printf("could not open %s: %s\n", data->os_file,
 				strerror(-os_type));
@@ -674,6 +681,7 @@ err_out:
 		of_delete_node(data->of_root_node);
 
 	globalvar_remove("linux.bootargs.bootm.appendroot");
+	free(data->os_header);
 	free(data->os_file);
 	free(data->oftree_file);
 	free(data->initrd_file);
diff --git a/include/bootm.h b/include/bootm.h
index 35c18dc276..62951d6058 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -81,6 +81,13 @@ struct image_data {
 	struct fdt_header *oftree;
 	struct resource *oftree_res;
 
+	/*
+	 * The first PAGE_SIZE bytes of the OS image. Can be used by the image
+	 * handlers to analyze the OS image before actually loading the bulk of
+	 * it.
+	 */
+	void *os_header;
+
 	enum bootm_verify verify;
 	int verbose;
 	int force;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
