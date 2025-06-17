Delivery-date: Tue, 17 Jun 2025 19:11:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRZpt-008LBe-2l
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 19:11:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRZpt-0001yn-3i
	for lore@pengutronix.de; Tue, 17 Jun 2025 19:11:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x9vfKqCNLr1ffaE/h9Hw8/RsbvjkCTyr/hsz77F1dhg=; b=WuMEB3SdTO114hKec575BcMtEI
	uhHP2KyqUcBs9o43RNRSOr3cbLumri3cpnlM38Tnn/6qs52bVa3gpoNBtfibOqvorQKPgAjuLRHjh
	D+U/9zh2kiahnlDH2X8qQa2AUEMWPPnWMaVKZ/+ZkIjJW9a1xZKEIyB+302yecROfsO30GHzs3s2b
	L+E7lksSvCd8Af3DUC1ENSBGTI8gfV6YoBo4FuP1C0rU5tkhby1zFYbYos4yU/obpGs7FPSOh9Vt/
	UMY/5KNNAyF3a+vII7MRaMt7HKN/2fAeTS5wZSpyknQdTFNCuzWXUvQby19LourDGu2aaH8kKTjkm
	BVMGqAPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZpa-00000007xgL-3ZaI;
	Tue, 17 Jun 2025 17:10:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRXIU-00000007YVi-1PpT
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 14:28:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIL-0007nX-42; Tue, 17 Jun 2025 16:28:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIK-003zFj-2n;
	Tue, 17 Jun 2025 16:28:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIK-00Gvg5-2N;
	Tue, 17 Jun 2025 16:28:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Jun 2025 16:28:07 +0200
Message-Id: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHd7UWgC/23MQQ7CIBCF4as0s3YMIKJx1XuYLrCM7SwKDbQNp
 uHuYtcu/5eXb4dEkSnBo9kh0saJg6+hTg30o/UDIbvaoIS6CiMMTtOK2WMMSMrqXr/EXVgN9T9
 HenM+rGdXe+S0hPg56E3+1n/KJlHgjcg45+RFO93O5Id1icFzPjuCrpTyBZ8BplynAAAA
X-Change-ID: 20250606-mmu-xn-ro-e2a4c4b080a4
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750170492; l=2138;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=g1S9a90aD6DPMl9bZP7ZMQms7FyoJL/EmBs55dsBIlU=;
 b=UqkEU8bcYLm8J5tCG6qqsYWnm1HW/wQ21SfxtetXdsQ0jHuy6xQZboNwirtAu/uP+SbSCfFda
 NlcCxqS8vCDAabAc0WLit4G2qriz6ZM9cJFhiEOEAUN3PmJGAmXCvsk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_072822_384767_65A301AB 
X-CRM114-Status: GOOD (  11.16  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] ARM: Map sections RO/XN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we mapped all RAM as read write with execute permission. This
series series hardens this a bit. The barebox text segment will be
mapped readonly with execute permission, the RO data section as readonly
without execute permission and the remaining RAM will lose its execute
permission.

I tested this series on ARMv5, ARMv7 and ARMv8. I am not confident
though that there are no regressions, so this new behaviour is behind a
Kconfig option. It is default-y, but can be disabled for debugging
purposses.  Once this series has proven stable it can be removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Tested and fixed for ARMv5
- merge create_pages() and create_sections() into one functions (ahmad)
- introduce function to create mapping flags based on CONFIG_ARM_MMU_PERMISSIONS
- Link to v1: https://lore.barebox.org/20250606-mmu-xn-ro-v1-0-7ee6ddd134d4@pengutronix.de

---
Sascha Hauer (6):
      ARM: pass barebox base to mmu_early_enable()
      ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
      ARM: MMU: map memory for barebox proper pagewise
      ARM: MMU: map text segment ro and data segments execute never
      ARM: MMU64: map memory for barebox proper pagewise
      ARM: MMU64: map text segment ro and data segments execute never

 arch/arm/Kconfig                 | 12 ++++++
 arch/arm/cpu/lowlevel_32.S       |  1 +
 arch/arm/cpu/mmu-common.h        | 20 +++++++++
 arch/arm/cpu/mmu_32.c            | 89 ++++++++++++++++++++++++++++++++--------
 arch/arm/cpu/mmu_64.c            | 82 +++++++++++++++++++++++++++---------
 arch/arm/cpu/uncompress.c        |  9 ++--
 arch/arm/include/asm/mmu.h       |  2 +-
 arch/arm/include/asm/pgtable64.h |  1 +
 arch/arm/lib32/barebox.lds.S     |  3 +-
 arch/arm/lib64/barebox.lds.S     |  5 ++-
 common/memory.c                  |  7 +++-
 include/mmu.h                    |  1 +
 12 files changed, 186 insertions(+), 46 deletions(-)
---
base-commit: 2ae2aa65792b5634e1e9b682fa7ef649569800d4
change-id: 20250606-mmu-xn-ro-e2a4c4b080a4

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



