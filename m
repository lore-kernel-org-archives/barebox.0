Delivery-date: Mon, 13 Jan 2025 12:29:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdG-000ZsL-2p
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:29:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdF-0006FZ-9s
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:29:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Iv7GvmGNdOqezj3QRSomnrPHc28AzRFK8cVn21DF4hY=; b=v+M3UT/u67px4zmmxe+6J2uhxQ
	UBQVQ+5N/aTc9kXRs0NCLZuB7bB2DROclmvV+Ze5opXnouCmdTse1bgTjFis1fdM+RcXjiaRb06Ek
	xJCUv6cTVNS/mtTM08p8ajrJTeCRPwj027IV+ezjt34vC0hA9wg8phLX2NSxFchoAPBjfsoEjYzDb
	UquCgcgWNylqjYIM992XM5Mpqso5nGoTchSXtKoFwvw59EvnKRFvd75zRhKDcurHLUw5JEc3i2eaV
	KauQRLk8aXm22umrMR8WO1Cws0stQPk8swJtSFR5OGPqzyV5Pxion+FFgZDOI02czkI7RIrTxzxA0
	mZPZqWhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIce-00000004uOp-2Otj;
	Mon, 13 Jan 2025 11:28:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIau-00000004tqz-1ve6
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:26:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-0005ef-Rh; Mon, 13 Jan 2025 12:26:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-000FRF-0E;
	Mon, 13 Jan 2025 12:26:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1b;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-4-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767613; l=1974;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fx/NQB3v6H9K+NPAKX7S9rFnQQGF590nrZURalXdRaw=;
 b=avJiDLwIj5SiE82WR7r5fZHBx7YqS+4ehhVDx4jZL0qyNfyGzYCbLU/APJfVgm+Ct6O3jONKW
 Ktqjo0Xh6m8BqADjJwkLJtUDqJfG4YpwcXxwu+JCzeIUJ+LuycLjAx6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_032656_499013_8455CB47 
X-CRM114-Status: GOOD (  11.20  )
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
Subject: [PATCH v3 04/23] ARM: move ARM_CPU_PART_* defines to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move the ARM_CPU_PART_* defines to arch/arm/include/asm/cputype.h where
they are located in Linux as well so they become reusable by other code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c         | 11 +----------
 arch/arm/include/asm/cputype.h | 11 +++++++++++
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 7dca57248b..3137b9924f 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -10,6 +10,7 @@
 #include <memory.h>
 #include <asm/system.h>
 #include <asm/barebox-arm.h>
+#include <asm/cputype.h>
 
 #define CPU_ARCH_UNKNOWN	0
 #define CPU_ARCH_ARMv3		1
@@ -23,16 +24,6 @@
 #define CPU_ARCH_ARMv7		9
 #define CPU_ARCH_ARMv8		10
 
-#define ARM_CPU_PART_CORTEX_A5	0xC050
-#define ARM_CPU_PART_CORTEX_A7	0xC070
-#define ARM_CPU_PART_CORTEX_A8	0xC080
-#define ARM_CPU_PART_CORTEX_A9	0xC090
-#define ARM_CPU_PART_CORTEX_A15	0xC0F0
-#define ARM_CPU_PART_CORTEX_A53	0xD030
-#define ARM_CPU_PART_CORTEX_A55	0xD050
-#define ARM_CPU_PART_CORTEX_A57	0xD070
-#define ARM_CPU_PART_CORTEX_A72	0xD080
-
 static void decode_cache(unsigned long size)
 {
 	int linelen = 1 << ((size & 0x3) + 3);
diff --git a/arch/arm/include/asm/cputype.h b/arch/arm/include/asm/cputype.h
index c3fc057650..38012fb1ec 100644
--- a/arch/arm/include/asm/cputype.h
+++ b/arch/arm/include/asm/cputype.h
@@ -117,4 +117,15 @@ static inline int cpu_is_xsc3(void)
 #define	cpu_is_xscale()	1
 #endif
 
+#define ARM_CPU_PART_CORTEX_A5  0xC050
+#define ARM_CPU_PART_CORTEX_A7  0xC070
+#define ARM_CPU_PART_CORTEX_A8  0xC080
+#define ARM_CPU_PART_CORTEX_A9  0xC090
+#define ARM_CPU_PART_CORTEX_A15 0xC0F0
+#define ARM_CPU_PART_CORTEX_A53 0xD030
+#define ARM_CPU_PART_CORTEX_A55 0xD050
+#define ARM_CPU_PART_CORTEX_A57 0xD070
+#define ARM_CPU_PART_CORTEX_A72 0xD080
+#define ARM_CPU_PART_CORTEX_R5  0xc150
+
 #endif

-- 
2.39.5



