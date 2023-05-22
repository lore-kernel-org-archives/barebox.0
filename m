Delivery-date: Mon, 22 May 2023 07:30:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7P-009JC2-N8
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7N-0002sB-3z
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bHH84Jx0dv5Ro93/CQy+43iEhZTlGP+yPJ32NzrlHk=; b=jyTEtoT1RzyFL3
	/3eL2AMpgIqgl3wtcCYiUxQ19o8E3FsTvSVOMkPlKofhh7AvU5LDSdNSUtligsbn5lszK0qpOTmXa
	EeBOlNOpIoYmuxNRJV287ECY5ezAxWjWhS5v5NTAQa52XOjX0MulXvJaCj+aCfDBFYLnU5kpudBxw
	MLRfiMBhDrfNdtcjo0N9XsHy9cm5PgZuXU/OgLC3JTzbKads28KgoCzPbLIRiS8MHfp4+cTrMFMBP
	6KgCuK4ZuuHsxNi25KdNy0VOIoBCupBqbR2oAR4TiIcO6sALCL/l5Svjz5i5LC60bQqGChRYzwEZn
	Qkmf/v6/tNa+NIgGjCwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6G-005OZf-12;
	Mon, 22 May 2023 05:28:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y67-005OUq-0e
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y64-0002Mt-Co; Mon, 22 May 2023 07:28:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-001vvz-DU; Mon, 22 May 2023 07:28:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLQ-LZ; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:30 +0200
Message-Id: <20230522052835.1039143-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_433530_E63BECEB 
X-CRM114-Status: GOOD (  12.21  )
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
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>, lst@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/11] common: boards: qemu-virt: remap cfi-flash from 0 to 0x1000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When MMU is enabled, barebox maintains a single address space with
1:1 physical to virtual mapping by default. Furthermore, the zero
page is marked inaccessible to trap NULL pointer dereferences.

This is problematic on the Qemu ARM Virt platform, because the
cfi-flash is memory mapped starting with address zero, so users need
to decide whether they want the cfi-flash or the MMU.

Make everyone happy by shifting the virtual cfi-flash mapping by 4K:

    virt   ->    phys

    0x0000 ->    0x0000 [faulting]
    0x1000 ->    0x0000 [(uncached) alias]
    0x2000 ->    0x1000
           .
           .
           .
 0x7fff000 -> 0x7ffe000
 0x8000000 -> 0x7fff000

This eats one page into the memory region starting at 0x8000000.
That's ok though, because that's where the GIC is located on both
ARM32 and ARM64 and we don't do interrupts in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Lucas Stach <l.stach@pengutronix.de>
---
 common/boards/qemu-virt/Makefile             | 3 +++
 common/boards/qemu-virt/overlay-of-flash.dts | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 8cacfafee734..c16727751550 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -5,6 +5,9 @@ obj-y += overlay-of-flash.dtb.o
 ifeq ($(CONFIG_RISCV),y)
 DTC_CPP_FLAGS_overlay-of-flash.dtb := -DRISCV_VIRT=1
 endif
+ifeq ($(CONFIG_ARM),y)
+DTC_CPP_FLAGS_overlay-of-flash.dtb := -DARM_VIRT=1
+endif
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
index 15c8cc450d49..16b1c7923d58 100644
--- a/common/boards/qemu-virt/overlay-of-flash.dts
+++ b/common/boards/qemu-virt/overlay-of-flash.dts
@@ -6,12 +6,15 @@
 #ifdef RISCV_VIRT
 #define PARTS_TARGET_PATH	/flash@20000000
 #define ENV_DEVICE_PATH		"/flash@20000000/partitions/partition@3c00000"
-#else
+#elif defined ARM_VIRT
 #define PARTS_TARGET_PATH	/flash@0
 #define ENV_DEVICE_PATH		"/flash@0/partitions/partition@3c00000"
 #endif
 
 &{PARTS_TARGET_PATH} {
+#ifdef ARM_VIRT
+	virtual-reg = <0x1000>;
+#endif
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <1>;
-- 
2.39.2



