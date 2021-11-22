Delivery-date: Mon, 22 Nov 2021 09:52:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54M-0003a7-KH
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:52:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp54K-0001aa-WD
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:52:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iLhkZe+w2u0FuxrSTQvQtf5tat7u2dZjMcvU7hWYXs=; b=s6Tz/WgtZdymPr
	atKpi94D0VpMX42XMpTxKgxHLNvDzbB9OeyPxF2DRixyuIE6orVUhuQXy2lptnBsrRkSLmlteMtAJ
	YyZUYofdShVfVAsmgKBayHWpnn0+1ziJ85iMfO7a7IRCyl6jhd5pOx5OACSqpHXdPlDOTLvU9KQb+
	IU9DIZw8d/zcrDV74TIaa96jB5PTuK1nRsuv4tFR++QPfCLgRR2rZ0z/yoC2rFIgtqFsDdhCBWCvP
	Z9P6YRkGOcjZnqwcLk/ZEqYa2paoK1muE9v9DZhtlKEohfFV1AbGI5DUsJtNDsJzJgU+vz4mWJKdJ
	qImPI+2fe/kQGEeKklXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp52f-00FN4Y-Ku; Mon, 22 Nov 2021 08:51:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKzD-H7
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wN-8g; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atf2-Gv; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:14 +0100
Message-Id: <20211122084732.2597109-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_782449_AF697AC4 
X-CRM114-Status: GOOD (  15.63  )
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
Subject: [PATCH 12/30] efi: factor out errno translation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The errno translation will come in handy for the EFI loader support, so
factor that out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/Makefile       |  1 +
 common/efi/errno.c        | 90 +++++++++++++++++++++++++++++++++++++++
 common/efi/payload/init.c | 86 -------------------------------------
 include/efi/efi-util.h    | 10 +++++
 include/efi/efi.h         |  5 +--
 5 files changed, 102 insertions(+), 90 deletions(-)
 create mode 100644 common/efi/errno.c
 create mode 100644 include/efi/efi-util.h

