Delivery-date: Mon, 13 Jan 2025 12:29:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdE-000ZrT-2O
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:29:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdC-0006Dl-VL
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:29:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uOikD3qz0uUiNSCxkXLn8J5VO43bNR0R+EbNmQzwabk=; b=XUGtWTJcC17vPW+2DsKTXmD019
	ujkJtluOVPxrNtEs6qEycJQbHJgspzPoWwcxxf+RjaluGI73mJzWCVROX6wEvPu2bPtuBHn4lDsdX
	CTPDyY9a6ZwNkbGEUutpPJCd8ODf7j+nQhgFsQac9e0PMSY3KRXkrUqBPDqR/NDB+aZJXnDt/KkdI
	2ufrdHkA1MVJ8WPyo9Z9xFoKtm9ACDc+tF5bp4RjQLba5X2MFK91nXqusS26FteXnqsYEDO5JbxwM
	jG7jSgNXhtG8qQJO62bUYY/SNFkqICVlRylmgy6whvEl8E7WqZRzwhsMQ3sB5YGXOytwcQ6VRt55J
	xivUFiUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIcf-00000004uOz-0HPi;
	Mon, 13 Jan 2025 11:28:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIau-00000004tr3-24Bo
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:26:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-0005eg-W2; Mon, 13 Jan 2025 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-000FRG-0H;
	Mon, 13 Jan 2025 12:26:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1c;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-5-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767613; l=1278;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=I6AffcjyjYkKWZa3YxC9m6UC+aI8am6CNeW0ALNPMjk=;
 b=kpIKziM/xvBXsHMNRym0XzZoqI3riQhWx2hw/w0i2vK2qPtEVBcDbcZkPAwsdZOXaTze7Fv3p
 PgW5g/H+QkTBhm4BNS5M0NfYtAb29R5ixhg+LEaVAjhiIgwDiqnyriv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_032656_542215_899614FF 
X-CRM114-Status: GOOD (  12.50  )
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
Subject: [PATCH v3 05/23] nommu_v7_vectors_init: disable for r5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some ARMv7 cores like the Cortex-R5 do not have a VBAR register for
setting up the vector table. This patch disables the vector table
setup specifically for the Cortex-R5.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/no-mmu.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
index be3cfaf12b..c4ef5d1f9d 100644
--- a/arch/arm/cpu/no-mmu.c
+++ b/arch/arm/cpu/no-mmu.c
@@ -19,9 +19,26 @@
 #include <asm/system_info.h>
 #include <debug_ll.h>
 #include <asm/sections.h>
+#include <asm/cputype.h>
 
 #define __exceptions_size (__exceptions_stop - __exceptions_start)
 
+static bool has_vbar(void)
+{
+	u32 mainid;
+
+	__asm__ __volatile__(
+		"mrc    p15, 0, %0, c0, c0, 0   @ read control reg\n"
+		: "=r" (mainid)
+		:
+		: "memory");
+
+	if ((mainid & 0xfff0) == ARM_CPU_PART_CORTEX_R5)
+		return false;
+
+	return true;
+}
+
 static int nommu_v7_vectors_init(void)
 {
 	void *vectors;
@@ -30,6 +47,9 @@ static int nommu_v7_vectors_init(void)
 	if (cpu_architecture() < CPU_ARCH_ARMv7)
 		return 0;
 
+	if (!has_vbar())
+		return 0;
+
 	/*
 	 * High vectors cannot be re-mapped, so we have to use normal
 	 * vectors

-- 
2.39.5



