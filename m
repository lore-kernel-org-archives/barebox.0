Delivery-date: Wed, 03 Jan 2024 19:32:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62Z-002NW8-2d
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62V-0003Dv-SQ
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PgqphMD7sHovJFMrOoqHojQc/tG7TPw/QiFhVSAyCWU=; b=N7C96UO0eFmjygu95O0naaAmnY
	kWwQz+xn/DdiHaIavx3k7I38AnH/sWgdhfOfs7hRW1KD5597a6sn8Pl63TzhwyfGDXHASoyT/WfIO
	NFRHKgTBmf3hErxSW87QOmt48k6qFdKiFR5gMy1J+1+Jzq8uAZl4zn6OMpuYIoSDdrNOJDLls6UHJ
	Tw4B6eu08IFFujbqtBT5Eu/jYckoT7PI39vs6HCiQ/BX7DuL+OaQcWhJCWGSga+rinxJkE8IdRptf
	gAxi5DYiWOJgjYXCOrgfKvkefzIj1T1oMvXXhr75GTsSvJ/lh4sgpY7G5RioaaUZUW6k64LY7BAoM
	lmNFhk3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61J-00BhLZ-2o;
	Wed, 03 Jan 2024 18:31:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL617-00BhB8-0R
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PgqphMD7sHovJFMrOoqHojQc/tG7TPw/QiFhVSAyCWU=; b=fvazIk82UWF/SgJRJdVnPOSLdG
	f8pRCz5U0ERHJOy2DXcCsbAUBIzHR+dr6lf5R7oR1ZL1Nx6P60M6g9GrcaPIngW9LeCCemPDOhLTU
	B80uCplixByrcWxdbW9hCp9psoPxrDt1v5M71NLCYyhBzn1zcu3YM8LN2jyzl1FMWPXlrS8hPVc1C
	894/o4xiC0xit5J/EkhZaLb20/SfYVlQFRCgLWu5LO+EvgFrIm/I87Y5QjVIXsHKcCGJ8JxjdTENk
	i5pxKF8T+AWr1dnU0Q0tRRG7MfXanxF5QFeSsGs9Vkywj8jG4mUYs2nyn7Krq9zgTOwdDbiCT8ZLa
	kQrj87Lw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eBy-2N
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001RJ-HZ; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000AtH-59; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-37;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:49 +0100
Message-Id: <20240103181312.409668-90-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_215979_A12BE182 
X-CRM114-Status: GOOD (  18.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 089/112] efi: devicepath: implement device_path_to_str_buf variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Existing device_path_to_str() formats a buffer once to determines the amount
of space necessary and then allocates it and formats it again.

To make this functionality available as printf format specifier, we need
a variant that doesn't allocate memory and that's preferably single
pass, which we add here.

No functional change for users of device_path_to_str().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 71 +++++++++++++++++++++++++++++++++++-------------
 include/efi.h    |  1 +
 2 files changed, 53 insertions(+), 19 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index d562bf482955..0c2fc4d86927 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -6,11 +6,13 @@
 #include <malloc.h>
 #include <string.h>
 #include <wchar.h>
+#include <linux/overflow.h>
 #include <efi/device-path.h>
 
 struct string {
 	char *str;
-	int len;
+	unsigned allocated;
+	unsigned used;
 };
 
 char *cprintf(struct string *str, const char *fmt, ...)
@@ -18,17 +20,22 @@ char *cprintf(struct string *str, const char *fmt, ...)
 
 char *cprintf(struct string *str, const char *fmt, ...)
 {
+	void *buf = str->str;
+	unsigned bufsize = 0;
 	va_list args;
 	int len;
 
+	if (str->str) {
+		buf += str->used;
+		if (check_sub_overflow(str->allocated, str->used, &bufsize))
+			bufsize = 0;
+	}
+
 	va_start(args, fmt);
-	if (str->str)
-		len = vsprintf(str->str + str->len, fmt, args);
-	else
-		len = vsnprintf(NULL, 0, fmt, args);
+	len = vsnprintf(buf, bufsize, fmt, args);
 	va_end(args);
 
-	str->len += len;
+	str->used += len;
 
 	return NULL;
 }
@@ -717,8 +724,8 @@ struct {
 	0, 0, NULL}
 };
 
-static int __device_path_to_str(struct string *str,
-				const struct efi_device_path *dev_path)
+static void __device_path_to_str(struct string *str,
+				 const struct efi_device_path *dev_path)
 {
 	const struct efi_device_path *dev_path_node;
 	void (*dump_node) (struct string *, const void *);
@@ -743,32 +750,58 @@ static int __device_path_to_str(struct string *str,
 		if (!dump_node)
 			dump_node = dev_path_node_unknown;
 
-		if (str->len && dump_node != dev_path_end_instance)
+		if (str->used && dump_node != dev_path_end_instance)
 			cprintf(str, "/");
 
 		dump_node(str, dev_path_node);
 
 		dev_path_node = next_device_path_node(dev_path_node);
 	}
-
-	return 0;
 }
 
+/**
+ * device_path_to_str_buf() - formats a device path into a preallocated buffer
+ *
+ * @dev_path:	The EFI device path to format
+ * @buf:	The buffer to format into or optionally NULL if @len is zero
+ * @len:	The number of bytes that may be written into @buf
+ * Return:	total number of bytes that are required to store the formatted
+ *		result, excluding the terminating NUL byte, which is always
+ *		written.
+ */
+size_t device_path_to_str_buf(const struct efi_device_path *dev_path,
+			      char *buf, size_t len)
+{
+	struct string str = {
+		.str = buf,
+		.allocated = len,
+	};
+
+	__device_path_to_str(&str, dev_path);
+
+	return str.used;
+}
+
+/**
+ * device_path_to_str() - formats a device path into a newly allocated buffer
+ *
+ * @dev_path:	The EFI device path to format
+ * Return:	A pointer to the nul-terminated formatted device path.
+ */
 char *device_path_to_str(const struct efi_device_path *dev_path)
 {
-	struct string str = {};
+	void *buf;
+	size_t size;
 
-	__device_path_to_str(&str, dev_path);
+	size = device_path_to_str_buf(dev_path, NULL, 0);
 
-	str.str = malloc(str.len + 1);
-	if (!str.str)
+	buf = malloc(size + 1);
+	if (!buf)
 		return NULL;
 
-	str.len = 0;
+	device_path_to_str_buf(dev_path, buf, size + 1);
 
-	__device_path_to_str(&str, dev_path);
-
-	return str.str;
+	return buf;
 }
 
 u8 device_path_to_type(const struct efi_device_path *dev_path)
diff --git a/include/efi.h b/include/efi.h
index 6795dc414c3c..45e4080fac08 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -880,6 +880,7 @@ struct efi_simple_text_input_protocol {
 
 const struct efi_device_path *device_path_from_handle(efi_handle_t handle);
 char *device_path_to_str(const struct efi_device_path *dev_path);
+size_t device_path_to_str_buf(const struct efi_device_path *dev_path, char buf[], size_t size);
 u8 device_path_to_type(const struct efi_device_path *dev_path);
 u8 device_path_to_subtype(const struct efi_device_path *dev_path);
 char *device_path_to_partuuid(const struct efi_device_path *dev_path);
-- 
2.39.2



