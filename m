Delivery-date: Thu, 13 Jun 2024 15:07:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkB2-005NSw-1I
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:07:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkB1-0005KV-Rt
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:07:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A6oY/Wcxq7o9R50/ThB5PjIqWHxV7NRbkY3P7rSHcgg=; b=2ReXObctcGRvhpxIMYzIJEtZ8d
	/Wb8zObs1rOfZ1RdD2FgTQO8KVjrNnE+/+iUk/isWxuL7GLrL+ZkgdQizXg70xFD+S6k3xQdQRne3
	bA7vmQx4gzqt2TfdxbShzyFRecu6e4TaUEdP0Ql43ua47OM6XaY/2R+d6HkLoccA3I01rmQOR7uzV
	s4a/fJjMz1jgfVIQENogoyQfjrHowi70syZ06aIUrHZi53receqwOIu+pw0J9t8RrPGHkIIpmJ4oQ
	AMGTYRKHmq7YIDP8T54JZJXEC2kYB1CO8hFa0FHdGuXOYGz39fMIfjgGvYmUWONnuqqoz545W1xAa
	CsRG0FTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkAW-0000000Gcq4-37R8;
	Thu, 13 Jun 2024 13:07:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkAS-0000000Gcp6-2Tal
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:07:06 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkAQ-0005DG-TB
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:07:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:06:58 +0200
Message-Id: <20240613130659.165278-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_060704_797451_F6700176 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] ARM: aarch64: align scr_el3 register setup with U-Boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently we don't honor the setup done by the BootROM. Fix this by
reading the scr_el3 first and update the corresponding bits afterwards.

Furthermore also align the register settings:
 - Remove the register with (RW) setup since this is done by the EL3
   firmware (TF-A).
 - Set IRQ/FIQ/EA bits to make it possible to handle early exceptions
   within the PBL at EL3. Early exception handling requires platform
   support since it involves exception table and DAIF handling.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- adapt the commit message

 arch/arm/cpu/lowlevel_64.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/lowlevel_64.S b/arch/arm/cpu/lowlevel_64.S
index ed00c8c47057..dc76a9fcdac5 100644
--- a/arch/arm/cpu/lowlevel_64.S
+++ b/arch/arm/cpu/lowlevel_64.S
@@ -10,8 +10,8 @@ ENTRY(arm_cpu_lowlevel_init)
 	switch_el x1, 3f, 2f, 1f
 
 3:
-	mov	x0, #1			/* Non-Secure EL0/1 */
-	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
+	mrs	x0, scr_el3
+	orr	x0, x0, #0xf		/* SCR_EL3.NS|IRQ|FIQ|EA */
 	msr	scr_el3, x0
 	msr	cptr_el3, xzr
 
-- 
2.39.2



