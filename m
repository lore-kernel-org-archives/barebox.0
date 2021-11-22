Delivery-date: Mon, 22 Nov 2021 22:36:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpGz3-0008NB-V2
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 22:36:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpGz3-0006Fd-4h
	for lore@pengutronix.de; Mon, 22 Nov 2021 22:36:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xORAjLhSANfbdakA0DRtW7Koc8ptgAoTN0Tw5RXJib4=; b=ggohZaU3EtpSdF
	OSMKVBI7n9s0QnGFnui1ckJco+tQ+tKt7Bltjo0Qr59yD2dQ1M60YENq3gIXotfmGs3IpEH6UZmRX
	Tnf54zm7oS/c77akcvwbY7fia20ZicWlDmJmtJ7sgHDnmZQ6tYGVGGj4Yts1eu+jAmhMv791BB/it
	44mJKaulEdgk5KCZrFlpo+59qycOgwW0pA3Pd1XvCD8LMoeARt+ewYTaqjwu/VfovNaW4y0xC23pq
	g8OC/eL3n1PjdNd2eohoGSGUIv2CRjn3wE83PhDR7pHJ3NMbIb3unp5eEPx3tOd2Tqkrm54tv7Zwt
	/tey91d6Xm7Upc0S3wqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpGxe-0002lQ-JE; Mon, 22 Nov 2021 21:34:50 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpGxY-0002kP-BI
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 21:34:45 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B1017FF808;
 Mon, 22 Nov 2021 21:34:41 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Nov 2021 22:34:35 +0100
Message-Id: <20211122213436.309749-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_133444_544729_032834AB 
X-CRM114-Status: GOOD (  11.41  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] RISC-V: enable HW_HAS_PCI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the recently added generic ECAM PCI driver, we can now use PCI
device drivers on the RISC-V Virt machine. Enable HW_HAS_PCI, so the
driver and bus support can be selected. As HW_HAS_PCI on its own doesn't
add any code, just enable it for the whole architecture.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - add missing <asm/pci.h>
  - select CONFIG_HW_HAS_PCI from CONFIG_RISCV, instead of CONFIG_SOC_VIRT
---
 arch/riscv/Kconfig           | 1 +
 arch/riscv/include/asm/pci.h | 7 +++++++
 2 files changed, 8 insertions(+)
 create mode 100644 arch/riscv/include/asm/pci.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a814a1a45b1c..8c6669718554 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -14,6 +14,7 @@ config RISCV
 	select HAS_ARCH_SJLJ
 	select HAS_KALLSYMS
 	select RISCV_TIMER if RISCV_SBI
+	select HW_HAS_PCI
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/riscv/include/asm/pci.h b/arch/riscv/include/asm/pci.h
new file mode 100644
index 000000000000..dd18499a3709
--- /dev/null
+++ b/arch/riscv/include/asm/pci.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __ASM_PCI_H
+#define __ASM_PCI_H
+
+#define pcibios_assign_all_busses()	1
+
+#endif
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

