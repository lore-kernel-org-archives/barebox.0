Delivery-date: Fri, 02 Feb 2024 16:12:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvDY-0001Ua-2g
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:12:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvDZ-0002vV-Er
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:12:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R1Z8av+qQY+5Fc75oGxPwrLD+7SBAhDVFRqy4Uec9jU=; b=4j144oSILIu9QpGQrErOvzJzOZ
	XGrSN07qhshXu46RgJ9WAycq5NGmjuatYMZ7FRW7DojxogcLpygVzYwwse9pWj40XOwOineWvhNxZ
	IDUAY3hzyBDqF3qztfvPIIqFzOxFyIkNAx5kdEiD3CEK0x4wrcGO2tJIOHmIvUt6IhCbDSdj+uKfU
	LkL6XLmttpN9GuQLYuC7NKYLh9BmfKQGPIJye48dUYRPgxBKo1UtYtUPBbxfWE0qBQNJyGYLTcW1+
	6uYWn3NRTkbjk08NGhfmQjqY559TLnYJUM2qCG4MF1zfwRVyQbUGybGYeGvbwXasDBJzwwPF+jWZC
	x9x6qPUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvCu-0000000Bvvp-37nX;
	Fri, 02 Feb 2024 15:11:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvCs-0000000Bvtx-0eVI
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:11:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvCn-0002Ys-OE; Fri, 02 Feb 2024 16:11:49 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvCn-0045UJ-BU; Fri, 02 Feb 2024 16:11:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvCn-000x2z-0l;
	Fri, 02 Feb 2024 16:11:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  2 Feb 2024 16:11:46 +0100
Message-Id: <20240202151147.226876-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_071154_242933_EA7EBADF 
X-CRM114-Status: GOOD (  14.39  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] vsprintf: add support for printing MAC addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux can print MAC addresses using the %pM format specifier. Implement
the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/vsprintf.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 7d943706dd..3dda158683 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -266,6 +266,26 @@ static char *symbol_string(char *buf, const char *end, const void *ptr, int fiel
 #endif
 }
 
+static noinline_for_stack
+char *mac_address_string(char *buf, const char *end, const u8 *addr, int field_width,
+		      int precision, int flags, const char *fmt)
+{
+	char mac_addr[sizeof("xx:xx:xx:xx:xx:xx")];
+	char *p = mac_addr;
+	int i;
+	char separator = ':';
+
+	for (i = 0; i < 6; i++) {
+		p = hex_byte_pack(p, addr[i]);
+
+		if (i != 5)
+			*p++ = separator;
+	}
+	*p = '\0';
+
+	return string(buf, end, mac_addr, field_width, precision, flags);
+}
+
 static noinline_for_stack
 char *ip4_addr_string(char *buf, const char *end, const u8 *addr, int field_width,
 		      int precision, int flags, const char *fmt)
@@ -469,6 +489,8 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
  *       correctness of the format string and va_list arguments.
  * - 'a[pd]' For address types [p] phys_addr_t, [d] dma_addr_t and derivatives
  *           (default assumed to be phys_addr_t, passed by reference)
+ * - 'M' For a 6-byte MAC address, it prints the address in the
+ *       usual colon-separated hex notation
  *
  * Note: The difference between 'S' and 'F' is that on ia64 and ppc64
  * function pointers are really function descriptors, which contain a
@@ -515,6 +537,9 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 	case 'J':
 		if (fmt[1] == 'P' && IS_ENABLED(CONFIG_JSMN))
 			return jsonpath_string(buf, end, ptr, field_width, precision, flags, fmt);
+        case 'M':
+		/* Colon separated: 00:01:02:03:04:05 */
+		return mac_address_string(buf, end, ptr, field_width, precision, flags, fmt);
 	}
 
 	return raw_pointer(buf, end, ptr, field_width, precision, flags);
-- 
2.39.2



