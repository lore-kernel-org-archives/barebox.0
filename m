Delivery-date: Sat, 04 Dec 2021 14:11:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtUoy-0005Jf-6o
	for lore@lore.pengutronix.de; Sat, 04 Dec 2021 14:11:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtUox-0006R2-5E
	for lore@pengutronix.de; Sat, 04 Dec 2021 14:11:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sbXPeKWgTMAr7sJIkUAXr9L6XoCvHK9BmX8A6oTMTKc=; b=u3nwI87R6GY4rX
	AW6Ft5ZJRABu44670VbERxpYKbuDuI6ZLnzTHgDq96OwImQxUB2fD9MSC0kia4OKnQLjnySnW//i7
	JJHIxRginmUbEa0M6aOFDDeimW3ocxamMLjPcrFfcJCO1phzfgK3+3bY5K3rujNm7eBS2kJjgftJJ
	K7Hkb+4GD1pKXL2bYZBT/iCNXo94Q0bl86sIA3etXYqKIrmPGbgaLJCaBQBaApqUZgZNhIFnS1tyy
	y5OrRCsEmXo2t3pufBUvUFvHKwPqniqJyepWwwIOlQJeVvSVzHhUIUVocTX8c/WaPPoDk9NIq2dVm
	x4CbuKyCXPLKxqvAcXmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtUmw-000MKu-2P; Sat, 04 Dec 2021 13:09:14 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtUmo-000MKW-5G
 for barebox@lists.infradead.org; Sat, 04 Dec 2021 13:09:10 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 26844E000C;
 Sat,  4 Dec 2021 13:08:58 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Yann Sionneau <ysionneau@kalray.eu>
Date: Sat,  4 Dec 2021 14:08:54 +0100
Message-Id: <20211204130854.1624493-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211204_050906_379869_86A5D1E8 
X-CRM114-Status: UNSURE (   6.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] RISC-V: cpu: fix build with CONFIG_RISCV_EXCEPTIONS=n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Building without CONFIG_RISCV_EXCEPTIONS causes a compile error, because
of a definition mismatch. data_abort_mask is a no-op without exception
support, but interrupt.c defines it as a different type of symbol. Skip
interrupt.c compilation to fix the build error.

Reported-by: Yann Sionneau <ysionneau@kalray.eu>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/cpu/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
index 717baaaaa727..d79bafc6f142 100644
--- a/arch/riscv/cpu/Makefile
+++ b/arch/riscv/cpu/Makefile
@@ -2,6 +2,8 @@
 
 obj-y += core.o time.o
 obj-$(CONFIG_HAS_DMA) += dma.o
+ifeq ($(CONFIG_RISCV_EXCEPTIONS),y)
 obj-pbl-$(CONFIG_RISCV_M_MODE) += mtrap.o
 obj-pbl-$(CONFIG_RISCV_S_MODE) += strap.o
 obj-pbl-y += interrupts.o
+endif
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

