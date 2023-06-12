Delivery-date: Mon, 12 Jun 2023 15:00:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h9Y-003qPd-NN
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:00:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h9W-0007cx-7R
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:00:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c8aC6qK57mZ/RSu+jeytqO4WaPDzKHzHqzY3MZAtHCk=; b=WnMnMHCduaFZVxbBeicOIwfDIs
	B9vBWa8+y6+bH5tlSCfDjhWZEwHKuz/dC6ofFDqVushaIokNHAqOoaCK/yrv/3rlBAe7dWNPWljVi
	Y3v1MiXQaj3q2AlOV/wPaRdjfOUwO4r8Tc65G+EHvKggIC2NYIMvYigwgYwFX/W6/oxmWrNy2vKM1
	XSrAUy+FxIUmXa+zFKDapd+wqBqGGbmw5pxNDdyL50xN7KsQ+TdQzNcv+SpJ8pw6et8B41e62N48E
	TCNAaAKAoh11Wfg8hdBT+hgkYcejRh1KaFNZPc1lO7G0uFzxJxRCauvbLjpIUa9XLpaLiq2170qyw
	RQaFgyZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h8m-0046cS-15;
	Mon, 12 Jun 2023 12:59:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h8j-0046bB-1H
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:59:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h8i-0007S5-5f; Mon, 12 Jun 2023 14:59:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h8h-006tUk-IK; Mon, 12 Jun 2023 14:59:19 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h8g-004Yu6-Rq; Mon, 12 Jun 2023 14:59:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:59:17 +0200
Message-Id: <20230612125917.1087470-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055921_431925_84D58E73 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: [PATCH] asm: align virt_to_phys definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have two definitions of virt_to_phys: One for MIPS code accepting both
const and non-const pointers and one for everybody else that accepts
volatile and non-volatile pointers. Unify both to have a common
definition with the superset of the qualifiers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/include/asm/io.h | 2 +-
 include/asm-generic/io.h   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 9c856c7b1552..4584eec8ca07 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -28,7 +28,7 @@ void dma_inv_range(unsigned long, unsigned long);
  *     the memory address given.
  */
 #define virt_to_phys virt_to_phys
-static inline unsigned long virt_to_phys(const void *address)
+static inline unsigned long virt_to_phys(const volatile void *address)
 {
 	return CPHYSADDR((unsigned long)address);
 }
diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 6e91c0aea68f..ab439026928a 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -769,7 +769,7 @@ static inline void iowrite64_rep(volatile void __iomem *addr,
  */
 #ifndef virt_to_phys
 #define virt_to_phys virt_to_phys
-static inline unsigned long virt_to_phys(volatile void *mem)
+static inline unsigned long virt_to_phys(const volatile void *mem)
 {
 	return (unsigned long)mem;
 }
-- 
2.39.2



