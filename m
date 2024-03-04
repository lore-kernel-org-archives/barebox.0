Delivery-date: Mon, 04 Mar 2024 20:04:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbo-008d5e-2w
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:04:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbm-0007tF-9a
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:04:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nfAysHBsCC83UOPXYNM5BHD5Y0Myilk5jB7K9s6tRSw=; b=ftnyWiAw/cWsiEz/0CD9ugWlZh
	tO+DUGRQ4oCaDm68JajlqgEBdssvQ8hinsZLdvKC2ZWeo5w9O+EkYhfGz6UIwjR8BrThux3sMPwYC
	BMjP8aZ/tJh0H6qC0SlkgIb1d7guq9QGWuWKd65R050biZlXOqGNrlpyJbtscWYDZeQgH5xrAkwNw
	A7wzR+iA1EvGYVf4jed2Kq9noYkq/2U11QEaFE1AEsBpEbUWKgfH5T/l64InWMvBY1DqVwzUNquXr
	zZvCMCV634ZCbPjwMlIGOBw0QlqqsAh8ilTMSe9XEzPyy0J+GbFZBnT6VvnuKBPfAHurj2NMVzStX
	VzlGRSfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDb5-0000000AIyy-45fn;
	Mon, 04 Mar 2024 19:03:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaM-0000000AIOj-24wS
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nfAysHBsCC83UOPXYNM5BHD5Y0Myilk5jB7K9s6tRSw=; b=K3JQaEBXuvU6k+NLw7vRy2dLMS
	mkNK98m88Gt8qJ+ONdAJiFJZ6g3asmFdysvAlaoUbxtSioUkYfz5/ybPYM09GuOsGf8bIxeUKAmTN
	lQ8Gpd7qQT50VzpxJmxEfrz/48l/eroWs0UEe6p1Voh1vxYQtXbiMNmMwtYacEOmuPgfA0K8AGq/w
	uwaN7OwSPw7Lm6/D2dodisiiPe0mXFiE7+uNfB+jWDnoxDtW5jzPJl7UTAABK0gFKOQGUyMTjtQVX
	wA9uN5DmKi5ACtTIb6DV6Rxs6/2OWs76U6mMp5VK3z4rDW8kGcTQk2hXNpmItBkGX8ZbYuzHGkGLX
	3k4YHo0g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaF-000000051vf-2P9O
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00061F-7E; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PHK-O7; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-0T;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:16 +0100
Message-Id: <20240304190038.3486881-92-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190243_950561_E28C84AA 
X-CRM114-Status: GOOD (  12.88  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 091/113] vsprintf: add %pD for printing EFI device path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have a few users that will want to print EFI device paths and
will gain quite a few more with incoming loader support, so let's allow
printing them directly with printf with the %pD format specifier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add documentation for new specifier (Sascha)
---
 lib/vsprintf.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 4458616e442b..1b7d568e8f0c 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -20,6 +20,7 @@
 #include <kallsyms.h>
 #include <wchar.h>
 #include <of.h>
+#include <efi.h>
 
 #include <common.h>
 #include <pbl.h>
@@ -368,6 +369,15 @@ char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
 	return string(buf, end, uuid, field_width, precision, flags);
 }
 
+static char *device_path_string(char *buf, const char *end, const struct efi_device_path *dp,
+				int field_width, int precision, int flags)
+{
+	if (!dp)
+		return string(buf, end, NULL, field_width, precision, flags);
+
+	return buf + device_path_to_str_buf(dp, buf, end - buf);
+}
+
 static noinline_for_stack
 char *hex_string(char *buf, const char *end, const u8 *addr, int field_width,
 		 int precision, int flags, const char *fmt)
@@ -470,7 +480,7 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
  * by an extra set of alphanumeric characters that are extended format
  * specifiers.
  *
- * Right now we handle:
+ * Right now we handle following Linux-compatible format specifiers:
  *
  * - 'S' For symbolic direct pointers
  * - 'U' For a 16 byte UUID/GUID, it prints the UUID/GUID in the form
@@ -503,6 +513,10 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
  * - 'JP' For a JSON path
  * - 'M' For a 6-byte MAC address, it prints the address in the
  *       usual colon-separated hex notation
+ *
+ * Additionally, we support following barebox-specific format specifiers:
+ *
+ * - 'D' For EFI device paths
  */
 static char *pointer(const char *fmt, char *buf, const char *end, const void *ptr,
 		     int field_width, int precision, int flags)
@@ -548,6 +562,10 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
         case 'M':
 		/* Colon separated: 00:01:02:03:04:05 */
 		return mac_address_string(buf, end, ptr, field_width, precision, flags, fmt);
+	case 'D':
+		if (IS_ENABLED(CONFIG_EFI_DEVICEPATH))
+			return device_path_string(buf, end, ptr, field_width, precision, flags);
+		break;
 	}
 
 	return raw_pointer(buf, end, ptr, field_width, precision, flags);
-- 
2.39.2



