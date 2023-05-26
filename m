Delivery-date: Fri, 26 May 2023 08:35:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R2e-00Ei8c-V6
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:35:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R2c-00067K-FW
	for lore@pengutronix.de; Fri, 26 May 2023 08:35:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=st1tsCrAD6vyquKdS7UefhRMFAly8/l0OZ3SHp6JISc=; b=DzGfVACfrE8xNxOjZaJz9IFWBa
	BzSw7VvUS/9Y0lxTNL2GjI8jVIHlBVsDtFy2SZkH/CN//Y9qPQZWvbD6bmrLW72HjMw/wSTDsHApF
	4dVvCi0LnbE+K4gPm4gnyfSUqHSnKQZFwXN1Y8e3H67d6QTey2+dVIEJPYJ83LwZFJ7EWk3LeL+6b
	jjRKKzHFDuFdAXEOZSS0RVX8u7WDdyRgQd7ePwH9YHJY2WIYC9NRewtYXVPUM1GRaSDBU5UuoYGmp
	n3ivM4RaW+qi32kUn8J5KI9OdPtdUM3Gj+fa50k4wXRdg0lQGpSJ+39a1MlthdZ+6N59jci7kxBF6
	ca0ttvPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R1e-001GfO-00;
	Fri, 26 May 2023 06:34:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R1b-001GeC-0D
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:34:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1R-0005rq-RR; Fri, 26 May 2023 08:33:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1R-002tTW-62; Fri, 26 May 2023 08:33:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1Q-004oPC-5Y; Fri, 26 May 2023 08:33:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 May 2023 08:33:51 +0200
Message-Id: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233407_102476_943E3816 
X-CRM114-Status: GOOD (  11.01  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/4] ARM: mmu64: request TTB region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARM64 MMU code used to disable early MMU, reallocate TTB from malloc
area and then reenable it. This has recently been changed, so MMU is
left enabled like on ARM32, but unlike ARM32, the SDRAM region used in
PBL is not requested in barebox proper. Do that now.

Fixes: b53744ffe333 ("ARM: mmu64: Use two level pagetables in early code")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index cdc482542202..1d5a5355c6be 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -192,8 +192,20 @@ static void mmu_enable(void)
  */
 void __mmu_init(bool mmu_on)
 {
+	uint64_t *ttb = get_ttb();
 	struct memory_bank *bank;
 
+	if (!request_sdram_region("ttb", (unsigned long)ttb,
+				  ARM_EARLY_PAGETABLE_SIZE))
+		/*
+		 * This can mean that:
+		 * - the early MMU code has put the ttb into a place
+		 *   which we don't have inside our available memory
+		 * - Somebody else has occupied the ttb region which means
+		 *   the ttb will get corrupted.
+		 */
+		pr_crit("Can't request SDRAM region for ttb at %p\n", ttb);
+
 	for_each_memory_bank(bank) {
 		struct resource *rsv;
 		resource_size_t pos;
-- 
2.39.2



