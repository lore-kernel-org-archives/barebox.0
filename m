Delivery-date: Mon, 01 Aug 2022 14:19:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOr-007eL2-2Y
	for lore@lore.pengutronix.de; Mon, 01 Aug 2022 14:19:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOo-0008MY-W5
	for lore@pengutronix.de; Mon, 01 Aug 2022 14:19:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m3FdxA0oFOnPUYM8ZpO4gL1BtSGRJIirKfvUdBepRH8=; b=3nonvW637mDX2x3gtog/n49/VZ
	LgNBzX+DF0asOYxeXyp1lGcuIXPBJHWaiMvLc3LVgZX7TT3+Ap/3RzlkbsDjgnk7G4HN2O6HAJd6M
	bliSc92AtuObyySUoLt2f7Qt5DDkOqFstaj7z48JVvrCOjn8k4daQCfnp/HehSuG/ABTP18azCJEj
	X8zXRDN7lYXcSP1IiuncM135JpV+AGaQiWy3IXkK5VsSphk9Z+cexT43sIUbWRpD2zp4N+5MEFn/o
	Q8bixk5VDUr7w7mlRE/LN4RUePZSVTyiyY7Srap/+Zj+p4hPoc8mPhwl3tWJhQvvqkgDmctTuGhuM
	JfxpujhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUNL-0063tV-M3; Mon, 01 Aug 2022 12:18:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUCf-005trf-Gu
	for barebox@lists.infradead.org; Mon, 01 Aug 2022 12:07:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCb-0005zn-HT; Mon, 01 Aug 2022 14:07:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCa-0016gH-PD; Mon, 01 Aug 2022 14:07:16 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCZ-00AXmm-Qn; Mon, 01 Aug 2022 14:07:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  1 Aug 2022 14:07:06 +0200
Message-Id: <20220801120708.2511165-6-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
References: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_050721_602887_8492E4C5 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 6/8] ARM: socfpga: achilles: guard macros with braces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Macro definitions should be guarded with braces for safer use.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 2efb9aaea0..ec8c126c2a 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -23,15 +23,16 @@
 #define BAREBOX_PART 0
 #define BITSTREAM_PART 1
 #define BAREBOX1_OFFSET    SZ_1M
-#define BAREBOX2_OFFSET    BAREBOX1_OFFSET + SZ_512K
-#define BAREBOX3_OFFSET    BAREBOX2_OFFSET + SZ_512K
-#define BAREBOX4_OFFSET    BAREBOX3_OFFSET + SZ_512K
+#define BAREBOX2_OFFSET    (BAREBOX1_OFFSET + SZ_512K)
+#define BAREBOX3_OFFSET    (BAREBOX2_OFFSET + SZ_512K)
+#define BAREBOX4_OFFSET    (BAREBOX3_OFFSET + SZ_512K)
+// Offset from the start of the second partition on the eMMC.
 #define BITSTREAM1_OFFSET  0x0
-#define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_32M
+#define BITSTREAM2_OFFSET  (BITSTREAM1_OFFSET + SZ_32M)
 
 extern char __dtb_z_socfpga_arria10_achilles_start[];
 
-#define ARRIA10_STACKTOP	ARRIA10_OCRAM_ADDR + SZ_256K
+#define ARRIA10_STACKTOP	(ARRIA10_OCRAM_ADDR + SZ_256K)
 
 ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_xload, ARRIA10_STACKTOP, r0, r1, r2)
 {
-- 
2.30.2



