Delivery-date: Mon, 22 Nov 2021 09:53:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp55A-0003dd-NO
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:53:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp558-0001sx-V5
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:53:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGAKwkn3HCm6r5ZCskvt+Ra0CnAC5kH0I/usoIQ1RLM=; b=Bev0hVIaLIkrK6
	0Su1pjC6RxZyJpTBr2o4CNMrBjoXCR8V6L1mhoZBb5Kep12CVChi9E5rtzFTRAjtCFH6XgG9PVzvL
	ignpbGJtcYyCtjBLV1AeehuO7Frp5pYzj0em922d4hfI8y7S17/jTb6Hp14y4euFwOiM4zmCU1E0a
	RaxEiHtEGhA1ME6v7t1xI1S099AsPVpEoR5Zca5rak/p7bNGrkbFMBZeDWPqmzhpqUZ3OCtyy2rr9
	tfEPVIDAYCF4nuGrW2qOlumfuO9OYFrF8ooe60J6U3SoUFxe7r6OZqTH0/DBiuekbGhJdOPNDGzPa
	8PEgoAXd658mmVavIPjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp53k-00FNpB-5g; Mon, 22 Nov 2021 08:52:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5L-O9
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wP-4Y; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atf8-Iv; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:16 +0100
Message-Id: <20211122084732.2597109-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004746_893457_7FB96606 
X-CRM114-Status: GOOD (  18.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/30] efi: centralize efivarfs_parse_filename
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Turning an EFI varfs filename into its components will be useful for the
EFI loader as well, so factor that out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/Makefile          |   2 +-
 common/efi/efivar-filename.c | 116 +++++++++++++++++++++++++++++++++++
 fs/efivarfs.c                |  76 -----------------------
 include/efi/efi-util.h       |   4 ++
 4 files changed, 121 insertions(+), 77 deletions(-)
 create mode 100644 common/efi/efivar-filename.c

diff --git a/common/efi/Makefile b/common/efi/Makefile
index ed110f5a6899..a7cebde4f1b3 100644
--- a/common/efi/Makefile
+++ b/common/efi/Makefile
@@ -3,4 +3,4 @@
 obj-$(CONFIG_EFI_BOOTUP)	+= payload/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
