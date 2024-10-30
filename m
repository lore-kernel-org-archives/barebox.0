Delivery-date: Wed, 30 Oct 2024 16:00:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6ABo-002jUG-03
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 16:00:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6ABo-0004Hf-K0
	for lore@pengutronix.de; Wed, 30 Oct 2024 16:00:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+frR/3jQcxpb9puJWN9vC8nZjUX5ngBdqvonlrkgTR0=; b=azrGgKaep1YA7r6U5hGCQMuubS
	i4XGIVCjOg7xaQ2xIx1AjpzqGxGgFIMhoswKroE8bO8kpBIbvQzPMEN7N35nsXwcOgGrezGiDZ4h9
	LfYLgrHvC6ftz8zL/PtxKb7m5DaeUaieCvcCHYpX0VVrU4koqeFuJHjSWZtjAfDGG9stV7Iv1RcLX
	rhK2+mrEpJcMx6A5iB5QHynYD6g9eaQOKwlO5aA8sx8/BsfcL1u199DuwoePNfrLKVLq8+hg6eyfC
	OIsTMd5IHeJ/Nfs8VjyWV6RYOaQIy47Z4aG1OonL/ROVTdpXODeRL3JP1x6ppeVCymV1ihi3gz+fK
	Y9/PB3Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6ABD-00000000kkF-3SGS;
	Wed, 30 Oct 2024 15:00:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6AB2-00000000kce-0QoZ
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 15:00:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-0003sR-PE; Wed, 30 Oct 2024 16:00:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-001DMW-1s;
	Wed, 30 Oct 2024 16:00:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-003w8y-1h;
	Wed, 30 Oct 2024 16:00:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2024 16:00:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-imx-flash-header-v3-v1-2-1ae28b3b8947@pengutronix.de>
References: <20241030-imx-flash-header-v3-v1-0-1ae28b3b8947@pengutronix.de>
In-Reply-To: <20241030-imx-flash-header-v3-v1-0-1ae28b3b8947@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730300400; l=2213;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qIpJDmJ72wlEsMXGnznLMrlQ5X//gO5irHAdtKA3eRU=;
 b=+EjBZY6G7dItJ2mlF897o52wE68IOJHLNXhVNfbgXIDUJxmZEIrflUbFFa6Lgz3zzig7yZWAf
 XcCSc3c3fCiA+ZGLlk5dBT4ufztgOYDh5S5OSCf/qPhoTe6y35I6imn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_080004_417250_D805D2AA 
X-CRM114-Status: GOOD (  14.84  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX: Add bootm handler for i.MX flash header v3
 images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for chainloading barebox images in the i.MX flash
header v3 format as found on i.MX9 and some i.MX8 SoCs,

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile       |  2 +-
 arch/arm/mach-imx/imx-v3-image.c | 50 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 22ea48a833..23f51fc660 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -19,7 +19,7 @@ obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
 obj-pbl-$(CONFIG_ARCH_IMX_SCRATCHMEM) += scratch.o
-obj-$(CONFIG_ARCH_IMX9) += imx9.o
+obj-$(CONFIG_ARCH_IMX9) += imx9.o imx-v3-image.o
 lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
 obj-pbl-$(CONFIG_ARCH_IMX_ROMAPI) += romapi.o
diff --git a/arch/arm/mach-imx/imx-v3-image.c b/arch/arm/mach-imx/imx-v3-image.c
new file mode 100644
index 0000000000..e5df5fdb81
--- /dev/null
+++ b/arch/arm/mach-imx/imx-v3-image.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <bootm.h>
+#include <memory.h>
+#include <init.h>
+#include <soc/imx9/flash_header.h>
+
+static int do_bootm_imx_image_v3(struct image_data *data)
+{
+	void (*bb)(void);
+	resource_size_t start, end;
+	struct flash_header_v3 *hdr;
+	u32 offset;
+	int ret;
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		return ret;
+
+	ret = bootm_load_os(data, start);
+	if (ret)
+		return ret;
+
+	hdr = (void *)start;
+	offset = hdr->img[0].offset;
+
+	if (data->verbose)
+		printf("Loaded barebox image to 0x%08llx\n", start);
+
+	shutdown_barebox();
+
+	bb = (void *)start + offset;
+
+	bb();
+
+	return -EIO;
+}
+
+static struct image_handler imx_image_v3_handler = {
+	.name = "",
+	.bootm = do_bootm_imx_image_v3,
+	.filetype = filetype_imx_image_v3,
+};
+
+static int imx_register_image_v3_handler(void)
+{
+	return register_image_handler(&imx_image_v3_handler);
+}
+late_initcall(imx_register_image_v3_handler);

-- 
2.39.5



