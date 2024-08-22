Delivery-date: Thu, 22 Aug 2024 13:57:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6Rl-00CEnt-1j
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:57:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6Rk-0005Bx-UE
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:57:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MLFYqlqwIkF/LpqKretgeUEG31pqN/Xn6ZecV+ZyQoQ=; b=jpvIVAG31jnvgmiKhYvQi0yrA5
	ckxY9VSAReVKJTiHbJ+SjsdEPTh5xBnM+UpUklIfX9nV0Q+Es1+MZ++3mtbXVOPSDo9vQaTIXbbmi
	Txs+raxfTnpdBqIN9a+yfdItXCMOjraFXJ6xmJZ6riBxcCFMxrrRk4lLMhv40jLy/y6uVyP1NF3Nw
	Nyk6Nn2EApqzFNM26mRdjl2iAAESHAIV6tYv+Gt+y5S0iLCmUeTeOIvCJW/VZxGWQj5m23GFSAzOt
	qgbQEuvgyeh3s9MM4JlChivnGNofZK3FYocTGKmktaQu2s+WPnPWRU1xA7EPUWULRlvYPZOsxFftF
	s7cbaiYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6RH-0000000Cf98-2bCO;
	Thu, 22 Aug 2024 11:57:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Qb-0000000Cf1v-3em5
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:56:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6Qa-0004r2-96; Thu, 22 Aug 2024 13:56:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6QZ-002Exi-SY; Thu, 22 Aug 2024 13:56:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6QZ-004xz1-2Y;
	Thu, 22 Aug 2024 13:56:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 13:56:30 +0200
Message-Id: <20240822115630.1183874-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045633_926404_6C3DE18F 
X-CRM114-Status: GOOD (  10.29  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: semihosting: use svc instead of incorrect bkpt in DEBUG_LL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The semihosting DEBUG_LL support was tested on ARM64. Trying it out on
ARM32 leads to a hanging system, because the DEBUG_LL handler used the
wrong instruction (breakpoint) instead of what the normal semihosting
implementation uses (supervisor call).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/semihosting.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/semihosting.h b/arch/arm/include/asm/semihosting.h
index 2219e858d040..bdfe472eedc0 100644
--- a/arch/arm/include/asm/semihosting.h
+++ b/arch/arm/include/asm/semihosting.h
@@ -27,8 +27,8 @@ static inline void semihosting_putc(void *unused, int c)
 		"push {%0}\n"
 		"mov r1, sp\n"
 		"mov r0, #0x03\n"
-	 ARM(	"bkpt #0x123456\n")
-	 THUMB(	"bkpt #0xAB\n")
+	 ARM(	"svc #0x123456\n")
+	 THUMB(	"svc #0xAB\n")
 		"pop {%0}\n"
 		: /* No outputs */
 		: "r" (c)
-- 
2.39.2



