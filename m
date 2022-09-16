Delivery-date: Fri, 16 Sep 2022 14:54:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZArz-006gAT-Mc
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 14:54:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZArx-0003Mk-IV
	for lore@pengutronix.de; Fri, 16 Sep 2022 14:54:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8hKkh3EvpZiGufq9qSu3uibkLwOUn1hVCpGffKJo0w=; b=hg2EpWGDXo1Sks
	8He5sL7G3QEsPi9N/Z9PAw+fwTO/yDjtfXaXhb+eOr+dvUnt6MOrqooilFnr8loSd/JJJLQa2HQqH
	WYjcr0IhdBAsSYWNBAJbBNGwethE5hMacbtEGP+H13L/9/3eXxBaUmvtlgE7Ns2AKI5t6nz8h+Kc+
	kzD1bqnytbghnEFDsxKtOuh46t/WLmhVRwSJPKquHwkn2JC+YkO1hv7DPcIl7cj+0LHRBkSeu+3qv
	AK/B5q7WzFSquV1pZrDYr05AkrBOZMkk8+QbW6ng5crTw90cxG0GdERsWE/KVLQ6RM7hdsQ8ZwJrQ
	Jq5XyU6cE1lOAOoKSeUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAqW-00DNId-Ne; Fri, 16 Sep 2022 12:53:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZApw-00DMzy-DW
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 12:53:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApf-0002zC-2I; Fri, 16 Sep 2022 14:52:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApf-0015TP-G7; Fri, 16 Sep 2022 14:52:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZApd-00G1v3-5i; Fri, 16 Sep 2022 14:52:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Sep 2022 14:52:30 +0200
Message-Id: <20220916125232.3775559-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220916125232.3775559-1-s.hauer@pengutronix.de>
References: <20220916125232.3775559-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_055252_661404_4D2479E0 
X-CRM114-Status: GOOD (  10.31  )
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
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] tftp: remove selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The out-of-order packet caching will be reworked in the next commit and
most of the functions the self test tests will vanish, so nothing to
test anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c         | 102 ----------------------------------------------
 test/self/Kconfig |   7 ----
 2 files changed, 109 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index e0886c49d2..f089e2f693 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -1237,105 +1237,3 @@ static int tftp_init(void)
 	return register_fs_driver(&tftp_driver);
 }
 coredevice_initcall(tftp_init);
-
-
-BSELFTEST_GLOBALS();
-
-static int __maybe_unused tftp_window_cache_selftest(void)
-{
-	struct tftp_cache	*cache = malloc(sizeof *cache);
-
-	if (!cache)
-		return -ENOMEM;
-
-	(void)skipped_tests;
-
-	expect_it( is_block_before(0, 1));
-	expect_it(!is_block_before(1, 0));
-	expect_it( is_block_before(65535, 0));
-	expect_it(!is_block_before(0, 65535));
-
-	expect_eq(get_block_delta(0, 1),     1);
-	expect_eq(get_block_delta(65535, 0), 1);
-	expect_eq(get_block_delta(65535, 1), 2);
-
-	expect_it(!in_window(0, 1, 3));
-	expect_it( in_window(1, 1, 3));
-	expect_it( in_window(2, 1, 3));
-	expect_it( in_window(3, 1, 3));
-	expect_it(!in_window(4, 1, 3));
-
-	expect_it(!in_window(65534, 65535, 1));
-	expect_it( in_window(65535, 65535, 1));
-	expect_it( in_window(    0, 65535, 1));
-	expect_it( in_window(    1, 65535, 1));
-	expect_it(!in_window(    2, 65535, 1));
-
-
-	tftp_window_cache_init(cache, 512, 5);
-
-	if (tftp_window_cache_size(cache) < 4)
-		goto out;
-
-	expect_eq(tftp_window_cache_size(cache), 4);
-
-	/* sequence 1 */
-	expect_ok (tftp_window_cache_insert(cache, 20, "20", 2));
-	expect_ok (tftp_window_cache_insert(cache, 22, "22", 2));
-	expect_ok (tftp_window_cache_insert(cache, 21, "21", 2));
-	expect_ok (tftp_window_cache_insert(cache, 23, "23", 2));
-	expect_err(tftp_window_cache_insert(cache, 24, "24", 2));
-	expect_err(tftp_window_cache_insert(cache, 19, "19", 2));
-	expect_ok (tftp_window_cache_insert(cache, 22, "22", 2));
-	expect_ok (tftp_window_cache_insert(cache, 20, "20", 2));
-
-	expect_eq(tftp_window_cache_pop(cache)->id, 20);
-	expect_eq(tftp_window_cache_pop(cache)->id, 21);
-	expect_eq(tftp_window_cache_pop(cache)->id, 22);
-	expect_eq(tftp_window_cache_pop(cache)->id, 23);
-	expect_eq(cache->id, TFTP_CACHE_NO_ID);
-
-	/* sequence 2 */
-	expect_ok (tftp_window_cache_insert(cache, 30, "30", 2));
-	expect_ok (tftp_window_cache_insert(cache, 32, "32", 2));
-	expect_err(tftp_window_cache_insert(cache, 34, "34", 2));
-
-	expect_it(tftp_window_cache_starts_with(cache, 30));
-	expect_eq(tftp_window_cache_pop(cache)->id, 30);
-
-	expect_ok (tftp_window_cache_insert(cache, 34, "34", 2));
-	expect_err(tftp_window_cache_insert(cache, 35, "35", 2));
-
-	expect_it(!tftp_window_cache_starts_with(cache, 30));
-	expect_it(!tftp_window_cache_starts_with(cache, 31));
-	expect_it(!tftp_window_cache_starts_with(cache, 32));
-	expect_NULL(tftp_window_cache_pop(cache));
-
-	expect_it(tftp_window_cache_starts_with(cache, 32));
-	expect_eq(tftp_window_cache_pop(cache)->id, 32);
-
-	expect_NULL(tftp_window_cache_pop(cache));
-	expect_eq(tftp_window_cache_pop(cache)->id, 34);
-
-	expect_eq(cache->id, TFTP_CACHE_NO_ID);
-
-	/* sequence 3 */
-	expect_ok(tftp_window_cache_insert(cache, 40, "40", 2));
-	expect_ok(tftp_window_cache_insert(cache, 42, "42", 2));
-	expect_ok(tftp_window_cache_insert(cache, 43, "43", 2));
-
-	expect_it(!tftp_window_cache_remove_id(cache, 30));
-	expect_it(!tftp_window_cache_remove_id(cache, 41));
-	expect_it(!tftp_window_cache_remove_id(cache, 44));
-
-	expect_it( tftp_window_cache_remove_id(cache, 42));
-	expect_it(!tftp_window_cache_remove_id(cache, 42));
-
-out:
-	tftp_window_cache_free(cache);
-
-	return 0;
-}
-#ifdef CONFIG_SELFTEST_TFTP
-bselftest(core, tftp_window_cache_selftest);
-#endif
diff --git a/test/self/Kconfig b/test/self/Kconfig
index 03cfa89987..680196a4fe 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -32,7 +32,6 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_PROGRESS_NOTIFIER
 	select SELFTEST_OF_MANIPULATION
 	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
-	imply SELFTEST_TFTP
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -58,10 +57,4 @@ config SELFTEST_PROGRESS_NOTIFIER
 config SELFTEST_ENVIRONMENT_VARIABLES
 	bool "environment variable selftest"
 
-config SELFTEST_TFTP
-	bool "tftp selftest"
-	depends on FS_TFTP
-	help
-	  Tests tftp functionality
-
 endif
-- 
2.30.2



