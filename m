Delivery-date: Tue, 11 Apr 2023 09:16:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FM-00HI84-W7
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:16:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FA-0001hE-8J
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:16:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4B5S2sKf+y+vNEpjVXB/QHtx+OnsflzEyGN+1/sAbaQ=; b=R0JyZO7TXoPoJz
	SpjfG0HL7oBRH0kQ8+DLLzOhiE/hKGyhazN4kQiZk8kxNsCmIXaWzOGawM0/pSF8p/vAiNDPIgjP6
	H+XwJVcr4DHqulkm/hkiRHt6T1qIrzdICmJBdhw0CfXamjXqR1JViTKstfZHFHxtxa+ZB9ybqB4F/
	UIQ37Ac74MkMZFgQ94C7UQAOAFbGKPtpyczmk2zoloY8agLuSsViLirTxB1TVOowBXCyKQoz3c9Y4
	dduH6GJxGTOXZaYCdF4a8Um0Q4qD+RSE9mtTwKyfrdn8npTLmck0GtxbrmZ8lsK7JGUM5tLywB9D+
	FscCXJQCtAgV0hBvfKiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DX-00GgAE-0f;
	Tue, 11 Apr 2023 07:15:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DO-00Gg2j-1B
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DF-0000rl-3l; Tue, 11 Apr 2023 09:14:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-00ARvX-57; Tue, 11 Apr 2023 09:14:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNU-Nx; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 11 Apr 2023 09:14:25 +0200
Message-Id: <20230411071436.1630752-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001454_414351_F0E65062 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH master 03/14] RISC-V: sifive: disable non-functional SPI nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For some reasons,newer QEMU versions (tested v5.2.0) trigger a load
fault at the first readl of the driver. For now disable the nodes,
until this issue is looked into.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Link: https://lore.barebox.org/barebox/20220830140533.deb229d3e3f32c827e6ff521@gmail.com/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/dts/hifive-unleashed-a00.dts | 4 ++++
 arch/riscv/dts/hifive-unmatched-a00.dts | 5 +++++
 2 files changed, 9 insertions(+)

diff --git a/arch/riscv/dts/hifive-unleashed-a00.dts b/arch/riscv/dts/hifive-unleashed-a00.dts
index 65694bfd246a..3b82c16ff0f7 100644
--- a/arch/riscv/dts/hifive-unleashed-a00.dts
+++ b/arch/riscv/dts/hifive-unleashed-a00.dts
@@ -1,3 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 OR X11 */
 
 #include <riscv/sifive/hifive-unleashed-a00.dts>
+
+/* probing on QEMU v5.2.0 triggers load access fault @0x10040014 */
+&qspi0 { status = "disabled"; };
+&qspi2 { status = "disabled"; };
diff --git a/arch/riscv/dts/hifive-unmatched-a00.dts b/arch/riscv/dts/hifive-unmatched-a00.dts
index b8793e910555..24a4c798a941 100644
--- a/arch/riscv/dts/hifive-unmatched-a00.dts
+++ b/arch/riscv/dts/hifive-unmatched-a00.dts
@@ -1,3 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 OR X11 */
 
 #include <riscv/sifive/hifive-unmatched-a00.dts>
+
+/* probing on QEMU v5.2.0 triggers load access fault @0x10040014 */
+&qspi0 { status = "disabled"; };
+&qspi1 { status = "disabled"; };
+&spi0  { status = "disabled"; };
-- 
2.39.2