diff --git a/common/efi/Makefile b/common/efi/Makefile
index 1ed5d45c1f5e..ed110f5a6899 100644
--- a/common/efi/Makefile
+++ b/common/efi/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_EFI_BOOTUP)	+= payload/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
+obj-y				+= errno.o
diff --git a/common/efi/errno.c b/common/efi/errno.c
new file mode 100644
index 000000000000..3bb68e7781e6
--- /dev/null
+++ b/common/efi/errno.c
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <efi/efi-util.h>
+#include <errno.h>
+
+const char *efi_strerror(efi_status_t err)
+{
+	const char *str;
+
+	switch (err) {
+	case EFI_SUCCESS: str = "Success"; break;
+	case EFI_LOAD_ERROR: str = "Load Error"; break;
+	case EFI_INVALID_PARAMETER: str = "Invalid Parameter"; break;
+	case EFI_UNSUPPORTED: str = "Unsupported"; break;
+	case EFI_BAD_BUFFER_SIZE: str = "Bad Buffer Size"; break;
+	case EFI_BUFFER_TOO_SMALL: str = "Buffer Too Small"; break;
+	case EFI_NOT_READY: str = "Not Ready"; break;
+	case EFI_DEVICE_ERROR: str = "Device Error"; break;
+	case EFI_WRITE_PROTECTED: str = "Write Protected"; break;
+	case EFI_OUT_OF_RESOURCES: str = "Out of Resources"; break;
+	case EFI_VOLUME_CORRUPTED: str = "Volume Corrupt"; break;
+	case EFI_VOLUME_FULL: str = "Volume Full"; break;
+	case EFI_NO_MEDIA: str = "No Media"; break;
+	case EFI_MEDIA_CHANGED: str = "Media changed"; break;
+	case EFI_NOT_FOUND: str = "Not Found"; break;
+	case EFI_ACCESS_DENIED: str = "Access Denied"; break;
+	case EFI_NO_RESPONSE: str = "No Response"; break;
+	case EFI_NO_MAPPING: str = "No mapping"; break;
+	case EFI_TIMEOUT: str = "Time out"; break;
+	case EFI_NOT_STARTED: str = "Not started"; break;
+	case EFI_ALREADY_STARTED: str = "Already started"; break;
+	case EFI_ABORTED: str = "Aborted"; break;
+	case EFI_ICMP_ERROR: str = "ICMP Error"; break;
+	case EFI_TFTP_ERROR: str = "TFTP Error"; break;
+	case EFI_PROTOCOL_ERROR: str = "Protocol Error"; break;
+	case EFI_INCOMPATIBLE_VERSION: str = "Incompatible Version"; break;
+	case EFI_SECURITY_VIOLATION: str = "Security Violation"; break;
+	case EFI_CRC_ERROR: str = "CRC Error"; break;
+	case EFI_END_OF_MEDIA: str = "End of Media"; break;
+	case EFI_END_OF_FILE: str = "End of File"; break;
+	case EFI_INVALID_LANGUAGE: str = "Invalid Language"; break;
+	case EFI_COMPROMISED_DATA: str = "Compromised Data"; break;
+	default: str = "unknown error";
+	}
+
+	return str;
+}
+
+int efi_errno(efi_status_t err)
+{
+	int ret;
+
+	switch (err) {
+	case EFI_SUCCESS: ret = 0; break;
+	case EFI_LOAD_ERROR: ret = EIO; break;
+	case EFI_INVALID_PARAMETER: ret = EINVAL; break;
+	case EFI_UNSUPPORTED: ret = ENOTSUPP; break;
+	case EFI_BAD_BUFFER_SIZE: ret = EINVAL; break;
+	case EFI_BUFFER_TOO_SMALL: ret = EINVAL; break;
+	case EFI_NOT_READY: ret = EAGAIN; break;
+	case EFI_DEVICE_ERROR: ret = EIO; break;
+	case EFI_WRITE_PROTECTED: ret = EROFS; break;
+	case EFI_OUT_OF_RESOURCES: ret = ENOMEM; break;
+	case EFI_VOLUME_CORRUPTED: ret = EIO; break;
+	case EFI_VOLUME_FULL: ret = ENOSPC; break;
+	case EFI_NO_MEDIA: ret = ENOMEDIUM; break;
+	case EFI_MEDIA_CHANGED: ret = ENOMEDIUM; break;
+	case EFI_NOT_FOUND: ret = ENODEV; break;
+	case EFI_ACCESS_DENIED: ret = EACCES; break;
+	case EFI_NO_RESPONSE: ret = ETIMEDOUT; break;
+	case EFI_NO_MAPPING: ret = EINVAL; break;
+	case EFI_TIMEOUT: ret = ETIMEDOUT; break;
+	case EFI_NOT_STARTED: ret = EINVAL; break;
+	case EFI_ALREADY_STARTED: ret = EINVAL; break;
+	case EFI_ABORTED: ret = EINTR; break;
+	case EFI_ICMP_ERROR: ret = EINVAL; break;
+	case EFI_TFTP_ERROR: ret = EINVAL; break;
+	case EFI_PROTOCOL_ERROR: ret = EPROTO; break;
+	case EFI_INCOMPATIBLE_VERSION: ret = EINVAL; break;
+	case EFI_SECURITY_VIOLATION: ret = EINVAL; break;
+	case EFI_CRC_ERROR: ret = EINVAL; break;
+	case EFI_END_OF_MEDIA: ret = EINVAL; break;
+	case EFI_END_OF_FILE: ret = EINVAL; break;
+	case EFI_INVALID_LANGUAGE: ret = EINVAL; break;
+	case EFI_COMPROMISED_DATA: ret = EINVAL; break;
+	default: ret = EINVAL;
+	}
+
+	return ret;
+}
diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index 0e672a6b56d2..5149b5b5d0d3 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -163,92 +163,6 @@ static int misc_init(void)
 }
 late_initcall(misc_init);
 
