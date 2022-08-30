Delivery-date: Tue, 30 Aug 2022 09:48:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvyb-001Uae-2P
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:48:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvyY-0005bM-Vw
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:48:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BMihsYxrWv1C/Z1idL4huSPPhytdKJP7dExCK131wUQ=; b=2umzuTfP4u7YK109CaL70G/nPp
	MWpNdWzzQRv3/vQTHdsf70j/N08ElPUgPuutCYnWNsLZjOFqm3Br/l7EpXVYb40BovAs8A39Fftzm
	Fyx3RJRK3lXMyHbLkNV1c5HOrX+OLxARpYI1belCuje3BuKIRF7AX3bzugpeQtN69Y/Owjuq7qWvb
	PE2g5HyGj7qeEZFw83CFwypseEOHiEL9/7kSV7JgqHTd6OFyDIiA5Icob5LiBYvvvgZDKLKbARuGz
	ifJgYig3CRDn2hakI2kkuPszfvtAm9z6YGKsoJNvMBPdbxjvlrdqGW69rdO400XCZp6RrzuREGOXf
	AfrlKfJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvwi-00Esdg-Tn; Tue, 30 Aug 2022 07:46:06 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqK-00Ep3H-17
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:32 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cXEV993531
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845113;
	bh=BMihsYxrWv1C/Z1idL4huSPPhytdKJP7dExCK131wUQ=; l=6767;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=f2H+8k3T+kjwSF+eNYPe07B6XlAolFBIw99Q0Uo3kUZ0oiiDjBA+j5bPPIXBvvXb4
	 2qi2XrNdka/wR8UuuMmPoeVV4rGDZ/IlI352scqzY8BuU3J6p02o1YyfYB9zEb5LvW
	 SKibsDfxjzT3mMKwVzfWMmgPPzPxBN5aHjP2alUHyK4YkPUMnE2/kan+CGIywmDf4T
	 j9mKD3mX8qOPG/bU7Tqx1r94Av1cz0Wz2L3uqz8IlWXlYsrMiXxiFtAKfzT2KaYUpU
	 nzVRm/Mu23d8QLBaaltHgU85dDh4U+I3Zqdws9zcvXC/SlN+A+q3v8DNU94l3esCrK
	 ePoaSh9IItrbg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQ9o1001084
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:27 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 67F14412242; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cKul772622
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3f-ER;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:14 +0200
Message-Id: <20220830073816.2694734-20-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003928_489927_F742C901 
X-CRM114-Status: GOOD (  16.20  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 19/21] tftp: add selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unittest for window cache functions.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp-selftest.h |  56 ++++++++++++++++++++++++
 fs/tftp.c          | 106 ++++++++++++++++++++++++++++++++++++++++++++-
 test/self/Kconfig  |   7 +++
 3 files changed, 168 insertions(+), 1 deletion(-)
 create mode 100644 fs/tftp-selftest.h

