Delivery-date: Wed, 18 Jun 2025 11:53:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTu-008ZR9-1c
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 11:53:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTt-0003Lb-Nb
	for lore@pengutronix.de; Wed, 18 Jun 2025 11:53:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1yptM3MxZkTlyhu8shs+CEaSVNLT2ocseUoZmmMqwGU=; b=OuuB3OP8DyE/wJMwqDTGzMerbm
	mywxZFoFesDsE12kGVUR+mBYbdHvClgQvCCmhNUFBsoAFEZMqoP13cLzlksmtTweuSuDgQIO3AHev
	1/Z9nh8m4aXNRfvRmD3WXZ44YobcGLXcxJENfzoVXhaqAkS5MFNSMxEtNiM1aM6d1ioc0wsJlfODb
	VRXXn2ogrzJU/nF/u/2A/wfu0e/uKMQyPEIjrRUYUdsJ83W6v+HEiAFpLHw/YtrJhoBPcmQ/LXZAj
	q76ySfXRT1ws0zF1E1Gwz8DdOJu5KKCQv6JtWneWKxSZZfQnlDOzom2H1RaH50lytxP1KVQwS8S80
	LkIA/1nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpTM-00000009f52-0BTZ;
	Wed, 18 Jun 2025 09:52:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpC0-00000009c3K-0D0r
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 09:34:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBx-0004mm-79; Wed, 18 Jun 2025 11:34:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBw-0047Gg-34;
	Wed, 18 Jun 2025 11:34:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBw-005SrZ-2o;
	Wed, 18 Jun 2025 11:34:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Jun 2025 11:34:46 +0200
Message-Id: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADaIUmgC/22MQQ6DIBQFr2JYl+aDFNqueo+mC4RfZSEYUGJjv
 HvRlUm7nJc3s5CE0WEi92ohEbNLLvgC9akiptO+RepsYcKBX0CCpH0/0dnTGChyLYxo4ApakPI
 fIr7dvLeer8KdS2OInz2d2bb+q2RGgSpEaa1ltbDiMaBvpzEG7+azRbKlMj/oTB11XvTaKK1vI
 GQj1Y++rusXyOoekeYAAAA=
X-Change-ID: 20250606-mmu-xn-ro-e2a4c4b080a4
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750239288; l=2349;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=r0EJHFjk1rkJcnsbyafJPqUo+xvAev15x/YW09y0p/E=;
 b=oaTZoWsC09O7Gc1xXmWEBqa7Hnea3rkOzEcFehcEI/PYozvw4E8d/w/bKBnTtT+odTcBFjiIe
 DymblT7GYh8BP8WplJd2uqzoAiVX22ChxqIn1lud0qojeoZ9azivW0s
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_023452_141314_ADCD7DF4 
X-CRM114-Status: GOOD (  11.66  )
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
Subject: [PATCH v3 0/6] ARM: Map sections RO/XN
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
Changes in v3:
- rework create_sections() for Ahmads comments
- mention CR_S bit and DOMAIN_CLIENT in commit message
- Link to v2: https://lore.barebox.org/20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de

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
 arch/arm/cpu/mmu_64.c            | 74 +++++++++++++++++++++++++--------
 arch/arm/cpu/uncompress.c        |  9 ++--
 arch/arm/include/asm/mmu.h       |  2 +-
 arch/arm/include/asm/pgtable64.h |  1 +
 arch/arm/lib32/barebox.lds.S     |  3 +-
 arch/arm/lib64/barebox.lds.S     |  5 ++-
 common/memory.c                  |  7 +++-
 include/mmu.h                    |  1 +
 12 files changed, 181 insertions(+), 43 deletions(-)
---
base-commit: fa92c730b34d7ea90309ca10b399ab1a22dc761a
change-id: 20250606-mmu-xn-ro-e2a4c4b080a4

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



