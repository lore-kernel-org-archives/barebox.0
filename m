Delivery-date: Fri, 07 Jan 2022 14:43:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5pX8-00Dl4w-08
	for lore@lore.pengutronix.de; Fri, 07 Jan 2022 14:43:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5pX6-0007f0-Gg
	for lore@pengutronix.de; Fri, 07 Jan 2022 14:43:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vVSjs5NgQa0gGuM8zWtIe+vs7tXIybRlixTnCTW7l/8=; b=ou2cz25ClwRobH
	Hki1c0ZcLH016jkRiNR7PQZ/+qm1SqHdf4Ch2mPgJ0xN3/MIRlgA34F5kj8qF9NOvp60GKKcNWUJb
	2ZQ3Qgl66SU505D1k/YUwJRRMsAXKJwz57eV/eAqRE8aJb8m97ywECG1WGfpdhm8FEm8yLys5sFDv
	5VHUoV7Kd8i3bMhpnqAflqcEhTilwAgO0Hzc9M1efUNMrNv+/YoNDqT9xIJAKhS8k7SFTXiYVEJXz
	QbCGss4wL6vwkhMFM2fBvpVLaEq4MaFR3HChSjyjQg9yVuJkR/+NvWbGz5WcI0Q7biCqxrKMuuwSd
	5OwOMr+CElLr9yOorYmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5pVj-00410S-95; Fri, 07 Jan 2022 13:42:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5pVe-0040yt-VH
 for barebox@lists.infradead.org; Fri, 07 Jan 2022 13:42:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1n5pVc-0007VV-26; Fri, 07 Jan 2022 14:42:20 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1n5pVb-004Krq-Ik; Fri, 07 Jan 2022 14:42:19 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  7 Jan 2022 14:42:18 +0100
Message-Id: <20220107134219.1031552-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_054223_034451_A31529AF 
X-CRM114-Status: GOOD (  12.27  )
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
Subject: [PATCH 1/2] acpi.h: add defines for adr_space and gas
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

>From linux v5.15-rc1.

Signed-off-by: Steffen Trumtrar <str@pengutronix.de>
---
 include/acpi.h | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/include/acpi.h b/include/acpi.h
index b8e73b35df..04f722da23 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -10,6 +10,78 @@
 #include <linux/types.h>
 #include <driver.h>
 
+/* Names within the namespace are 4 bytes long */
+
+#define ACPI_NAMESEG_SIZE               4	/* Fixed by ACPI spec */
+#define ACPI_PATH_SEGMENT_LENGTH        5	/* 4 chars for name + 1 char for separator */
+#define ACPI_PATH_SEPARATOR             '.'
+
+/* Sizes for ACPI table headers */
+
+#define ACPI_OEM_ID_SIZE                6
+#define ACPI_OEM_TABLE_ID_SIZE          8
+
+/*
+ * Algorithm to obtain access bit or byte width.
+ * Can be used with access_width of struct acpi_generic_address and access_size of
+ * struct acpi_resource_generic_register.
+ */
+#define ACPI_ACCESS_BIT_WIDTH(size)     (1 << ((size) + 2))
+#define ACPI_ACCESS_BYTE_WIDTH(size)    (1 << ((size) - 1))
+
+/* Address Space (Operation Region) Types */
+
+typedef u8 acpi_adr_space_type;
+#define ACPI_ADR_SPACE_SYSTEM_MEMORY    (acpi_adr_space_type) 0
+#define ACPI_ADR_SPACE_SYSTEM_IO        (acpi_adr_space_type) 1
+#define ACPI_ADR_SPACE_PCI_CONFIG       (acpi_adr_space_type) 2
+#define ACPI_ADR_SPACE_EC               (acpi_adr_space_type) 3
+#define ACPI_ADR_SPACE_SMBUS            (acpi_adr_space_type) 4
+#define ACPI_ADR_SPACE_CMOS             (acpi_adr_space_type) 5
+#define ACPI_ADR_SPACE_PCI_BAR_TARGET   (acpi_adr_space_type) 6
+#define ACPI_ADR_SPACE_IPMI             (acpi_adr_space_type) 7
+#define ACPI_ADR_SPACE_GPIO             (acpi_adr_space_type) 8
+#define ACPI_ADR_SPACE_GSBUS            (acpi_adr_space_type) 9
+#define ACPI_ADR_SPACE_PLATFORM_COMM    (acpi_adr_space_type) 10
+#define ACPI_ADR_SPACE_PLATFORM_RT      (acpi_adr_space_type) 11
+
+/*******************************************************************************
+ *
+ * Master ACPI Table Header. This common header is used by all ACPI tables
+ * except the RSDP and FACS.
+ *
+ ******************************************************************************/
+
+struct __packed acpi_table_header {
+	char signature[ACPI_NAMESEG_SIZE];	/* ASCII table signature */
+	u32 length;		/* Length of table in bytes, including this header */
+	u8 revision;		/* ACPI Specification minor version number */
+	u8 checksum;		/* To make sum of entire table == 0 */
+	char oem_id[ACPI_OEM_ID_SIZE];	/* ASCII OEM identification */
+	char oem_table_id[ACPI_OEM_TABLE_ID_SIZE];	/* ASCII OEM table identification */
+	u32 oem_revision;	/* OEM revision number */
+	char asl_compiler_id[ACPI_NAMESEG_SIZE];	/* ASCII ASL compiler vendor ID */
+	u32 asl_compiler_revision;	/* ASL compiler version */
+};
+
+/*******************************************************************************
+ *
+ * GAS - Generic Address Structure (ACPI 2.0+)
+ *
+ * Note: Since this structure is used in the ACPI tables, it is byte aligned.
+ * If misaligned access is not supported by the hardware, accesses to the
+ * 64-bit Address field must be performed with care.
+ *
+ ******************************************************************************/
+
+struct __packed acpi_generic_address {
+	u8 space_id;		/* Address space where struct or register exists */
+	u8 bit_width;		/* Size in bits of given register */
+	u8 bit_offset;		/* Bit offset within the register */
+	u8 access_width;	/* Minimum Access size (ACPI 3.0) */
+	u64 address;		/* 64-bit address of struct or register */
+};
+
 typedef char acpi_sig_t[4];
 
 struct __packed acpi_rsdp { /* root system description pointer */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

