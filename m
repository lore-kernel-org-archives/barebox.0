Delivery-date: Wed, 13 May 2026 14:24:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8dF-001Fjb-2t
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:24:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8dB-0005OJ-Iu
	for lore@pengutronix.de; Wed, 13 May 2026 14:24:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oVr771mYx1KSDfENtptogYYwyEYjWNeIvJs2PjHIsng=; b=NDTenYCAiP5jPlUdnkXpljMx2p
	nslNSYtE3+qfvGbrvVDmTJ3wApGB0dcKS4yTQdOMpVz8TMGYB9PQUnyAr2x1xd1dlyK/aUsVIOC70
	2nj2mJs2JI/gOGaEg8KekJp3clNt4kCrW6DBHvRKR+pa837g5+YjCgsbslN2LKK/6SYCv5/2BGApw
	7Af8KQ3sRDx32TknjQH3OUFmRkbnLNM5H8XMZcjMip+BYK0XVAMBadEaj47IgmMDKF9E+Fh1fIOUQ
	YslXt/07QgsoqWpm+YtE/wSS0QgxYf8np4jjkcGFOKXc3XON3iXZKAc0HYgRq1FfSzDmCpsucvbgP
	1xdlwtVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8bc-00000002TDR-3W0e;
	Wed, 13 May 2026 12:22:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8ba-00000002TBf-22sv
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:22:27 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8bY-0004ke-TK; Wed, 13 May 2026 14:22:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:22:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-socfpga-agilex5-entry-v1-1-090758694c88@pengutronix.de>
References: <20260513-socfpga-agilex5-entry-v1-0-090758694c88@pengutronix.de>
In-Reply-To: <20260513-socfpga-agilex5-entry-v1-0-090758694c88@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_052226_532751_63406A86 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] arm: socfpga: axe5-eagle: fix stack location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

512K is the end of the OCRAM. THE SDM firmware uses the last page of the
OCRAM for handoff data, which is later read by barebox to retrieve board
configuration. Putting the stack on the same page may be dangerous and
lead to data corruption.

Move the stack below the handoff data.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index ffa5620413f6..b5a56a1a8c5f 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -8,11 +8,19 @@
 #include <mach/socfpga/debug_ll.h>
 #include <mach/socfpga/init.h>
 #include <mach/socfpga/generic.h>
+#include <mach/socfpga/soc64-handoff.h>
 #include <mach/socfpga/soc64-regs.h>
 
 extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
 
-#define AXE5_STACKTOP	(SZ_512K)
+/*
+ * The SDM firmware uses the last page in the OCRAM for handoff data. Put the
+ * stack below the handoff data.
+ *
+ * Note: U-Boot puts the stack at 0x71000 (0x80000 - 0xf000) and reserves even
+ * more space.
+ */
+#define AXE5_STACKTOP SOC64_HANDOFF_BASE
 
 static noinline void axe5_eagle_continue(void)
 {

-- 
2.47.3



