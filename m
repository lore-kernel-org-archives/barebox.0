Delivery-date: Mon, 04 Mar 2024 20:06:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDeN-008dNF-2w
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:06:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDeM-00029J-Rg
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:06:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UDlxdWtZPc2/MW/G7ogHxNx8IaUvKOCfb6ykDQYIfMU=; b=i/e4pO4DySLra4LK9kqroJiwrG
	A6WbIZIDYU0RS1ZXhrT4AQMhmscFr2e45eQm5gBCtWrrWAgMj3TmhUdyFdEc9aYVkBRiZLYtxDLtC
	LxY02/K8cKpAJlPbGHBtNzox6CZZcoHw7TjAKQsumYP9H0CvYmwwPZqOE9rMrsG/EqRWDxmRfewWH
	yCax5HTWQ2LU36AxlB005XG4ekmVVoVrmjakNGd1WGQS2TLVzyTtmVhFT6rc1eaSHVm9N8vxG6T1y
	xM5zHNNNeFrOBDHl7D/NLZrme1ikjUirT53zQ+nFcbU9t64zipLa/KAZjrnjYeRrJgwN8m0Z/a2rm
	4+jcBEVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDdh-0000000AKln-2YEK;
	Mon, 04 Mar 2024 19:06:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaT-0000000AITq-0Inb
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UDlxdWtZPc2/MW/G7ogHxNx8IaUvKOCfb6ykDQYIfMU=; b=T8pf09SV6b+55gPpfl3LJe/oLr
	P5DL0jqB5lPPS3PkJX33Xogo2Y3aXYvqCTl6Cu5Gu8OrmSaIWxO0VObisxmNKLEJtFzUmycJOUWS8
	iGPiVjXiFIGoq+znHuOCHR3f3DYCIskOB6zVRuSB3TlEbQ4SMuFzY7rVvmjkaUDjMS6P8yhViKaU3
	Kojy9681HpyoNQOv8g3gco82m44ekhZZ0Pq2niaOXFOh6O92WCsm3aguUucwwRH51a2JRB93xy/Jo
	sklZ7xOmqMyHgrlkDT2IpqX92+npUnBwqfbf6CanPxalH6o+hV2KXTbz5a3WZzpPAGF92z/LD+Sp1
	vKqxXkJw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaL-000000051vX-3g0f
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006G4-Gn; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PLo-1j; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-17;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:36 +0100
Message-Id: <20240304190038.3486881-52-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190249_974529_71975936 
X-CRM114-Status: GOOD (  12.52  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 051/113] ARM: mmu-early: gracefully handle already enabled MMU
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
index 12cd644de0c7..f907421da998 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -314,6 +314,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	u64 optee_membase;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
+	if (get_cr() & CR_M)
+		return;
+
 	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 
 	el = current_el();
-- 
2.39.2



