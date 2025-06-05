Delivery-date: Thu, 05 Jun 2025 13:39:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wB-003zqI-1F
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w9-0002cH-JL
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vhOdDZfuj+ojmYV/14dR2T5leIfdwHZ934ZykoWs3/E=; b=xVjUgWn+rxniqXpzjDcvHlAxNL
	iwX+CgAlB9Z3OrHaTbZ8DJ36vYfkJeYKv8eOUeeMnBDlxpKXoQjy3s1yxe9TE5kzCtrg3ma5uKFF4
	4NZxkuaUxpSWeL5U8BZNXGNYIl5TKJ+3FKW0N4qBOyPBYEdHSK4zFyfZZke8xmeY3rHJ4pHiGf3Jt
	fVmAAupgCqzK/+v8l385xsBs91AXHhImc+CYcIaF9+yjIrp1YkNHdD9oniF6gM1GlcmcQrQL3F7EG
	dUFOx02QfPFWZMsWqBc3W+YHwcuBTn9GqGmf3kPgjpDPrqrFCFUndg/JMYS8IWIYzjl2sz32H0do2
	HCWdEZyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vd-0000000FObe-3PE5;
	Thu, 05 Jun 2025 11:38:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vU-0000000FOP4-037W
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001jk-Py; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-001x0z-1v;
	Thu, 05 Jun 2025 13:38:26 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-3D;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:22 +0200
Message-Id: <20250605113530.2076990-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043828_052837_6DD58AC3 
X-CRM114-Status: GOOD (  13.13  )
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
Subject: [PATCH 13/21] filetype: add fuzz target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Checking for filetype is an operation that we do on every boot, so it's
important it's done in a memory safe manner. Add a test to exercise
this.

This test has unearthed issues which have already been fixed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c       | 12 ++++++++++++
 images/Makefile.sandbox |  1 +
 include/filetype.h      |  4 ++--
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index a7bbd8f48534..019f34811103 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -18,6 +18,7 @@
 #include <image-sparse.h>
 #include <elf.h>
 #include <linux/zstd.h>
+#include <fuzz.h>
 
 #include <mach/imx/imx-header.h>
 
@@ -495,6 +496,17 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
+static int fuzz_filetype(const u8 *data, size_t size)
+{
+	if (!PTR_IS_ALIGNED(data, sizeof(u64)))
+	    return -EINVAL;
+
+	file_detect_type(data, size);
+
+	return 0;
+}
+fuzz_test("filetype", fuzz_filetype);
+
 int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type,
 				 enum filetype (*detect)(const void *buf, size_t bufsize))
 {
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index ed5d740bc1fb..ce09d0c1374c 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -3,6 +3,7 @@
 SYMLINK_TARGET_barebox = sandbox_main.elf
 symlink-$(CONFIG_SANDBOX) += barebox
 
+fuzzer-$(CONFIG_FILETYPE)	+= filetype
 fuzzer-$(CONFIG_PRINTF_HEXSTR)	+= printf
 
 ifeq ($(CONFIG_SANDBOX),y)
diff --git a/include/filetype.h b/include/filetype.h
index e699815975d0..e66237878615 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -106,7 +106,7 @@ static inline bool file_is_compressed_file(enum filetype ft)
 #define ARM_HEAD_MAGICWORD_OFFSET	0x20
 #define ARM_HEAD_SIZE_OFFSET		0x2C
 
-#ifdef CONFIG_ARM
+#if defined(CONFIG_ARM) || defined(CONFIG_FUZZ)
 static inline int is_barebox_arm_head(const char *head)
 {
 	return !strcmp(head + ARM_HEAD_MAGICWORD_OFFSET, "barebox");
@@ -122,7 +122,7 @@ static inline int is_barebox_arm_head(const char *head)
 #define MIPS_HEAD_MAGICWORD_OFFSET	0x10
 #define MIPS_HEAD_SIZE_OFFSET		0x1C
 
-#ifdef CONFIG_MIPS
+#if defined(CONFIG_MIPS) || defined(CONFIG_FUZZ)
 static inline int is_barebox_mips_head(const char *head)
 {
 	return !strncmp(head + MIPS_HEAD_MAGICWORD_OFFSET, "barebox", 7);
-- 
2.39.5



