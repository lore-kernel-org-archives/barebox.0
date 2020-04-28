Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTL1b-0006s4-1b
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:51:28 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 28 Apr 2020 09:50:58 +0200
Message-Id: <20200428075100.17565-6-cleger@kalray.eu>
In-Reply-To: <20200428075100.17565-1-cleger@kalray.eu>
References: <20200428075100.17565-1-cleger@kalray.eu>
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
Subject: [PATCH v3 5/7] common: bootm: add support for elf file loading
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

This will allows elf loader to directly have an elf file available. Thus
filetype_elf bootm handlers will be able to use this elf file directly.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/Kconfig  |  8 ++++++++
 common/bootm.c  | 33 +++++++++++++++++++++++++++++++++
 include/bootm.h |  3 +++
 3 files changed, 44 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 400c0553c..b28791060 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -597,6 +597,14 @@ config BOOTM_AIMAGE
 	help
 	  Support using Android Images.
 
+config BOOTM_ELF
+	bool
+	depends on BOOTM
+	select ELF
+	prompt "elf loading support"
+	help
+	  Add support to load elf file with bootm.
+
 config BOOTM_FITIMAGE
 	bool
 	prompt "FIT image support"
diff --git a/common/bootm.c b/common/bootm.c
index 299985678..488adcb22 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -143,6 +143,9 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 		return 0;
 	}
 
+	if (IS_ENABLED(CONFIG_ELF) && data->elf)
+		return elf_load(data->elf);
+
 	if (data->os_file) {
 		data->os_res = file_to_sdram(data->os_file, load_address);
 		if (!data->os_res)
@@ -470,6 +473,8 @@ int bootm_get_os_size(struct image_data *data)
 {
 	int ret;
 
+	if (data->elf)
+		return elf_get_mem_size(data->elf);
 	if (data->os)
 		return uimage_get_size(data->os, uimage_part_num(data->os_part));
 	if (data->os_fit)
@@ -517,6 +522,22 @@ static int bootm_open_os_uimage(struct image_data *data)
 	return 0;
 }
 
+static int bootm_open_elf(struct image_data *data)
+{
+	if (!IS_ENABLED(CONFIG_ELF))
+		return -ENOSYS;
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
@@ -651,6 +672,16 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
+	if (os_type == filetype_elf) {
+		ret = bootm_open_elf(data);
+		if (ret) {
+			printf("Loading ELF image failed with: %s\n",
+					strerror(-ret));
+			data->elf = NULL;
+			goto err_out;
+		}
+	}
+
 	if (bootm_data->appendroot) {
 		char *rootarg;
 
@@ -720,6 +751,8 @@ err_out:
 		uimage_close(data->initrd);
 	if (data->os)
 		uimage_close(data->os);
+	if (IS_ENABLED(CONFIG_ELF) && data->elf)
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
