Delivery-date: Mon, 10 Nov 2025 21:35:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcB-00HVQm-0j
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc5-0002Jo-SO
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tx9cAlP10IXf1O9fxpb47vPc1B94i5JVuJmvgm0gx3k=; b=jGqHw+3PoLlvRMHuskZPChQtBR
	GzDx3MCkSjLs7YypJstYPwfjV2fU3nL+CLLPqQcF+ZcZed57w0zgyQEpJO+qYoSZYZAQjho2hmtqA
	WcedG1PsUEQT5T4K4zXNPMHe3emplzLT/U8gH3NO9WZk8VlElFpwYncxghCFVwrCAiZBRIQgZVIWb
	CnQGhMj6JOzNYXVZNOmnP0f6OR3NqfNYCHHuk4LwQMchdlQtU2ghD+/Dl9c9Q7ErD9fZadGcB2Xbf
	nRkHLKDpdrRvY7eD+0efXKPtYcWDsCcGg0/apcRuGl1ZDkf7Nv7cnim6Sb59UnvMafyFqJwhQVanZ
	RKa8CiOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbJ-000000065at-02P0;
	Mon, 10 Nov 2025 20:34:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbE-000000065WU-2mKG
	for barebox@bombadil.infradead.org;
	Mon, 10 Nov 2025 20:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Tx9cAlP10IXf1O9fxpb47vPc1B94i5JVuJmvgm0gx3k=; b=Jxw83qN0SwwkOS8CKZOov2R6Fo
	h1CEX5Hy/FcqoZM+j91uEakKUj1X+JME6R+eu9Zdhum8APp0pVGAhj+hOM/lTh+4phbe+9wdzpwOd
	VZw6EAQWOvk9lr137SelAcgfgvbyGQt1lCBRo0xGXzPO1aejMSQxg6XAGWDXp/wILJ1XTLgeumTZa
	KTm5hP0F59N0J46IQXngBUmHrwaZz2Tj+rTIXDPV4ifshdqTWf/vD1m+cJeAO+QBHW63HIQDuV/r3
	gqJxqbg35y3q9xI+dvXzpeUdhEtCnn6ZfUr9kelLE9Qwsh5H+fRt+Y2oUSAraLE9prF4DqEmYT5hF
	Bop/Ij9w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXjV-0000000BgCx-42kF
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:39:23 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-VS; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-19-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_193922_154412_C7ACBFD3 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 19/23] security: optee: add helpers to apply OP-TEE FDTO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add helpers which can be used later on by barebox core to apply an
overlay provided by OP-TEE.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/tee/optee/Kconfig    |  1 +
 drivers/tee/optee/of_fixup.c | 46 ++++++++++++++++++++++++++++++++++++++++++++
 include/tee/optee.h          | 11 +++++++++++
 3 files changed, 58 insertions(+)

diff --git a/drivers/tee/optee/Kconfig b/drivers/tee/optee/Kconfig
index 805aba65edb72e04341db34a1ada6ff94ab30add..ebfc895203287261cd86fc77d15cc9922403e5c0 100644
--- a/drivers/tee/optee/Kconfig
+++ b/drivers/tee/optee/Kconfig
@@ -45,3 +45,4 @@ endif
 config OF_FIXUP_OPTEE
 	def_bool y
 	depends on HAVE_OPTEE && ARM
+	select LIBFDT
diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index 152322901a7e6af9c83da4c6a2d43f6e2c9af329..9df663d970671b658e38073496720033066106b2 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -1,10 +1,14 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
+#include <linux/libfdt.h>
 #include <of.h>
 #include <linux/ioport.h>
+#include <linux/printk.h>
 #include <asm/barebox-arm.h>
 #include <tee/optee.h>
 
+static bool optee_ovl_applied;
+
 int of_optee_fixup(struct device_node *root, void *_data)
 {
 	struct of_optee_fixup_data *fixup_data = _data;
@@ -64,3 +68,45 @@ int of_optee_fixup(struct device_node *root, void *_data)
 
 	return of_fixup_reserved_memory(root, &res_shm);
 }
+
+void optee_register_overlay(void)
+{
+	struct device_node *overlay;
+	size_t size = 0;
+	void *fdto;
+	int err;
+
+	if (optee_ovl_applied) {
+		pr_warn("OP-TEE overlay already applied, skip\n");
+		return;
+	}
+
+	fdto = handoff_data_get_entry(HANDOFF_DATA_BL32_DT_OVL, &size);
+	if (!fdto || size == 0)
+		return;
+
+	err = fdt_check_header(fdto);
+	if (err) {
+		pr_warn("Invalid OP-TEE overlay found: %s\n", fdt_strerror(err));
+		return;
+	}
+
+	overlay = of_unflatten_dtb(fdto, size);
+	if (IS_ERR(overlay)) {
+		pr_warn("Failed to unflatten OP-TEE: %pe\n", overlay);
+		return;
+	}
+
+	err = of_register_overlay(overlay);
+	if (err) {
+		pr_warn("Failed to register OP-TEE overlay: %pe\n", ERR_PTR(err));
+		return;
+	}
+
+	optee_ovl_applied = true;
+}
+
+bool optee_overlay_applied(void)
+{
+	return optee_ovl_applied;
+}
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 679662a6e6944da59d24d6268ebcf5dff19d0980..a3f1917f63957e9cf3193150604cf7c93876e9ce 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -38,6 +38,8 @@ int optee_verify_header (const struct optee_header *hdr);
 void optee_set_membase(const struct optee_header *hdr);
 int optee_get_membase(u64 *membase);
 int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz);
+void optee_register_overlay(void);
+bool optee_overlay_applied(void);
 
 #else
 
@@ -55,6 +57,15 @@ static inline int optee_extract_fdto(const void *fdt, void *fdto, unsigned int f
 	return 0;
 }
 
+static inline void optee_register_overlay(void)
+{
+}
+
+static inline bool optee_overlay_applied(void)
+{
+	return false;
+}
+
 #endif /* CONFIG_HAVE_OPTEE */
 
 #ifdef __PBL__

-- 
2.47.3



