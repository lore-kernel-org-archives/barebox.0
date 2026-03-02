Delivery-date: Mon, 02 Mar 2026 14:49:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eL-007IpN-2U
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:49:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eM-0007LS-5B
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:49:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4Rm2GSCV0JIx1uD6HIrAVtZY1jo2cYAKl/LL5sCLN2s=; b=LSr1TpzKKT/r4yLUaeRZvo5JtI
	meHL2cYSJuAhzOJhe5QVvE0POICZNJghGOMibFOxFvQWEleFCX785O9jdocr+tRAuqWutue9w0iqY
	XZBa9BRJJPpmuOsMVl4ncX2ASXHjUcow01RAjtnSQBmlEvRY9pA7oVOWKoNg8qUpVmeMHPqclE/lw
	U/aivSRraCYog6i6q8ohZzqQUPCTbMvrwZrCcANPvno0bM2frXcqQhAQHiyj7eWmfsNuuDYzMso71
	Hhu68wIOzNMnwfVbJAhhCG2WjVOkeyWu9nAEBhHFKTiPtCwH0sy4B+CJ3FuOglDCHE07f8h30V4W/
	0gqIZYig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dl-0000000D9jA-3pkZ;
	Mon, 02 Mar 2026 13:48:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dj-0000000D9hF-1O3k
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:48:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3df-00073f-Po
	for barebox@lists.infradead.org; Mon, 02 Mar 2026 14:48:47 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon,  2 Mar 2026 14:47:32 +0100
Message-ID: <20260302134843.195007-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_054851_368152_E4196F7C 
X-CRM114-Status: UNSURE (   6.09  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] ci: fixes for PowerPC and networking test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Ahmad Fatoum (4):
  test: py: network: preserve saved_log_level across _await_prompt
  powerpc: fix initjmp storing function pointer at wrong offset
  powerpc: qemu-ppce500_defconfig: increase malloc area to default 4 MiB
  test: selftest: mmu: skip mirroring tests when not supported

 arch/powerpc/configs/qemu-ppce500_defconfig | 1 -
 arch/powerpc/lib/setjmp.S                   | 4 ++--
 test/py/test_network.py                     | 5 +++++
 test/self/mmu.c                             | 6 ++++++
 4 files changed, 13 insertions(+), 3 deletions(-)

-- 
2.47.3



