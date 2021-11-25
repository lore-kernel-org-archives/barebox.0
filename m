Delivery-date: Thu, 25 Nov 2021 08:07:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq8qu-0003Nq-3n
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 08:07:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq8qt-0002GD-AT
	for lore@pengutronix.de; Thu, 25 Nov 2021 08:07:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vNTQ3M6BQ09xyNk+nHMCtgY9GTLi4u92nLzaY7xJluo=; b=d4RdSZnn4rvrnG
	R6ePRkHNJ2/A0cytYEKhaJFRt/c1nh2hWAytyWkjeT85SoPrbUsuAFp8z8t3P1hMHnistL1tpDQS0
	p8/lmPLfX/CeeJ8oRF4b1jujGjkTO55P7+idh0UJCaLvgReBX3e2/l4o+yNXyi28WXCXOvJpPyeEO
	N8TMYb19XW1rYekZI6j62r/GJ18iiq4PIHrN28eKOW4w8f/HbMoK3Wj+pe2PFf2zbrTBhGY8dBh2P
	Hc4xgnlrCdp+KPqCf7D5dM4cAcyMs+hGkoAQn0V01TA1kuPeitkUsVqEtoe+HTWqxyK9cDHTusEdX
	JxBuCAuUV3EARrEomppA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq8p0-006Yit-6M; Thu, 25 Nov 2021 07:05:30 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq8ov-006Yhf-R6
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 07:05:27 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 0F2F9100005;
 Thu, 25 Nov 2021 07:05:19 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 25 Nov 2021 08:05:15 +0100
Message-Id: <20211125070515.671542-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_230526_072884_E97E4EFC 
X-CRM114-Status: UNSURE (   7.98  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] RISC-V: LiteX: fix comment about running from ROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Copy-paste left-over. On LiteX, barebox is already running from RAM that
the BIOS had set up.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/boards/litex-linux/lowlevel.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boards/litex-linux/lowlevel.c b/arch/riscv/boards/litex-linux/lowlevel.c
index da23ef5633a5..6be3d62e64fb 100644
--- a/arch/riscv/boards/litex-linux/lowlevel.c
+++ b/arch/riscv/boards/litex-linux/lowlevel.c
@@ -10,12 +10,12 @@ ENTRY_FUNCTION(start_litex_linux, a0, a1, a2)
 	extern char __dtb_z_litex_linux_start[];
 	void *fdt;
 
+	/* BIOS will have loaded us into RAM */
+
 	barebox_nmon_entry();
 
 	putc_ll('>');
 
-	/* On POR, we are running from read-only memory here. */
-
 	fdt = __dtb_z_litex_linux_start + get_runtime_offset();
 
 	barebox_riscv_machine_entry(0x40000000, SZ_256M, fdt);
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