-const char *efi_strerror(efi_status_t err)
-{
-	const char *str;
-
-	switch (err) {
-	case EFI_SUCCESS: str = "Success"; break;
-	case EFI_LOAD_ERROR: str = "Load Error"; break;
-	case EFI_INVALID_PARAMETER: str = "Invalid Parameter"; break;
-	case EFI_UNSUPPORTED: str = "Unsupported"; break;
-	case EFI_BAD_BUFFER_SIZE: str = "Bad Buffer Size"; break;
-	case EFI_BUFFER_TOO_SMALL: str = "Buffer Too Small"; break;
-	case EFI_NOT_READY: str = "Not Ready"; break;
-	case EFI_DEVICE_ERROR: str = "Device Error"; break;
-	case EFI_WRITE_PROTECTED: str = "Write Protected"; break;
-	case EFI_OUT_OF_RESOURCES: str = "Out of Resources"; break;
-	case EFI_VOLUME_CORRUPTED: str = "Volume Corrupt"; break;
-	case EFI_VOLUME_FULL: str = "Volume Full"; break;
-	case EFI_NO_MEDIA: str = "No Media"; break;
-	case EFI_MEDIA_CHANGED: str = "Media changed"; break;
-	case EFI_NOT_FOUND: str = "Not Found"; break;
-	case EFI_ACCESS_DENIED: str = "Access Denied"; break;
-	case EFI_NO_RESPONSE: str = "No Response"; break;
-	case EFI_NO_MAPPING: str = "No mapping"; break;
-	case EFI_TIMEOUT: str = "Time out"; break;
-	case EFI_NOT_STARTED: str = "Not started"; break;
-	case EFI_ALREADY_STARTED: str = "Already started"; break;
-	case EFI_ABORTED: str = "Aborted"; break;
-	case EFI_ICMP_ERROR: str = "ICMP Error"; break;
-	case EFI_TFTP_ERROR: str = "TFTP Error"; break;
-	case EFI_PROTOCOL_ERROR: str = "Protocol Error"; break;
-	case EFI_INCOMPATIBLE_VERSION: str = "Incompatible Version"; break;
-	case EFI_SECURITY_VIOLATION: str = "Security Violation"; break;
-	case EFI_CRC_ERROR: str = "CRC Error"; break;
-	case EFI_END_OF_MEDIA: str = "End of Media"; break;
-	case EFI_END_OF_FILE: str = "End of File"; break;
-	case EFI_INVALID_LANGUAGE: str = "Invalid Language"; break;
-	case EFI_COMPROMISED_DATA: str = "Compromised Data"; break;
-	default: str = "unknown error";
-	}
-
-	return str;
-}
-
-int efi_errno(efi_status_t err)
-{
-	int ret;
-
-	switch (err) {
-	case EFI_SUCCESS: ret = 0; break;
-	case EFI_LOAD_ERROR: ret = EIO; break;
-	case EFI_INVALID_PARAMETER: ret = EINVAL; break;
-	case EFI_UNSUPPORTED: ret = ENOTSUPP; break;
-	case EFI_BAD_BUFFER_SIZE: ret = EINVAL; break;
-	case EFI_BUFFER_TOO_SMALL: ret = EINVAL; break;
-	case EFI_NOT_READY: ret = EAGAIN; break;
-	case EFI_DEVICE_ERROR: ret = EIO; break;
-	case EFI_WRITE_PROTECTED: ret = EROFS; break;
-	case EFI_OUT_OF_RESOURCES: ret = ENOMEM; break;
-	case EFI_VOLUME_CORRUPTED: ret = EIO; break;
-	case EFI_VOLUME_FULL: ret = ENOSPC; break;
-	case EFI_NO_MEDIA: ret = ENOMEDIUM; break;
-	case EFI_MEDIA_CHANGED: ret = ENOMEDIUM; break;
-	case EFI_NOT_FOUND: ret = ENODEV; break;
-	case EFI_ACCESS_DENIED: ret = EACCES; break;
-	case EFI_NO_RESPONSE: ret = ETIMEDOUT; break;
-	case EFI_NO_MAPPING: ret = EINVAL; break;
-	case EFI_TIMEOUT: ret = ETIMEDOUT; break;
-	case EFI_NOT_STARTED: ret = EINVAL; break;
-	case EFI_ALREADY_STARTED: ret = EINVAL; break;
-	case EFI_ABORTED: ret = EINTR; break;
-	case EFI_ICMP_ERROR: ret = EINVAL; break;
-	case EFI_TFTP_ERROR: ret = EINVAL; break;
-	case EFI_PROTOCOL_ERROR: ret = EPROTO; break;
-	case EFI_INCOMPATIBLE_VERSION: ret = EINVAL; break;
-	case EFI_SECURITY_VIOLATION: ret = EINVAL; break;
-	case EFI_CRC_ERROR: ret = EINVAL; break;
-	case EFI_END_OF_MEDIA: ret = EINVAL; break;
-	case EFI_END_OF_FILE: ret = EINVAL; break;
-	case EFI_INVALID_LANGUAGE: ret = EINVAL; break;
-	case EFI_COMPROMISED_DATA: ret = EINVAL; break;
-	default: ret = EINVAL;
-	}
-
-	return ret;
-}
-
 static struct NS16550_plat ns16550_plat = {
 	.clock = 115200 * 16,
 };
diff --git a/include/efi/efi-util.h b/include/efi/efi-util.h
new file mode 100644
index 000000000000..0645af270769
--- /dev/null
+++ b/include/efi/efi-util.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_UTIL_H
+#define __EFI_UTIL_H
+
+#include <efi.h>
+
+const char *efi_strerror(efi_status_t err);
+int efi_errno(efi_status_t err);
+
+#endif
diff --git a/include/efi/efi.h b/include/efi/efi.h
index c7679b4b8f28..e77b1c5feb52 100644
--- a/include/efi/efi.h
+++ b/include/efi/efi.h
@@ -3,16 +3,13 @@
 #define __MACH_EFI_H
 
 #include <efi.h>
-
-const char *efi_strerror(efi_status_t err);
+#include <efi/efi-util.h>
 
 extern efi_system_table_t *efi_sys_table;
 extern efi_handle_t efi_parent_image;
 extern struct efi_device_path *efi_device_path;
 extern efi_loaded_image_t *efi_loaded_image;
 
-int efi_errno(efi_status_t err);
-
 void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size);
 
 static inline void *efi_get_global_var(char *name, int *var_size)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