-obj-y				+= errno.o
+obj-y				+= errno.o efivar-filename.o
diff --git a/common/efi/efivar-filename.c b/common/efi/efivar-filename.c
new file mode 100644
index 000000000000..51d0130fa774
--- /dev/null
+++ b/common/efi/efivar-filename.c
@@ -0,0 +1,116 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <linux/ctype.h>
+#include <string.h>
+#include <efi/efi-util.h>
+
+static int char_to_nibble(char c)
+{
+	int ret = tolower(c);
+
+	return ret <= '9' ? ret - '0' : ret - 'a' + 10;
+}
+
+static int read_byte_str(const char *str, u8 *out)
+{
+	if (!isxdigit(*str) || !isxdigit(*(str + 1)))
+		return -EINVAL;
+
+	*out = (char_to_nibble(*str) << 4) | char_to_nibble(*(str + 1));
+
+	return 0;
+}
+
+static int efi_guid_parse(const char *str, efi_guid_t *guid)
+{
+	int i, ret;
+	u8 idx[] = { 3, 2, 1, 0, 5, 4, 7, 6, 8, 9, 10, 11, 12, 13, 14, 15 };
+
+	for (i = 0; i < 16; i++) {
+		ret = read_byte_str(str, &guid->b[idx[i]]);
+		if (ret)
+			return ret;
+		str += 2;
+
+		switch (i) {
+		case 3:
+		case 5:
+		case 7:
+		case 9:
+			if (*str != '-')
+				return -EINVAL;
+			str++;
+			break;
+		}
+	}
+
+	return 0;
+}
+
+
+int __efivarfs_parse_filename(const char *filename, efi_guid_t *vendor,
+			      s16 *name, size_t *namelen)
+{
+	int len, ret;
+	const char *guidstr;
+	int i;
+
+	len = strlen(filename);
+
+	if (len < sizeof("-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"))
+		return -EINVAL;
+
+	guidstr = filename + len - sizeof("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
+	if (*guidstr != '-' || guidstr == filename)
+		return -EINVAL;
+
+	guidstr++;
+
+	ret = efi_guid_parse(guidstr, vendor);
+	if (ret)
+		return ret;
+
+	if (guidstr - filename > *namelen)
+		ret = -EFBIG;
+
+	*namelen = guidstr - filename;
+
+	if (ret)
+		return ret;
+
+	for (i = 0; i < *namelen - 1; i++)
+		name[i] = filename[i];
+
+	name[i] = L'\0';
+
+	return 0;
+}
+
+int efivarfs_parse_filename(const char *filename, efi_guid_t *vendor,
+			    s16 **name)
+{
+	int ret;
+	s16 *varname;
+	size_t namelen = 0;
+	int i;
+
+	if (*filename == '/')
+		filename++;
+
+	ret = __efivarfs_parse_filename(filename, vendor, NULL, &namelen);
+	if (ret != -EFBIG)
+		return ret;
+
+	varname = xzalloc(namelen * sizeof(s16));
+
+	for (i = 0; i < namelen - 1; i++)
+		varname[i] = filename[i];
+
+	varname[i] = L'\0';
+
+	*name = varname;
+
+	return 0;
+}
+
+
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 01947439ff6c..2e72bb885265 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -47,82 +47,6 @@ struct efivarfs_priv {
 	struct list_head inodes;
 };
 
-static int char_to_nibble(char c)
-{
-	int ret = tolower(c);
-
-	return ret <= '9' ? ret - '0' : ret - 'a' + 10;
-}
-
-static int read_byte_str(const char *str, u8 *out)
-{
-	if (!isxdigit(*str) || !isxdigit(*(str + 1)))
-		return -EINVAL;
-
-	*out = (char_to_nibble(*str) << 4) | char_to_nibble(*(str + 1));
-
-	return 0;
-}
-
-static int efi_guid_parse(const char *str, efi_guid_t *guid)
-{
-	int i, ret;
-	u8 idx[] = { 3, 2, 1, 0, 5, 4, 7, 6, 8, 9, 10, 11, 12, 13, 14, 15 };
-
-	for (i = 0; i < 16; i++) {
-		ret = read_byte_str(str, &guid->b[idx[i]]);
-		if (ret)
-			return ret;
-		str += 2;
-
-		switch (i) {
-		case 3:
-		case 5:
-		case 7:
-		case 9:
-			if (*str != '-')
-				return -EINVAL;
-			str++;
-			break;
-		}
-	}
-
-	return 0;
-}
-
-static int efivarfs_parse_filename(const char *filename, efi_guid_t *vendor, s16 **name)
-{
-	int len, ret;
-	const char *guidstr;
-	s16 *varname;
-	int i;
-
-	if (*filename == '/')
-		filename++;
-
-	len = strlen(filename);
-
-	if (len < sizeof("-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"))
-		return -EINVAL;
-
-	guidstr = filename + len - sizeof("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
-	if (*guidstr != '-')
-		return -EINVAL;
-
-	guidstr++;
-
-	ret = efi_guid_parse(guidstr, vendor);
-
-	varname = xzalloc((guidstr - filename) * sizeof(s16));
-
-	for (i = 0; i < guidstr - filename - 1; i++)
-		varname[i] = filename[i];
-
-	*name = varname;
-
-	return 0;
-}
-
 static int efivars_create(struct device_d *dev, const char *pathname, mode_t mode)
 {
 	struct efivarfs_priv *priv = dev->priv;
diff --git a/include/efi/efi-util.h b/include/efi/efi-util.h
index 0645af270769..78e352456ad1 100644
--- a/include/efi/efi-util.h
+++ b/include/efi/efi-util.h
@@ -7,4 +7,8 @@
 const char *efi_strerror(efi_status_t err);
 int efi_errno(efi_status_t err);
 
+int __efivarfs_parse_filename(const char *filename, efi_guid_t *vendor,
+			      s16 *name, size_t *namelen);
+int efivarfs_parse_filename(const char *filename, efi_guid_t *vendor, s16 **name);
+
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

