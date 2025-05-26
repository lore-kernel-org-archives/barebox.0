Delivery-date: Mon, 26 May 2025 16:39:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyl-000Y83-0Z
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:39:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyj-0000zf-HN
	for lore@pengutronix.de; Mon, 26 May 2025 16:39:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lnxPEIx9UxKo5+lAoeoj8MTW5QFSswKLnL6CZa9+i18=; b=4a7JQFv1KZLJIo8X4+xMUS7ebR
	aijntWRTxuf8sy+MAuo2vWaduH6RwUCUw8RX1XxnAp03NlCj5HLJd1EB3D7WUG/qhMlSrRklDkFwO
	RJBrrYAWxbppZdS1+kqbAjBNuA8my9+54GVmNTod9e5djPQW4sd2erjYiPAmtVamnMRmar/ant6NV
	iwK4BiOKVHvEaKJjAMNtBf2zF2JncJmnSjM1MCtVP6ho/EOQIhhVtXm3Jf1sISU68cqFPWpYfdT2W
	w6pZoxuR4TUd8jV6ENaDeEU+/8/chqLECmyceZ6KL90IqnuorT5F+t9Lp+DMbTrG4/reSP8fLSQ/j
	wxrkQDsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyE-000000092MX-05xD;
	Mon, 26 May 2025 14:38:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyA-000000092Jm-1OQC
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:38:28 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uJYy7-0000OJ-S4; Mon, 26 May 2025 16:38:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 26 May 2025 16:38:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-rk3588-optee-v1-3-5004995cbd03@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
In-Reply-To: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_073826_388147_70BE1533 
X-CRM114-Status: GOOD (  11.01  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] lib: fdt: add fdt_addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fdt_addresses contains some helpers for handling addresses and sizes.
Add it to the local libfdt.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 lib/Makefile        | 2 +-
 lib/fdt_addresses.c | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/lib/Makefile b/lib/Makefile
index 4e75f2467ac1c05edb1489a997e0767f9e9972ba..0d1d22c0845b61962a36bc7549722570f7475685 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -100,7 +100,7 @@ KASAN_SANITIZE_ubsan.o := n
 CFLAGS_ubsan.o := -fno-stack-protector
 
 libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
-	                      fdt_empty_tree.o
+	                      fdt_empty_tree.o fdt_addresses.o
 $(foreach file, $(libfdt_files), \
 	$(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt) \
 	$(eval CFLAGS_$(file:%.o=%.pbl.o) = -I $(srctree)/scripts/dtc/libfdt))
diff --git a/lib/fdt_addresses.c b/lib/fdt_addresses.c
new file mode 100644
index 0000000000000000000000000000000000000000..4bde1bb186559fea9aa6b842de8b96e9bc9bcc4a
--- /dev/null
+++ b/lib/fdt_addresses.c
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_addresses.c"

-- 
2.39.5



