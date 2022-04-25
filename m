Delivery-date: Mon, 25 Apr 2022 08:30:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisEh-00ERfB-Sn
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 08:30:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisEe-0000kr-VD
	for lore@pengutronix.de; Mon, 25 Apr 2022 08:30:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMrUFzGKdBRRaVR2W5JHgezgO4qnpPWCkb2K3slFIN0=; b=p9bpeWPS0PrpCZ
	3r0Acqs8QH8307RR1STnYPo12Dn2cx9qaEuXgf9kTvEogYOjxCUR/n1X6qEJfDVa+jbu6R4ul1Gda
	rQaxC05RGYkVpCwSRCZidGSCEFpw+xWJjDOw0fNUdQ+ucs4OHnv4Tt7dsEqe60KNOjdPchPAerw6l
	cyn1CQtD49gR+6ul+DgFWmD/Vx1ouOabcPKK7S4vQWy98R/dOH3Q8g7/kcPHrUznA7P6gF7yMvvQA
	GRRFzHgLFuMKAGma5luop7XjnqR3ma/khmnYSBDajJoQoubkC5biNV8vKRz6rcTYD1wgmtZvihKU/
	edRqGt1kEB402Z2i2hBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nisDS-008UfQ-Mz; Mon, 25 Apr 2022 06:28:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nisDN-008UdQ-JF
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 06:28:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDM-0000Xc-9R; Mon, 25 Apr 2022 08:28:52 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDN-0055za-0E; Mon, 25 Apr 2022 08:28:51 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDK-0004ge-P4; Mon, 25 Apr 2022 08:28:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Apr 2022 08:28:48 +0200
Message-Id: <20220425062849.17954-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425062849.17954-1-a.fatoum@pengutronix.de>
References: <20220425062849.17954-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_232853_672668_5C81B344 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM: rpi: remove outdated comment after stack setup rework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Stack is now set up with ENTRY_FUNCTION_WITH_STACK, so board code need
not concern itself with what is allowed in C code and what isn't before
stack is setup.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index e9314fb27b25..7b9809b86cb7 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -40,7 +40,6 @@ static void copy_vc_fdt(void *dest, void *src, unsigned long max_size)
 #define rpi_stack_top(memsize) \
 	arm_mem_stack_top(BCM2835_SDRAM_BASE, BCM2835_SDRAM_BASE + memsize - VIDEOCORE_FDT_SZ)
 
-/* Must be inline since stack isn't setup yet. */
 static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
 								void *vc_fdt)
 {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

