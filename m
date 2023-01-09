Delivery-date: Mon, 09 Jan 2023 16:13:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtq5-006lcW-4z
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:13:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtq2-0003k0-Sp
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:13:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z77+99VFXCvMoUj1eFEHaD/RPo7oTNyK6JUstHUJqkE=; b=h5GZ7pnpc3AtmUA2F8bCSAOULb
	wEojICGZaJT4B1M0sZnzKRT5oSYuZXQ1TKARibquoteUJ+Arksc3jV08DTls+gcR3njJZJ296rNlU
	vTDtwGgmL8weWOEiuiZpycHm/otiQrfRMTbh5MR/UXMqs9wrqBWKKIUHmz0MRPpsF1mLRUB4GlMB5
	FpH8H3uiR2KuxL/ML4VrYXjgeAkA1qUBpoKmPFKVj8/ytBciF4p7Kexdr5X6rpm35vE4RQHxS7m+M
	lZsStJxVMy/yuqNdu1psd/V2gYeApxHbuWxQRorYwTI0wAMfkVnFV7TjXzGjY2MfYHS/t+2T+6lt2
	8wDIqqKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtok-0028EO-UD; Mon, 09 Jan 2023 15:12:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtoc-00289b-Js
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:12:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtob-0003Mf-DP; Mon, 09 Jan 2023 16:11:57 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoa-004sbL-Nx; Mon, 09 Jan 2023 16:11:56 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoZ-008bxo-Lm; Mon, 09 Jan 2023 16:11:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:11:46 +0100
Message-Id: <20230109151152.2052493-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
References: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_071158_699086_9C15F5DA 
X-CRM114-Status: GOOD (  12.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] vsprintf: support %pOF format specifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Supporting %pO* is easy enough and we have at least 50 instances in
tree, where this can be used.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of.h   | 10 ++++++++++
 lib/vsprintf.c | 13 +++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/include/of.h b/include/of.h
index c69fa9605415..f22730c081fe 100644
--- a/include/of.h
+++ b/include/of.h
@@ -332,6 +332,11 @@ int of_autoenable_device_by_path(char *path);
 int of_autoenable_i2c_by_component(char *path);
 int of_prepend_machine_compatible(struct device_node *root, const char *compat);
 
+static inline const char *of_node_full_name(const struct device_node *np)
+{
+	return np ? np->full_name : "<no-node>";
+}
+
 #else
 static inline struct of_reserve_map *of_get_reserve_map(void)
 {
@@ -893,6 +898,11 @@ static inline int of_prepend_machine_compatible(struct device_node *root,
 	return -ENODEV;
 }
 
+static inline const char *of_node_full_name(const struct device_node *np)
+{
+	return "<no-node>";
+}
+
 #endif
 
 #define for_each_property_of_node(dn, pp) \
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 693f3c0cc0c8..1291cf7dd95f 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -19,6 +19,7 @@
 #include <malloc.h>
 #include <kallsyms.h>
 #include <wchar.h>
+#include <of.h>
 
 #include <common.h>
 #include <pbl.h>
@@ -391,6 +392,14 @@ char *address_val(char *buf, const char *end, const void *addr,
 	return number(buf, end, num, 16, field_width, precision, flags);
 }
 
+static noinline_for_stack
+char *device_node_string(char *buf, const char *end, const struct device_node *np,
+			 int field_width, int precision, int flags, const char *fmt)
+{
+	return string(buf, end, of_node_full_name(np), field_width,
+		      precision, flags);
+}
+
 /*
  * Show a '%p' thing.  A kernel extension is that the '%p' is followed
  * by an extra set of alphanumeric characters that are extended format
@@ -454,6 +463,10 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 		break;
 	case 'e':
 		return error_string(buf, end, ptr, field_width, precision, flags, fmt);
+	case 'O':
+		if (IS_ENABLED(CONFIG_OFTREE))
+			return device_node_string(buf, end, ptr, field_width, precision, flags, fmt + 1);
+		break;
 	case 'h':
 		if (IS_ENABLED(CONFIG_PRINTF_HEXSTR))
 			return hex_string(buf, end, ptr, field_width, precision, flags, fmt);
-- 
2.30.2



