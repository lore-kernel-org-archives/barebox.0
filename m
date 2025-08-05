Delivery-date: Tue, 05 Aug 2025 20:37:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXd-007NjI-0O
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXc-0001Dw-7C
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LlwsYCEirI9gQfPFC4l4nqSDFPqWW4V0kxeFsoVZC4s=; b=i+C1+6+/cTM+3m7O8r3LZltPp6
	DHzV8PxrwFcIg4Owbyas3W2cZwqUiRuklUgWS1Smx20EkNI8I4Zu2QxgS3GIt1BvSwS2y4WUDIEA1
	cxqxuAEaCYec+k996SPvamSyjlQPTQ/mStyUF6qxUvkvRqZgCITYtuYsZAFhEQrqntgCDvFKlsXj0
	7zA3ZGAHzY4bYrTT0dimqImMP2K4oFlaYi2vCt51s/xKky29t7MZ5/XRNvajdklQhaTZJ+w6q4vXf
	TgNAeEmBwo/Q+MnRqbnLil/w9UnkT1qXwYvVLUsKKazToWFVppKY6rJ17m9+vHX3ykn8aChlbWSRE
	c9UE1XqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMWy-0000000DYSN-3oNx;
	Tue, 05 Aug 2025 18:37:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjQ-0000000DSfS-20Mg
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjN-0003rm-7m
	for barebox@lists.infradead.org; Tue, 05 Aug 2025 19:45:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Tue,  5 Aug 2025 19:45:33 +0200
Message-Id: <20250805174541.2606267-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_104548_530933_3619672D 
X-CRM114-Status: UNSURE (   8.17  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 0/8] ARM: mmu: fix hang reserving memory after text area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The loop remapping the memory banks looks at reserved memory
regions and then maps everything eXecute Never up to the start of the
region. If the region happens to be in the same bank as the text area
and it comes after it, this means the text area is temporarily mapped
eXecute Never, while barebox is running from it, which results in a
hang.

Fix this by remapping only after both reserved memory regions and text
area have been considered.

This series is a rebase of
https://lore.barebox.org/barebox/aJHagEVHUpHjALa2@pengutronix.de/T/#t

Ahmad Fatoum (8):
  partition: rename region_overlap_end to region_overlap_end_inclusive
  partition: define new region_overlap_end_exclusive helper
  ARM: mmu: skip TLB invalidation if remapping zero bytes
  ARM64: mmu: pass map type not PTE flags to early_remap_range
  ARM: mmu: provide setup_trap_pages for both 32- and 64-bit
  ARM: mmu: setup trap pages before remapping R/O
  ARM: mmu: share common memory bank remapping code
  ARM: mmu: fix hang reserving memory after text area

 arch/arm/cpu/mmu-common.c | 69 +++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu-common.h |  1 +
 arch/arm/cpu/mmu_32.c     | 44 ++-----------------------
 arch/arm/cpu/mmu_64.c     | 51 +++++++----------------------
 commands/iomemport.c      |  2 +-
 common/partitions.c       |  6 ++--
 include/range.h           | 30 ++++++++++++++---
 7 files changed, 114 insertions(+), 89 deletions(-)

-- 
2.39.5



