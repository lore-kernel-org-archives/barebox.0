Delivery-date: Thu, 16 Jan 2025 15:11:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQaL-000ca8-0n
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:11:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQaK-0002ji-Bt
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:11:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I0/3tUGArt/9q76pPgzakam7QBq577cF9J5V0L+mW5M=; b=Uhh2Apw487TA+kRn/rUTooY+Wu
	b2XqicbUw8jnzmz+Y9GhsYHf/cYv6FzqKaVTabdBpyY6eq5izqkUYZuf6HBCPrg3hBIjSb2cdEfXr
	ReI+JJk9aSEpBSJ4xrq8IvaxivNRJQOekcekwzof4ri/8vh1h4R9NJRuLOTnCiTdBNZk53R123gO/
	p4pwqxlZZHVDNQddUmd86p/59MGy/1WXGGIu3cdNPerP2t5mv9oi80vIQ1gIXvcaOEJ/BWA2Ku6yH
	JMmcj6apMW5gIAJgqHqztq+9jgwZYmFYtA+OPiVxedVljXFX7OrQN93imCQ2f+t60i8xwVE6nGZxK
	I6qkyJyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQZm-0000000F6k5-2fg5;
	Thu, 16 Jan 2025 14:10:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQXy-0000000F6BO-1yFW
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:08:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQXx-0002Dr-6w; Thu, 16 Jan 2025 15:08:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQXx-000GZz-06;
	Thu, 16 Jan 2025 15:08:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQXx-001Ff0-29;
	Thu, 16 Jan 2025 15:08:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Jan 2025 15:08:31 +0100
Message-Id: <20250116140831.298514-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_060834_505741_D8FAD56A 
X-CRM114-Status: GOOD (  12.37  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] booti: sanity check image magic before parsing header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

booti_load_image is called directly for kernels in FIT images.
Let's have a simple check that the payload is indeed a booti
image before parsing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/booti.c     | 11 +++++++++--
 common/filetype.c  |  6 +++---
 include/filetype.h | 11 +++++++++++
 3 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/common/booti.c b/common/booti.c
index e745ff696376..4c2033b7de0e 100644
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



