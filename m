Delivery-date: Mon, 13 Mar 2023 15:44:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjPF-006M5t-VN
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 15:44:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjPE-0006kN-Ez
	for lore@pengutronix.de; Mon, 13 Mar 2023 15:44:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPHt0qT8n9sTGbMa0AuQdWdwAxibLO6rp7ICoB6kWlk=; b=FilldD4awiTO7K
	Yb+nnnVja0X2l/dTpoqp7ZyYC3fYa8W2+bWMZZZpuIkJtF/Z71R8apoesDRDE84usDuEFu5GuFn/L
	tTRQ0HsCwh2o2LSywPdWQd7s9YV7nxcfWcKdBWNv4nCajJfo+l3Vd0H8i6ReYq8z+cy8UrEeZwWRK
	oWhxxI2VNrCwX9CjrOA9N9lvPcM3/9ALsYcRFntLUFVyPJil2q3ErQiXUSAcD3PWy1Uxmt8dKdfG1
	3JXzygmhs2Nn6dy/HsQCeBVtc7m64jVTYXRA625o9eSBIZhfb8KPEbsWNedpVKNa3FOsR81twhjir
	OggpfKx3VnUaFgpGl3RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjNg-006ART-CG; Mon, 13 Mar 2023 14:42:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjNa-006AQ3-LJ
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:42:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNW-0006Mg-Kz; Mon, 13 Mar 2023 15:42:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNW-003s8T-0H; Mon, 13 Mar 2023 15:42:22 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pbjNV-0076kg-0p; Mon, 13 Mar 2023 15:42:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 13 Mar 2023 15:42:19 +0100
Message-Id: <20230313144220.1689252-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
References: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074226_719854_987691AE 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/3] boards: qemu-virt: compile overlay as such
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Build system now differentiates between building normal device trees and
overlays; as the latter would be broken when CONFIG_EXTERNAL_DTS_FRAGMENTS
is in use. Switch over Qemu board support to build the overlay as such.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/boards/qemu-virt/Makefile                             | 2 +-
 common/boards/qemu-virt/board.c                              | 4 ++--
 common/boards/qemu-virt/{overlay-of-flash.dts => flash.dtso} | 0
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename common/boards/qemu-virt/{overlay-of-flash.dts => flash.dtso} (100%)

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 88184e9a7969..53f00d1b0c41 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += board.o
-obj-y += overlay-of-flash.dtb.o
+obj-y += flash.dtbo.o
 ifeq ($(CONFIG_RISCV),y)
 DTC_CPP_FLAGS_overlay-of-flash.dtb := -DRISCV_VIRT=1
 endif
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 7e0e63333c5c..89d103493179 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -34,7 +34,7 @@ static inline void arm_virt_init(void)
 static inline void arm_virt_init(void) {}
 #endif
 
-extern char __dtb_overlay_of_flash_start[];
+extern char __dtbo_flash_start[];
 
 static const struct of_device_id virt_of_match[] = {
 	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
@@ -62,7 +62,7 @@ static int virt_board_driver_init(void)
 		init();
 	}
 
-	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
+	overlay = of_unflatten_dtb(__dtbo_flash_start, INT_MAX);
 	of_overlay_apply_tree(root, overlay);
 
 	/* of_probe() will happen later at of_populate_initcall */
diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/flash.dtso
similarity index 100%
rename from common/boards/qemu-virt/overlay-of-flash.dts
rename to common/boards/qemu-virt/flash.dtso
-- 
2.30.2



