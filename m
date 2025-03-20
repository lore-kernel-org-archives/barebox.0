Delivery-date: Thu, 20 Mar 2025 06:21:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Lg-001l9I-0R
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:21:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Le-0004IF-UE
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:21:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ExDAIADWsEVn3ADSckwqV26/aZeFh5c0eoZRiC8qcnU=; b=HWcbMq2BxmlIExDCNWhKxs4/0o
	auyTTkV9CLc0omAfRzEOWOSY6SXlKHppUqrD85lX8CdDX0Wl4drycRRt3wMIw0JQo6fSuoYqx4gwm
	yClQiNsV35Y8olpmljnnFg2D04lyrfk2apMHVEQ7+72kqY+z6Dm4jjTZkkX0/zraeSeSwCg0qPFVv
	ZwHE9+C8yT+I55KAMQcUE4mU5dDLmqTaRAB3fOL9VA25wuIyYVJkXRNwouDndswV6ae47wyJKfMRy
	iEK8SyPYZE8XtDbB1ruZz7q8Bf+0FG7KlEzzsunmCNVcP+3tehVdb3Dp8w/3cHcpvZicG1NAv+BNj
	rIYxKURw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8LH-0000000BD2R-0OrJ;
	Thu, 20 Mar 2025 05:21:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8LE-0000000BD11-32la
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:21:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8LD-0003zM-Di; Thu, 20 Mar 2025 06:21:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8LC-000hw0-2d;
	Thu, 20 Mar 2025 06:21:15 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8LD-007Gmv-0U;
	Thu, 20 Mar 2025 06:21:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:21:14 +0100
Message-Id: <20250320052114.1732651-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052114.1732651-1-a.fatoum@pengutronix.de>
References: <20250320052114.1732651-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222116_765451_2018C1C3 
X-CRM114-Status: GOOD (  13.40  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] booti: sanity check image magic before parsing header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

booti_load_image is called directly for kernels in FIT images.
Let's have a simple check that the payload is indeed a booti
image before parsing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/booti.c     | 11 +++++++++--
 common/filetype.c  |  6 +++---
 include/filetype.h | 11 +++++++++++
 3 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/common/booti.c b/common/booti.c
index 5efd4f97bbc2..c8f6b5d4fc6d 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -4,6 +4,7 @@
 #define pr_fmt(fmt) "booti: " fmt
 
 #include <common.h>
+#include <filetype.h>
 #include <memory.h>
 #include <bootm.h>
 #include <linux/sizes.h>
@@ -38,13 +39,19 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 	int ret;
 	void *fdt;
 
+	print_hex_dump_bytes("header ", DUMP_PREFIX_OFFSET, kernel_header, 80);
+
+	if ((IS_ENABLED(CONFIG_RISCV) && !is_riscv_linux_bootimage(kernel_header)) ||
+	    (IS_ENABLED(CONFIG_ARM64) && !is_arm64_linux_bootimage(kernel_header))) {
+		pr_err("Unexpected magic at offset 0x38!\n");
+		return ERR_PTR(-EINVAL);
+	}
+
 	text_offset = le64_to_cpup(kernel_header + 8);
 	image_size = le64_to_cpup(kernel_header + 16);
 
 	kernel = get_kernel_address(data->os_address, text_offset);
 
-	print_hex_dump_bytes("header ", DUMP_PREFIX_OFFSET,
-			     kernel_header, 80);
 	pr_debug("Kernel to be loaded to %lx+%lx\n", kernel, image_size);
 
 	if (kernel == UIMAGE_INVALID_ADDRESS)
diff --git a/common/filetype.c b/common/filetype.c
index 73ea17e19bd7..2a68879ee5de 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -365,11 +365,11 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 64)
 		return filetype_unknown;
 
-	if (le32_to_cpu(buf[14]) == 0x644d5241)
+	if (is_arm64_linux_bootimage(buf))
 		return is_dos_exe(buf8) ? filetype_arm64_efi_linux_image : filetype_arm64_linux_image;
-	if (le32_to_cpu(buf[14]) == 0x05435352)
+	if (is_riscv_linux_bootimage(buf))
 		return is_dos_exe(buf8) ? filetype_riscv_efi_linux_image : filetype_riscv_linux_image;
-	if (le32_to_cpu(buf[14]) == 0x56435352 && !memcmp(&buf[12], "barebox", 8))
+	if (is_riscv_linux_bootimage(buf) && !memcmp(&buf[12], "barebox", 8))
 		return filetype_riscv_barebox_image;
 
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
diff --git a/include/filetype.h b/include/filetype.h
index c24d061e8ffa..d445140edba1 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -4,6 +4,7 @@
 
 #include <linux/string.h>
 #include <linux/types.h>
+#include <asm/byteorder.h>
 
 /*
  * List of file types we know
@@ -134,4 +135,14 @@ static inline int is_barebox_head(const char *head)
 	return is_barebox_arm_head(head) || is_barebox_mips_head(head);
 }
 
+static inline bool is_arm64_linux_bootimage(const void *header)
+{
+	return le32_to_cpup(header + 56) == 0x644d5241;
+}
+
+static inline bool is_riscv_linux_bootimage(const void *header)
+{
+	return le32_to_cpup(header + 56) == 0x05435352;
+}
+
 #endif /* __FILE_TYPE_H */
-- 
2.39.5



