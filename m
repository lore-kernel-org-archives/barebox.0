Delivery-date: Thu, 11 Dec 2025 21:43:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnVm-00AQUW-1C
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:43:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnVl-00017U-RG
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:43:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rqKdxG1p1g/kPkJSHoaEG0taM2+e5P5JFyiXHta0CVw=; b=a8Qh0H00iPdjVrC7+Hi5tkXJMD
	iEhwkz6TXtakO1Zbc+xyk7K/hU27cCfqp0q+G90VOnBg2QU1poOF2IrjuqWZiAPBGMjLx6wOCUBvm
	Igqq8lvZsjouRzdyUABQcFALqOWC43UpiksG9zQK7SixAph1nJhmWcIOLW29mQ3/IOKU2o9/qifJ2
	kG6a3UIxMMYB3hoYlqqVODieoiOlO4boPJiO7dzzVR30+PGw8hkm+HAQ9ef1xEme3eN30qH0DYX4L
	USfqvV2jKRHGlJ4cEwpk1RW3+29bRTjVzBK4lBvEwVV7T01GfNeksT6jvZYxccTPvuhIkEA4dr0fK
	cmi4Jj3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnVO-0000000HHEO-2eeB;
	Thu, 11 Dec 2025 20:43:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnVN-0000000HHED-2PeR
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:43:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=rqKdxG1p1g/kPkJSHoaEG0taM2+e5P5JFyiXHta0CVw=; b=jMGFWiaNgXay+c8uYaNPlkhowj
	P4vNcw5+cTGJEd9iD8wh1dJ7PsDlpnOf4120TIgUk34YdxU3sea6OLqAFZHcl0lfhVRkx6mqdh93e
	YQdgqalX9QzrQjuOZLhRf7e+I8l/DKdwI6qK1DZ8f5MqC1uzZv7evXLTtlPnt399aPaYpUPpkE/7S
	pVzLLWT0/iryhnamao1s5tBBb42M4DqQL5yyrjVwc3V6NDXFyFg7S+4ElEQjgdUG8dV5yuisTV7pH
	PGzzktpx6fQGIsomwcIe3w+VitCWriSp6lfJNVqpU3qDFiLODvHgTYxtPYpo46bfUOwBGJW/cNlk6
	TllZKd7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmdp-0000000Fa4f-3gET
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:47:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnVK-0000xh-Fg; Thu, 11 Dec 2025 21:43:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnVK-005BXg-0w;
	Thu, 11 Dec 2025 21:43:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnVK-0000000Ay2Q-0oKL;
	Thu, 11 Dec 2025 21:43:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:43:13 +0100
Message-ID: <20251211204313.2613484-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194758_028659_AD80929F 
X-CRM114-Status: UNSURE (   9.84  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: cpu: disable interrupts before MMU disabling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The cache maintenance operations we do in mmu_disable() won't take
kindly to being interrupted by interrupt handlers if we have any.

Thus disable them first thing and also move the #ifdef into the header
while at it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpu.c         | 6 +++---
 arch/arm/include/asm/mmu.h | 5 +++++
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 0293181811b6..0c678f54c023 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -88,12 +88,12 @@ static void arch_shutdown(void)
 	if (efi_is_payload())
 		return;
 
-#ifdef CONFIG_MMU
+	disable_interrupts();
+
 	mmu_disable();
-#endif
+
 	icache_invalidate();
 
-	disable_interrupts();
 }
 archshutdown_exitcall(arch_shutdown);
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 1fafbf9d77be..bcaa984a40ed 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -10,7 +10,12 @@
 
 struct arm_memory;
 
+#ifdef CONFIG_MMU
 void mmu_disable(void);
+#else
+static inline void mmu_disable(void) {}
+#endif
+
 static inline void arm_create_section(unsigned long virt, unsigned long phys, int size_m,
 		unsigned int flags)
 {
-- 
2.47.3



