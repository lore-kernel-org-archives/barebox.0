Delivery-date: Thu, 09 Dec 2021 11:58:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8a-0010gy-JE
	for lore@lore.pengutronix.de; Thu, 09 Dec 2021 11:58:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8Z-0000rU-5i
	for lore@pengutronix.de; Thu, 09 Dec 2021 11:58:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aKkWGO9n81X1ekys+AcxczoRlD7kB8m0I57A+qu/wNE=; b=tlnAIONRsTKske
	JCuAVqf7WnSCLETGzucoTzB4QybyQAdCLLmq4/gAdhM12Lp16HJvo7WxieoEB5bH4PUgJsyVGbRtT
	YTt7eOMoAs72IxnyL5U3nIQW0wz0vTVVfN7eapljVDygtozQKSn9HyyK5FwfaJopLQGZqnxwm2+3U
	KV2FBeHXVK9Xt2sY8tNmuwQq/hAbZG/AEheJYY2mntFkZ+rMtTl8dINXbDDrAvcGkJ1gSGQv2TrJ5
	3nObZGwhJ7dnE5+kVBWz5Muh/OW28DCBZc3lGnjcaqb3EcdXa9h5ySbkbUv8BW6ihdObjV4fO0g4w
	55BKldFcLmmZbP2/b6uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvH6z-00Fgsz-V3; Thu, 09 Dec 2021 10:57:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvH6v-00Fgru-30
 for barebox@lists.infradead.org; Thu, 09 Dec 2021 10:57:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH6r-0000Xa-9n; Thu, 09 Dec 2021 11:57:09 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH6q-00El7g-Qk; Thu, 09 Dec 2021 11:57:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Dec 2021 11:57:06 +0100
Message-Id: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_025713_150569_260F9CF8 
X-CRM114-Status: GOOD (  12.72  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] vsprintf: add support for printing raw buffers as hex
 (%*ph)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import from Linux support for printing buffers as a hex string
with a certain separator. For larger buffers consider using
print_hex_dump(). Examples:

  %*ph	00 01 02  ...  3f
  %*phC	00:01:02: ... :3f
  %*phD	00-01-02- ... -3f
  %*phN	000102 ... 3f

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Kconfig    |  3 +++
 lib/vsprintf.c | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index 718033e56e64..27e7bea6852f 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -166,6 +166,9 @@ config PRINTF_UUID
 config PRINTF_WCHAR
 	bool
 
+config PRINTF_HEXSTR
+	bool
+
 config GENERIC_LIB_ASHLDI3
 	bool
 
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 85147e8d2e25..ce92787c58ef 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -320,6 +320,52 @@ char *uuid_string(char *buf, const char *end, const u8 *addr, int field_width,
 	return string(buf, end, uuid, field_width, precision, flags);
 }
 
+static noinline_for_stack
+char *hex_string(char *buf, const char *end, const u8 *addr, int field_width,
+		 int precision, int flags, const char *fmt)
+{
+	char separator;
+	int i, len;
+
+	if (field_width == 0)
+		/* nothing to print */
+		return buf;
+
+	switch (fmt[1]) {
+	case 'C':
+		separator = ':';
+		break;
+	case 'D':
+		separator = '-';
+		break;
+	case 'N':
+		separator = 0;
+		break;
+	default:
+		separator = ' ';
+		break;
+	}
+
+	len = field_width > 0 ? field_width : 1;
+
+	for (i = 0; i < len; ++i) {
+		if (buf < end)
+			*buf = hex_asc_hi(addr[i]);
+		++buf;
+		if (buf < end)
+			*buf = hex_asc_lo(addr[i]);
+		++buf;
+
+		if (separator && i != len - 1) {
+			if (buf < end)
+				*buf = separator;
+			++buf;
+		}
+	}
+
+	return buf;
+}
+
 static noinline_for_stack
 char *address_val(char *buf, const char *end, const void *addr,
 		  int field_width, int precision, int flags, const char *fmt)
@@ -406,6 +452,10 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 		break;
 	case 'e':
 		return error_string(buf, end, ptr, field_width, precision, flags, fmt);
+	case 'h':
+		if (IS_ENABLED(CONFIG_PRINTF_HEXSTR))
+			return hex_string(buf, end, ptr, field_width, precision, flags, fmt);
+		break;
 	}
 
 	return raw_pointer(buf, end, ptr, field_width, precision, flags);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

