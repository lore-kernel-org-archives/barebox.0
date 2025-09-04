Delivery-date: Thu, 04 Sep 2025 10:56:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5lu-007yeR-03
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 10:56:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5ls-00041D-MK
	for lore@pengutronix.de; Thu, 04 Sep 2025 10:56:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0tzDTM9MctE2GuzKfSMZI35xqHWLeyiUxW/0JLWcCZU=; b=vJeli7gBHA6JZXWMFSXxzIwQJL
	Fkhs9p/tyVxdxfvk8KjyGKWImqliLVUyYupeCmBvCyQb046dBogO9gB0THUyvwumZu3/ncauIivYp
	CkY6XGuVGwqfsU8v1LciDOadr/iuiPyumP8q6+nr3ivvdRl22N7h4QY8Jx7ok79aotTyqywgPlkQg
	RskRF0Zp06p3r6+60ZxIH9X4oYgcQMS3kYirveZLn4j/q//kyS8kHloa2rLPFlne1Lppstk4n6j7i
	Oj3C7H3y3dQF9UoNpD5nZI/6ro1Do+OWvDKylNEfDgSD6DJOIMz33RMuIRqT9r1Rv2BtG0+sq2eO8
	kD/H/f3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5lT-0000000ANsL-2PbG;
	Thu, 04 Sep 2025 08:56:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu58x-0000000A9sE-2xrd
	for barebox@bombadil.infradead.org;
	Thu, 04 Sep 2025 08:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=0tzDTM9MctE2GuzKfSMZI35xqHWLeyiUxW/0JLWcCZU=; b=D1RD5CcjBIlBLAUL7AgdrWm9SL
	CE7h0ETmt7s9bEHtXfNbXJDPGc8XXhclGr9+R0+ARXz4wL8m7pulGAS3nOqhzaCGmoXK+Sxx3HwUE
	DmjbehPjFk53TeiNab1Zkt1/XYaZclnUq9yZuxMluw7UlMw8YP3tiWRs20wue+rtkle0MuiL5+NgL
	zo6wAvS270HD03WAe8wMWvhc9zDFjoB7cY58NQDQtc8AcDlQWPxrxy9C2CzLbh7b3stivGQa3mRyP
	XphkrCOGTX3SrqCvYcnN2jHWRPGp4nyk28yEZP9F0j7pRnaPHjsu63PF9TtcWFj8dx2dMen3wfTPY
	WQ2hcbtA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu58u-00000004JGB-0oiH
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 08:16:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu58t-0000II-L3; Thu, 04 Sep 2025 10:16:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu58t-003hEY-1V;
	Thu, 04 Sep 2025 10:16:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu58t-00000000OFC-1aBr;
	Thu, 04 Sep 2025 10:16:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Sep 2025 10:16:26 +0200
Message-ID: <20250904081626.93182-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_091628_387888_8334790D 
X-CRM114-Status: UNSURE (   8.37  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently lack a way to build a barebox EFI payload on ARM without
enabling some other subarchitecture. As CONFIG_EFI_PAYLOAD has a global
effect and adds EFI stubs to all enabled board, an EFI subarchitecture
doesn't fit into our current model.

Instead, let's make it possible to enable either CONFIG_CPU_V8 or
CONFIG_CPU_V7 directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index e61bcadc8c35..fe0d1e470578 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -79,12 +79,15 @@ config CPU_V6
 
 # ARMv7
 config CPU_V7
-	bool
+	bool "Generic ARMv7 support"
+	depends on 32BIT
 	select CPU_32v7
 
 # ARMv8
 config CPU_V8
-	bool
+	bool "Generic ARMv8 support"
+	default y
+	depends on 64BIT
 	select CPU_64v8
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT
-- 
2.47.2



