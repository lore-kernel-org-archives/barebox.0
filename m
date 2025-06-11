Delivery-date: Wed, 11 Jun 2025 16:49:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPMli-006BPE-3A
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 16:49:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPMli-0004D7-CS
	for lore@pengutronix.de; Wed, 11 Jun 2025 16:49:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g3J/hZJR3Lc5N0L1DResKjYHuz9L+ze1t1PeC8XdQyo=; b=w1xKkbfC/4a+AYxeGWxbP6aav1
	UnS5xMQLZtYbjRyb9j3huCE82IQhO/CAlcfAQUyGRY4xrrwe8a1lpxwxcUqeK/Cj/T1ypxSzCsv3+
	PhQzF6WXBVT6FEUazaK0UEftLGV+GlZ52YzNsq73tZtn9/VpbHQjzfz9tw63jlHSnGO9UNBTylas/
	4Aci/R5olSbi2Pz5g/NO/fMGQIss1MaZjEsFLxTX3Ha+uqjT90KvXWLBkxKVSvdLXW2r2lDQhd75X
	+81UdLIdTli1OYMyPdaKV8KTtYjIM7lbYCyf36iPipYJs8MlVrwRStxsUCgwXcpOrQ6YFxPMN57tp
	dSYfFb+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMl4-0000000A9pe-2cMD;
	Wed, 11 Jun 2025 14:48:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPHsw-00000009UZo-3ZZB
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 09:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=g3J/hZJR3Lc5N0L1DResKjYHuz9L+ze1t1PeC8XdQyo=; b=V3NipspCbSVQuNT10lUuZmqZPy
	5NlK/tyWpGJcq7tekWqc//cWk0mAQXYLGUcygRJNp+fn7r1PcCjrflsPpZz4RzkNAcVFbiWxeEmwX
	TstiG8GTn/hIiqI2RmA+sOFe+akGGLAXOVcD916/QQcc7ueqkvfwqJgHXgWeWtS/siZ2pz5uMrWb4
	AJeAMVzjR/Wdc7w6YRiTTL50+mNhK+ljKv2LqQ6jciPh76tgC9YFo2w9OrBP9Aj1PWFAv3G49+Ro3
	sUip9i6/YCOn2iz1ymImmUou7uxrc8w0hi5ep+g54LeFUIAw94GMW6Tbn8C2yEfjtsHp9clHiXcYs
	C+wMUtrQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPHsu-00000002EmU-1QVR
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 09:36:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lsc@pengutronix.de>)
	id 1uPHsr-0007sE-R2; Wed, 11 Jun 2025 11:36:37 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1uPHsr-002vO1-26;
	Wed, 11 Jun 2025 11:36:37 +0200
Received: from lsc by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1uPHsr-005VKH-1v;
	Wed, 11 Jun 2025 11:36:37 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Wed, 11 Jun 2025 11:36:22 +0200
Message-Id: <20250611093622.1309016-1-l.schmidt@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_103640_417560_E41838BC 
X-CRM114-Status: GOOD (  12.67  )
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
Subject: [PATCH] ARM: k3: beagleplay: Enable 32k crystal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
---
 arch/arm/boards/beagleplay/Makefile |  1 +
 arch/arm/boards/beagleplay/board.c  | 30 +++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+)
 create mode 100644 arch/arm/boards/beagleplay/board.c

diff --git a/arch/arm/boards/beagleplay/Makefile b/arch/arm/boards/beagleplay/Makefile
index a8c7320bdb..2d257fb4b2 100644
--- a/arch/arm/boards/beagleplay/Makefile
+++ b/arch/arm/boards/beagleplay/Makefile
@@ -1,2 +1,3 @@
 pbl-y += lowlevel.o
+obj-y += board.o
 pbl-$(CONFIG_MACH_K3_CORTEX_R5) += entry-r5.o ddr.o
diff --git a/arch/arm/boards/beagleplay/board.c b/arch/arm/boards/beagleplay/board.c
new file mode 100644
index 0000000000..dd42f0b7f0
--- /dev/null
+++ b/arch/arm/boards/beagleplay/board.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "beagleplay: " fmt
+
+#include <linux/kernel.h>
+#include <mach/k3/common.h>
+#include <driver.h>
+#include <bbu.h>
+
+static int beagleplay_probe(struct device *dev)
+{
+	am625_enable_32k_crystal();
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id beagleplay_ids[] = {
+	{
+		.compatible = "beagle,am625-beagleplay",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver beagleplay_driver = {
+	.name = "beagleplay",
+	.probe = beagleplay_probe,
+	.of_compatible = beagleplay_ids,
+};
+coredevice_platform_driver(beagleplay_driver);
-- 
2.39.5



