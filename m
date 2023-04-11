Delivery-date: Tue, 11 Apr 2023 11:40:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmAU5-00HQ2q-80
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 11:40:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmAU4-0007oA-Q8
	for lore@pengutronix.de; Tue, 11 Apr 2023 11:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JCO0H+vwsNTk0PTpsKBlXs4CHbyIPriLNYGhV2hnemY=; b=IE1Y8ZTO9dNnr48NGg6TYMJ9c5
	qXCN7S/R9h9HcB6Q7gjFLj1s0xvKm3Ji8XIPbZWpg/Nn+BIkLruF0f4WWhrHGRoHW5UVw6JPdLkuq
	PZV/8c9sL3pDN1J4pvftDlmmrVLG/I9dTh4h9x1gQcJ+r5ohwA4mvZd/jvD9lmZos3meV4CEVXAcp
	YuJk5KWkaMMKodrCYW7SKBt7lXiq+ZxOcwf4cGj5LWd6WIpc8BIecPQL4E/PIZFPaFW6OPxTeG8ir
	eeEGkuSpmn8UWrM1PAhtLvFZz78f3+Wqxq0Ozg6jteadfGjxqSPqgccxaFL2Vkcj9a7aavNRpemou
	aO6/QMJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmASo-00H69t-1H;
	Tue, 11 Apr 2023 09:38:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmASi-00H64C-2r
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 09:38:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASd-0007RG-U1; Tue, 11 Apr 2023 11:38:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASd-00ATJG-8u; Tue, 11 Apr 2023 11:38:47 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASc-005Zvy-3y; Tue, 11 Apr 2023 11:38:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 11:38:43 +0200
Message-Id: <20230411093844.1297004-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
References: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_023852_926193_C538413E 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] scripts: compiler.h: add Windows support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We lack endianness conversion functions for Windows. Import them from
the public-domain portable_endian.h[1]. We skip the 64-bit XBox support
though as it's unlikely we'll need to run imx-usb-loader on that
particular game console.

While at it, only define min when it's undefined. This works around one
of the winapi headers indirectly included defining it.

[1]: https://gist.github.com/panzi/6856583

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/compiler.h | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/scripts/compiler.h b/scripts/compiler.h
index c932f715c551..925cad21b6cf 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -61,6 +61,37 @@ typedef unsigned int  uint;
 #elif defined(__OpenBSD__) || defined(__FreeBSD__) || \
       defined(__NetBSD__) || defined(__DragonFly__)
 # include <sys/endian.h>
+#elif defined _WIN32
+# if defined(_MSC_VER)
+#  include <stdlib.h>
+#  define htobe16(x) _byteswap_ushort(x)
+#  define htole16(x) (x)
+#  define be16toh(x) _byteswap_ushort(x)
+#  define le16toh(x) (x)
+#  define htobe32(x) _byteswap_ulong(x)
+#  define htole32(x) (x)
+#  define be32toh(x) _byteswap_ulong(x)
+#  define le32toh(x) (x)
+#  define htobe64(x) _byteswap_uint64(x)
+#  define htole64(x) (x)
+#  define be64toh(x) _byteswap_uint64(x)
+#  define le64toh(x) (x)
+# elif defined(__GNUC__) || defined(__clang__)
+#  define htobe16(x) __builtin_bswap16(x)
+#  define htole16(x) (x)
+#  define be16toh(x) __builtin_bswap16(x)
+#  define le16toh(x) (x)
+#  define htobe32(x) __builtin_bswap32(x)
+#  define htole32(x) (x)
+#  define be32toh(x) __builtin_bswap32(x)
+#  define le32toh(x) (x)
+#  define htobe64(x) __builtin_bswap64(x)
+#  define htole64(x) (x)
+#  define be64toh(x) __builtin_bswap64(x)
+#  define le64toh(x) (x)
+#else
+#  error platform not supported
+#endif
 #else /* assume Linux */
 # include <sys/types.h>
 # include <endian.h>
@@ -128,11 +159,13 @@ typedef uint32_t __u32;
 # define be64_to_cpu(x)		(x)
 #endif
 
+#ifndef min
 #define min(x, y) ({                            \
 	typeof(x) _min1 = (x);                  \
 	typeof(y) _min2 = (y);                  \
 	(void) (&_min1 == &_min2);              \
 	_min1 < _min2 ? _min1 : _min2; })
+#endif
 
 static inline void *xmalloc(size_t size)
 {
-- 
2.39.2



