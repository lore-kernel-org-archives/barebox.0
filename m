Delivery-date: Tue, 04 May 2021 12:46:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldsZW-000573-Tl
	for lore@lore.pengutronix.de; Tue, 04 May 2021 12:46:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldsZW-0001xJ-0p
	for lore@pengutronix.de; Tue, 04 May 2021 12:46:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RwWxB4Kdg3nbJXO3I2Klr6sK3hgGCC393rOk4Mu24QY=; b=F/kA2oKcYA4n6AI5jyfpM1LRy
	iE75YWBCWRN1yj234YyXq+eZ9aXOdZ92zMMOhNbxvc36v5CUs7AYO8VDQJmu8KC+6yRkT2YuR5n3O
	/8i1IiSdwAonk/4Rmq4lm1Y6BwlSu0DpK9968OPHlp+e1hXpIXNv76LGQIJC28RWAjJFnnVdNhekO
	+WzmafNyRum79J9EEHv+yh4MnZ5WpTZdsIl8hGt4XN0BBvg1umPWHEpYGu9zbJDsWMJ67ePXx3Ddz
	PfiNaVs9qq3G6C5X5ojwIB/+ISlN+AdMMLNIU1mYBpT+QDkP1aEkZqNLBwOTh8BBJ2CoFhOByC4/M
	8v8PoH+UQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldsYN-00G0Su-K2; Tue, 04 May 2021 10:45:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldsYJ-00G0Sn-GO
 for barebox@desiato.infradead.org; Tue, 04 May 2021 10:45:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=TCvCaYDn8whexQNat0I+Q7Oe7kjHlpzygHoCDg90+/0=; b=wj8EMrFzFmsnKxa4vkTYGcNhyb
 DDGoQo4X3CNf41k5nxhXnRo2irqcmlzA6cYCyLUpvfD3HG6rRTzYPWc6QfmEiA89o32fUawu21bq2
 +UoHeSMQ8ZKBXBAdA8TxaxcMSxlIzUMpptRbTFvnEsSFwxHdKYaDYDplResp6BUQ/pNppT88wrkdm
 HIf+2zW/f8n+2TYjcFqXy/sG3BzmjmazUoF7iJtlm3jTAb+lp7ziZS4rQpEYfm/veAfaCqcXCFpKK
 DAxKvM4TYAWGHtYy/FMHf11G8TEEf0KbzkOFE97/7KyWxxhODQ0hiUKW1bLgHDmjjyLVcfcOJjQZt
 lZLszV0A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldsYG-003uFY-L2
 for barebox@lists.infradead.org; Tue, 04 May 2021 10:45:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldsYE-0001Yp-DG; Tue, 04 May 2021 12:45:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldsYE-00015W-09; Tue, 04 May 2021 12:45:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 May 2021 12:45:13 +0200
Message-Id: <20210504104513.2640-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210504104513.2640-1-a.fatoum@pengutronix.de>
References: <20210504104513.2640-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_034516_706152_B833B941 
X-CRM114-Status: GOOD (  16.12  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] RISC-V: add Linux kernel boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux kernel RISC-V header has the same structure as on ARM64. The
barebox header for the architecture also follows the same structure.

Add the architecture-specific glue for barebox to be able to boot both
RISC-V Linux and barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/lib/Makefile |  1 +
 arch/riscv/lib/bootm.c  | 51 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 52 insertions(+)
 create mode 100644 arch/riscv/lib/bootm.c

diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 49750d576ae1..a399de7399cb 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
 obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
 obj-$(CONFIG_RISCV_SBI) += sbi.o
 obj-$(CONFIG_CMD_RISCV_CPUINFO) += cpuinfo.o
+obj-$(CONFIG_BOOTM) += bootm.o
diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
new file mode 100644
index 000000000000..b3e41de4a890
--- /dev/null
+++ b/arch/riscv/lib/bootm.c
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2018 Sascha Hauer <s.hauer@pengutronix.de>
+
+#include <common.h>
+#include <bootm.h>
+
+static int do_bootm_linux(struct image_data *data)
+{
+	void (*fn)(unsigned long a0, unsigned long dtb, unsigned long a2);
+	phys_addr_t devicetree;
+
+	fn = booti_load_image(data, &devicetree);
+	if (IS_ERR(fn))
+		return PTR_ERR(fn);
+
+	shutdown_barebox();
+
+	fn(0, devicetree, 0);
+
+	return -EINVAL;
+}
+
+static struct image_handler riscv_linux_handler = {
+        .name = "RISC-V Linux image",
+        .bootm = do_bootm_linux,
+        .filetype = filetype_riscv_linux_image,
+};
+
+static struct image_handler riscv_fit_handler = {
+	.name = "FIT image",
+	.bootm = do_bootm_linux,
+	.filetype = filetype_oftree,
+};
+
+static struct image_handler riscv_barebox_handler = {
+        .name = "RISC-V barebox image",
+        .bootm = do_bootm_linux,
+        .filetype = filetype_riscv_barebox_image,
+};
+
+static int riscv_register_image_handler(void)
+{
+	register_image_handler(&riscv_linux_handler);
+	register_image_handler(&riscv_barebox_handler);
+
+	if (IS_ENABLED(CONFIG_FITIMAGE))
+		register_image_handler(&riscv_fit_handler);
+
+	return 0;
+}
+late_initcall(riscv_register_image_handler);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

