Delivery-date: Wed, 03 Jan 2024 19:36:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66D-002OAq-31
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL666-0007UG-0R
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1ZL/a9O+6/H8tK3UYoZ/Rbxg7A0RdH2GC8LHLpVYMo4=; b=MBmtxeAbJy/Y5CzQr1e3NyhaxF
	uQR4Mx9NRjvAAU0QQAx8UHVkrFnM6xhtNIPQXD3HIa5NEknb0MMe1UWJiwLNEXjX/RBu75uEyIlHc
	Fl3gSn+CYO81UC5FSskWfAeGrc+Jt6ukS226Xb/1K86xs87EOBCxZ4K8HBmIBjGCwg2NklHWKYSU6
	bxS8/tPCZoNTN9FyG0J7pkFZ7AH/b7xBBXKKG6zatwHp6X5jSqn7Yk6CagdT1ukVDibhUrU2FomWO
	zPltk3h846dS+4r/sjOScS6IK0ZNdwJyA3AvByPFlb+73AuFHBVkPEjh2SQy/eS9sC9qxDSjUHZMh
	EueBHfKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64U-00Bl7U-11;
	Wed, 03 Jan 2024 18:34:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61M-00BhQJ-1Z
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1ZL/a9O+6/H8tK3UYoZ/Rbxg7A0RdH2GC8LHLpVYMo4=; b=OwoDaxEOOGxeyYWUXKfivMC88C
	xe+LY5mbLRIv04lA8yXQPZBCe111HbaSzCNpdml2FDh2/mglP0T9ljqhRmCfHPLU+oUDO/0Ca/VpM
	aT+ITKt5JB4k79zGnu+pyJGnKN8qdoF9HDJLm+GeQUu2HCKBxmF2KYstjNRBQO89ckRD3w2gbJyZd
	eC7OY3Uf9X0POiQmKzM1ohnOvwjE5ekII5/lvlfLdI799v33vDV7lPI1m9WaYM9cyx3mRpAdI0v+f
	PQ+pUXLC/0zYczRk/08qk6j6cSz6KbsKGXW4/pJ2SrnVuyqtjsY4urMrXs9vBHJZ7q+bFwrbYQEky
	38T4HFCQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61E-005eBx-19
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001bt-Tv; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000Awl-FJ; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-0f;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:10 +0100
Message-Id: <20240103181312.409668-51-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_643803_8D4E887E 
X-CRM114-Status: GOOD (  11.92  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 050/112] ARM: mmu-early: gracefully handle already enabled MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

arm_cpu_lowlevel_init will disable the MMU, but there are valid cases to
not call it on startup, e.g. when barebox is being run as EFI payload.

To allow booting an EFI-stubbed barebox both as primary bootloader and
as EFI payload, teach mmu_early_enable() to bail out when the MMU is
already set up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 3 +++
 arch/arm/cpu/mmu_64.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index c6eecf9c9d2d..3a8d025ecdee 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -597,6 +597,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
 	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
 
+	if (get_cr() & CR_M)
+		return;
+
 	set_ttbr(ttb);
 
 	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 3e182f70ccb1..a392789ab696 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -313,6 +313,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	int el;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
+	if (get_cr() & CR_M)
+		return;
+
 	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 
 	el = current_el();
-- 
2.39.2



