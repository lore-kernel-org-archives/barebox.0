Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzOql-00043z-TM
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 13:02:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 24723A001D1
 for <barebox@lists.infradead.org>; Thu, 19 Nov 2015 14:02:12 +0100 (CET)
From: Jan Remmet <j.remmet@phytec.de>
Date: Thu, 19 Nov 2015 13:58:24 +0100
Message-Id: <1447937904-4637-3-git-send-email-j.remmet@phytec.de>
In-Reply-To: <1447937904-4637-1-git-send-email-j.remmet@phytec.de>
References: <1447937904-4637-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH 2/2] bootm: get file type before bootm_open_os_uimage
To: barebox@lists.infradead.org

Using a  multi uimage stored in nand didn't work. Only one open for the
bb file is allowed. The file type detection after bootm_open_os_uimage
will fail. bootm_open_initrd_uimage and bootm_open_oftree_uimage already
check if they can reuse data->os.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 common/bootm.c | 39 ++++++++++++++++++++++-----------------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index ec1758b..08125e7 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -415,6 +415,28 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data->initrd_file) {
+		initrd_type = file_name_detect_type(data->initrd_file);
+
+		if ((int)initrd_type < 0) {
+			printf("could not open %s: %s\n", data->initrd_file,
+					strerror(-initrd_type));
+			ret = (int)initrd_type;
+			goto err_out;
+		}
+	}
+
+	if (IS_ENABLED(CONFIG_OFTREE) && data->oftree_file) {
+		oftree_type = file_name_detect_type(data->oftree_file);
+
+		if ((int)oftree_type < 0) {
+			printf("could not open %s: %s\n", data->oftree_file,
+					strerror(-oftree_type));
+			ret = (int) oftree_type;
+			goto err_out;
+		}
+	}
+
 	if (os_type == filetype_uimage) {
 		ret = bootm_open_os_uimage(data);
 		if (ret) {
@@ -425,14 +447,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 	}
 
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data->initrd_file) {
-
-		initrd_type = file_name_detect_type(data->initrd_file);
-		if ((int)initrd_type < 0) {
-			printf("could not open %s: %s\n", data->initrd_file,
-					strerror(-initrd_type));
-			ret = (int)initrd_type;
-			goto err_out;
-		}
 		if (initrd_type == filetype_uimage) {
 			ret = bootm_open_initrd_uimage(data);
 			if (ret) {
@@ -452,19 +466,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	if (IS_ENABLED(CONFIG_OFTREE)) {
 		if (data->oftree_file) {
-			oftree_type = file_name_detect_type(data->oftree_file);
-
 			if (oftree_type == filetype_uimage)
 				ret = bootm_open_oftree_uimage(data);
 			if (oftree_type == filetype_oftree)
 				ret = bootm_open_oftree(data);
-			if ((int)oftree_type < 0) {
-				printf("could not open %s: %s\n",
-					data->oftree_file,
-					strerror(-oftree_type));
-				ret = (int) oftree_type;
-			}
-
 			if (ret)
 				goto err_out;
 		} else {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
