Delivery-date: Tue, 07 Apr 2026 19:10:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9wz-009dXe-2K
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 19:10:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9wy-0000qh-Vl
	for lore@pengutronix.de; Tue, 07 Apr 2026 19:10:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tPdDvC+H7+Jea0TZhyLLhPkLeTKwZan9NGAhE7ZuuAA=; b=4cTvccExPVdlqp
	WCDpR3XSwHUQ8dFPhOvgz+8Qa96f3yDi+2keeFj2gt7Qsm6x0Mz5iyP1l0hIoxF92AkM7Ual+nEH6
	tCiC4xS/0RvLUgOCgeiE53fY7bo3DdoD/BW8di7dcGTsVvb2++pBJOwNYHINt3j30nocMFMr7ZKYO
	YM/6ZhLlj6qvh5ZtflTcbPePKWflLTSVdarEe8l59nSe+63Vmkd3KiZTNsK2WYWI82AdQcMLmSB0r
	ddjV2Lb/3Q6oq0aTtwR4DN74OLEgQ8XbuUd33SKY1P7A+vsv9Zj8iuI4ZMOOA5ZIJUw7Ypz6A6aWa
	6aE615NI+kAsFlpJ4abA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wL-00000006pjm-2PVR;
	Tue, 07 Apr 2026 17:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wD-00000006pe8-3Fud
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 17:10:09 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wA9wA-0000PH-1E; Tue, 07 Apr 2026 19:10:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 07 Apr 2026 19:09:54 +0200
Message-Id: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGM61WkC/x3MTQqAIBBA4avErBtQ+6OuEi3MpppFKg5IEN09a
 fkt3ntAKDEJTNUDiTILB1+g6wrcaf1ByFsxGGV61aoBJbg9HhY5iFyYNXaj0yM1rbJmhZLFRDv
 f/3Je3vcDFmbCKmIAAAA=
X-Change-ID: 20260407-socfpga-iossm-v1-59c19e340a2b
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_101005_937255_09981A98 
X-CRM114-Status: UNSURE (   8.94  )
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
Subject: [PATCH 00/10] arm: socfpga: iossm: add support for mailbox v1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The IOSSM on the Agilex5 may have different mailbox versions depending
on the Quartus version that was used to generate the SoC configuration.
Up until now, barebox only supports mailbox version 0, which was
configured by versions before Quartus 25.3.0. With Quartus 25.3.0 and
later, the IOSSM provides mailbox version 1, which exposes many
configuration options as registers instead of mailbox responses.

Since the IOSSM is used for SDRAM setup, barebox didn't boot on devices
configured with Quartus 25.3.0 or later.

Refactor the iossm handling and add the handling of IOSSM mailbox
version 1.

While at it, also add inline ECC handling. If the memory interface of
the Agilex5 is configured for inline ECC (which is the current default)
the bootloader has to be aware of inline ECC, too.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (10):
      arm: socfpga: iossm: remove uninitialized variable
      arm: socfpga: iossm: add version check
      arm: socfpga: iossm: use local mb_ctrl variable
      arm: socfpga: iossm: store size in bytes
      arm: socfpga: iossm: refactor io96b_mb_init
      arm: socfpga: iossm: refactor return value handling
      arm: socfgpa: iossm: extract poll_bist_mem_init_status
      arm: socfgpa: iossm: extract initialization of one interface
      arm: socfpga: iossm: add memory initialization with inline ecc
      arm: socfpga: iossm: add support for mailbox v1

 arch/arm/mach-socfpga/agilex5-sdram.c |   9 +-
 arch/arm/mach-socfpga/iossm_mailbox.c | 359 ++++++++++++++++++++++++----------
 arch/arm/mach-socfpga/iossm_mailbox.h |   8 +-
 3 files changed, 272 insertions(+), 104 deletions(-)
---
base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
change-id: 20260407-socfpga-iossm-v1-59c19e340a2b

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



