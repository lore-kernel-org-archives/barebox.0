Delivery-date: Tue, 30 Apr 2024 13:30:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1lgt-00AGl8-07
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 13:30:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1lgr-0003Q5-30
	for lore@pengutronix.de; Tue, 30 Apr 2024 13:30:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lo7YhztYL2zj7IZL9MlHPqA25eUGYtoUlAVFlrS4icw=; b=PgbcRLp3/Ab+ONWicjRCDt7Ktq
	uAbEpl2dtfNHHbhmE5jHmZOnPeIPo4uzVir9pR8vNnYvUW71FDi+BgY1nwQQVzkJw1JYEIwKyFS7J
	+b36wA4uaiPBATn+YPOgzK+jHyYqWD8/cjbV11orI7vz2u0nlNGMwE7uN4KZSrJ+wzfxF4VZZmSaL
	8jRqAcu/odVghvg6ZsD2w3eDAPHzGSjyZ9PEez80EotaUF2Z+eQS1zNEEHBC7yVFwfacbN3eMy9wy
	Gj5tmquRPqACmEfVdHRCITrPGX3j4O+Cv3Tos/YgfXQGHra+akSSHHaQrjwF+Afus8NZijvqNHI2j
	yLYeGUvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1lgG-00000006B1k-21TC;
	Tue, 30 Apr 2024 11:29:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1lgC-00000006Azj-2Do0
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 11:29:49 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1s1lg9-0003FJ-QO
	for barebox@lists.infradead.org; Tue, 30 Apr 2024 13:29:45 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Apr 2024 13:29:40 +0200
Message-Id: <20240430112941.3207284-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_042948_742077_57FFCDDE 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: aarch64: fix scr_el3 register setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current code moved '1' as immediate into x0 and does OR with
BIT(10). This doesn't look right since it will set the scr_el3 to 0.

Instead read the scr_el3 and OR the interessting bits to fix this. The
interessting bits are taken from the current U-Boot implementation.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/cpu/lowlevel_64.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/lowlevel_64.S b/arch/arm/cpu/lowlevel_64.S
index ed00c8c47057..1f5a0b73f8b3 100644
--- a/arch/arm/cpu/lowlevel_64.S
+++ b/arch/arm/cpu/lowlevel_64.S
@@ -10,8 +10,8 @@ ENTRY(arm_cpu_lowlevel_init)
 	switch_el x1, 3f, 2f, 1f
 
 3:
-	mov	x0, #1			/* Non-Secure EL0/1 */
-	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
+	mrs	x0, scr_el3
+	orr	x0, x0, #0xf			/* SCR_EL3.NS|IRQ|FIQ|EA */
 	msr	scr_el3, x0
 	msr	cptr_el3, xzr
 
-- 
2.39.2