diff --git a/fs/tftp-selftest.h b/fs/tftp-selftest.h
new file mode 100644
index 000000000000..2406ed329ecc
--- /dev/null
+++ b/fs/tftp-selftest.h
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: 2022 Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
+
+#ifndef H_BAREBOX_FS_TFTP_SELFTEST_H
+#define H_BAREBOX_FS_TFTP_SELFTEST_H
+
+#include <bselftest.h>
+
+#define _expect_fmt(_v) _Generic(_v,				\
+				 void const *: "%p",		\
+				 void *: "%p",			\
+				 bool: "%d",			\
+				 long int: "%lld",		\
+				 long unsigned int: "%llu",	\
+				 unsigned short: "%h",		\
+				 signed int: "%d",		\
+				 unsigned int: "%u")
+
+#define _expect_op(_a, _b, _op)						\
+	({								\
+		__typeof__(_a)	__a = (_a);				\
+		__typeof__(_b)	__b = (_b);				\
+									\
+		total_tests++;						\
+									\
+		if (!(__a _op __b)) {					\
+			char fmt[sizeof "%s:%d: failed: %XXX  %XXX\n" # _op]; \
+			strcpy(fmt, "%s:%d: failed: ");			\
+			strcat(fmt, _expect_fmt(__a));			\
+			strcat(fmt, " " # _op " ");			\
+			strcat(fmt, _expect_fmt(__b));			\
+			strcat(fmt, "\n");				\
+									\
+			failed_tests++;					\
+			printf(fmt, __func__, __LINE__, __a, __b);	\
+		}							\
+	})
+
+#define _as_void(_p) ({					\
+			void const *__res = (_p);	\
+			__res;				\
+		})
+
+#define expect_eq(_a, _b)	_expect_op(_a, _b, ==);
+#define expect_ne(_a, _b)	_expect_op(_a, _b, !=);
+#define expect_it(_a)		_expect_op(_a, true, ==);
+
+#define expect_err(_a)		_expect_op(_a, 0, <);
+#define expect_ok(_a)		_expect_op(_a, 0, ==);
+
+/* _Generic() does not match 'void *' for typed pointers; cast them to raw
+   'void *' first */
+#define expect_NULL(_a)		_expect_op(_as_void(_a), NULL, ==);
+#define expect_PTR(_a)		_expect_op(_as_void(_a), NULL, !=);
+
+#endif	/* H_BAREBOX_FS_TFTP_SELFTEST_H */
diff --git a/fs/tftp.c b/fs/tftp.c
index b010a6be6dbb..a9cc0ff3b118 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -36,6 +36,8 @@
 #include <parseopt.h>
 #include <linux/sizes.h>
 
+#include "tftp-selftest.h"
+
 #define TFTP_PORT	69	/* Well known TFTP port number */
 
 /* Seconds to wait before remote server is allowed to resend a lost packet */
@@ -81,7 +83,7 @@
 
 #define TFTP_ERR_RESEND	1
 
-#ifdef DEBUG
+#if defined(DEBUG) || IS_ENABLED(CONFIG_SELFTEST_TFTP)
 #  define debug_assert(_cond)	BUG_ON(!(_cond))
 #else
 #  define debug_assert(_cond) do {			\
@@ -1208,3 +1210,105 @@ static int tftp_init(void)
 	return register_fs_driver(&tftp_driver);
 }
 coredevice_initcall(tftp_init);
