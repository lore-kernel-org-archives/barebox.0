Delivery-date: Wed, 28 May 2025 16:20:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHe0-001DQx-0N
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:20:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdz-0007lj-HD
	for lore@pengutronix.de; Wed, 28 May 2025 16:20:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6hyLJtcBBi94G2Jk0lMd/tE3qR51F3g79wrwlOyMJsQ=; b=tXS9A0UGuNr5waru2+SP2GTOce
	gzAmiT0noffQJ7vWrBzlxuimGMcIBshLofq6K1x+ZlgJon25hQdQ6vgYGYjjkOx15aqU7COrqaG69
	Jw84DUs2MrfFnTuMYMH6FaExk3gYJPpplGkSJEmYY7CbtxfeNaX9lV3mf1XqY6c+YfZCCY5etyHB8
	j6VWTOa4j5IvJHArrMhBss2DGN8isZ2lB6qCwzadaUBBvzXv9A1o8rBUa9RpIxvdVSLd2uDsRgmyo
	FdDPJJdYDJ6646mlApmofZwLf/YiO5foQ59LmtaNs+E9iuie5pirwuCwmYO3E8zcx2AO8x4XbExLj
	gOvGifpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHdO-0000000DNA0-1H8P;
	Wed, 28 May 2025 14:19:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHVL-0000000DKy8-2GgU
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:11:41 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uKHVI-00011O-Po; Wed, 28 May 2025 16:11:36 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 28 May 2025 16:11:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-rk3588-optee-v2-3-63070238dd13@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
In-Reply-To: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071139_645313_94F24995 
X-CRM114-Status: GOOD (  11.30  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/9] lib: fdt: add fdt_addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fdt_addresses contains some helpers for handling addresses and sizes.
Add it to the local libfdt.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- none
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



