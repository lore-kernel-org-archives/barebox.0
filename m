Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDRh-0007Hx-Vp
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 11:21:39 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 22 Apr 2020 13:21:18 +0200
Message-Id: <20200422112119.23181-6-cleger@kalray.eu>
In-Reply-To: <20200422112119.23181-1-cleger@kalray.eu>
References: <20200422112119.23181-1-cleger@kalray.eu>
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
Subject: [PATCH 5/6] common: bootm: add support for elf file loading
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

This will allows elf loader to directly have an elf file available. Thus
filetype_elf bootm handlers will be able to use this elf file directly.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/bootm.c  | 27 +++++++++++++++++++++++++++
 include/bootm.h |  3 +++
 2 files changed, 30 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 366f31455..015d90f3c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -455,6 +455,8 @@ int bootm_get_os_size(struct image_data *data)
 {
 	int ret;
 
+	if (data->elf)
+		return data->elf->high_addr - data->elf->low_addr;
 	if (data->os)
 		return uimage_get_size(data->os, uimage_part_num(data->os_part));
 	if (data->os_fit)
@@ -502,6 +504,20 @@ static int bootm_open_os_uimage(struct image_data *data)
 	return 0;
 }
 
+static int bootm_open_elf(struct image_data *data)
+{
+
+	data->elf = elf_open(data->os_file);
+	if (IS_ERR(data->elf))
+		return PTR_ERR(data->elf);
+
+	printf("Entry Point:  %08llx\n", data->elf->entry);
+
+	data->os_address = data->elf->entry;
+
+	return 0;
+}
+
 static void bootm_print_info(struct image_data *data)
 {
 	if (data->os_res)
@@ -636,6 +652,15 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
+	if (os_type == filetype_elf) {
+		ret = bootm_open_elf(data);
+		if (ret) {
+			printf("Loading ELF image failed with: %s\n",
+					strerror(-ret));
+			goto err_out;
+		}
+	}
+
 	if (bootm_data->appendroot) {
 		char *rootarg;
 
@@ -705,6 +730,8 @@ err_out:
 		uimage_close(data->initrd);
 	if (data->os)
 		uimage_close(data->os);
+	if (data->elf)
+		elf_close(data->elf);
 	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit)
 		fit_close(data->os_fit);
 	if (data->of_root_node && data->of_root_node != of_get_root_node())
diff --git a/include/bootm.h b/include/bootm.h
index 7782de7a4..ef5148f31 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -46,6 +46,9 @@ struct image_data {
 	/* if os is an uImage this will be provided */
 	struct uimage_handle *os;
 
+	/* if os is an elf file this will be provided */
+	struct elf_image *elf;
+
 	/* if os is a FIT image this will be provided */
 	struct fit_handle *os_fit;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
