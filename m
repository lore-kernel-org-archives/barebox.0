Delivery-date: Wed, 04 Feb 2026 21:02:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4t-008rqx-29
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:02:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4s-000620-4R
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:02:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TA7M2rWdc4udFZcY+QEDOJAPMuKNnTuR/gypYfDD0u8=; b=nggru7IZNyLkIoNONzFWX0YSnj
	yQ6zqLULLHr6yQBCcD7dYZivq40iS6KujiM0/xqr1gESf/wbFI6IUBYmf485jHfa7Nua70zNdkrX5
	tznhGGqMR2kN/mySZjE14eS+XA6FSYzG7+KOwB+KUnNql+SJRmkLJG0f8dxwNSByPcymOmJv7XaKd
	v3b1tVN2lFnXpHxZ+RXZBucAzoReFbsHzHKZ1Wj6g9FDTsevlFnoBs9Ld3lLK7U28MBgRUd+Fr8f4
	GmSQUpUVGLcJo1iu3eb/Hu92RodtssHa5h90x5ijqXDqrc1u4tw4oxZdmtNwhH4TnGn5IORurP8OM
	tkoXpPLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4D-0000000919l-2KdC;
	Wed, 04 Feb 2026 20:01:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4A-0000000914I-2GmQ
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:01:35 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnj41-0005Eh-2C; Wed, 04 Feb 2026 21:01:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 04 Feb 2026 21:01:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-v2025-09-0-topic-optee-of-handling-v2-11-da075e6818e0@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_120134_616610_60F03452 
X-CRM114-Status: GOOD (  13.60  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/15] security: optee: add optee_handoff_overlay helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper to pass the OP-TEE provided overlay to barebox via the
handoff mechanism. This can be useful to generalize the reserved-memory
node handling since OP-TEE can provide this information via the overlay
if configured in OP-TEE.

While on it sort the include headers in alphabetical order.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/tee/optee.h |  5 +++++
 security/Kconfig    |  9 +++++++++
 security/optee.c    | 15 ++++++++++++++-
 3 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/include/tee/optee.h b/include/tee/optee.h
index 10e829c04f8832c4c04771800f1963e25f425482..7126e3c6e24bbf0f37aee7827dc3b4d9619d3bc3 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -37,6 +37,7 @@ int optee_verify_header (const struct optee_header *hdr);
 
 void optee_set_membase(const struct optee_header *hdr);
 int optee_get_membase(u64 *membase);
+void optee_handoff_overlay(void *ovl, unsigned int ovl_sz);
 
 #else
 
@@ -49,6 +50,10 @@ static inline int optee_get_membase(u64 *membase)
 	return -ENOSYS;
 }
 
+void optee_handoff_overlay(void *ovl, unsigned int ovl_sz)
+{
+}
+
 #endif /* CONFIG_HAVE_OPTEE */
 
 #ifdef __PBL__
diff --git a/security/Kconfig b/security/Kconfig
index 40d468ae07d2b1d4357542df88a0a92eeb3d365f..fec299cf21e459d6e9d4e13946dcfc247db4a822 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -117,6 +117,15 @@ config HAVE_OPTEE
 	  bidirectional communication with OP-TEE is enabled via
 	  CONFIG_OPTEE.
 
+config OPTEE_APPLY_OVERLAY
+	bool "Apply OP-TEE DTBO to barebox and kernel DT"
+	depends on HAVE_OPTEE
+	help
+	  Apply the OP-TEE provided device-tree overlay to internal barebox DT
+	  and the kernel DT if this option is enabled. This requires barebox
+	  machine support and the board lowlevel code to pass the barebox
+	  internal DT to OP-TEE while booting.
+
 config OPTEE_SIZE
 	hex
 	default 0x02000000
diff --git a/security/optee.c b/security/optee.c
index 422bc1c90924ba8ab266b1aa8d06e52c819d2010..d2cda9d77b85947ff222390177666e75e54f9adb 100644
--- a/security/optee.c
+++ b/security/optee.c
@@ -2,10 +2,12 @@
 
 #define pr_fmt(fmt) "optee: " fmt
 
-#include <tee/optee.h>
+#include <compressed-dtb.h>
 #include <linux/printk.h>
 #include <linux/errno.h>
 #include <linux/limits.h>
+#include <pbl/handoff-data.h>
+#include <tee/optee.h>
 
 static u64 optee_membase = U64_MAX;
 
@@ -60,3 +62,14 @@ void optee_set_membase(const struct optee_header *hdr)
 	optee_membase = (u64)hdr->init_load_addr_hi << 32;
 	optee_membase |= hdr->init_load_addr_lo;
 }
+
+void optee_handoff_overlay(void *ovl, unsigned int ovl_sz)
+{
+	if (!IS_ENABLED(CONFIG_OPTEE_APPLY_OVERLAY))
+		return;
+
+	if (!blob_is_fdt(ovl))
+		return;
+
+	handoff_data_add(HANDOFF_DATA_TEE_DT_OVL, ovl, ovl_sz);
+}

-- 
2.47.3



