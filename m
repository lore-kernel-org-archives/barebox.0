Delivery-date: Thu, 05 Jun 2025 13:39:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w7-003zpt-0h
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w4-0002VN-Sx
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LDdlbdku+wbQsWTsK31tVP9XScKu2yir2yneotBfSDY=; b=H8BvTim4949XGlpfHk2YnmU8F7
	k+XQEEqx/TA5H8ZX45mD6rsAXefifwqGBVxE9G1EcjWVJOjKvuTXNOgj2hSQtqZAitxrB4Hg4agnd
	lB7VBsDswd9t726+xmJcQkBFzOLVZ7EDC0gsGEulkKvAJpNhcNYhsskuI9rtKiFd4zR4lD0jmIdkO
	gkYCNU/ow3ayANCwjVJJLUJQ4daW5E0D9s8acdyddEk9FxQBQCnmQ4kHO2S+MQ50JQ3UvHXPHU1Y1
	8acqmcTlwOPIMyP4slc4YSagOnszSHE7DQt06TBIdSXPtm6hhFKxBLmyP9s1FT/SkrZmqJsUwVDg+
	Xrb3M7ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8va-0000000FOWs-2Ifq;
	Thu, 05 Jun 2025 11:38:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOX-2tNc
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001jF-GN; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-001x0n-10;
	Thu, 05 Jun 2025 13:38:26 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sg-008mT4-0s;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:27 +0200
Message-Id: <20250605113530.2076990-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_732217_FB9FB50E 
X-CRM114-Status: GOOD (  14.54  )
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
Subject: [PATCH 18/21] fdt: add fuzz test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have four parsers that operate on device trees in barebox:

  - OF unflattener: Used in barebox proper on the same DTs as libfdt,
    but additionally also processes FIT images, which are untrusted

  - fdt_machine_is_compatible: very minimal device tree parser for
    extracting compatibles out of untrusted device trees without
    unflattening

  - The FIT image hashing code, but this only runs after unflattening

  - libfdt: optionally used in PBL. Only operates on trusted input,
    either barebox' own device tree or an externally passed device tree
    from a previous boot stage

Add fuzz tests for operating on the two parsers that take untrusted
input. Multiple issues have already been found by them in the past and
fixed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c        | 39 +++++++++++++++++++++++++++++++++++++++
 images/Makefile.sandbox |  2 ++
 2 files changed, 41 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9638b3d238be..84a36c77bbf0 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -12,6 +12,7 @@
 #include <malloc.h>
 #include <init.h>
 #include <memory.h>
+#include <fuzz.h>
 #include <linux/sizes.h>
 #include <linux/ctype.h>
 #include <linux/log2.h>
@@ -355,6 +356,18 @@ struct device_node *of_unflatten_dtb_const(const void *infdt, int size)
 	return __of_unflatten_dtb(infdt, size, true);
 }
 
+static int fuzz_dtb(const u8 *data, size_t size)
+{
+	struct device_node *np;
+
+	np = of_unflatten_dtb_const(data, size);
+	if (!IS_ERR(np))
+		of_delete_node(np);
+
+	return 0;
+}
+fuzz_test("dtb", fuzz_dtb);
+
 struct fdt {
 	void *dt;
 	uint32_t dt_nextofs;
@@ -812,3 +825,29 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 
 	return 0;
 }
+
+/*
+ * In order to randomize all inputs to fdt_machine_is_compatible,
+ * we use the last 32 bytes of the random data as a compatible.
+ * As there maybe embedded nul bytes, the size thus varies
+ * between 0 and 31 bytes.
+ * of 
+ */
+#define COMPAT_THRESHOLD	768
+#define COMPAT_LEN		32
+
+static int fuzz_fdt_compatible(const u8 *data, size_t size)
+{
+	char compat[32] = "barebox,sandbox";
+
+	if (size > COMPAT_THRESHOLD) {
+		size -= COMPAT_LEN;
+		memcpy(compat, &data[COMPAT_THRESHOLD - COMPAT_LEN], COMPAT_LEN);
+		compat[COMPAT_LEN - 1] = '\0';
+	}
+
+	fdt_machine_is_compatible((const void *)data, size, compat);
+
+	return 0;
+}
+fuzz_test("fdt-compatible", fuzz_fdt_compatible);
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index b6893d314668..87963e2f432f 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -4,6 +4,8 @@ SYMLINK_TARGET_barebox = sandbox_main.elf
 symlink-$(CONFIG_SANDBOX) += barebox
 
 fuzzer-$(CONFIG_FILETYPE)	+= filetype
+fuzzer-$(CONFIG_OFTREE)		+= dtb
+fuzzer-$(CONFIG_OFTREE)		+= fdt-compatible
 fuzzer-$(CONFIG_PARTITION)	+= partitions
 fuzzer-$(CONFIG_PRINTF_HEXSTR)	+= printf
 
-- 
2.39.5



