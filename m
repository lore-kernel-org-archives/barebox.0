Delivery-date: Thu, 05 Jun 2025 13:39:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w2-003zo2-2p
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8vy-0002Nu-Uy
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JuenjlSxKz5RnHuQ180Ao/HrEAPYRJ16EeO7TnFqQcU=; b=3rAL2rfg2DsvY7hGqrPOv9Nrou
	hS9+QMMowI3ngd/zqfl8x51VM9prl/5o7ZL9kVLW1ftO/qCnVGqE27+mlf+SHe/mcn+cuGCTfKzSL
	ewETw/ChQ5sY3JusonZ/Y2ZsjR1XwMKnfkpyCZb6jsDvaL+WKILX7mEF/7LT/r3U6WcUs6FyChTuH
	JkEptq7ZVvqspO35KqHSAME0Q1P/1k9ofgfi6eFevNd1aSW0OrZ6hbK6n7WGCzxsFrQFb8C7bcbRE
	9ExKPZV8rIpVIl+LyiYt8B/cNGOMAFsQOB/IpSqLFQUYwR5p8N4uba91IhBPjIUWfvsMs+w4mOUA0
	kOUUP7fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vV-0000000FORr-1uss;
	Thu, 05 Jun 2025 11:38:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOON-0DOg
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vR-0001i0-Q9; Thu, 05 Jun 2025 13:38:25 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vR-001x0Q-1z;
	Thu, 05 Jun 2025 13:38:25 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sg-008mT4-0W;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:25 +0200
Message-Id: <20250605113530.2076990-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_090738_5AB28D22 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/21] fuzz: add support for passing fuzz data as r/o ramdisk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will be useful for fuzzing file systems and partition parsing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/fuzz.h | 19 ++++++++++++++++++-
 test/Kconfig   |  2 ++
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/include/fuzz.h b/include/fuzz.h
index 35233f90154b..bd95ae6203b0 100644
--- a/include/fuzz.h
+++ b/include/fuzz.h
@@ -8,7 +8,8 @@
 #define __TEST_FUZZ_H
 
 #include <linux/types.h>
-#include <linux/list.h>
+#include <linux/compiler_types.h>
+#include <ramdisk.h>
 
 /**
  * struct fuzz_test - Information about a fuzz test
@@ -48,6 +49,22 @@ extern const struct fuzz_test __barebox_fuzz_tests_end;
 	static __always_unused void * _unused##_func = _func
 #endif
 
+#define fuzz_test_ramdisk(_name, _func)				\
+	static int _func##_ramdisk(const u8 *data, size_t size)	\
+	{							\
+		static struct ramdisk *ramdisk;			\
+		int ret;					\
+		if (!ramdisk)					\
+			ramdisk = ramdisk_init(512);		\
+		if (!ramdisk)					\
+			return -ENODEV;				\
+		ramdisk_setup_ro(ramdisk, data, size);		\
+		ret = _func(ramdisk_get_block_device(ramdisk));	\
+		ramdisk_setup_ro(ramdisk, NULL, 0);		\
+		return ret;					\
+	}							\
+	fuzz_test(_name, _func##_ramdisk)
+
 static inline int fuzz_test_once(const struct fuzz_test *test, const u8 *data, size_t len)
 {
 	return test->func(data, len);
diff --git a/test/Kconfig b/test/Kconfig
index ca2d75c6b025..07b22f09e99b 100644
--- a/test/Kconfig
+++ b/test/Kconfig
@@ -9,6 +9,8 @@ source "test/self/Kconfig"
 
 config FUZZ
 	bool "fuzz tests"
+	select RAMDISK_BLK
+	select DISK
 	help
 	  Say y here to add include fuzz tests into barebox.
 	  These need to be exercised either via command or
-- 
2.39.5