+
+
+BSELFTEST_GLOBALS();
+
+static int __maybe_unused tftp_window_cache_selftest(void)
+{
+	struct tftp_cache	*cache = malloc(sizeof *cache);
+
+	if (!cache)
+		return -ENOMEM;
+
+	(void)skipped_tests;
+
+	expect_it( is_block_before(0, 1));
+	expect_it(!is_block_before(1, 0));
+	expect_it( is_block_before(65535, 0));
+	expect_it(!is_block_before(0, 65535));
+
+	expect_eq(get_block_delta(0, 1),     1);
+	expect_eq(get_block_delta(65535, 0), 1);
+	expect_eq(get_block_delta(65535, 1), 2);
+
+	expect_it(!in_window(0, 1, 3));
+	expect_it( in_window(1, 1, 3));
+	expect_it( in_window(2, 1, 3));
+	expect_it( in_window(3, 1, 3));
+	expect_it(!in_window(4, 1, 3));
+
+	expect_it(!in_window(65534, 65535, 1));
+	expect_it( in_window(65535, 65535, 1));
+	expect_it( in_window(    0, 65535, 1));
+	expect_it( in_window(    1, 65535, 1));
+	expect_it(!in_window(    2, 65535, 1));
+
+
+	tftp_window_cache_init(cache, 512, 5);
+
+	if (tftp_window_cache_size(cache) < 4)
+		goto out;
+
+	expect_eq(tftp_window_cache_size(cache), 4);
+
+	/* sequence 1 */
+	expect_ok (tftp_window_cache_insert(cache, 20, "20", 2));
+	expect_ok (tftp_window_cache_insert(cache, 22, "22", 2));
+	expect_ok (tftp_window_cache_insert(cache, 21, "21", 2));
+	expect_ok (tftp_window_cache_insert(cache, 23, "23", 2));
+	expect_err(tftp_window_cache_insert(cache, 24, "24", 2));
+	expect_err(tftp_window_cache_insert(cache, 19, "19", 2));
+	expect_ok (tftp_window_cache_insert(cache, 22, "22", 2));
+	expect_ok (tftp_window_cache_insert(cache, 20, "20", 2));
+
+	expect_eq(tftp_window_cache_pop(cache)->id, 20);
+	expect_eq(tftp_window_cache_pop(cache)->id, 21);
+	expect_eq(tftp_window_cache_pop(cache)->id, 22);
+	expect_eq(tftp_window_cache_pop(cache)->id, 23);
+	expect_eq(cache->id, TFTP_CACHE_NO_ID);
+
+	/* sequence 2 */
+	expect_ok (tftp_window_cache_insert(cache, 30, "30", 2));
+	expect_ok (tftp_window_cache_insert(cache, 32, "32", 2));
+	expect_err(tftp_window_cache_insert(cache, 34, "34", 2));
+
+	expect_it(tftp_window_cache_starts_with(cache, 30));
+	expect_eq(tftp_window_cache_pop(cache)->id, 30);
+
+	expect_ok (tftp_window_cache_insert(cache, 34, "34", 2));
+	expect_err(tftp_window_cache_insert(cache, 35, "35", 2));
+
+	expect_it(!tftp_window_cache_starts_with(cache, 30));
+	expect_it(!tftp_window_cache_starts_with(cache, 31));
+	expect_it(!tftp_window_cache_starts_with(cache, 32));
+	expect_NULL(tftp_window_cache_pop(cache));
+
+	expect_it(tftp_window_cache_starts_with(cache, 32));
+	expect_eq(tftp_window_cache_pop(cache)->id, 32);
+
+	expect_NULL(tftp_window_cache_pop(cache));
+	expect_eq(tftp_window_cache_pop(cache)->id, 34);
+
+	expect_eq(cache->id, TFTP_CACHE_NO_ID);
+
+	/* sequence 3 */
+	expect_ok(tftp_window_cache_insert(cache, 40, "40", 2));
+	expect_ok(tftp_window_cache_insert(cache, 42, "42", 2));
+	expect_ok(tftp_window_cache_insert(cache, 43, "43", 2));
+
+	expect_it(!tftp_window_cache_remove_id(cache, 30));
+	expect_it(!tftp_window_cache_remove_id(cache, 41));
+	expect_it(!tftp_window_cache_remove_id(cache, 44));
+
+	expect_it( tftp_window_cache_remove_id(cache, 42));
+	expect_it(!tftp_window_cache_remove_id(cache, 42));
+
+out:
+	tftp_window_cache_free(cache);
+
+	return 0;
+}
+#ifdef CONFIG_SELFTEST_TFTP
+bselftest(core, tftp_window_cache_selftest);
+#endif
diff --git a/test/self/Kconfig b/test/self/Kconfig
index cf11efe54486..9366f99300c5 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -29,6 +29,7 @@ config SELFTEST_ENABLE_ALL
 	bool "Enable all self-tests"
 	select SELFTEST_PRINTF
 	select SELFTEST_PROGRESS_NOTIFIER
+	imply SELFTEST_TFTP
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -51,4 +52,10 @@ config SELFTEST_OF_MANIPULATION
 config SELFTEST_PROGRESS_NOTIFIER
 	bool "progress notifier selftest"
 
+config SELFTEST_TFTP
+	bool "tftp selftest"
+	depends on FS_TFTP
+	help
+	  Tests tftp functionality
+
 endif
-- 
2.37.2



