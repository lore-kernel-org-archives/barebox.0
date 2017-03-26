Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5C-00051F-MM
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:09 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 560FDB970E
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:44:53 +0200
Message-Id: <1490496304-30850-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/13] boot_verify: use a new error ESECVIOLATION
To: barebox@lists.infradead.org

so we can indentify it correctly

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/bootm.c              |  7 ++++---
 common/efi/efi.c            |  2 +-
 common/image-fit.c          | 12 ++++++------
 include/asm-generic/errno.h |  1 +
 4 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 64c933b3c..53311ab1c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -541,9 +541,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 		data->oftree = NULL;
 		data->oftree_file = NULL;
 		data->initrd_file = NULL;
-		if (os_type != filetype_oftree) {
-			printf("Signed boot and image is no FIT image, aborting\n");
-			ret = -EINVAL;
+		if (!handler->is_secure_supported) {
+			printf("Signed boot and image %s does not support it",
+				handler->name);
+			ret = -ESECVIOLATION;
 			goto err_out;
 		}
 	}
diff --git a/common/efi/efi.c b/common/efi/efi.c
index 05c58250f..19ee96411 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -244,7 +244,7 @@ int efi_errno(efi_status_t err)
 	case EFI_TFTP_ERROR: ret = EINVAL; break;
 	case EFI_PROTOCOL_ERROR: ret = EPROTO; break;
 	case EFI_INCOMPATIBLE_VERSION: ret = EINVAL; break;
-	case EFI_SECURITY_VIOLATION: ret = EINVAL; break;
+	case EFI_SECURITY_VIOLATION: ret = ESECVIOLATION; break;
 	case EFI_CRC_ERROR: ret = EINVAL; break;
 	case EFI_END_OF_MEDIA: ret = EINVAL; break;
 	case EFI_END_OF_FILE: ret = EINVAL; break;
diff --git a/common/image-fit.c b/common/image-fit.c
index 5c014d66b..5750199c3 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -353,23 +353,23 @@ static int fit_verify_hash(struct device_node *hash, const void *data, int data_
 	value_read = of_get_property(hash, "value", &hash_len);
 	if (!value_read) {
 		pr_err("%s: \"value\" property not found\n", hash->full_name);
-		return -EINVAL;
+		return -ESECVIOLATION;
 	}
 
 	if (of_property_read_string(hash, "algo", &algo)) {
 		pr_err("%s: \"algo\" property not found\n", hash->full_name);
-		return -EINVAL;
+		return -ESECVIOLATION;
 	}
 
 	d = digest_alloc(algo);
 	if (!d) {
 		pr_err("%s: unsupported algo %s\n", hash->full_name, algo);
-		return -EINVAL;
+		return -ESECVIOLATION;
 	}
 
 	if (hash_len != digest_length(d)) {
 		pr_err("%s: invalid hash length %d\n", hash->full_name, hash_len);
-		ret = -EINVAL;
+		ret = -ESECVIOLATION;
 		goto err_digest_free;
 	}
 
@@ -381,7 +381,7 @@ static int fit_verify_hash(struct device_node *hash, const void *data, int data_
 
 	if (memcmp(value_read, value_calc, hash_len)) {
 		pr_info("%s: hash BAD\n", hash->full_name);
-		ret =  -EBADMSG;
+		ret =  -ESECVIOLATION;
 	} else {
 		pr_info("%s: hash OK\n", hash->full_name);
 		ret = 0;
@@ -431,7 +431,7 @@ static int fit_open_image(struct fit_handle *handle, const char *unit, const voi
 		if (handle->verify == BOOTM_VERIFY_AVAILABLE)
 			ret = 0;
 		else
-			ret = -EINVAL;
+			ret = -ESECVIOLATION;
 		for_each_child_of_node(image, hash) {
 			if (handle->verbose)
 				of_print_nodes(hash, 0);
diff --git a/include/asm-generic/errno.h b/include/asm-generic/errno.h
index 7d99a9537..45b2a2065 100644
--- a/include/asm-generic/errno.h
+++ b/include/asm-generic/errno.h
@@ -133,6 +133,7 @@
 #define	EKEYREJECTED	129	/* Key was rejected by service */
 
 /* Should never be seen by user programs */
+#define ESECVIOLATION	511
 #define ERESTARTSYS	512
 #define ERESTARTNOINTR	513
 #define ERESTARTNOHAND	514	/* restart if no handler.. */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
