Delivery-date: Thu, 18 Dec 2025 12:39:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMM-00CoSJ-1R
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:39:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLk-0001bN-Ly
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:39:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4iXFU/Lu8a1A/+XIr6Sx73RVessdkvxWy5O/6N8VxbA=; b=CRdVgmE537bxE7c8GegbrZ9JDt
	pH1+fM99li4tp79IxR9I51MGq6p8eyi6SLp8734ulaOEOVsv3cTGhg1ILpkAPTSMHJr8Frvti3bBP
	FWPZGZoBsaHeHVuFgq9Ma6dhF6+b9Uw2Anlq4wfwD3FjSPZQUP22XIzbRmZ3XgXGa7eD+vHhLc6SK
	A6eq5tf77KcTg8SoP9QP5D/Srfomfo+R8bsxUeDtEc+pWYxVz0VVFRzU20dERzgVVz99neHeiWGyR
	Jw8C7wRs9hdPoPqEdLxFUhhNJg1gsoKNRGcXu7n+1CJK9PeW//+mAcm7lVJfR56OVt1cr4+qyZb6t
	UyxVf+7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJo-00000008KgF-3Gu9;
	Thu, 18 Dec 2025 11:37:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJR-00000008KGU-1S14
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJP-0008Hj-Bl; Thu, 18 Dec 2025 12:36:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006Gx0-2p;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-2oow;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:54 +0100
Message-ID: <20251218111242.1527495-35-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033653_434266_6BE95ABE 
X-CRM114-Status: GOOD (  17.25  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 34/54] efi: loader: support formatting only first device path node to text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use in the follow-up efi_device_path_to_text, teach
device_path_to_str_buf() to support formatting the first node only.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/efi_handle_dump.c |  2 +-
 drivers/efi/efi-device.c   |  2 +-
 efi/devicepath.c           | 17 +++++++++++------
 efi/loader/devicepath.c    |  4 ++--
 efi/payload/init.c         |  2 +-
 include/efi/devicepath.h   |  5 +++--
 lib/vsprintf.c             |  2 +-
 7 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index c5c6b6bbc3bc..183a7d4bc3a6 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -28,7 +28,7 @@ static void efi_devpath(struct efi_boot_services *bs,
 	if (EFI_ERROR(efiret))
 		return;
 
-	dev_path_str = device_path_to_str(devpath);
+	dev_path_str = device_path_to_str(devpath, true);
 	if (dev_path_str) {
 		printf("  %s: \n  %s\n", desc, dev_path_str);
 		free(dev_path_str);
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 6bf43cebea8d..490faff6f53d 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -196,7 +196,7 @@ static int efi_register_device(struct efi_device *efidev)
 	if (ret)
 		return ret;
 
-	dev_path_str = device_path_to_str(efidev->devpath);
+	dev_path_str = device_path_to_str(efidev->devpath, true);
 	if (dev_path_str) {
 		dev_add_param_fixed(&efidev->dev, "devpath", "%s", dev_path_str);
 		free(dev_path_str);
diff --git a/efi/devicepath.c b/efi/devicepath.c
index e4170d701e47..8298073572ae 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -674,7 +674,7 @@ struct {
 };
 
 static void __device_path_to_str(struct string *str,
-				 const struct efi_device_path *dev_path)
+				 const struct efi_device_path *dev_path, bool all_nodes)
 {
 	const struct efi_device_path *dev_path_node;
 	void (*dump_node) (struct string *, const void *);
@@ -702,6 +702,9 @@ static void __device_path_to_str(struct string *str,
 
 		dump_node(str, dev_path_node);
 
+		if (!all_nodes)
+			return;
+
 		dev_path_node = next_device_path_node(dev_path_node);
 	}
 }
@@ -712,19 +715,20 @@ static void __device_path_to_str(struct string *str,
  * @dev_path:	The EFI device path to format
  * @buf:	The buffer to format into or optionally NULL if @len is zero
  * @len:	The number of bytes that may be written into @buf
+ * @all_nodes:  Whether to format the whole path or only the first node
  * Return:	total number of bytes that are required to store the formatted
  *		result, excluding the terminating NUL byte, which is always
  *		written.
  */
 size_t device_path_to_str_buf(const struct efi_device_path *dev_path,
-			      char *buf, size_t len)
+			      char *buf, size_t len, bool all_nodes)
 {
 	struct string str = {
 		.str = buf,
 		.allocated = len,
 	};
 
-	__device_path_to_str(&str, dev_path);
+	__device_path_to_str(&str, dev_path, all_nodes);
 
 	return str.used;
 }
@@ -733,20 +737,21 @@ size_t device_path_to_str_buf(const struct efi_device_path *dev_path,
  * device_path_to_str() - formats a device path into a newly allocated buffer
  *
  * @dev_path:	The EFI device path to format
+ * @all_nodes:  Whether to format the whole path or only the first node
  * Return:	A pointer to the nul-terminated formatted device path.
  */
-char *device_path_to_str(const struct efi_device_path *dev_path)
+char *device_path_to_str(const struct efi_device_path *dev_path, bool all_nodes)
 {
 	void *buf;
 	size_t size;
 
-	size = device_path_to_str_buf(dev_path, NULL, 0);
+	size = device_path_to_str_buf(dev_path, NULL, 0, all_nodes);
 
 	buf = malloc(size + 1);
 	if (!buf)
 		return NULL;
 
-	device_path_to_str_buf(dev_path, buf, size + 1);
+	device_path_to_str_buf(dev_path, buf, size + 1, all_nodes);
 
 	return buf;
 }
diff --git a/efi/loader/devicepath.c b/efi/loader/devicepath.c
index cd783477ef3e..17c659e4c5d8 100644
--- a/efi/loader/devicepath.c
+++ b/efi/loader/devicepath.c
@@ -1050,7 +1050,7 @@ struct efi_device_path *efi_dp_from_file(int dirfd, const char *path)
 /**
  * efi_dp_from_file_tostr() - format barebox VFS path as EFI device path string
  *
- * Convert any barebox virtual file system path to an UEFI device path
+ * Convert any barebox virtual file system path to a full UEFI device path
  * and then return its full string representation.
  *
  * @dirfd:	directory fd
@@ -1065,7 +1065,7 @@ char *efi_dp_from_file_tostr(int dirfd, const char *path)
 
 	dp = efi_dp_from_file(dirfd, path);
 	if (dp)
-		dpstr = device_path_to_str(dp);
+		dpstr = device_path_to_str(dp, true);
 
 	efi_free_pool(dp);
 
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 7e361bab8ab3..d8a4410f22e6 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -94,7 +94,7 @@ static struct efi_boot *efi_get_boot(int num)
 
 	boot->path = memdup(ptr, boot->file_path_len);
 
-	printf("path: %s\n", device_path_to_str(boot->path));
+	printf("path: %s\n", device_path_to_str(boot->path, true));
 
 	return boot;
 }
diff --git a/include/efi/devicepath.h b/include/efi/devicepath.h
index 405f4446310e..125f114bd846 100644
--- a/include/efi/devicepath.h
+++ b/include/efi/devicepath.h
@@ -397,8 +397,9 @@ struct efi_device_path_bbs_bbs {
 #define DEVICE_PATH_END_LENGTH			(sizeof(struct efi_device_path))
 
 const struct efi_device_path *device_path_from_handle(efi_handle_t handle);
-char *device_path_to_str(const struct efi_device_path *dev_path);
-size_t device_path_to_str_buf(const struct efi_device_path *dev_path, char buf[], size_t size);
+char *device_path_to_str(const struct efi_device_path *dev_path, bool all_nodes);
+size_t device_path_to_str_buf(const struct efi_device_path *dev_path,
+			      char buf[], size_t size, bool all_nodes);
 u8 device_path_to_type(const struct efi_device_path *dev_path);
 u8 device_path_to_subtype(const struct efi_device_path *dev_path);
 char *device_path_to_partuuid(const struct efi_device_path *dev_path);
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 5ef4a075d0f6..6c9dae467496 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -395,7 +395,7 @@ static char *device_path_string(char *buf, const char *end, const struct efi_dev
 	if (!dp)
 		return string(buf, end, NULL, field_width, precision, flags);
 
-	return buf + device_path_to_str_buf(dp, buf, end - buf);
+	return buf + device_path_to_str_buf(dp, buf, end - buf, true);
 }
 
 static noinline_for_stack
-- 
2.47.3



