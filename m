Delivery-date: Mon, 12 Jun 2023 14:52:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h26-003q52-K2
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:52:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h24-0005xQ-6S
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:52:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tS1Hg9Qtkm2WfhVlIezg86sLq/a2n644nhq1FVpCHB0=; b=qtGnnrkxjwnhlCo1l1gEDJNBS+
	wVUL32VESOyujsgF/oLR7RWG9mJ/yiWwOu6IUorDgu3eDaJIyNQGjG1sZB2vbbDoIEYuYtbY5rB29
	vfWt2InE+3YUIrVmdUrXuIp+SxYBDW8lS8qNbk2RdwJfB/Mz/JWl2M2ZsrE8vpcygJj9TUn3Mh+DF
	l6qqQPvm9dvqK6h1HhKy6ZTZN79lx0Q4Fr+PCuRDDjb7wMI38r8m31+MheKNV1fQeLifyRu9y/O6X
	J59kOOLWKelXJb97Mhmq3dEtAYMnnCRDDBHl1zUE6/KaqL0AUwCRkon4xdfdOaWaQ7ByFcAiP5CjF
	Aem+qLHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h16-0044U7-0C;
	Mon, 12 Jun 2023 12:51:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h12-0044RO-3C
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:51:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-0005Ra-Or; Mon, 12 Jun 2023 14:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0l-006tSW-1Q; Mon, 12 Jun 2023 14:51:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h0j-004XjM-Ru; Mon, 12 Jun 2023 14:51:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:51:01 +0200
Message-Id: <20230612125104.1082800-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
References: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055125_028546_A35A5688 
X-CRM114-Status: GOOD (  10.96  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 3/6] boards: qemu-virt: compile overlay as such
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Build system now differentiates between building normal device trees and
overlays; as the latter would be broken when CONFIG_EXTERNAL_DTS_FRAGMENTS
is in use. Switch over Qemu board support to build the overlay as such.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu-virt/Makefile                            | 6 +++---
 common/boards/qemu-virt/board.c                             | 4 ++--
 .../{overlay-of-flash.dts => qemu-virt-flash.dtso}          | 0
 3 files changed, 5 insertions(+), 5 deletions(-)
 rename common/boards/qemu-virt/{overlay-of-flash.dts => qemu-virt-flash.dtso} (100%)

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index c16727751550..d280e5ebdd2b 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -1,12 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += board.o
-obj-y += overlay-of-flash.dtb.o
+obj-y += qemu-virt-flash.dtbo.o
 ifeq ($(CONFIG_RISCV),y)
-DTC_CPP_FLAGS_overlay-of-flash.dtb := -DRISCV_VIRT=1
+DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DRISCV_VIRT=1
 endif
 ifeq ($(CONFIG_ARM),y)
-DTC_CPP_FLAGS_overlay-of-flash.dtb := -DARM_VIRT=1
+DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DARM_VIRT=1
 endif
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 19d995aa508e..ea29783d6056 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -34,7 +34,7 @@ static inline void arm_virt_init(void)
 static inline void arm_virt_init(void) {}
 #endif
 
-extern char __dtb_overlay_of_flash_start[];
+extern char __dtbo_qemu_virt_flash_start[];
 
 static const struct of_device_id virt_of_match[] = {
 	{ .compatible = "linux,dummy-virt", .data = arm_virt_init },
@@ -65,7 +65,7 @@ static int virt_board_driver_init(void)
 		init();
 	}
 
-	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
+	overlay = of_unflatten_dtb(__dtbo_qemu_virt_flash_start, INT_MAX);
 	of_overlay_apply_tree(root, overlay);
 
 	/* of_probe() will happen later at of_populate_initcall */
diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/qemu-virt-flash.dtso
similarity index 100%
rename from common/boards/qemu-virt/overlay-of-flash.dts
rename to common/boards/qemu-virt/qemu-virt-flash.dtso
-- 
2.39.2



