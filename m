Delivery-date: Fri, 13 Jun 2025 11:09:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q7-006oTd-0C
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:09:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q6-0004qL-GW
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:09:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VTraycUH8QSPX8hneDstpjq8wLUnyYi4C9+2l5kLuv0=; b=Duhi0pz5trLexifyXrlzPRMncT
	n55OuThjtp5WZ7Z63PN9ZivzwRZhqCQ2T3XHrMvvQNCBHyvlnHtoHC0hfRPJrWGIM7+xfuzp7/fYm
	suL9MoHwQUiaYddNAyjk8Z5SDhjdmbr6FVa9OmxIA9eQqZ/+ouXNbKSr2Wdpe/UM2Um4JyiZi+59K
	7rgHJ9MRgKTXZtAwOAWRHdNioNZzz7GZS+vM87ftARWIiW/lMGJ+Q0k8OURCsXnDwOIvc285C5hrz
	thGZoYPy7Yribjnmiw3IAZaVBMJopOCuOaxEI89QAm/T97oY0BLsNvh//AzO3rct7ibg3hfJVzu6F
	QFyEht1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Pn-0000000Fs7W-3VhI;
	Fri, 13 Jun 2025 09:09:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJN-0000000FiDD-3LEh
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 07:58:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-0004cf-JH; Fri, 13 Jun 2025 09:58:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-003Fnv-0y;
	Fri, 13 Jun 2025 09:58:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-00CPUK-0g;
	Fri, 13 Jun 2025 09:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Jun 2025 09:58:48 +0200
Message-Id: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADnaS2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDM0Nj3cSiXN3c3FLdijzdonxdw0TDFEtLMxNLs8RUJaCegqLUtMwKsHn
 RsbW1AITkF2ZfAAAA
X-Change-ID: 20250613-arm-mmu-xn-ro-1a1d996496ae
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749801531; l=2021;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Re3DnWSGU/GclBLzgZLrKC+qw9MS8z9WIW/bZGs8VmU=;
 b=xjXAgVXzxtIupdINmtcQE7R3oSR8tbf61Rlt8sSKcae6rflp0IAVimkQFttiAvDvi0m0ekkTU
 Fwa2sk0fOWsC17isSlXLBd7lLPqKgy64RA/2O+tb95jR2/wGYtrGFF9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_005853_842182_58B0AFAE 
X-CRM114-Status: GOOD (  10.92  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] ARM: Map sections RO/XN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we mapped all RAM as read write with execute permission. This
series series hardens this a bit. The barebox text segment will be
mapped readonly with execute permission, the RO data section as readonly
without execute permission and the remaining RAM will lose its execute
permission.

I tested this series on ARMv7 and ARMv8. I am not confident though that
there are no regressions, so this new behaviour is behind a Kconfig
option. It is default-y, but can be disabled for debugging purposses.
Once this series has proven stable it can be removed.

I haven't tested it on ARMv4-v6 due to the lack of hardware. I tried on
Qemu, but the write protection did not work as expected. This should be
resolved before merging.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (7):
      memory: request RO data section as separate region
      ARM: pass barebox base to mmu_early_enable()
      ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
      ARM: MMU: map memory for barebox proper pagewise
      ARM: MMU: map text segment ro and data segments execute never
      ARM: MMU64: map memory for barebox proper pagewise
      ARM: MMU64: map text segment ro and data segments execute never

 arch/arm/Kconfig                 |  12 +++++
 arch/arm/cpu/mmu-common.h        |   4 ++
 arch/arm/cpu/mmu_32.c            |  86 +++++++++++++++++++++++++++------
 arch/arm/cpu/mmu_64.c            | 101 +++++++++++++++++++++++++++++++++++----
 arch/arm/cpu/uncompress.c        |   9 ++--
 arch/arm/include/asm/mmu.h       |   2 +-
 arch/arm/include/asm/pgtable64.h |   1 +
 arch/arm/lib32/barebox.lds.S     |   3 +-
 arch/arm/lib64/barebox.lds.S     |   5 +-
 common/memory.c                  |   6 ++-
 include/mmu.h                    |   1 +
 11 files changed, 198 insertions(+), 32 deletions(-)
---
base-commit: 340e930140e76827cf5cac731e6afe2836e28242
change-id: 20250613-arm-mmu-xn-ro-1a1d996496ae

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



