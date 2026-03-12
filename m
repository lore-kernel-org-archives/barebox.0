Delivery-date: Thu, 12 Mar 2026 20:22:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0lbc-00AwYk-1R
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 20:22:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0lbc-0007Wn-Om
	for lore@pengutronix.de; Thu, 12 Mar 2026 20:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/LK9Lg4lA+l+qV3JbONHWHAfDNiF+JbL/am+YpU5RQA=; b=w1O7YpVbtfWsH6lXJUYina/bzQ
	rhcNlH4bJkYQFrHnQhqcU81115HcBB1jyov7lXBr7OC+VRr2dfCUhOnbrMC7COdDBBprhhelBGNMI
	h7MKQZnzn6m4caTNLvN1s+KpGGLhJA7yo+tIPLyli25oAATu4dSiiLnHctpKn/dVVgJUDk7gT7YSB
	5rUAaQBQD0eEP469iIQGcRQ53tbwhSdk5iwH9zvWnMcxXykkkWrctAiX1pmAVl+irswHP3pVKnDL2
	J/zkQ7JRwkBuh5dh578BSwaPiKXO5YwlsLdu3Ge3RWvuqDbaDU6PUMhlVFAIK2paWX2O9SIoL0YvI
	fWjvDQvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0lax-0000000F4qz-0MYd;
	Thu, 12 Mar 2026 19:21:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0law-0000000F4qZ-03vx
	for barebox@bombadil.infradead.org;
	Thu, 12 Mar 2026 19:21:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=/LK9Lg4lA+l+qV3JbONHWHAfDNiF+JbL/am+YpU5RQA=; b=dn0PD+CBTTjNiR5o8c8TQp3sxd
	BlKYb98WvYQErr/2AvKiA4/Xv0G9jKynYisyoAkZJCLWmQKS/HIvsS5Bc1hbcuRswjng/5zsxcYz0
	ndtNLDFKBrRQV638JdspkwZIwVmHo/j6CQx3od0Yc2GYDMqWjwdePKX9wfz7DCb7odwOL+oqJoh4v
	X8r7wc4Iuo9rqh95SogxbqmeQollFEAALb+b7EX3mGmVOZuA8+qBh/KPZ2iubtNmho2yYkujn3TLi
	+nqpAz9sqFbp3Z2ZREZww4sVl4twcxpEJfBpaFllsHNgsSqku6pfNxN26Sxo3SGxQHmTMk0h9Bebv
	zQhU8lag==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0las-00000001rol-1nmn
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 19:21:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0laq-0007ET-01; Thu, 12 Mar 2026 20:21:12 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0lao-0054Je-1N;
	Thu, 12 Mar 2026 20:21:11 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0lap-00000002GTv-2krb;
	Thu, 12 Mar 2026 20:21:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 20:20:42 +0100
Message-ID: <20260312192110.539601-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_192114_540696_0DA7C746 
X-CRM114-Status: UNSURE (   9.21  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: cpu: setupc: relocate BSS in relocate_to_adr()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When calling relocate_to_adr(), barebox is copied without BSS to a new
place. The new BSS region is not necessarily zeroed, but setupc()
following relocate_to_adr() will take care of that.

With incoming change to make setupc() idempotent, this will become
problematic as the variable in .data will indicate that the BSS is
zeroed, while the new BSS region isn't actually.

We usually have very little BSS in the PBL, so copying it is not much
more effort, so let's just do that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please apply before "ARM: setup_c: avoid clearing BSS twice"
---
 arch/arm/cpu/setupc_32.S | 4 ++--
 arch/arm/cpu/setupc_64.S | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
index 61b8152599f1..c5348353b129 100644
--- a/arch/arm/cpu/setupc_32.S
+++ b/arch/arm/cpu/setupc_32.S
@@ -39,12 +39,12 @@ bss_cleared:
 .section .text.relocate_to_adr
 #ifdef __PBL__
 ENTRY(relocate_to_adr_full)
-	ldr	r2, =__image_end
+	ldr	r2, =__image_end	/* include piggy data */
 	b	1f
 #endif
 
 ENTRY(relocate_to_adr)
-	ldr	r2, =__bss_start
+	ldr	r2, =__bss_stop		/* skip piggy data */
 	b	1f
 
 1:
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index 8fd7f2f9b60f..d5a6c0c43a7b 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -40,12 +40,12 @@ bss_cleared:
 					/* x0: target address */
 #ifdef __PBL__
 ENTRY(relocate_to_adr_full)
-	adr_l	x2, __image_end
+	adr_l	x2, __image_end		/* include piggy data */
 	b	1f
 #endif
 
 ENTRY(relocate_to_adr)
-	adr_l	x2, __bss_start
+	adr_l	x2, __bss_stop		/* skip piggy data */
 	b	1f
 
 1:
-- 
2.47.3



